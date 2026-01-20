# Presentation Spec: Slope Fields

## Class 40 | Unit 7: Differential Equations
## CED Topics 7.3, 7.4

---

## Overview

This presentation introduces slope fields (direction fields) as a visual tool for understanding differential equations. Students learn to construct slope fields from differential equations, sketch solution curves, and reason about solution behavior without solving algebraically. The slope field provides a bridge between the abstract equation and the concrete solution curves, enabling qualitative analysis of solutions.

**Theme Color:** `#ea580c` (Unit 7 Orange)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 7: Differential Equations"
  - Title: "Slope Fields"
  - Subtitle: "Visualizing Differential Equations"
  - Meta: "Class 40 | CED 7.3, 7.4 | NCSSM"

### Slide 1: Visual Puzzle
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Where Does the Particle Go?"
  - **D3 Visualization:** Slope field without equation revealed
    - Display a slope field for dy/dx = y (not labeled)
    - Mark a starting point at (0, 1)
    - Question: "If a particle starts here and always moves in the direction shown by the segments, where does it go?"
  - Caption: "The slope field shows 'instructions' at every point"
- **Notes:** Engage intuition before formalism

### Slide 2: What is a Slope Field?
- **Type:** `slide-two-part`
- **Section:** Definition
- **Content:**
  - **Primary:** Definition box with orange border
    - "A **slope field** (or direction field) for dy/dx = f(x, y) is a visual representation showing the slope of the solution at each point (x, y)."
  - **Secondary:**
    - "At any point (x, y), the differential equation tells us the slope"
    - "We draw short line segments with that slope at each point"

### Slide 3: The Big Idea
- **Type:** `slide-statement`
- **Section:** Definition
- **Content:**
  - Statement: "The slope field shows 'instructions' at every point."
  - Secondary: "If a solution curve passes through point (x, y), it must have slope f(x, y) there."

### Slide 4: Constructing a Slope Field
- **Type:** `slide-list`
- **Section:** Construction
- **Content:**
  - Title: "How to Build a Slope Field"
  - Numbered list:
    1. "Create a grid of sample points (x, y)"
    2. "At each point, calculate dy/dx = f(x, y)"
    3. "Draw a short line segment with that slope centered at the point"
    4. "The collection of segments is the slope field"
  - Caption: "The slope marks show direction, not magnitude"

### Slide 5: Example - dy/dx = x
- **Type:** `slide-visual`
- **Section:** Construction
- **Content:**
  - Title: "Building a Slope Field: dy/dx = x"
  - **D3 Visualization:** Interactive slope field construction
    - Show grid of points
    - Calculate and display slope at each point:
      - At x = -2: slope = -2 (steep down)
      - At x = -1: slope = -1 (45° down)
      - At x = 0: slope = 0 (horizontal)
      - At x = 1: slope = 1 (45° up)
      - At x = 2: slope = 2 (steep up)
    - Animate segments appearing
  - Observation: "Slope depends only on x - notice the vertical stripes!"
- **Visualization Details:**
  - Build the slope field progressively (animate)
  - Highlight that all points with same x have same slope
  - Color code: horizontal (gray), positive (orange), negative (blue)

### Slide 6: Pattern - Slope Depends on x Only
- **Type:** `slide-visual`
- **Section:** Construction
- **Content:**
  - Title: "When dy/dx = f(x) Only"
  - **D3 Visualization:** Side-by-side comparison
    - Left: dy/dx = x (vertical stripes pattern)
    - Right: dy/dx = sin(x) (vertical wave pattern)
  - Key insight: "When slope depends only on x, all points in a vertical line have the same slope"
  - Caption: "Creates 'vertical stripes' in the field"

### Slide 7: Example - dy/dx = y
- **Type:** `slide-visual`
- **Section:** Construction
- **Content:**
  - Title: "Building a Slope Field: dy/dx = y"
  - **D3 Visualization:** Interactive construction
    - Calculate slopes at key points:
      - At y = -2: slope = -2
      - At y = -1: slope = -1
      - At y = 0: slope = 0 (horizontal)
      - At y = 1: slope = 1
      - At y = 2: slope = 2
  - Observation: "Slope depends only on y - notice the horizontal stripes!"
