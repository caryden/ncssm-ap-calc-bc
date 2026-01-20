# Presentation Specification: Defining Limits

## Class 1 | February 3, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topic:** 1.2 - Defining Limits and Using Limit Notation

This session introduces the formal notation and definition of limits. The presentation should make the abstract concept concrete through careful visualization.

---

## Slide Sequence

### Section 1: Opening (Slides 1-3)

#### Slide 1: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "Defining Limits"
  - Subtitle: "The Language of Calculus"
  - Meta: "Class 1 | CED 1.2"

#### Slide 2: Yesterday's Question
- **Type:** `slide-statement`
- **Content:**
  - "Yesterday we asked: How do we make sense of *instantaneous* change?"
  - "Today: The notation that makes it precise."

#### Slide 3: The Word "Limit"
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "What does 'limit' mean in everyday language?"
  - Secondary: "A boundary that cannot be crossed... something you approach but don't necessarily reach."

### Section 2: The Definition (Slides 4-8)

#### Slide 4: The Informal Definition
- **Type:** `slide-statement`
- **Content:**
  - Definition box with the informal definition
  - "As x gets closer and closer to a (but not equal to a), f(x) gets closer and closer to L."

#### Slide 5: The Notation
- **Type:** `slide-visual`
- **Content:**
  - Title: "Limit Notation"
  - Large display of: lim(x→a) f(x) = L
  - Labels pointing to each part:
    - "lim" = "the limit of"
    - "x → a" = "as x approaches a"
    - "f(x)" = "the function value"
    - "= L" = "equals L"

#### Slide 6: Interactive - The Limit Explorer
- **Type:** `slide-visual`
- **Content:**
  - Title: "Exploring: lim(x→2) (x² - 4)/(x - 2)"
  - **D3 Visualization:** Limit Explorer
    - Graph of f(x) = (x² - 4)/(x - 2) with hole at x = 2
    - Animated point approaching x = 2
    - Real-time display of x and f(x) values
    - Controls to approach from left or right
  - Caption: "What value does f(x) approach as x approaches 2?"

#### Slide 7: The Crucial Distinction
- **Type:** `slide-comparison`
- **Content:**
  - Title: "Limit vs. Value"
  - Left: "lim(x→a) f(x)" with description "Where f(x) is heading"
  - Right: "f(a)" with description "The actual value at a"
  - Caption: "These can be equal, different, or f(a) might not even exist!"

#### Slide 8: Three Scenarios
- **Type:** `slide-visual`
- **Content:**
  - Title: "Three Scenarios"
  - Three small graphs side by side:
    1. Continuous: Limit = Value
    2. Hole: Limit exists, value doesn't
    3. Jump: Limit doesn't exist
  - Labels under each

### Section 3: Examples (Slides 9-13)

#### Slide 9: Example 1 - Nice Behavior
- **Type:** `slide-example`
- **Content:**
  - Problem: "Find lim(x→3) x²"
  - Graph showing parabola, approaching x = 3
  - Solution steps: "As x → 3, x² → 9"
  - Answer: "lim(x→3) x² = 9 and f(3) = 9 ✓"

#### Slide 10: Example 2 - Hole in Graph
- **Type:** `slide-example`
- **Content:**
  - Problem: "Find lim(x→2) (x² - 4)/(x - 2)"
  - Note: "f(2) is undefined (0/0)"
  - Simplification: "(x-2)(x+2)/(x-2) = x + 2 (when x ≠ 2)"
  - Answer: "lim(x→2) = 4, even though f(2) doesn't exist"

#### Slide 11: Example 3 - Limit DNE
- **Type:** `slide-visual`
- **Content:**
  - Title: "When Limits Don't Exist"
  - Graph of f(x) = 1/x near x = 0
  - Show arrows going to +∞ and -∞ from different sides
  - Caption: "Different behavior from left and right → limit does not exist"

#### Slide 12: One-Sided Limits
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "One-Sided Limits"
  - Notation display:
    - lim(x→a⁺) f(x) = "Right-hand limit (approaching from larger values)"
    - lim(x→a⁻) f(x) = "Left-hand limit (approaching from smaller values)"

