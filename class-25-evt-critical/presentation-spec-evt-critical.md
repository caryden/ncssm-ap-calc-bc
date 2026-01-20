# Presentation Spec: Extreme Value Theorem and Critical Points

## Class 25 | Unit 5: Analytical Applications of Differentiation
## CED Topic 5.2

---

## Overview

This presentation introduces the Extreme Value Theorem, which guarantees that continuous functions on closed intervals attain maximum and minimum values. Students will learn to distinguish between local and global extrema, identify critical points (where f' = 0 or f' is undefined), and apply the Candidates Test to find absolute extrema systematically.

**Theme Color:** `#0d9488` (Unit 5 Teal)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 5: Analytical Applications of Differentiation"
  - Title: "Extreme Value Theorem"
  - Subtitle: "Finding Maximum and Minimum Values"
  - Meta: "Class 25 | CED 5.2 | NCSSM"

### Slide 1: The Mountain Hike
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "You hike a trail from 1000 ft to 1500 ft elevation. What can you say about the highest and lowest points on your hike?"
  - Secondary: "There MUST be a highest point and a lowest point somewhere..."
- **Notes:** Set up intuition for EVT

### Slide 2: The Guarantee
- **Type:** `slide-two-part`
- **Section:** Opening Hook
- **Content:**
  - Primary: "A continuous path with defined start and end points must reach a maximum and minimum height somewhere."
  - Secondary: "How do we find these points mathematically?"

### Slide 3: Extreme Value Theorem
- **Type:** `slide-two-part`
- **Section:** EVT
- **Content:**
  - Primary (Definition box with gold border):
    - Label: "Extreme Value Theorem"
    - "If f is continuous on the closed interval [a, b], then f attains both an absolute maximum value and an absolute minimum value on [a, b]."
  - Secondary: "Key conditions: CONTINUOUS on CLOSED interval [a, b]"

### Slide 4: What EVT Guarantees
- **Type:** `slide-visual`
- **Section:** EVT
- **Content:**
  - Title: "Visualizing the Extreme Value Theorem"
  - **D3 Visualization:**
    - Continuous curve on closed interval [a, b]
    - Highest point marked (absolute max)
    - Lowest point marked (absolute min)
    - Endpoints included
  - Caption: "A continuous function on [a, b] must attain its maximum and minimum values"
- **Visualization Details:**
  - Show various functions with different max/min locations
  - Toggle between examples where max/min are at endpoints vs. interior

### Slide 5: Why Continuity Matters
- **Type:** `slide-visual`
- **Section:** EVT Conditions
- **Content:**
  - Title: "Continuity is Essential"
  - **D3 Visualization:**
    - Graph of f(x) = 1/x on [-1, 1] with discontinuity at 0
    - Show that function approaches infinity near 0
    - No maximum exists!
  - Caption: "Without continuity, the function can 'escape' to infinity"

### Slide 6: Why Closed Interval Matters
- **Type:** `slide-visual`
- **Section:** EVT Conditions
- **Content:**
  - Title: "Closed Interval is Essential"
  - **D3 Visualization:**
    - Graph of f(x) = x on open interval (0, 1)
    - Show endpoints as open circles
    - Function approaches 0 and 1 but never attains them
  - Caption: "Open intervals allow the function to approach but never reach extreme values"

### Slide 7: Local vs. Global Extrema
- **Type:** `slide-comparison`
- **Section:** Extrema Types
- **Content:**
  - Title: "Two Types of Extrema"
  - Column 1: Local (Relative)
    - Header: "Local Extrema"
    - "f(c) is a local max if f(c) >= f(x) for all x NEAR c"
    - "f(c) is a local min if f(c) <= f(x) for all x NEAR c"
    - "Compares to nearby points only"
  - Column 2: Global (Absolute)
    - Header: "Global Extrema"
    - "f(c) is a global max if f(c) >= f(x) for ALL x in domain"
    - "f(c) is a global min if f(c) <= f(x) for ALL x in domain"
    - "Compares to every point"