- **Visualization Details:**
  - Animate construction
  - Highlight that all points with same y have same slope

### Slide 8: Pattern - Slope Depends on y Only
- **Type:** `slide-visual`
- **Section:** Construction
- **Content:**
  - Title: "When dy/dx = g(y) Only"
  - **D3 Visualization:** dy/dx = y
    - Highlight the horizontal line at y = 0 (all horizontal segments)
    - Show positive slopes above, negative below
  - Key insight: "When slope depends only on y, all points in a horizontal line have the same slope"
  - Caption: "Creates 'horizontal stripes' in the field"

### Slide 9: Example - dy/dx = x + y
- **Type:** `slide-visual`
- **Section:** Construction
- **Content:**
  - Title: "When Slope Depends on Both: dy/dx = x + y"
  - **D3 Visualization:** Slope field for x + y
    - Show the diagonal pattern
    - Highlight the nullcline y = -x (where dy/dx = 0)
  - Key insight: "No simple stripes - slope varies in both directions"
  - Caption: "The nullcline y = -x is where slopes are horizontal"
- **Visualization Details:**
  - Draw the line y = -x as a highlighted curve
  - Label regions: "dy/dx > 0" above, "dy/dx < 0" below

### Slide 10: Isoclines and Nullclines
- **Type:** `slide-two-part`
- **Section:** Construction
- **Content:**
  - **Primary:**
    - "An **isocline** is a curve where dy/dx = constant"
    - "A **nullcline** is where dy/dx = 0 (isocline for slope 0)"
  - **Secondary:**
    - "For dy/dx = x + y:"
    - "Nullcline: x + y = 0, so y = -x"
    - "Isocline for slope 1: x + y = 1, so y = 1 - x"
    - "Isoclines help organize the structure of the field"

### Slide 11: Sketching Solution Curves
- **Type:** `slide-list`
- **Section:** Solution Curves
- **Content:**
  - Title: "How to Sketch a Solution Curve"
  - Numbered list:
    1. "Plot the initial point (x₀, y₀)"
    2. "At that point, read the slope from the field"
    3. "Draw a short curve segment in that direction"
    4. "Move to the new location and repeat"
    5. "The solution curve is always TANGENT to the slope marks"
  - Caption: "Follow the flow - solutions never cross!"

### Slide 12: Solution Curves in Action
- **Type:** `slide-visual`
- **Section:** Solution Curves
- **Content:**
  - Title: "Tracing Solutions Through the Field"
  - **D3 Visualization:** Interactive solution curve tracer
    - Display slope field for dy/dx = y
    - Click to set initial point
    - Animate solution curve "flowing" through the field
    - Show multiple solutions from different initial points
  - Caption: "Each initial condition gives a different solution curve"
- **Visualization Details:**
  - Allow multiple solution curves (different colors)
  - Animate curves being drawn following the slope field
  - Show solutions for y(0) = 2, 1, 0, -1

### Slide 13: Solutions Never Cross
- **Type:** `slide-statement`
- **Section:** Solution Curves
- **Content:**
  - Statement: "Solution curves through different points NEVER cross each other."
  - Secondary: "Why? At any crossing point, the slope would need to point in two different directions - impossible!"
- **Notes:** This is the existence and uniqueness theorem visualized.

### Slide 14: The Equilibrium Solution
- **Type:** `slide-visual`
- **Section:** Solution Curves
- **Content:**
  - Title: "What Happens at y = 0?"
  - **D3 Visualization:** dy/dx = y with horizontal line highlighted
    - Show that y = 0 is a solution (horizontal line)
    - This is an equilibrium solution
    - Solutions above y = 0 grow; solutions below decay
  - Caption: "y = 0 is an equilibrium - the solution stays there forever"
- **Visualization Details:**
  - Highlight the x-axis as a solution curve
  - Show arrows indicating direction of flow (away from y = 0)

