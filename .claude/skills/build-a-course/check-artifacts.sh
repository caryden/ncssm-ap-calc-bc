#!/bin/bash
# Artifact Completeness Checker
# Validates that required upstream artifacts exist before downstream work

set -e

usage() {
    echo "Usage: $0 <command> [class-directory]"
    echo ""
    echo "Commands:"
    echo "  status              Show status of all classes"
    echo "  can-lesson-plan     Check if lesson plan can be created for class"
    echo "  can-spec            Check if spec can be created for class"
    echo "  can-presentation    Check if presentation can be created for class"
    echo ""
    echo "Examples:"
    echo "  $0 status"
    echo "  $0 can-lesson-plan class-9-derivative-definition"
    echo "  $0 can-spec class-9-derivative-definition"
    exit 1
}

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Find the repo root
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"

check_course_level() {
    echo "=== Course-Level Artifacts ==="

    local errors=0

    if [ -f "$REPO_ROOT/course-plan.md" ]; then
        echo -e "${GREEN}✓${NC} course-plan.md exists"
    else
        echo -e "${RED}✗${NC} course-plan.md MISSING"
        errors=$((errors + 1))
    fi

    if [ -f "$REPO_ROOT/curriculum-design-research.md" ]; then
        echo -e "${GREEN}✓${NC} curriculum-design-research.md exists"
    else
        echo -e "${YELLOW}⚠${NC} curriculum-design-research.md missing (recommended)"
    fi

    if [ -f "$REPO_ROOT/SYLLABUS.md" ]; then
        echo -e "${GREEN}✓${NC} SYLLABUS.md exists"
    else
        echo -e "${RED}✗${NC} SYLLABUS.md MISSING"
        errors=$((errors + 1))
    fi

    if [ -f "$REPO_ROOT/master-presentation-spec.md" ]; then
        echo -e "${GREEN}✓${NC} master-presentation-spec.md exists"
    else
        echo -e "${RED}✗${NC} master-presentation-spec.md MISSING"
        errors=$((errors + 1))
    fi

    return $errors
}

get_topic_name() {
    local dir="$1"
    # Extract topic name from directory (e.g., class-9-derivative-definition -> derivative-definition)
    echo "$dir" | sed 's/class-[0-9]*-//'
}

check_class_artifacts() {
    local class_dir="$1"
    local full_path="$REPO_ROOT/$class_dir"

    if [ ! -d "$full_path" ]; then
        echo -e "${RED}ERROR: Directory not found: $class_dir${NC}"
        return 1
    fi

    local topic=$(get_topic_name "$class_dir")

    echo "=== Artifacts for $class_dir ==="

    # Check research
    local research_file=$(find "$full_path" -maxdepth 1 -name "research-*.md" 2>/dev/null | head -1)
    if [ -n "$research_file" ]; then
        echo -e "${GREEN}✓${NC} research file exists: $(basename $research_file)"

        # Check research quality
        local source_count=$(grep -cE "^###.*3Blue1Brown|^###.*Professor Leonard|^###.*Khan Academy" "$research_file" 2>/dev/null || echo "0")
        if [ "$source_count" -lt 2 ]; then
            echo -e "  ${YELLOW}⚠${NC} Only $source_count expert sources documented (minimum 2)"
        fi

        local misconception_count=$(grep -ciE "misconception" "$research_file" 2>/dev/null || echo "0")
        if [ "$misconception_count" -lt 3 ]; then
            echo -e "  ${YELLOW}⚠${NC} Only $misconception_count misconceptions documented (minimum 3)"
        fi
    else
        echo -e "${YELLOW}○${NC} research file MISSING"
    fi

    # Check lesson plan
    local lesson_plan=$(find "$full_path" -maxdepth 1 -name "lesson-plan-*.md" 2>/dev/null | head -1)
    if [ -n "$lesson_plan" ]; then
        echo -e "${GREEN}✓${NC} lesson plan exists: $(basename $lesson_plan)"

        # Check for required sections
        if ! grep -q "Learning Objectives" "$lesson_plan" 2>/dev/null; then
            echo -e "  ${YELLOW}⚠${NC} Missing 'Learning Objectives' section"
        fi
        if ! grep -q "Misconceptions\|Common Errors" "$lesson_plan" 2>/dev/null; then
            echo -e "  ${YELLOW}⚠${NC} Missing misconceptions section"
        fi
    else
        echo -e "${YELLOW}○${NC} lesson plan MISSING"
    fi

    # Check presentation spec
    local spec=$(find "$full_path" -maxdepth 1 -name "presentation-spec-*.md" 2>/dev/null | head -1)
    if [ -n "$spec" ]; then
        echo -e "${GREEN}✓${NC} presentation spec exists: $(basename $spec)"

        # Check for slide breakdown
        if ! grep -q "Slide [0-9]\|slide-" "$spec" 2>/dev/null; then
            echo -e "  ${YELLOW}⚠${NC} May be missing slide-by-slide breakdown"
        fi
    else
        echo -e "${YELLOW}○${NC} presentation spec MISSING"
    fi

    # Check presentation
    if [ -f "$full_path/presentation.html" ]; then
        echo -e "${GREEN}✓${NC} presentation.html exists"
    else
        echo -e "${YELLOW}○${NC} presentation.html MISSING"
    fi
}

