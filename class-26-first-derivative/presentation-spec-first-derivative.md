# Presentation Spec: Increasing/Decreasing Intervals and First Derivative Test

## Class 26 | Unit 5: Analytical Applications of Differentiation
## CED Topics 5.3, 5.4

---

## Overview

This presentation establishes the fundamental connection between the sign of the first derivative and function behavior. Students will learn that f'(x) > 0 implies increasing and f'(x) < 0 implies decreasing. The First Derivative Test provides a systematic method to classify critical points as local maxima, local minima, or neither by examining sign changes in f'.

**Theme Color:** `#0d9488` (Unit 5 Teal)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 5: Analytical Applications of Differentiation"
  - Title: "First Derivative Test"
  - Subtitle: "Connecting f' to Function Behavior"
  - Meta: "Class 26 | CED 5.3, 5.4 | NCSSM"

### Slide 1: Opening Challenge
- **Type:** `slide-visual`
- **Section:** Opening Hook
- **Content:**
  - Title: "Reading a Derivative Graph"
  - **D3 Visualization:** Graph of f'(x) only (NOT f)
  - Prompt: "Where is the original function f increasing? Decreasing? Where might f have a maximum?"
- **Notes:** Students work backwards from derivative to function behavior

### Slide 2: The Key Connection
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "When f' is above the x-axis, f is going UP. When f' is below the x-axis, f is going DOWN."
  - Secondary: "The sign of f' tells us the direction of f."

### Slide 3: Increasing/Decreasing Theorem
- **Type:** `slide-two-part`
- **Section:** Inc/Dec Theorem
- **Content:**
  - Primary (Theorem box with gold border):
    - Label: "Increasing/Decreasing Theorem"
    - "Let f be continuous on [a, b] and differentiable on (a, b)."
    - "If f'(x) > 0 for all x in (a, b), then f is INCREASING on [a, b]"
    - "If f'(x) < 0 for all x in (a, b), then f is DECREASING on [a, b]"
    - "If f'(x) = 0 for all x in (a, b), then f is CONSTANT on [a, b]"
  - Secondary: "Positive derivative = going up. Negative derivative = going down."

### Slide 4: Visual Intuition
- **Type:** `slide-visual`
- **Section:** Inc/Dec Theorem
- **Content:**
  - Title: "Tangent Lines Tell the Story"
  - **D3 Visualization:**
    - Curve with multiple tangent lines drawn
    - Where tangent tilts up (positive slope): label "f increasing"
    - Where tangent tilts down (negative slope): label "f decreasing"
  - Caption: "Positive slope tangent = rising function. Negative slope tangent = falling function."

### Slide 5: Connection to MVT
- **Type:** `slide-two-part`
- **Section:** Inc/Dec Theorem
- **Content:**
  - Title: "Why Does This Work?"
  - Primary: "This theorem is actually proven using the Mean Value Theorem!"
  - Secondary:
    - "If f'(x) > 0 on (a, b), then for any x1 < x2:"
    - "MVT gives f(x2) - f(x1) = f'(c)(x2 - x1) for some c"
    - "Since f'(c) > 0 and (x2 - x1) > 0, we have f(x2) > f(x1)"
    - "Therefore f is increasing!"

### Slide 6: Finding Intervals Procedure
- **Type:** `slide-list`
- **Section:** Inc/Dec Theorem
- **Content:**
  - Title: "Procedure: Finding Increasing/Decreasing Intervals"
  - List:
    1. "Find all critical points (where f' = 0 or undefined)"
    2. "Create intervals using critical points as boundaries"
    3. "Test the sign of f' in each interval using ONE test point"
    4. "Conclude: f' > 0 means increasing, f' < 0 means decreasing"
  - Note: "Critical points divide the real line into intervals of consistent behavior"

### Slide 7: Sign Chart Introduction
- **Type:** `slide-visual`
- **Section:** Inc/Dec Theorem
- **Content:**
  - Title: "The Sign Chart"
  - **D3 Visualization:**
    - Number line with critical points marked
    - Intervals labeled with + or - for sign of f'
    - Below: "inc" or "dec" for function behavior
  - Caption: "The sign chart organizes our analysis systematically"