#### Slide 13: The Two-Sided Limit Theorem
- **Type:** `slide-statement`
- **Content:**
  - Theorem box:
    - "lim(x→a) f(x) = L exists if and only if:"
    - "lim(x→a⁻) f(x) = L AND lim(x→a⁺) f(x) = L"
  - Caption: "Both one-sided limits must exist and be equal."

### Section 4: Piecewise Example (Slides 14-16)

#### Slide 14: Piecewise Function
- **Type:** `slide-visual`
- **Content:**
  - Title: "Example: Piecewise Function"
  - Display the piecewise function:
    - f(x) = x + 1 if x < 2
    - f(x) = 5 if x = 2
    - f(x) = 3 - x if x > 2
  - Graph showing the function with jump at x = 2

#### Slide 15: Analyzing the Limit
- **Type:** `slide-list`
- **Content:**
  - Title: "Finding lim(x→2) f(x)"
  - Items:
    - "From the left: lim(x→2⁻) f(x) = 2 + 1 = 3"
    - "From the right: lim(x→2⁺) f(x) = 3 - 2 = 1"
    - "Left ≠ Right, so lim(x→2) f(x) does NOT exist"
    - "Note: f(2) = 5, but that's irrelevant to the limit!"

#### Slide 16: Key Insight
- **Type:** `slide-statement`
- **Content:**
  - "The limit is about where f(x) is *heading*, not where it *lands*."

### Section 5: Practice & Closing (Slides 17-20)

#### Slide 17: Practice - Reading Graphs
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Practice: Limits from Graphs"
  - Instructions: "For each graph, determine:"
    - lim(x→a⁻) f(x)
    - lim(x→a⁺) f(x)
    - lim(x→a) f(x)
    - f(a)
  - "Work with a partner for 8 minutes"

#### Slide 18: Summary
- **Type:** `slide-list`
- **Content:**
  - Title: "Key Takeaways"
  - Items:
    - "lim(x→a) f(x) = L means f(x) approaches L as x approaches a"
    - "The limit and the function value can be different"
    - "For the two-sided limit to exist, both one-sided limits must agree"
    - "If left ≠ right, the limit does not exist"

#### Slide 19: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Prompt: "Write in limit notation:"
  - "As x approaches 5, the value of g(x) approaches 12."

#### Slide 20: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - "Tomorrow: Finding limits from graphs and tables"
  - "The graphical and numerical perspectives (G and N of G.N.A.W.)"

---

## Interactive Visualizations

### Visualization 1: Limit Explorer (Slide 6)

**Purpose:** Show how function values approach a limit as x approaches a specific value

**Implementation:**
```javascript
// Function: f(x) = (x² - 4)/(x - 2) = x + 2 (with hole at x = 2)
// Animated point approaches x = 2
// Display updates showing x value and corresponding f(x)
// User controls: Approach from left, approach from right, reset
// Highlight the "hole" at (2, 4)
```

**Features:**
- Smooth animation of point along curve
- Real-time coordinate display
- Toggle for left/right approach
- Visual indicator of the limiting value

### Visualization 2: Three Scenarios (Slide 8)

**Purpose:** Compare three fundamental limit scenarios

**Implementation:**
- Three side-by-side mini-graphs
- Each with approaching arrows/points
- Clear labels for each case

---

## Technical Notes

### MathJax Usage
```html
\[\lim_{x \to a} f(x) = L\]

\[\lim_{x \to a^+} f(x) = L \quad \text{(right-hand limit)}\]

\[\lim_{x \to a^-} f(x) = L \quad \text{(left-hand limit)}\]
```

### Color Coding
- Function curve: `#60a5fa` (blue)
- Limit value indicator: `#22c55e` (green)
- Undefined point/hole: `#ef4444` (red)
- Approaching point: `#f97316` (orange)

---

## Pedagogical Notes

### Key Vocabulary to Introduce
- Limit
- Approaches
- One-sided limit (left-hand, right-hand)
- Does not exist (DNE)

### Common Student Questions
- "Why do we need limits if we can just plug in?" → Show examples where you can't
- "How close is 'close enough'?" → As close as you want—that's the beauty of limits
- "When does a limit not exist?" → Three main cases: different one-sided limits, unbounded behavior, oscillation

### Transition to Next Class
Class 2 will apply these concepts to reading limits from graphs and tables, building facility with the graphical and numerical representations.
