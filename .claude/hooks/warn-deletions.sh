#!/bin/bash
# Warn about bulk file deletions - prevent accidental mass deletion without commit backup

# Read hook input from stdin
input=$(cat)

# Extract the command being run
command=$(echo "$input" | jq -r '.tool_input.command // ""' 2>/dev/null)

if [ -z "$command" ]; then
    exit 0  # Not a bash command, allow
fi

# Detect deletion patterns
# Count how many files would be deleted (rough estimate)
deletion_patterns='rm\s+-rf|rm\s+-r|rm\s+.*\*|rmdir|unlink'

if echo "$command" | grep -qE "$deletion_patterns"; then
    # Check if this looks like a bulk deletion
    # Look for wildcards or recursive flags

    if echo "$command" | grep -qE 'rm\s+-rf\s+class-|rm\s+-r\s+class-'; then
        # Deleting class directories - high risk
        echo "BLOCKED: Attempting to delete class directories" >&2
        echo "" >&2
        echo "Command: $command" >&2
        echo "" >&2
        echo "SAFETY CHECK: Before deleting multiple content files:" >&2
        echo "1. Run: git status" >&2
        echo "2. If uncommitted changes exist, create a backup commit first" >&2
        echo "3. Consider using git rm instead of rm for tracked files" >&2
        echo "" >&2
        echo "To proceed, create a commit checkpoint first, then retry." >&2
        exit 2  # Block the command
    fi

    if echo "$command" | grep -qE '\*\.html|\*\.md|presentation.*\*'; then
        # Bulk deletion of content files
        echo "WARNING: Bulk file deletion detected" >&2
        echo "" >&2
        echo "Command: $command" >&2
        echo "" >&2
        echo "Consider committing current work as a backup before proceeding." >&2
        # Allow but warn (exit 0 with stderr message)
    fi
fi

exit 0  # Allow the command
