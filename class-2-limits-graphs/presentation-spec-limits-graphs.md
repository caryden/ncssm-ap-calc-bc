# Presentation Specification: Estimating Limits from Graphs

## Class 2 | February 6, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topic:** 1.3 - Estimating Limit Values from Graphs

This presentation focuses on the graphical perspective of limits (the "G" in G.N.A.W.), building strong visual intuition for limit behavior before moving to numerical and algebraic approaches.

---

## Slide Sequence

### Section 1: Opening (Slides 0-2)

#### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "Limits from Graphs"
  - Subtitle: "The Graphical Perspective"
  - Meta: "Class 2 | February 6, 2026 | CED 1.3"

#### Slide 1: Visual Challenge
- **Type:** `slide-visual`
- **Content:**
  - Title: "What Do You See?"
  - D3 Visualization: Complex piecewise function with multiple behaviors
  - Prompt: "What happens as x approaches 2?"

#### Slide 2: The Core Question
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Where is the function *heading*—not where it lands."
  - Emphasis on "heading"

### Section 2: Reading Limits from Graphs (Slides 3-8)

#### Slide 3: Graphical Approach
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "Reading Limits from Graphs"
  - Secondary: "Trace the curve as x approaches a. Watch where y is going."

#### Slide 4: Interactive Limit Reader
- **Type:** `slide-visual`
- **Content:**
  - Title: "Trace the Approach"
  - **D3 Visualization:** Interactive graph explorer
    - Function curve with animated point tracing
    - Left and right approach indicators
    - Y-value display updating in real-time
    - Slider to control approach distance
  - Caption: "Follow the curve from both sides"

#### Slide 5: The Four Questions
- **Type:** `slide-list`
- **Content:**
  - Title: "For Every Limit Problem, Ask:"
  - Items:
    - "What is \(\lim_{x \to a^-} f(x)\)?" (left-hand limit)
    - "What is \(\lim_{x \to a^+} f(x)\)?" (right-hand limit)
    - "Does \(\lim_{x \to a} f(x)\) exist?" (two-sided limit)
    - "What is f(a)?" (function value)

#### Slide 6: When Does the Limit Exist?
- **Type:** `slide-visual`
- **Content:**
  - Title: "The Two-Sided Limit Exists When..."
  - **D3 Visualization:** Two arrows converging to same y-value
  - Key statement: \(\lim_{x \to a} f(x) = L\) exists iff both one-sided limits equal L

#### Slide 7: Limit vs. Function Value
- **Type:** `slide-comparison`
- **Content:**
  - Title: "Limit vs. f(a): They Can Differ!"
  - Left column: "The Limit" - Where the curve is heading
  - Right column: "f(a)" - The actual value (the dot)
  - Caption: "The filled dot shows f(a). The limit is about the curve's direction."

#### Slide 8: Reading the Symbols
- **Type:** `slide-visual`
- **Content:**
  - Title: "What the Graph Tells You"
  - Diagram showing:
    - Solid dot = f(a) exists
    - Open circle = f(a) undefined
    - Curve direction = limit behavior

### Section 3: Six Cases (Slides 9-15)

#### Slide 9: Case 1 - Continuous
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 1: Continuous at x = a"
  - **D3 Visualization:** Smooth parabola with solid point
  - Display: \(\lim_{x \to a} f(x) = f(a)\)
  - Caption: "Everything agrees. Limit equals function value."

#### Slide 10: Case 2 - Removable Discontinuity (Hole)
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 2: Hole in the Graph"
  - **D3 Visualization:** Line with open circle and different filled point
  - Display: Limit exists, but \(\lim_{x \to a} f(x) \neq f(a)\)
  - Caption: "The limit exists, but f(a) is somewhere else."

#### Slide 11: Case 3 - Undefined Value
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 3: Limit Exists, f(a) Undefined"
  - **D3 Visualization:** Line with hole (no filled point)
  - Display: Limit exists, f(a) undefined
  - Caption: "The function approaches a value, but there's no actual value at a."

#### Slide 12: Case 4 - Jump Discontinuity
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 4: Jump Discontinuity"
  - **D3 Visualization:** Piecewise function with visible jump
  - Display: \(\lim_{x \to a^-} f(x) \neq \lim_{x \to a^+} f(x)\)
  - Caption: "Left and right limits disagree. The two-sided limit does not exist."

#### Slide 13: Case 5 - Infinite Behavior
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 5: Unbounded Behavior"
  - **D3 Visualization:** Function approaching vertical asymptote
  - Display: Function approaches \(\pm\infty\)
  - Caption: "When f(x) → ±∞, the limit does not exist (as a finite number)."

