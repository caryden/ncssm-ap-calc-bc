# Presentation Spec: Concavity and Second Derivative Test

## Class 27 | Unit 5: Analytical Applications of Differentiation
## CED Topics 5.6, 5.7

---

## Overview

This presentation explores what the second derivative reveals about function behavior. Students will learn that f'' controls concavity (the "shape" or "curvature" of the graph) - concave up means f'' > 0 (bowl shape), concave down means f'' < 0 (arch shape). Inflection points occur where concavity changes. The Second Derivative Test provides an alternative (often faster) method to classify critical points.

**Theme Color:** `#0d9488` (Unit 5 Teal)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 5: Analytical Applications of Differentiation"
  - Title: "Concavity & Second Derivative Test"
  - Subtitle: "The Shape of Functions"
  - Meta: "Class 27 | CED 5.6, 5.7 | NCSSM"

### Slide 1: Beyond Direction
- **Type:** `slide-visual`
- **Section:** Opening Hook
- **Content:**
  - Title: "Both Increasing, But Different"
  - **D3 Visualization:**
    - Two functions, both increasing
    - Left: Curving upward (like x^2 for x > 0)
    - Right: Curving downward (like sqrt(x))
  - Prompt: "Both functions are increasing. What makes them different?"
- **Notes:** Motivates the need for second derivative analysis

### Slide 2: The Key Question
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "The first derivative tells us WHERE the function is going. The second derivative tells us HOW it's getting there."
  - Secondary: "Today: the shape of the curve, not just its direction."

### Slide 3: Concavity Definitions
- **Type:** `slide-comparison`
- **Section:** Concavity
- **Content:**
  - Title: "Concave Up vs. Concave Down"
  - Column 1: Concave Up
    - Header: "Concave Up (f'' > 0)"
    - "f' is increasing"
    - "Curve bends upward"
    - "Like a bowl or smile :)"
    - "'Holds water'"
    - Small diagram: U-shape
  - Column 2: Concave Down
    - Header: "Concave Down (f'' < 0)"
    - "f' is decreasing"
    - "Curve bends downward"
    - "Like an arch or frown :("
    - "'Spills water'"
    - Small diagram: inverted U-shape

### Slide 4: Concavity Theorem
- **Type:** `slide-two-part`
- **Section:** Concavity
- **Content:**
  - Primary (Theorem box):
    - Label: "Concavity Theorem"
    - "If f''(x) > 0 for all x in (a, b), then f is CONCAVE UP on (a, b)"
    - "If f''(x) < 0 for all x in (a, b), then f is CONCAVE DOWN on (a, b)"
  - Secondary: "The sign of the second derivative determines the shape"

### Slide 5: Why f'' Controls Concavity
- **Type:** `slide-two-part`
- **Section:** Concavity
- **Content:**
  - Title: "Understanding the Connection"
  - Primary:
    - "f'' is the derivative of f'"
    - "f'' > 0 means f' is increasing (slopes getting steeper)"
    - "f'' < 0 means f' is decreasing (slopes getting less steep)"
  - Secondary:
    - "Increasing slopes = curve bending upward"
    - "Decreasing slopes = curve bending downward"

### Slide 6: Tangent Line Perspective
- **Type:** `slide-visual`
- **Section:** Concavity
- **Content:**
  - Title: "Concavity Through Tangent Lines"
  - **D3 Visualization:**
    - Left: Concave up curve with tangent lines rotating counterclockwise
    - Right: Concave down curve with tangent lines rotating clockwise
    - Animation: tangent line sweeps along curve
  - Caption: "Concave up: tangents rotate counterclockwise. Concave down: tangents rotate clockwise."

### Slide 7: Another Visual Test
- **Type:** `slide-visual`
- **Section:** Concavity
- **Content:**
  - Title: "Above or Below the Tangent?"
  - **D3 Visualization:**
    - Concave up: curve lies ABOVE its tangent lines
    - Concave down: curve lies BELOW its tangent lines
  - Caption: "Concave up curves lie above their tangent lines (except at the point of tangency)"