### Slide 8: Example 1 - Setup
- **Type:** `slide-example`
- **Section:** Worked Example 1
- **Content:**
  - Title: "Example: f(x) = x^3 - 12x"
  - Steps:
    1. "Find f'(x) = 3x^2 - 12 = 3(x^2 - 4) = 3(x - 2)(x + 2)"
    2. "Find critical points: f'(x) = 0 when x = -2 or x = 2"
    3. "Create intervals: (-inf, -2), (-2, 2), (2, inf)"

### Slide 9: Example 1 - Sign Chart
- **Type:** `slide-visual`
- **Section:** Worked Example 1
- **Content:**
  - Title: "Example: Sign Chart"
  - **D3 Visualization:** Complete sign chart for f(x) = x^3 - 12x
    - Number line with x = -2 and x = 2 marked
    - Test points: x = -3, x = 0, x = 3
    - Signs: +, -, +
    - Behavior: inc, dec, inc
  - Table:
    | Interval | Test Point | f'(test) | Sign | Behavior |
    |----------|------------|----------|------|----------|
    | (-inf, -2) | x = -3 | 15 | + | increasing |
    | (-2, 2) | x = 0 | -12 | - | decreasing |
    | (2, inf) | x = 3 | 15 | + | increasing |

### Slide 10: Example 1 - Conclusion
- **Type:** `slide-two-part`
- **Section:** Worked Example 1
- **Content:**
  - Title: "Example: Conclusion"
  - Primary:
    - "f is increasing on (-inf, -2] and [2, inf)"
    - "f is decreasing on [-2, 2]"
  - Secondary:
    - "Note: We include the endpoints in the intervals when continuous"
    - "The function changes direction at x = -2 and x = 2"

### Slide 11: Visualizing Example 1
- **Type:** `slide-visual`
- **Section:** Worked Example 1
- **Content:**
  - Title: "Visualizing f(x) = x^3 - 12x"
  - **D3 Visualization:**
    - Graph of f(x) = x^3 - 12x
    - Shaded green where increasing, red where decreasing
    - Critical points marked
    - Tangent lines at key points showing slope
  - Caption: "The sign chart matches the graph behavior"

### Slide 12: First Derivative Test Statement
- **Type:** `slide-two-part`
- **Section:** First Derivative Test
- **Content:**
  - Primary (Theorem box with gold border):
    - Label: "First Derivative Test"
    - "Suppose c is a critical point of a continuous function f."
    - "1. If f' changes from + to - at c, then f has a LOCAL MAXIMUM at c"
    - "2. If f' changes from - to + at c, then f has a LOCAL MINIMUM at c"
    - "3. If f' does NOT change sign at c, then f has NO LOCAL EXTREMUM at c"
  - Secondary: "The sign CHANGE is what determines the type of extremum"

### Slide 13: Why FDT Works
- **Type:** `slide-visual`
- **Section:** First Derivative Test
- **Content:**
  - Title: "Why the First Derivative Test Works"
  - **D3 Visualization:** Three panels:
    - Left: + to - (increasing then decreasing = hilltop = local max)
    - Center: - to + (decreasing then increasing = valley = local min)
    - Right: same sign (no turn = not an extremum)
  - Caption: "Sign changes correspond to turning points"

### Slide 14: Local Max Animation
- **Type:** `slide-visual`
- **Section:** First Derivative Test
- **Content:**
  - Title: "Local Maximum: f' changes + to -"
  - **D3 Visualization:**
    - Animated tangent line rotating from upward to horizontal to downward
    - Function rising, flattening, then falling
    - Labels showing slope: positive -> zero -> negative
  - Caption: "The function rises to a peak, then falls - like climbing a hill"

### Slide 15: Local Min Animation
- **Type:** `slide-visual`
- **Section:** First Derivative Test
- **Content:**
  - Title: "Local Minimum: f' changes - to +"
  - **D3 Visualization:**
    - Animated tangent line rotating from downward to horizontal to upward
    - Function falling, flattening, then rising
    - Labels showing slope: negative -> zero -> positive
  - Caption: "The function falls to a valley, then rises - like descending into a bowl"

### Slide 16: No Extremum Case
- **Type:** `slide-visual`
- **Section:** First Derivative Test
- **Content:**
  - Title: "No Sign Change: Not an Extremum"
  - **D3 Visualization:**
    - Graph of f(x) = x^3 showing no sign change at x = 0
    - f'(x) = 3x^2 is always non-negative
    - Horizontal tangent at x = 0, but function continues through
  - Caption: "f'(0) = 0 but f just flattens momentarily - this is an inflection point"