### Slide 15: Practice - Sketch the Solution
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Sketch the Solution"
  - **D3 Visualization:** Slope field for dy/dx = x with initial point marked
    - Mark initial point at (0, 1)
  - Prompt: "Sketch the solution curve starting at (0, 1)"
  - Time: "2 minutes"

### Slide 16: Practice Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution Curve for dy/dx = x"
  - **D3 Visualization:** Complete solution curve
    - Show the parabola y = ½x² + 1 through (0, 1)
    - Verify it follows the slope field
  - Explanation:
    - "At (0, 1): slope = 0, go horizontal"
    - "At (1, 1.5): slope = 1, curve upward"
    - "The solution is y = ½x² + C, and with y(0) = 1, we get y = ½x² + 1"

### Slide 17: Matching Fields to Equations
- **Type:** `slide-visual`
- **Section:** Reasoning
- **Content:**
  - Title: "Which Equation Matches Which Field?"
  - **D3 Visualization:** Four slope fields (unlabeled A, B, C, D)
    - A: dy/dx = x (vertical stripes)
    - B: dy/dx = y (horizontal stripes)
    - C: dy/dx = x + y (diagonal nullcline)
    - D: dy/dx = -y (horizontal stripes, opposite sign)
  - Caption: "Look for patterns: Where are slopes horizontal? Vertical? What patterns exist?"
- **Visualization Details:**
  - 2×2 grid of small slope fields
  - Each clearly labeled A, B, C, D

### Slide 18: Matching Strategies
- **Type:** `slide-list`
- **Section:** Reasoning
- **Content:**
  - Title: "How to Match Fields to Equations"
  - List items:
    - "**Check specific points:** Calculate expected slope at (1, 1) and compare"
    - "**Find nullclines:** Where is dy/dx = 0? Those segments should be horizontal"
    - "**Look for patterns:** Vertical stripes? Horizontal stripes? Both varying?"
    - "**Check signs:** Where is dy/dx positive? Negative?"
  - Caption: "Use multiple strategies to confirm your match"

### Slide 19: Predicting Long-Term Behavior
- **Type:** `slide-visual`
- **Section:** Reasoning
- **Content:**
  - Title: "Long-Term Behavior Analysis"
  - **D3 Visualization:** Slope field for dy/dx = y - 2
    - Show horizontal line at y = 2 (equilibrium)
    - Solutions above y = 2: slopes positive, y increases (away)
    - Solutions below y = 2: slopes negative, y decreases (away)
  - Analysis:
    - "Equilibrium: y = 2 (where dy/dx = 0)"
    - "For y > 2: dy/dx > 0, y increases (moves away)"
    - "For y < 2: dy/dx < 0, y decreases (moves away)"
  - Conclusion: "y = 2 is an UNSTABLE equilibrium"
- **Visualization Details:**
  - Highlight equilibrium line
  - Draw arrows showing direction of flow
  - Show sample solution curves moving away from y = 2

### Slide 20: Stable vs. Unstable Equilibria
- **Type:** `slide-comparison`
- **Section:** Reasoning
- **Content:**
  - Title: "Equilibrium Stability"
  - Column 1: Unstable (dy/dx = y - 2)
    - Slope field with arrows pointing away from y = 2
    - "Solutions move AWAY from equilibrium"
    - "Small perturbations grow"
  - Column 2: Stable (dy/dx = 2 - y)
    - Slope field with arrows pointing toward y = 2
    - "Solutions move TOWARD equilibrium"
    - "Small perturbations die out"

### Slide 21: Practice - Analyze Behavior
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Analyze the Slope Field"
  - **D3 Visualization:** Slope field for dy/dx = y(1 - y)
  - Questions:
    1. "Where are the equilibrium solutions?"
    2. "Which equilibrium is stable? Unstable?"
    3. "If y(0) = 0.5, what happens as x → ∞?"
  - Time: "3 minutes"

### Slide 22: Practice Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Analysis: dy/dx = y(1 - y)"
  - **D3 Visualization:** Annotated slope field
    - Equilibria: y = 0 and y = 1
    - y = 0: unstable (arrows point away)
    - y = 1: stable (arrows point toward)
  - Answers:
    1. "Equilibria at y = 0 and y = 1"
    2. "y = 0 is unstable; y = 1 is stable"
    3. "If y(0) = 0.5, then y → 1 as x → ∞"
  - Caption: "This is the logistic equation slope field!"

