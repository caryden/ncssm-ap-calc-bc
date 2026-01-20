# Presentation Spec: Area Between Curves

## Class 45 | Unit 8: Applications of Integration
## CED Topics 8.4, 8.5

---

## Overview

This presentation extends students' understanding from area under a single curve to the area enclosed between two curves. Students will learn to set up integrals using both vertical slices (functions of x) and horizontal slices (functions of y), developing the judgment to choose the most efficient approach. Key visualizations include animated slicing, intersection point identification, and comparison of dx vs. dy approaches on the same region.

**Theme Color:** `#e11d48` (Unit 8 Rose)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 8: Applications of Integration"
  - Title: "Area Between Curves"
  - Subtitle: "Slicing Regions Bounded by Two Functions"
  - Meta: "Class 45 | CED 8.4, 8.5 | NCSSM"

### Slide 1: The Motivating Question
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Finding Enclosed Area"
  - Display region bounded by y = x² and y = x + 2
  - Question: "How do we find just the shaded region between the curves?"
  - Caption: "We know area under one curve. What about the region between two?"

### Slide 2: The Key Insight
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Area between = Area under top curve - Area under bottom curve"
  - Secondary: "= ∫[top] - ∫[bottom] = ∫[top - bottom]"
- **Notes:** This sets up the entire lesson framework

### Slide 3: Vertical Slices (dx)
- **Type:** `slide-visual`
- **Section:** Area with Respect to x
- **Content:**
  - Title: "Slicing Vertically"
  - **D3 Visualization:** Region with vertical slices
    - Show two curves
    - Animated vertical rectangles filling the region
    - One rectangle highlighted with dimensions labeled
  - Caption: "Each slice has width dx and height = top - bottom"
- **Visualization Details:**
  - Show f(x) above g(x)
  - Highlight one slice: width = dx, height = f(x) - g(x)
  - Animate slices filling left to right

### Slide 4: The dx Formula
- **Type:** `slide-two-part`
- **Section:** Area with Respect to x
- **Content:**
  - Title: "Area Using Vertical Slices"
  - Primary (Formula box):
    - $$A = \int_a^b [f(x) - g(x)]\,dx$$
    - "where f(x) ≥ g(x) on [a, b]"
  - Secondary:
    - "f(x) = top curve (larger y-value)"
    - "g(x) = bottom curve (smaller y-value)"
    - "a, b = x-coordinates where curves intersect"

### Slide 5: Finding Intersection Points
- **Type:** `slide-two-part`
- **Section:** Area with Respect to x
- **Content:**
  - Title: "Step 1: Find Where Curves Intersect"
  - Primary:
    - "Set f(x) = g(x) and solve for x"
    - "These x-values become your limits of integration"
  - Secondary:
    - Example: "For y = x² and y = x + 2:"
    - "x² = x + 2"
    - "x² - x - 2 = 0"
    - "(x - 2)(x + 1) = 0"
    - "x = -1 and x = 2"

### Slide 6: Identifying Top and Bottom
- **Type:** `slide-visual`
- **Section:** Area with Respect to x
- **Content:**
  - Title: "Step 2: Which Curve is on Top?"
  - **D3 Visualization:** Two curves with test point
    - Show y = x² and y = x + 2
    - Mark intersection points at x = -1 and x = 2
    - Show test point at x = 0
    - Display: "At x = 0: line gives 2, parabola gives 0"
  - Caption: "Test a point in the interval to verify which is larger"

### Slide 7: Example 1 - Setup
- **Type:** `slide-example`
- **Section:** Worked Example 1
- **Content:**
  - Title: "Example: Parabola and Line"
  - Problem: "Find the area between y = x² and y = x + 2"
  - Step 1: "Find intersections: x = -1, x = 2 (from previous slide)"
  - Step 2: "Identify top: At x = 0, x + 2 = 2 > 0 = x², so line is on top"
  - Step 3: "Set up integral:"
  - $$A = \int_{-1}^{2} [(x + 2) - x^2]\,dx$$

### Slide 8: Example 1 - Evaluation
- **Type:** `slide-example`
- **Section:** Worked Example 1
- **Content:**
  - Title: "Example: Parabola and Line (completed)"
  - Math:
    - $$A = \int_{-1}^{2} (x + 2 - x^2)\,dx$$
    - $$= \left[\frac{x^2}{2} + 2x - \frac{x^3}{3}\right]_{-1}^{2}$$
    - $$= \left(2 + 4 - \frac{8}{3}\right) - \left(\frac{1}{2} - 2 + \frac{1}{3}\right)$$
    - $$= \frac{10}{3} - \left(-\frac{7}{6}\right) = \frac{10}{3} + \frac{7}{6} = \frac{27}{6} = \frac{9}{2}$$
  - Result box: A = 9/2 square units

### Slide 9: When Curves Cross
- **Type:** `slide-visual`
- **Section:** Curves That Cross
- **Content:**
  - Title: "What If Curves Cross in the Middle?"
  - **D3 Visualization:** y = x³ and y = x on [-1, 1]
    - Show the two curves crossing at x = -1, 0, 1
    - Color-code which is on top in each subinterval
    - On [-1, 0]: x³ is above x
    - On [0, 1]: x is above x³
  - Caption: "When 'top' and 'bottom' switch, split the integral"