- **Notes:** Critical example for common misconception

### Slide 17: Complete Example - Setup
- **Type:** `slide-example`
- **Section:** Complete Analysis
- **Content:**
  - Title: "Complete Analysis: f(x) = 2x^3 - 9x^2 + 12x - 4"
  - Steps:
    1. "f'(x) = 6x^2 - 18x + 12 = 6(x^2 - 3x + 2) = 6(x - 1)(x - 2)"
    2. "Critical points: x = 1 and x = 2"

### Slide 18: Complete Example - Sign Chart
- **Type:** `slide-visual`
- **Section:** Complete Analysis
- **Content:**
  - Title: "Sign Chart Analysis"
  - **D3 Visualization:** Complete sign chart
  - Table:
    | Interval | Test Point | f'(test) | Sign |
    |----------|------------|----------|------|
    | (-inf, 1) | x = 0 | 12 | + |
    | (1, 2) | x = 1.5 | -1.5 | - |
    | (2, inf) | x = 3 | 12 | + |

### Slide 19: Complete Example - Conclusion
- **Type:** `slide-two-part`
- **Section:** Complete Analysis
- **Content:**
  - Title: "Applying First Derivative Test"
  - Primary:
    - "At x = 1: f' changes + to -, so LOCAL MAXIMUM"
    - "At x = 2: f' changes - to +, so LOCAL MINIMUM"
  - Secondary:
    - "f(1) = 2 - 9 + 12 - 4 = 1 (local max value)"
    - "f(2) = 16 - 36 + 24 - 4 = 0 (local min value)"

### Slide 20: Visualizing Complete Example
- **Type:** `slide-visual`
- **Section:** Complete Analysis
- **Content:**
  - Title: "Graph with Extrema Marked"
  - **D3 Visualization:**
    - Graph of f(x) = 2x^3 - 9x^2 + 12x - 4
    - Local max at (1, 1) marked
    - Local min at (2, 0) marked
    - Tangent lines at both critical points (horizontal)
  - Caption: "Local max at x = 1, local min at x = 2"

### Slide 21: The No Sign Change Example
- **Type:** `slide-example`
- **Section:** Key Example
- **Content:**
  - Title: "When f'(c) = 0 is NOT an Extremum"
  - Problem: "Analyze f(x) = x^4"
  - Steps:
    1. "f'(x) = 4x^3"
    2. "Critical point: x = 0"
    3. "Sign: f'(-1) = -4 < 0, f'(1) = 4 > 0"
    4. "Sign changes from - to +, so LOCAL MINIMUM at x = 0"

### Slide 22: The x^3 Example
- **Type:** `slide-example`
- **Section:** Key Example
- **Content:**
  - Title: "Contrast: f(x) = x^3"
  - Steps:
    1. "f'(x) = 3x^2"
    2. "Critical point: x = 0 (where f'(0) = 0)"
    3. "Sign: f'(-1) = 3 > 0, f'(1) = 3 > 0"
    4. "Both sides positive - NO sign change"
    5. "x = 0 is NOT a local extremum!"
  - Key insight: "f'(c) = 0 does NOT guarantee an extremum"

### Slide 23: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Prompt: "For f(x) = x^4 - 4x^3:"
  - Tasks:
    1. "Find f'(x) and all critical points"
    2. "Construct a sign chart for f'"
    3. "Determine where f is increasing/decreasing"
    4. "Classify each critical point using First Derivative Test"
  - Time: "4 minutes"

### Slide 24: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: f(x) = x^4 - 4x^3"
  - Steps:
    1. "f'(x) = 4x^3 - 12x^2 = 4x^2(x - 3)"
    2. "Critical points: x = 0 and x = 3"
    3. "Sign analysis: 4x^2 >= 0 always, so sign depends on (x - 3)"
    4. "For x < 3: (x-3) < 0, so f' < 0"
    5. "For x > 3: (x-3) > 0, so f' > 0"
  - Conclusion:
    - "At x = 0: No sign change (both sides -), NOT an extremum"
    - "At x = 3: Sign changes - to +, LOCAL MINIMUM"