### Slide 8: Visualizing Local vs. Global
- **Type:** `slide-visual`
- **Section:** Extrema Types
- **Content:**
  - Title: "Local vs. Global: A Visual Comparison"
  - **D3 Visualization:**
    - Function with multiple hills and valleys on [a, b]
    - Mark local maxima/minima (interior peaks/valleys)
    - Mark global max and global min
    - Color code: local = orange, global = teal
  - Caption: "Every global extremum is local, but not vice versa"
- **Visualization Details:**
  - Example: f(x) = x^3 - 3x + 1 on [-2, 3]
  - Local max at x = -1, local min at x = 1
  - Show which is also global

### Slide 9: Key Relationships
- **Type:** `slide-list`
- **Section:** Extrema Types
- **Content:**
  - Title: "Important Relationships"
  - List:
    - "Every global extremum is also a local extremum"
    - "Local extrema are NOT necessarily global extrema"
    - "On [a, b], EVT guarantees exactly one global max VALUE and one global min VALUE"
    - "The same extreme value can occur at multiple points"
    - "A function may have many local extrema"

### Slide 10: Critical Points Definition
- **Type:** `slide-two-part`
- **Section:** Critical Points
- **Content:**
  - Primary (Definition box):
    - Label: "Critical Point"
    - "A critical point of f is a value x = c in the domain of f where either:"
    - "1. f'(c) = 0 (stationary point - horizontal tangent)"
    - "2. f'(c) does not exist (singular point - cusp, corner, vertical tangent)"
  - Secondary: "Critical points are the CANDIDATES for extrema"

### Slide 11: Why Critical Points Matter
- **Type:** `slide-statement`
- **Section:** Critical Points
- **Content:**
  - Statement: "If f has a local extremum at c (in the interior), then c MUST be a critical point."
  - Secondary: "At a hilltop or valley bottom, the tangent is either horizontal or doesn't exist."
- **Notes:** Emphasize the converse is FALSE

### Slide 12: The Converse is FALSE
- **Type:** `slide-visual`
- **Section:** Critical Points
- **Content:**
  - Title: "Warning: Not Every Critical Point is an Extremum"
  - **D3 Visualization:**
    - Graph of f(x) = x^3
    - Mark x = 0 where f'(0) = 0
    - Show that function passes through, not turning around
  - Caption: "f(x) = x^3 has f'(0) = 0, but x = 0 is NOT an extremum"
- **Notes:** Critical is NECESSARY but not SUFFICIENT