### Slide 8: Finding Concavity - Procedure
- **Type:** `slide-list`
- **Section:** Concavity
- **Content:**
  - Title: "Procedure: Finding Concavity Intervals"
  - List:
    1. "Find f''(x)"
    2. "Find where f''(x) = 0 or undefined (potential inflection points)"
    3. "Create intervals using these values as boundaries"
    4. "Test sign of f'' in each interval using a test point"
    5. "f'' > 0 means concave up, f'' < 0 means concave down"

### Slide 9: Example 1 - Setup
- **Type:** `slide-example`
- **Section:** Concavity Example
- **Content:**
  - Title: "Example: f(x) = x^3 - 6x^2 + 9x + 1"
  - Steps:
    1. "f'(x) = 3x^2 - 12x + 9"
    2. "f''(x) = 6x - 12 = 6(x - 2)"
    3. "f''(x) = 0 when x = 2"

### Slide 10: Example 1 - Sign Chart
- **Type:** `slide-visual`
- **Section:** Concavity Example
- **Content:**
  - Title: "Concavity Analysis"
  - **D3 Visualization:** Sign chart for f''
  - Table:
    | Interval | Test Point | f''(test) | Concavity |
    |----------|------------|-----------|-----------|
    | (-inf, 2) | x = 0 | -12 | Concave down |
    | (2, inf) | x = 3 | 6 | Concave up |
  - Conclusion: "Concave down on (-inf, 2), concave up on (2, inf)"

### Slide 11: Example 1 - Visualization
- **Type:** `slide-visual`
- **Section:** Concavity Example
- **Content:**
  - Title: "Visualizing the Concavity"
  - **D3 Visualization:**
    - Graph of f(x) = x^3 - 6x^2 + 9x + 1
    - Shaded: concave down region (red/orange), concave up region (green/teal)
    - Transition point at x = 2 marked
  - Caption: "The curve changes from concave down to concave up at x = 2"

### Slide 12: Inflection Points Definition
- **Type:** `slide-two-part`
- **Section:** Inflection Points
- **Content:**
  - Primary (Definition box):
    - Label: "Inflection Point"
    - "An inflection point is a point where the CONCAVITY of f changes."
    - "Requirements:"
    - "1. f''(c) = 0 or f''(c) is undefined"
    - "2. f'' changes sign at c"
    - "3. (c, f(c)) must exist"
  - Secondary: "CAUTION: f''(c) = 0 alone is NOT sufficient!"

### Slide 13: Critical Warning
- **Type:** `slide-statement`
- **Section:** Inflection Points
- **Content:**
  - Statement: "f''(c) = 0 is NECESSARY but NOT SUFFICIENT for an inflection point."
  - Secondary: "You MUST verify that f'' changes sign!"
- **Notes:** Major misconception to address

### Slide 14: Not an Inflection Point
- **Type:** `slide-visual`
- **Section:** Inflection Points
- **Content:**
  - Title: "When f''(c) = 0 is NOT an Inflection Point"
  - **D3 Visualization:**
    - Graph of f(x) = x^4
    - f''(x) = 12x^2, so f''(0) = 0
    - But f''(x) >= 0 for all x (no sign change!)
    - Curve is concave up everywhere
  - Caption: "f''(0) = 0 but NO inflection point - the curve is concave up everywhere"

### Slide 15: Yes, an Inflection Point
- **Type:** `slide-visual`
- **Section:** Inflection Points
- **Content:**
  - Title: "A True Inflection Point"
  - **D3 Visualization:**
    - Graph of f(x) = x^3
    - f''(x) = 6x, so f''(0) = 0
    - f'' < 0 for x < 0, f'' > 0 for x > 0
    - Sign DOES change!
  - Caption: "f''(0) = 0 AND sign changes: x = 0 IS an inflection point"