### Slide 23: AP Exam Skills
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Slope Field Skills for the AP Exam"
  - List:
    - "Match a slope field to its differential equation"
    - "Sketch solution curves through given initial points"
    - "Identify equilibrium solutions"
    - "Describe long-term behavior as x → ∞"
    - "Explain why solution curves don't cross"

### Slide 24: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "A slope field visualizes dy/dx = f(x, y) at every point"
    - "Solution curves follow the field - always tangent to slope marks"
    - "Solutions through different points never cross"
    - "Nullclines are where dy/dx = 0 (horizontal segments)"
    - "We can predict behavior without solving algebraically"

### Slide 25: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - **D3 Visualization:** Slope field for dy/dx = x - y
  - Prompts:
    1. "Sketch the solution curve through (0, 1)"
    2. "What is the nullcline for this equation?"
    3. "Describe what happens to y as x → ∞"

### Slide 26: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Euler's Method"
  - Secondary: "A numerical algorithm for 'walking' through the slope field step by step."
- **Notes:** Preview connects slope fields to Euler's method.

---

## D3 Visualization Specifications

### Visualization 1: Slope Field Generator (Multiple slides)

```javascript
// Reusable slope field visualization
// Features:
// - Configurable equation: dy/dx = f(x, y)
// - Grid of slope marks
// - Color coding by slope value
// - Optional nullcline highlighting
// - Optional solution curve overlay

// Parameters:
// - equation: function(x, y) returning slope
// - xRange: [xMin, xMax]
// - yRange: [yMin, yMax]
// - gridDensity: number of points per axis
// - showNullcline: boolean
// - nullclineEquation: function defining nullcline

// Color scheme:
// - Positive slopes: orange gradient (darker = steeper)
// - Negative slopes: blue gradient (darker = steeper)
// - Zero slopes: gray
// - Nullcline: highlighted in orange

// Font sizes: 1.25rem minimum for all labels
```

### Visualization 2: Solution Curve Tracer (Slides 12, 14)

```javascript
// Interactive solution curve animation
// Features:
// - Click to set initial point
// - Animate solution curve "flowing" through field
// - Support multiple solution curves
// - Forward and backward tracing from initial point

// Algorithm:
// - Use small step size (h = 0.02) for smooth curve
// - Euler's method to trace path
// - Draw as smooth SVG path

// Color scheme:
// - Solution curves: use color palette for multiple curves
// - Initial point: larger dot in matching color
// - Glow effect on active curve

// Animation:
// - 20ms per step
// - Total animation time ~2 seconds per curve
```

### Visualization 3: Field Comparison (Slides 17, 20)

```javascript
// Side-by-side or grid comparison of slope fields
// Features:
// - 2x2 or 1x2 grid of slope fields
// - Each with its own equation
// - Labels (A, B, C, D) or equation labels
// - Synchronized highlighting

// Layout:
// - Equal-sized panels
// - Clear separation between panels
// - Consistent axis scaling

// Font sizes: 1.25rem for panel labels, 1rem for axis labels
```

### Visualization 4: Equilibrium Analyzer (Slides 19, 22)

```javascript
// Slope field with equilibrium analysis
// Features:
// - Horizontal line(s) at equilibrium values
// - Arrows indicating flow direction
// - Stability indicator (stable/unstable label)
// - Animated flow demonstration

// Annotations:
// - Equilibrium lines: dashed orange
// - Flow arrows: curved arrows showing direction
// - Labels: "stable" (green) or "unstable" (red)

// Animation:
// - Optional: show particles flowing through the field
// - Demonstrates stability visually
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-7-diffeq: #ea580c` for accents
- Slope field grid density: typically 15×15 for visibility
- Slope mark length: uniform (only direction matters, not length)
- Solution curve smoothness: use cubic Bezier interpolation
- Minimum font size 1.25rem for all D3 text elements
- Support keyboard navigation (arrow keys, T for TOC)
- Responsive viewBox for all SVG elements
