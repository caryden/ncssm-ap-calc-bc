#!/bin/bash
# Presentation Validation Script
# Checks structural compliance with master-presentation-spec.md

FILE="$1"
ERRORS=0
WARNINGS=0

if [ -z "$FILE" ]; then
    echo "Usage: ./validate-presentation.sh <presentation.html>"
    exit 1
fi

if [ ! -f "$FILE" ]; then
    echo "ERROR: File not found: $FILE"
    exit 1
fi

echo "=== Validating: $FILE ==="
echo ""

# Check 1: Google Fonts loaded
if ! grep -q "fonts.googleapis.com" "$FILE"; then
    echo "ERROR: Missing Google Fonts import"
    ((ERRORS++))
else
    echo "OK: Google Fonts loaded"
fi

# Check 2: TOC Overlay
if ! grep -q "toc-overlay" "$FILE"; then
    echo "ERROR: Missing TOC overlay"
    ((ERRORS++))
else
    echo "OK: TOC overlay present"
fi

# Check 3: Keyboard hints
if ! grep -q "keyboard-hint" "$FILE"; then
    echo "ERROR: Missing keyboard hints"
    ((ERRORS++))
else
    echo "OK: Keyboard hints present"
fi

# Check 4: Progress bar
if ! grep -q "progress-bar" "$FILE"; then
    echo "ERROR: Missing progress bar"
    ((ERRORS++))
else
    echo "OK: Progress bar present"
fi

# Check 5: No slide-content class (should use specific types)
SLIDE_CONTENT_COUNT=$(grep -c 'class="slide slide-content"' "$FILE" 2>/dev/null || echo "0")
if [ "$SLIDE_CONTENT_COUNT" -gt 0 ]; then
    echo "ERROR: Uses generic 'slide-content' class ($SLIDE_CONTENT_COUNT times) - use specific types"
    ((ERRORS++))
else
    echo "OK: No generic slide-content class"
fi

# Check 6: No hardcoded light backgrounds
LIGHT_BG=$(grep -cE 'background:\s*(white|#fff|#f[89a-f]|#ffffff)' "$FILE" 2>/dev/null | head -1)
LIGHT_BG=${LIGHT_BG:-0}
if [ "$LIGHT_BG" -gt 0 ]; then
    echo "WARNING: Found $LIGHT_BG hardcoded light background(s)"
    ((WARNINGS++))
else
    echo "OK: No hardcoded light backgrounds"
fi

# Check 7: Small font sizes in D3
SMALL_FONTS=$(grep -cE "font-size.*['\"]1[0-4]px" "$FILE" 2>/dev/null | head -1)
SMALL_FONTS=${SMALL_FONTS:-0}
if [ "$SMALL_FONTS" -gt 0 ]; then
    echo "ERROR: Found $SMALL_FONTS D3 font sizes below 16px"
    ((ERRORS++))
else
    echo "OK: No tiny D3 font sizes found"
fi

# Check 8: Appendix overlay
if ! grep -q "appendix-overlay" "$FILE"; then
    echo "WARNING: Missing appendix overlay"
    ((WARNINGS++))
else
    echo "OK: Appendix overlay present"
fi

# Check 9: Overlay backdrop
if ! grep -q "overlay-backdrop" "$FILE"; then
    echo "ERROR: Missing overlay backdrop"
    ((ERRORS++))
else
    echo "OK: Overlay backdrop present"
fi

# Report slide type usage
echo ""
echo "=== Slide Type Analysis ==="
echo "Types used:"
grep -oE 'class="slide slide-[a-z-]+"' "$FILE" | sort | uniq -c

echo ""
echo "=== Summary ==="
echo "Errors: $ERRORS"
echo "Warnings: $WARNINGS"

if [ "$ERRORS" -gt 0 ]; then
    echo ""
    echo "FAILED: Presentation does not meet standards"
    exit 1
else
    echo ""
    echo "PASSED: Presentation meets structural requirements"
    exit 0
fi