### Slide 16: Inflection Where f'' Undefined
- **Type:** `slide-visual`
- **Section:** Inflection Points
- **Content:**
  - Title: "Inflection at Undefined f''"
  - **D3 Visualization:**
    - Graph of f(x) = x^(1/3)
    - Vertical tangent at origin
    - f''(0) is undefined (but f(0) exists)
    - Concavity changes at x = 0
  - Caption: "f''(0) is undefined, but concavity changes - this IS an inflection point"

### Slide 17: Finding Inflection Points Procedure
- **Type:** `slide-list`
- **Section:** Inflection Points
- **Content:**
  - Title: "Procedure: Finding Inflection Points"
  - List:
    1. "Find all values where f''(x) = 0 or undefined"
    2. "Test for sign change in f'' around each value"
    3. "If sign changes, it IS an inflection point"
    4. "Calculate f(c) to get the coordinates"
  - Warning: "Always verify sign change - don't assume f''(c) = 0 implies inflection!"

### Slide 18: Second Derivative Test Statement
- **Type:** `slide-two-part`
- **Section:** Second Derivative Test
- **Content:**
  - Primary (Theorem box with gold border):
    - Label: "Second Derivative Test"
    - "Suppose f'(c) = 0 (c is a critical point where derivative is zero)."
    - "1. If f''(c) > 0, then f has a LOCAL MINIMUM at c"
    - "2. If f''(c) < 0, then f has a LOCAL MAXIMUM at c"
    - "3. If f''(c) = 0, the test is INCONCLUSIVE"
  - Secondary: "Only applies to critical points where f'(c) = 0"

### Slide 19: Why SDT Works
- **Type:** `slide-visual`
- **Section:** Second Derivative Test
- **Content:**
  - Title: "Why the Second Derivative Test Works"
  - **D3 Visualization:**
    - Left: f''(c) > 0 (concave up at c) = valley bottom = local min
    - Right: f''(c) < 0 (concave down at c) = hilltop = local max
  - Caption: "Concave up at critical point = minimum. Concave down = maximum."

### Slide 20: First vs. Second Derivative Test
- **Type:** `slide-comparison`
- **Section:** Second Derivative Test
- **Content:**
  - Title: "Comparing the Tests"
  - Column 1: First Derivative Test
    - "Requires: sign chart for f'"
    - "Looks for: sign change in f'"
    - "Works: ALWAYS (never inconclusive)"
    - "Best when: f'' is hard to compute"
  - Column 2: Second Derivative Test
    - "Requires: single value f''(c)"
    - "Looks for: sign of f''(c)"
    - "Can be: INCONCLUSIVE (if f''(c) = 0)"
    - "Best when: f''(c) is easy to compute"

### Slide 21: SDT Example
- **Type:** `slide-example`
- **Section:** Second Derivative Test
- **Content:**
  - Title: "Example: f(x) = x^3 - 3x^2 - 9x + 5"
  - Steps:
    1. "f'(x) = 3x^2 - 6x - 9 = 3(x - 3)(x + 1)"
    2. "Critical points: x = -1 and x = 3"
    3. "f''(x) = 6x - 6"
    4. "Apply Second Derivative Test:"
       - "f''(-1) = -12 < 0 implies LOCAL MAXIMUM at x = -1"
       - "f''(3) = 12 > 0 implies LOCAL MINIMUM at x = 3"

### Slide 22: SDT Visualization
- **Type:** `slide-visual`
- **Section:** Second Derivative Test
- **Content:**
  - Title: "Visualizing the Example"
  - **D3 Visualization:**
    - Graph of f(x) = x^3 - 3x^2 - 9x + 5
    - Local max at x = -1 marked (with concave down shading around it)
    - Local min at x = 3 marked (with concave up shading around it)
    - Horizontal tangent lines at both points
  - Caption: "Concave down at x = -1 (max), concave up at x = 3 (min)"