### Slide 25: Application - Revenue
- **Type:** `slide-example`
- **Section:** Application
- **Content:**
  - Title: "Application: Revenue Analysis"
  - Problem: "If R(x) = 100x - x^2 represents revenue from selling x units, when is revenue increasing?"
  - Solution:
    - "R'(x) = 100 - 2x"
    - "R'(x) = 0 when x = 50"
    - "R'(x) > 0 when x < 50 (revenue increasing)"
    - "R'(x) < 0 when x > 50 (revenue decreasing)"
  - Conclusion: "Maximum revenue at x = 50 units"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "f' > 0 means f increasing; f' < 0 means f decreasing"
    - "Sign chart is the essential organizational tool"
    - "First Derivative Test: look for sign CHANGE"
    - "+ to - = local max; - to + = local min"
    - "No sign change at critical point = NOT an extremum"
    - "FDT is never inconclusive (unlike Second Derivative Test)"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "Given f'(x) = (x - 1)^2(x - 3):"
  - Tasks:
    1. "Find all critical points"
    2. "Determine where f is increasing and decreasing"
    3. "Classify each critical point (local max, local min, or neither)"
  - Note: "Be careful with the squared factor!"

### Slide 28: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Concavity and the Second Derivative Test"
  - Secondary: "What does f'' tell us about the shape of f?"

---

## D3 Visualization Specifications

### Visualization 1: Derivative Graph Reading (Slide 1)

```javascript
// Show f'(x) graph only - students deduce f behavior
// Features:
// - Graph of f'(x) = (x-1)(x-3) or similar
// - Clear positive and negative regions relative to x-axis
// - No f(x) graph shown
// - Students identify: where is f increasing? decreasing?

// Color scheme:
// - f' curve: #60a5fa
// - Region above x-axis (f' > 0): light green fill
// - Region below x-axis (f' < 0): light red fill

// Interactive: click to reveal interpretation
```

### Visualization 2: Tangent Line Direction (Slide 4)

```javascript
// Show function with multiple tangent lines
// Features:
// - Smooth curve with rising and falling sections
// - Several tangent lines drawn at different points
// - Where tangent tilts up: label "increasing" in green
// - Where tangent tilts down: label "decreasing" in red
// - Horizontal tangent at critical points

// Animation: tangent line sweeps along curve
// Shows slope changing from positive to negative
```

### Visualization 3: Interactive Sign Chart (Slides 7, 9)

```javascript
// Dynamic sign chart builder
// Features:
// - Number line with critical points
// - Intervals clearly marked
// - Test point evaluation shown
// - Sign (+/-) displayed for each interval
// - Behavior (inc/dec) displayed below

// For f(x) = x^3 - 12x:
// Critical points at x = -2 and x = 2
// Intervals: (-inf, -2), (-2, 2), (2, inf)
// Signs: +, -, +

// Interactive: hover over interval to see test point calculation
```

### Visualization 4: First Derivative Test Animation (Slides 14, 15)

```javascript
// Animated demonstration of FDT
// Features:
// - Function curve that rises, peaks, falls (local max)
// - Or falls, valleys, rises (local min)
// - Tangent line that rotates as point moves along curve
// - Slope indicator showing + -> 0 -> - (or - -> 0 -> +)

// Animation sequence:
// 1. Point moves along curve
// 2. Tangent line rotates
// 3. Slope value updates
// 4. At critical point: tangent horizontal
// 5. Past critical point: slope changes sign

// Color: slope positive = green, negative = red, zero = yellow
```

### Visualization 5: f vs f' Side-by-Side (Slides 11, 20)

```javascript
// Two vertically aligned graphs
// Top: f(x) with increasing/decreasing regions shaded
// Bottom: f'(x) with positive/negative regions shaded

// Correspondence:
// - f increasing <-> f' above x-axis
// - f decreasing <-> f' below x-axis
// - f extremum <-> f' crosses zero

// Interactive: vertical line that user drags
// Shows corresponding points on both graphs
// Display: "f'(x) = [value], so f is [increasing/decreasing]"
```

### Visualization 6: No Sign Change Example (Slide 16)

```javascript
// f(x) = x^3 demonstration
// Features:
// - Cubic curve passing through origin
// - Horizontal tangent at x = 0
// - f'(x) = 3x^2 shown (always >= 0)
// - Arrows showing function continues increasing through x = 0

// Key message: "f'(0) = 0 but no sign change"
// Label: "Not an extremum - inflection point"
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-5-analysis: #0d9488` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Emphasize sign chart construction as systematic tool
- Key misconception to address: f'(c) = 0 does NOT guarantee extremum
- Comparison with Second Derivative Test (which CAN be inconclusive) important