#### Slide 14: Case 6 - Oscillation
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 6: Wild Oscillation"
  - **D3 Visualization:** sin(1/x) near origin
  - Caption: "The function oscillates infinitely fast—no single value is approached."

#### Slide 15: Summary of Cases
- **Type:** `slide-visual`
- **Content:**
  - Title: "Six Cases at a Glance"
  - **D3 Visualization:** Grid of 6 mini-graphs with status indicators
    - Continuous ✓
    - Hole (removable) ✓
    - Hole (undefined) ✓
    - Jump ✗
    - Infinite ✗
    - Oscillation ✗

### Section 4: Practice (Slides 16-19)

#### Slide 16: Practice Problem 1
- **Type:** `slide-visual`
- **Content:**
  - Title: "Practice: Analyze This Graph"
  - **D3 Visualization:** Piecewise function with hole
  - Prompt: Find all four values at x = 2

#### Slide 17: Practice Problem 2
- **Type:** `slide-visual`
- **Content:**
  - Title: "Practice: Jump Discontinuity"
  - **D3 Visualization:** Step function
  - Prompt: Find all four values at x = 1

#### Slide 18: Practice Problem 3
- **Type:** `slide-visual`
- **Content:**
  - Title: "Practice: Multiple Points"
  - **D3 Visualization:** Complex function with several interesting points
  - Prompt: Analyze limits at x = -1, x = 1, x = 3

#### Slide 19: Common Mistakes
- **Type:** `slide-list`
- **Content:**
  - Title: "Avoid These Errors"
  - Items:
    - "Confusing the dot (f(a)) with the limit"
    - "Only checking one direction of approach"
    - "Missing open circles on the graph"
    - "Reading the wrong y-value"

### Section 5: Closing (Slides 20-22)

#### Slide 20: Key Takeaways
- **Type:** `slide-list`
- **Content:**
  - Title: "Key Takeaways"
  - Items:
    - "Trace the curve from both sides"
    - "The limit is about direction, not destination"
    - "Both one-sided limits must agree for the two-sided limit to exist"
    - "f(a) and the limit are independent concepts"

#### Slide 21: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Exit Ticket"
  - **D3 Visualization:** New graph for assessment
  - Prompt: "Find \(\lim_{x \to 3^-} f(x)\), \(\lim_{x \to 3^+} f(x)\), \(\lim_{x \to 3} f(x)\), and f(3)."

#### Slide 22: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Tomorrow: Estimating limits from *tables* of values"
  - Secondary: "The numerical perspective (N of G.N.A.W.)"

---

## Interactive Visualizations

### Visualization 1: Interactive Limit Reader (Slide 4)

**Purpose:** Allow students to trace curves and see limit behavior dynamically

**Implementation:**
```javascript
function drawLimitReader() {
    // Features:
    // - Selectable function from dropdown
    // - Animated point that traces curve
    // - Split view: left approach (blue) and right approach (red)
    // - Y-value display updates in real-time
    // - Slider to control how close to approach
    // - Dashed lines showing convergence to limit value
}
```

**Interactivity:**
- Buttons to approach from left/right
- Slider for approach distance
- Real-time y-value display
- Animation speed control

### Visualization 2: Six Cases Grid (Slide 15)

**Purpose:** Show all six cases side-by-side for comparison

**Implementation:**
- 3x2 grid of mini-graphs
- Each graph clearly labeled with case type
- Color coding: green for limit exists, red for DNE
- Hover for larger view

### Visualization 3: Practice Graphs (Slides 16-18)

**Purpose:** Assessment and practice

**Implementation:**
- Clear, well-labeled axes
- Points of interest marked
- Clickable to reveal answers (teacher-controlled)

---

## Technical Notes

### Required Libraries
- D3.js v7
- MathJax (for mathematical notation)

### Color Usage
- Theme color: `#356093` (NCSSM Blue / Unit 1)
- Left approach: `#60a5fa` (blue)
- Right approach: `#f97316` (orange)
- Limit line: `#22c55e` (green)
- DNE indicator: `#ef4444` (red)
- Function curve: `#60a5fa` (blue)
- Points: filled = `#f97316`, open = stroke only

### Responsive Requirements
- All visualizations must use viewBox for scaling
- Minimum font size: 1.25rem for all labels
- Test on classroom display (80" TV)

---

## Pedagogical Notes

### Key Takeaways to Reinforce
1. Limits are about approach, not arrival
2. Check both directions before concluding
3. f(a) and the limit are separate concepts
4. Visual patterns indicate limit behavior

### Pacing Notes
- Spend adequate time on the interactive explorer
- Don't rush through the six cases
- Allow for partner discussion during practice

### Transition to Next Class
Class 3 will use tables of values to estimate limits numerically, complementing the graphical approach learned today.