### Slide 10: Example 2 - Crossing Curves
- **Type:** `slide-example`
- **Section:** Curves That Cross
- **Content:**
  - Title: "Example: Curves That Cross"
  - Problem: "Find area between y = x³ and y = x from x = -1 to x = 1"
  - Analysis:
    - "Crossings: x³ = x → x(x² - 1) = 0 → x = -1, 0, 1"
    - "On [-1, 0]: test x = -0.5: (-0.125) > (-0.5), so x³ is on top"
    - "On [0, 1]: test x = 0.5: (0.5) > (0.125), so x is on top"
  - Setup:
    - $$A = \int_{-1}^{0} (x^3 - x)\,dx + \int_{0}^{1} (x - x^3)\,dx$$

### Slide 11: Example 2 - Evaluation
- **Type:** `slide-example`
- **Section:** Curves That Cross
- **Content:**
  - Title: "Example: Curves That Cross (completed)"
  - Evaluation:
    - $$= \left[\frac{x^4}{4} - \frac{x^2}{2}\right]_{-1}^{0} + \left[\frac{x^2}{2} - \frac{x^4}{4}\right]_{0}^{1}$$
    - $$= (0) - \left(\frac{1}{4} - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{4}\right) - 0$$
    - $$= \frac{1}{4} + \frac{1}{4} = \frac{1}{2}$$
  - Result box: A = 1/2 square units

### Slide 12: Horizontal Slices (dy)
- **Type:** `slide-visual`
- **Section:** Area with Respect to y
- **Content:**
  - Title: "Slicing Horizontally"
  - **D3 Visualization:** Region with horizontal slices
    - Show two curves expressed as x = f(y)
    - Animated horizontal rectangles filling the region
    - One rectangle highlighted with dimensions
  - Caption: "Each slice has height dy and width = right - left"

### Slide 13: The dy Formula
- **Type:** `slide-two-part`
- **Section:** Area with Respect to y
- **Content:**
  - Title: "Area Using Horizontal Slices"
  - Primary (Formula box):
    - $$A = \int_c^d [f(y) - g(y)]\,dy$$
    - "where f(y) ≥ g(y) on [c, d]"
  - Secondary:
    - "f(y) = right curve (larger x-value)"
    - "g(y) = left curve (smaller x-value)"
    - "c, d = y-coordinates where curves intersect"

### Slide 14: When to Use dy
- **Type:** `slide-list`
- **Section:** Area with Respect to y
- **Content:**
  - Title: "When is dy Better?"
  - List:
    - "Curves are naturally given as x = f(y)"
    - "Region is bounded on left and right (not top and bottom)"
    - "Using dx would require multiple integrals"
    - "The dy setup is simpler or cleaner"
  - Caption: "Choose the orientation that minimizes complexity"

### Slide 15: Example 3 - Classic dy Problem
- **Type:** `slide-example`
- **Section:** Worked Example 3
- **Content:**
  - Title: "Example: A Natural dy Problem"
  - Problem: "Find the area bounded by x = y² and x = y + 2"
  - Note: "Curves given as functions of y, so dy is natural"
  - Step 1: "Find intersections in y:"
    - "y² = y + 2 → y² - y - 2 = 0 → (y-2)(y+1) = 0"
    - "y = -1 and y = 2"
  - Step 2: "At y = 0: line gives 2, parabola gives 0. Line is on right."

### Slide 16: Example 3 - Evaluation
- **Type:** `slide-example`
- **Section:** Worked Example 3
- **Content:**
  - Title: "Example: A Natural dy Problem (completed)"
  - Setup and evaluation:
    - $$A = \int_{-1}^{2} [(y + 2) - y^2]\,dy$$
    - $$= \left[\frac{y^2}{2} + 2y - \frac{y^3}{3}\right]_{-1}^{2}$$
    - $$= \left(2 + 4 - \frac{8}{3}\right) - \left(\frac{1}{2} - 2 + \frac{1}{3}\right) = \frac{9}{2}$$
  - Observation: "Same answer as Example 1! Same region, different orientation."

### Slide 17: dx vs. dy Comparison
- **Type:** `slide-visual`
- **Section:** Strategic Choice
- **Content:**
  - Title: "Comparing Approaches"
  - **D3 Visualization:** Same region with toggle
    - Button to switch between dx and dy views
    - Show vertical slices (dx) on one view
    - Show horizontal slices (dy) on other view
    - Display integral setup for each
  - Caption: "Sometimes both work equally well; sometimes one is much simpler"

### Slide 18: Decision Framework
- **Type:** `slide-list`
- **Section:** Strategic Choice
- **Content:**
  - Title: "Strategic Decision Making"
  - List (numbered):
    - "1. Graph the region to understand its shape"
    - "2. Ask: Can I slice vertically with ONE integral?"
    - "3. Ask: Can I slice horizontally with ONE integral?"
    - "4. Choose the simpler setup (fewer integrals, easier integrand)"
    - "5. Verify your answer is positive and reasonable"