### Slide 23: When SDT Fails
- **Type:** `slide-example`
- **Section:** Second Derivative Test
- **Content:**
  - Title: "When Second Derivative Test is Inconclusive"
  - Problem: "Classify critical point of f(x) = x^4"
  - Steps:
    1. "f'(x) = 4x^3, critical point at x = 0"
    2. "f''(x) = 12x^2, so f''(0) = 0"
    3. "SDT is INCONCLUSIVE"
    4. "Use First Derivative Test:"
       - "f'(-1) = -4 < 0, f'(1) = 4 > 0"
       - "Sign changes - to +, so LOCAL MINIMUM at x = 0"

### Slide 24: Complete Analysis Example
- **Type:** `slide-example`
- **Section:** Complete Analysis
- **Content:**
  - Title: "Putting It All Together: f(x) = x^4 - 4x^3"
  - "First Derivative: f'(x) = 4x^3 - 12x^2 = 4x^2(x - 3)"
  - "Critical points: x = 0 and x = 3"
  - "Second Derivative: f''(x) = 12x^2 - 24x = 12x(x - 2)"
  - "Potential inflection points: x = 0 and x = 2"

### Slide 25: Complete Analysis - Extrema
- **Type:** `slide-example`
- **Section:** Complete Analysis
- **Content:**
  - Title: "Classifying Critical Points"
  - Steps:
    - "At x = 0: f''(0) = 0 (SDT inconclusive)"
    - "Use FDT at x = 0: f'(-1) = -16 < 0, f'(1) = -8 < 0"
    - "No sign change: x = 0 is NOT an extremum"
    - "At x = 3: f''(3) = 36 > 0"
    - "SDT: LOCAL MINIMUM at x = 3"

### Slide 26: Complete Analysis - Inflection
- **Type:** `slide-example`
- **Section:** Complete Analysis
- **Content:**
  - Title: "Finding Inflection Points"
  - Steps:
    - "f''(x) = 12x(x - 2) = 0 at x = 0 and x = 2"
    - "At x = 0: f''(-1) = 36 > 0, f''(1) = -12 < 0 (sign change!)"
    - "Inflection point at x = 0"
    - "At x = 2: f''(1) = -12 < 0, f''(3) = 36 > 0 (sign change!)"
    - "Inflection point at x = 2"
  - Result: "Inflection points at x = 0 and x = 2"

### Slide 27: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Prompt: "Given f''(x) = x^2 - 4 = (x - 2)(x + 2):"
  - Tasks:
    1. "Find intervals where f is concave up and concave down"
    2. "Identify all inflection points"
    3. "If f'(0) = 0, what can you conclude about x = 0 using SDT?"
  - Time: "3 minutes"

### Slide 28: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Steps:
    1. "f''(x) = 0 at x = -2 and x = 2"
    2. "Sign chart: f''(-3) = 5 > 0, f''(0) = -4 < 0, f''(3) = 5 > 0"
    3. "Concave up on (-inf, -2) and (2, inf)"
    4. "Concave down on (-2, 2)"
    5. "Sign changes at both x = -2 and x = 2"
    6. "Inflection points at x = -2 and x = 2"
    7. "If f'(0) = 0 and f''(0) = -4 < 0: LOCAL MAXIMUM at x = 0"

### Slide 29: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "f'' > 0 means concave up (bowl), f'' < 0 means concave down (arch)"
    - "Inflection point requires f'' = 0 (or undefined) AND sign change"
    - "f''(c) = 0 alone does NOT guarantee inflection point"
    - "SDT: f''(c) > 0 means local min, f''(c) < 0 means local max"
    - "If SDT is inconclusive (f''(c) = 0), use First Derivative Test"
    - "Concavity and direction are independent properties"