can_create_lesson_plan() {
    local class_dir="$1"
    local full_path="$REPO_ROOT/$class_dir"
    local errors=0

    echo "=== Prerequisites for Lesson Plan: $class_dir ==="

    # Check course-plan.md
    if [ -f "$REPO_ROOT/course-plan.md" ]; then
        echo -e "${GREEN}✓${NC} course-plan.md exists"
    else
        echo -e "${RED}✗${NC} course-plan.md MISSING - cannot create lesson plan"
        errors=$((errors + 1))
    fi

    # Check research file
    local research_file=$(find "$full_path" -maxdepth 1 -name "research-*.md" 2>/dev/null | head -1)
    if [ -n "$research_file" ]; then
        echo -e "${GREEN}✓${NC} research file exists"
    else
        echo -e "${RED}✗${NC} research file MISSING - cannot create lesson plan"
        errors=$((errors + 1))
    fi

    echo ""
    if [ $errors -eq 0 ]; then
        echo -e "${GREEN}READY: Can create lesson plan for $class_dir${NC}"
        return 0
    else
        echo -e "${RED}BLOCKED: Missing $errors prerequisite(s)${NC}"
        return 1
    fi
}

can_create_spec() {
    local class_dir="$1"
    local full_path="$REPO_ROOT/$class_dir"
    local errors=0

    echo "=== Prerequisites for Presentation Spec: $class_dir ==="

    # Check lesson plan
    local lesson_plan=$(find "$full_path" -maxdepth 1 -name "lesson-plan-*.md" 2>/dev/null | head -1)
    if [ -n "$lesson_plan" ]; then
        echo -e "${GREEN}✓${NC} lesson plan exists"

        # Check for learning objectives
        if grep -q "Learning Objectives" "$lesson_plan" 2>/dev/null; then
            echo -e "${GREEN}✓${NC} lesson plan has learning objectives"
        else
            echo -e "${RED}✗${NC} lesson plan missing learning objectives"
            errors=$((errors + 1))
        fi
    else
        echo -e "${RED}✗${NC} lesson plan MISSING - cannot create spec"
        errors=$((errors + 1))
    fi

    echo ""
    if [ $errors -eq 0 ]; then
        echo -e "${GREEN}READY: Can create presentation spec for $class_dir${NC}"
        return 0
    else
        echo -e "${RED}BLOCKED: Missing $errors prerequisite(s)${NC}"
        return 1
    fi
}

can_create_presentation() {
    local class_dir="$1"
    local full_path="$REPO_ROOT/$class_dir"
    local errors=0

    echo "=== Prerequisites for Presentation: $class_dir ==="

    # Check presentation spec
    local spec=$(find "$full_path" -maxdepth 1 -name "presentation-spec-*.md" 2>/dev/null | head -1)
    if [ -n "$spec" ]; then
        echo -e "${GREEN}✓${NC} presentation spec exists"

        # Check for slide breakdown
        if grep -qE "Slide [0-9]|slide-title|slide-statement|slide-visual" "$spec" 2>/dev/null; then
            echo -e "${GREEN}✓${NC} spec has slide breakdown"
        else
            echo -e "${RED}✗${NC} spec missing slide-by-slide breakdown"
            errors=$((errors + 1))
        fi
    else
        echo -e "${RED}✗${NC} presentation spec MISSING - cannot create presentation"
        errors=$((errors + 1))
    fi

    # Check template exists
    if [ -f "$REPO_ROOT/class-0-introduction/presentation.html" ]; then
        echo -e "${GREEN}✓${NC} class-0 template exists"
    else
        echo -e "${RED}✗${NC} class-0 template MISSING"
        errors=$((errors + 1))
    fi

    echo ""
    if [ $errors -eq 0 ]; then
        echo -e "${GREEN}READY: Can create presentation for $class_dir${NC}"
        return 0
    else
        echo -e "${RED}BLOCKED: Missing $errors prerequisite(s)${NC}"
        return 1
    fi
}

show_status() {
    check_course_level
    echo ""

    echo "=== Class Artifact Status ==="
    echo ""
    printf "%-35s %-8s %-12s %-8s %-8s %-8s\n" "CLASS" "RESEARCH" "LESSON_PLAN" "SPEC" "HTML" "REVIEW"
    printf "%-35s %-8s %-12s %-8s %-8s %-8s\n" "-----" "--------" "-----------" "----" "----" "------"

    for dir in "$REPO_ROOT"/class-*/; do
        if [ -d "$dir" ]; then
            class_name=$(basename "$dir")

            # Check each artifact
            research="○"
            lesson_plan="○"
            spec="○"
            html="○"
            review="○"

            [ -n "$(find "$dir" -maxdepth 1 -name 'research-*.md' 2>/dev/null | head -1)" ] && research="✓"
            [ -n "$(find "$dir" -maxdepth 1 -name 'lesson-plan-*.md' 2>/dev/null | head -1)" ] && lesson_plan="✓"
            [ -n "$(find "$dir" -maxdepth 1 -name 'presentation-spec-*.md' 2>/dev/null | head -1)" ] && spec="✓"
            [ -f "$dir/presentation.html" ] && html="✓"
            [ -f "$dir/reviewlog.md" ] && review="✓"

            printf "%-35s %-8s %-12s %-8s %-8s %-8s\n" "$class_name" "$research" "$lesson_plan" "$spec" "$html" "$review"
        fi
    done

    echo ""
    echo "Legend: ✓ = exists, ○ = missing"
}

# Main
COMMAND="${1:-status}"
CLASS_DIR="$2"

case "$COMMAND" in
    status)
        show_status
        ;;
    can-lesson-plan)
        [ -z "$CLASS_DIR" ] && usage
        can_create_lesson_plan "$CLASS_DIR"
        ;;
    can-spec)
        [ -z "$CLASS_DIR" ] && usage
        can_create_spec "$CLASS_DIR"
        ;;
    can-presentation)
        [ -z "$CLASS_DIR" ] && usage
        can_create_presentation "$CLASS_DIR"
        ;;
    check)
        [ -z "$CLASS_DIR" ] && usage
        check_class_artifacts "$CLASS_DIR"
        ;;
    *)
        usage
        ;;
esac