### Slide 19: Quick Practice - Which Orientation?
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Quick Decision Practice"
  - Display 4 small region diagrams
    - Region 1: y = x² and y = 4 → "dx (one integral)"
    - Region 2: x = y² and x = y + 2 → "dy (one integral)"
    - Region 3: Region with crossings → "May need to split"
    - Region 4: Symmetric region → "Either works"
  - Caption: "For each region, which orientation would you choose?"

### Slide 20: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem: "Find the area between y = 4 - x² and y = x² - 4"
  - Hints:
    - "Find intersections first"
    - "Check which is on top"
    - "This is a dx problem"
  - Time: "4 minutes"

### Slide 21: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Steps:
    - "Intersections: 4 - x² = x² - 4 → 8 = 2x² → x = ±2"
    - "At x = 0: (4-0) = 4 > -4 = (0-4), so 4-x² is on top"
    - $$A = \int_{-2}^{2} [(4-x^2) - (x^2-4)]\,dx = \int_{-2}^{2} (8 - 2x^2)\,dx$$
    - $$= \left[8x - \frac{2x^3}{3}\right]_{-2}^{2} = \left(16 - \frac{16}{3}\right) - \left(-16 + \frac{16}{3}\right)$$
    - $$= \frac{32}{3} + \frac{32}{3} = \frac{64}{3}$$

### Slide 22: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Vertical slices (dx): A = ∫[top - bottom]dx"
    - "Horizontal slices (dy): A = ∫[right - left]dy"
    - "Always graph first and find intersection points"
    - "When curves cross, split the integral at crossing points"
    - "Choose the orientation that minimizes complexity"
    - "Area is always positive - check your sign!"

### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Task: "Sketch the region between y = x and y = x² for x in [0, 1]. Set up (but don't evaluate) the integral for the area."
  - Expected answer: A = ∫₀¹ (x - x²)dx since x ≥ x² on [0, 1]

### Slide 24: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Volumes with Cross Sections"
  - Secondary: "We extend our slicing idea to 3D. If we know the cross-sectional area at every position, we can find volume!"

---

## D3 Visualization Specifications

### Visualization 1: Vertical Slice Animation (Slide 3)

```javascript
// Animated visualization showing vertical slices filling a region
// Features:
// - Two curves: f(x) and g(x) with f > g
// - Animated rectangles filling from left to right
// - One rectangle highlighted with labeled dimensions
// - Display: "Width = dx, Height = f(x) - g(x)"

// Animation:
// - Rectangles appear sequentially (50ms delay each)
// - Highlighted rectangle shows dimensions
// - Smooth fill effect

// Color scheme:
// - Top curve: var(--color-function) #60a5fa
// - Bottom curve: var(--color-secondary) #a78bfa
// - Fill: var(--theme-color) #e11d48 with 0.4 opacity
// - Highlighted slice: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Intersection and Top/Bottom Identifier (Slide 6)

```javascript
// Interactive visualization for finding intersections
// Features:
// - Display y = x² and y = x + 2
// - Mark intersection points with dots
// - Show test point (draggable or at fixed x = 0)
// - Display function values at test point
// - Highlight which function is larger

// Interaction:
// - Hover over region to see which is top at that x
// - Display: "At x = [value]: top = [value], bottom = [value]"

// Color scheme:
// - Line: var(--color-function) #60a5fa
// - Parabola: var(--color-secondary) #a78bfa
// - Intersection points: var(--theme-color) #e11d48
// - Test point: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 3: Crossing Curves with Color-Coded Regions (Slide 9)

```javascript
// Visualization showing curves that cross
// Features:
// - Display y = x³ and y = x on [-1, 1]
// - Mark crossing points at x = -1, 0, 1
// - Color-code regions: where x³ > x vs where x > x³
// - Show which curve is "on top" in each interval

// Visual elements:
// - Different fill colors for each subregion
// - Labels: "x³ on top" and "x on top"

// Color scheme:
// - Curve 1: var(--color-function) #60a5fa
// - Curve 2: var(--color-secondary) #a78bfa
// - Left region fill: var(--theme-color) #e11d48
// - Right region fill: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 4: dx vs. dy Toggle Comparison (Slide 17)

```javascript
// Interactive visualization comparing orientations
// Features:
// - Same region displayed
// - Toggle button: "Show dx slices" / "Show dy slices"
// - Vertical slices shown in dx mode
// - Horizontal slices shown in dy mode
// - Integral formula updates with orientation

// Interaction:
// - Click button to toggle between views
// - Smooth transition animation (300ms)
// - Display corresponding integral setup

// Color scheme:
// - Region fill: var(--theme-color) with 0.3 opacity
// - dx slices: var(--color-function) #60a5fa
// - dy slices: var(--color-secondary) #a78bfa

// Font sizes: minimum 1.25rem for all labels
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-8-int-apps: #e11d48` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Include smooth transitions for all animations (300ms ease)
- Ensure slicing animations are clear on both classroom displays and Zoom
- Test point interactions should be responsive to touch for tablet users