### Slide 30: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "A function f has:"
  - "f'(2) = 0 and f''(2) = -5"
  - "f''(x) = 0 only at x = 4, with f''(3) < 0 and f''(5) > 0"
  - Tasks:
    1. "What type of extremum (if any) does f have at x = 2?"
    2. "Is x = 4 an inflection point? Explain."

### Slide 31: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Curve Sketching - Putting Everything Together"
  - Secondary: "Connecting f, f', and f'' to create complete function analysis"

---

## D3 Visualization Specifications

### Visualization 1: Concave Up vs. Down Comparison (Slide 1, 3)

```javascript
// Side-by-side comparison of concavity
// Features:
// - Left panel: Concave up curve (like x^2)
// - Right panel: Concave down curve (like -x^2)
// - Both curves shown with water analogy
// - "Bowl" vs. "Arch" labeling
// - Smile :) vs. Frown :( indication

// Color scheme:
// - Concave up: teal (#0d9488) with light fill
// - Concave down: orange (#f97316) with light fill
```

### Visualization 2: Tangent Line Rotation (Slide 6)

```javascript
// Animated tangent lines showing concavity
// Features:
// - Curve with point moving along it
// - Tangent line at the point, continuously updating
// - For concave up: tangent rotates counterclockwise
// - For concave down: tangent rotates clockwise
// - Slope indicator showing value increasing/decreasing

// Animation: point sweeps along curve
// Tangent line visibly rotates
// Slope readout: "Slope: 2.1 (increasing)" or "(decreasing)"
```

### Visualization 3: f'' Sign Chart (Slide 10)

```javascript
// Interactive sign chart for f''
// Features:
// - Number line with potential inflection points marked
// - Intervals clearly labeled
// - Test points shown
// - Sign (+/-) displayed
// - Concavity (up/down) shown below

// For f(x) = x^3 - 6x^2 + 9x + 1:
// f''(x) = 6x - 12
// Potential inflection: x = 2
```

### Visualization 4: f(x) = x^4 No Inflection (Slide 14)

```javascript
// Demonstrate f''(0) = 0 but no inflection
// Features:
// - Graph of f(x) = x^4
// - Highlight that curve is concave up everywhere
// - Show f''(x) = 12x^2 is always >= 0
// - Mark x = 0 but label "NOT an inflection point"

// Key visual: entire curve shaded to show constant concavity
```

### Visualization 5: f(x) = x^3 True Inflection (Slide 15)

```javascript
// Demonstrate true inflection point
// Features:
// - Graph of f(x) = x^3
// - Clear change in concavity at x = 0
// - Left side: concave down (red)
// - Right side: concave up (green)
// - Point at (0, 0) marked as inflection

// Show f'' values: negative for x < 0, positive for x > 0
```

### Visualization 6: SDT Demonstration (Slides 19, 22)

```javascript
// Show why SDT works
// Features:
// - Two panels showing critical points
// - Left: Critical point with concave up locally = minimum
// - Right: Critical point with concave down locally = maximum
// - Tangent horizontal at critical point
// - Surrounding curve shape shows concavity

// Animation: zoom into critical point, show local concavity
```

### Visualization 7: Triple Graph - f, f', f'' (Complete Analysis)

```javascript
// Three vertically aligned graphs
// Features:
// - Top: f(x) with increasing/decreasing and concave up/down
// - Middle: f'(x) with positive/negative regions
// - Bottom: f''(x) with positive/negative regions

// Correspondences highlighted:
// - f increasing where f' > 0
// - f concave up where f'' > 0
// - f inflection where f'' changes sign
// - f' extrema where f'' = 0 (which are f inflection points)

// Interactive vertical line showing correspondence
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-5-analysis: #0d9488` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Major misconception: f''(c) = 0 implies inflection - emphasize sign change required
- Compare FDT (always works) vs. SDT (can be inconclusive)
- Physical interpretation: acceleration (f'' when f is position)