### Slide 13: Types of Critical Points
- **Type:** `slide-visual`
- **Section:** Critical Points
- **Content:**
  - Title: "Two Types of Critical Points"
  - **D3 Visualization:** Side-by-side examples:
    - Left: Stationary point (f'(c) = 0) - horizontal tangent
    - Right: Singular point (f'(c) undefined) - cusp at x^(2/3)
  - Caption: "Both types can be locations of extrema"

### Slide 14: Finding Critical Points - Procedure
- **Type:** `slide-list`
- **Section:** Critical Points
- **Content:**
  - Title: "How to Find Critical Points"
  - List:
    1. "Compute f'(x)"
    2. "Find where f'(x) = 0 (solve the equation)"
    3. "Find where f'(x) is undefined (but f(x) IS defined)"
    4. "List all critical points"
  - Note: "Remember: c must be in the domain of f to be a critical point"

### Slide 15: Example - Polynomial
- **Type:** `slide-example`
- **Section:** Critical Points
- **Content:**
  - Title: "Example 1: Finding Critical Points"
  - Problem: "Find all critical points of f(x) = x^3 - 6x^2 + 9x + 1"
  - Steps:
    1. "f'(x) = 3x^2 - 12x + 9 = 3(x^2 - 4x + 3) = 3(x-1)(x-3)"
    2. "f'(x) = 0 when x = 1 or x = 3"
    3. "f'(x) is defined everywhere (polynomial)"
  - Result: "Critical points: x = 1 and x = 3"

### Slide 16: Example - Undefined Derivative
- **Type:** `slide-example`
- **Section:** Critical Points
- **Content:**
  - Title: "Example 2: Critical Point Where f' Undefined"
  - Problem: "Find all critical points of f(x) = x^(2/3)"
  - Steps:
    1. "f'(x) = (2/3)x^(-1/3) = 2/(3x^(1/3))"
    2. "f'(x) = 0: Never! (numerator is constant 2)"
    3. "f'(x) undefined when x = 0"
    4. "f(0) = 0 is defined, so x = 0 IS a critical point"
  - Result: "Critical point: x = 0 (where derivative is undefined)"

### Slide 17: Visualization of x^(2/3)
- **Type:** `slide-visual`
- **Section:** Critical Points
- **Content:**
  - Title: "The Cusp at x = 0"
  - **D3 Visualization:**
    - Graph of f(x) = x^(2/3)
    - Show the cusp (vertical tangent) at origin
    - Mark x = 0 as critical point and minimum
  - Caption: "x = 0 is a critical point AND a minimum, despite f'(0) being undefined"

### Slide 18: The Candidates Test
- **Type:** `slide-two-part`
- **Section:** Candidates Test
- **Content:**
  - Primary (Procedure box):
    - Label: "Candidates Test (Closed Interval Method)"
    - "To find absolute extrema of f on [a, b]:"
    - "1. Verify f is continuous on [a, b]"
    - "2. Find all critical points of f in (a, b)"
    - "3. Evaluate f at each critical point and at endpoints a and b"
    - "4. The largest value is the absolute max"
    - "5. The smallest value is the absolute min"
  - Secondary: "The name 'Candidates Test' emphasizes that critical points and endpoints are the ONLY candidates for absolute extrema"

### Slide 19: Why It Works
- **Type:** `slide-statement`
- **Section:** Candidates Test
- **Content:**
  - Statement: "Absolute extrema can ONLY occur at critical points or endpoints. That's the complete list of candidates."
  - Secondary: "We simply evaluate f at each candidate and compare values."

### Slide 20: Worked Example - Setup
- **Type:** `slide-example`
- **Section:** Candidates Test
- **Content:**
  - Title: "Example: f(x) = x^3 - 3x + 1 on [-2, 2]"
  - Steps:
    1. "Continuity: f is polynomial, continuous on [-2, 2]"
    2. "Find critical points:"
       - "f'(x) = 3x^2 - 3 = 3(x^2 - 1) = 3(x-1)(x+1)"
       - "f'(x) = 0 when x = -1 or x = 1"
       - "Both are in (-2, 2)"

### Slide 21: Worked Example - Evaluation
- **Type:** `slide-example`
- **Section:** Candidates Test
- **Content:**
  - Title: "Example: Evaluating Candidates"
  - Table:
    | Candidate | Type | f(x) Value |
    |-----------|------|------------|
    | x = -2 | endpoint | (-2)^3 - 3(-2) + 1 = -1 |
    | x = -1 | critical | (-1)^3 - 3(-1) + 1 = 3 |
    | x = 1 | critical | (1)^3 - 3(1) + 1 = -1 |
    | x = 2 | endpoint | (2)^3 - 3(2) + 1 = 3 |
  - Note: "Find the largest and smallest values"

### Slide 22: Worked Example - Conclusion
- **Type:** `slide-two-part`
- **Section:** Candidates Test
- **Content:**
  - Title: "Example: Final Answer"
  - Primary:
    - "Absolute maximum = 3, occurring at x = -1 AND x = 2"
    - "Absolute minimum = -1, occurring at x = -2 AND x = 1"
  - Secondary: "Notice: The same extreme value can occur at multiple points!"

### Slide 23: Visualization of Example
- **Type:** `slide-visual`
- **Section:** Candidates Test
- **Content:**
  - Title: "Visualizing the Solution"
  - **D3 Visualization:**
    - Graph of f(x) = x^3 - 3x + 1 on [-2, 2]
    - All four candidates marked
    - Maximum points highlighted (at x = -1 and x = 2)
    - Minimum points highlighted (at x = -2 and x = 1)
    - Horizontal lines at y = 3 (max) and y = -1 (min)
  - Caption: "The absolute max and min each occur at two points"

### Slide 24: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Prompt: "Find the absolute maximum and minimum of f(x) = x^4 - 2x^2 on [-1, 2]"
  - Tasks:
    1. "Find all critical points"
    2. "List all candidates (critical points + endpoints)"
    3. "Evaluate f at each candidate"
    4. "Identify the absolute max and min"
  - Time: "4 minutes"

### Slide 25: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Steps:
    1. "f'(x) = 4x^3 - 4x = 4x(x^2 - 1) = 4x(x-1)(x+1)"
    2. "Critical points: x = -1, 0, 1 (all in [-1, 2])"
    3. "Candidates: x = -1, 0, 1, 2"
    4. "Evaluate:"
       - "f(-1) = 1 - 2 = -1"
       - "f(0) = 0"
       - "f(1) = 1 - 2 = -1"
       - "f(2) = 16 - 8 = 8"
  - Result: "Absolute max = 8 at x = 2; Absolute min = -1 at x = -1 and x = 1"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "EVT: Continuous function on closed interval has absolute max and min"
    - "Critical points: where f' = 0 OR f' is undefined"
    - "Not every critical point is an extremum!"
    - "Candidates Test: evaluate f at all critical points and endpoints"
    - "Don't forget endpoints - they're often where extrema occur!"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "For f(x) = sin(x) on [0, 2pi]:"
  - Tasks:
    1. "State why EVT applies"
    2. "Find all critical points in (0, 2pi)"
    3. "List all candidates for absolute extrema"
    4. "Find the absolute maximum and minimum values"

### Slide 28: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: The First Derivative Test"
  - Secondary: "Classifying local extrema by analyzing the sign of f'"

---

## D3 Visualization Specifications

### Visualization 1: EVT Demonstration (Slide 4)

```javascript
// Interactive EVT visualization
// Features:
// - Continuous curve on closed interval [a, b]
// - Clearly marked endpoints (filled circles)
// - Highest point marked with "Max" label
// - Lowest point marked with "Min" label
// - Horizontal dashed lines at max and min values
// - Toggle between different functions showing:
//   - Max at interior, min at endpoint
//   - Max at endpoint, min at interior
//   - Both at endpoints

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Maximum: var(--color-accent) #0d9488
// - Minimum: var(--color-secondary) #f97316

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Local vs. Global Comparison (Slide 8)

```javascript
// Show function with multiple extrema
// Features:
// - Function: f(x) = x^3 - 3x + 1 on [-2, 3]
// - Mark local max at x = -1 (orange)
// - Mark local min at x = 1 (orange)
// - Mark global max and global min (teal)
// - Legend distinguishing local vs. global
// - Interactive: hover to see coordinates

// Display annotations:
// - "Local max" / "Local min" labels in orange
// - "Global max" / "Global min" labels in teal
// - Show that global min is also a local min
```

### Visualization 3: Critical Point Types (Slides 12, 13, 17)

```javascript
// Side-by-side comparison of critical point types
// Left panel: Stationary point (f' = 0)
// - Function: f(x) = x^2 shifted
// - Horizontal tangent line at minimum
// - Label: "f'(c) = 0"

// Right panel: Singular point (f' undefined)
// - Function: f(x) = x^(2/3)
// - Cusp at origin
// - Label: "f'(c) undefined"

// Both show that critical point can be an extremum
```

### Visualization 4: Non-Extremum Critical Point (Slide 12)

```javascript
// Show f(x) = x^3 to demonstrate f'(0) = 0 but no extremum
// Features:
// - Cubic curve passing through origin
// - Horizontal tangent at x = 0 shown
// - Point marked but labeled "Not an extremum"
// - Arrows showing function continues increasing

// Message: "Critical point is NECESSARY but not SUFFICIENT"
```

### Visualization 5: Candidates Test Visualization (Slide 23)

```javascript
// Complete visualization of worked example
// Features:
// - f(x) = x^3 - 3x + 1 on [-2, 2]
// - All four candidates marked with dots
// - Labels showing f(x) values at each point
// - Horizontal lines at y = 3 (max) and y = -1 (min)
// - Color coding: max points in teal, min points in orange

// Interactive: click candidate to highlight
// Table showing all evaluations below graph
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-5-analysis: #0d9488` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Emphasize the systematic nature of Candidates Test
- Highlight common error: forgetting to check endpoints
