# Presentation Spec: Volumes of Revolution - Disc and Washer Methods

## Class 47 | Unit 8: Applications of Integration
## CED Topics 8.9, 8.10, 8.11, 8.12

---

## Overview

This presentation focuses on volumes of revolution, a special and important case of cross-sectional volumes. When a region is rotated around an axis, each cross section becomes a circular disc (for solid regions) or an annular washer (for hollow regions). Students will learn to set up volume integrals for rotation around the x-axis, y-axis, and other horizontal or vertical lines, with careful attention to correctly measuring radii from the axis of rotation. This topic is one of the most frequently tested on the AP Calculus exam.

**Theme Color:** `#e11d48` (Unit 8 Rose)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 8: Applications of Integration"
  - Title: "Disc & Washer Methods"
  - Subtitle: "Volumes of Revolution"
  - Meta: "Class 47 | CED 8.9-8.12 | NCSSM"

### Slide 1: The Rotation Animation
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "What Happens When We Rotate?"
  - **D3 Visualization:** Region rotating around axis
    - Show 2D region (e.g., y = √x from 0 to 4)
    - Animate rotation around x-axis
    - Result: 3D solid of revolution
  - Caption: "When a region spins around an axis, it sweeps out a solid"

### Slide 2: Connection to Cross Sections
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Volumes of revolution are cross-sectional volumes where every cross section is a *circle* (or a ring)."
  - Secondary: "Disc: V = π∫r² | Washer: V = π∫(R² - r²)"

### Slide 3: Disc vs. Washer
- **Type:** `slide-comparison`
- **Section:** Disc vs. Washer
- **Content:**
  - Title: "When to Use Which"
  - Column 1: Disc Method
    - Header: "Solid Core"
    - "Region touches the axis of rotation"
    - "Cross section is a solid disc"
    - "Formula: V = π∫[r(x)]² dx"
    - Diagram: solid circle
  - Column 2: Washer Method
    - Header: "Hollow Core"
    - "Gap between region and axis"
    - "Cross section is a ring (washer)"
    - "Formula: V = π∫(R² - r²) dx"
    - Diagram: annulus (ring)

### Slide 4: Disc Method - Around x-axis
- **Type:** `slide-two-part`
- **Section:** Disc Method
- **Content:**
  - Title: "Disc Method: Rotation Around x-axis"
  - Primary (Formula box):
    - "Rotate y = f(x) from x = a to x = b around the x-axis:"
    - $$V = \pi \int_a^b [f(x)]^2\,dx$$
  - Secondary:
    - "Each vertical slice becomes a circular disc"
    - "Radius of disc: r = f(x) (distance from x-axis to curve)"
    - "Area of disc: A = πr² = π[f(x)]²"

### Slide 5: Disc Method Visualization
- **Type:** `slide-visual`
- **Section:** Disc Method
- **Content:**
  - Title: "Visualizing the Disc"
  - **D3 Visualization:** Cross-section view
    - Show curve and x-axis
    - Highlight one vertical slice
    - Show that slice as a disc (front view = circle)
    - Label radius r = f(x)
  - Caption: "The radius is the distance from the axis to the curve"

### Slide 6: Example 1 - Disc Around x-axis
- **Type:** `slide-example`
- **Section:** Disc Method
- **Content:**
  - Title: "Example: Disc Around x-axis"
  - Problem: "Find the volume when y = √x is rotated around the x-axis from x = 0 to x = 4"
  - Solution:
    - "Radius: r = √x"
    - "A(x) = π(√x)² = πx"
    - $$V = \pi \int_0^4 x\,dx = \pi\left[\frac{x^2}{2}\right]_0^4 = \pi \cdot 8 = 8\pi$$
  - Result box: V = 8π cubic units

### Slide 7: Disc Method - Around y-axis
- **Type:** `slide-two-part`
- **Section:** Disc Method
- **Content:**
  - Title: "Disc Method: Rotation Around y-axis"
  - Primary (Formula box):
    - "Rotate x = f(y) from y = c to y = d around the y-axis:"
    - $$V = \pi \int_c^d [f(y)]^2\,dy$$
  - Secondary:
    - "Horizontal slices become discs"
    - "Radius: r = f(y) (distance from y-axis to curve)"
    - "Integrate with respect to y"

### Slide 8: Example 2 - Disc Around y-axis
- **Type:** `slide-example`
- **Section:** Disc Method
- **Content:**
  - Title: "Example: Disc Around y-axis"
  - Problem: "Find the volume when y = x² (i.e., x = √y) is rotated around the y-axis from y = 0 to y = 4"
  - Solution:
    - "Rewrite: x = √y"
    - "Radius: r = √y"
    - $$V = \pi \int_0^4 (\sqrt{y})^2\,dy = \pi \int_0^4 y\,dy = \pi \cdot 8 = 8\pi$$
  - Note: "Same answer as Example 1 - coincidence for this region!"

### Slide 9: Washer Method Introduction
- **Type:** `slide-visual`
- **Section:** Washer Method
- **Content:**
  - Title: "When There's a Hole: The Washer"
  - **D3 Visualization:** Washer cross section
    - Show region between two curves
    - Indicate gap between inner curve and axis
    - Show cross section as washer (ring)
    - Label outer radius R and inner radius r
  - Caption: "Washer = Big disc - Small disc"

### Slide 10: Washer Formula
- **Type:** `slide-two-part`
- **Section:** Washer Method
- **Content:**
  - Title: "Washer Method Formula"
  - Primary (Formula box):
    - $$V = \pi \int_a^b \left([R(x)]^2 - [r(x)]^2\right)\,dx$$
    - "R = outer radius (farther from axis)"
    - "r = inner radius (closer to axis)"
  - Secondary (Warning box):
    - "CRITICAL: It's R² - r², NOT (R - r)²!"
    - "R² - r² = (R+r)(R-r)"
    - "(R-r)² = R² - 2Rr + r²"
    - "These are NOT the same!"

### Slide 11: Example 3 - Washer Around x-axis
- **Type:** `slide-example`
- **Section:** Washer Method
- **Content:**
  - Title: "Example: Washer Around x-axis"
  - Problem: "Find the volume when the region between y = √x and y = x² is rotated around the x-axis"
  - Setup:
    - "Intersection: x² = √x → x⁴ = x → x = 0 or x = 1"
    - "On [0,1]: √x > x² (test x = 0.5: 0.71 > 0.25)"
    - "Outer: R = √x, Inner: r = x²"

### Slide 12: Example 3 - Evaluation
- **Type:** `slide-example`
- **Section:** Washer Method
- **Content:**
  - Title: "Example: Washer Around x-axis (completed)"
  - Evaluation:
    - $$V = \pi \int_0^1 \left[(\sqrt{x})^2 - (x^2)^2\right]\,dx$$
    - $$= \pi \int_0^1 (x - x^4)\,dx$$
    - $$= \pi \left[\frac{x^2}{2} - \frac{x^5}{5}\right]_0^1$$
    - $$= \pi \left(\frac{1}{2} - \frac{1}{5}\right) = \frac{3\pi}{10}$$
  - Result box: V = 3π/10 cubic units

### Slide 13: Rotation Around Other Lines
- **Type:** `slide-statement`
- **Section:** Non-Standard Axes
- **Content:**
  - Statement: "The key insight: Radius = Distance from AXIS OF ROTATION to the curve"
  - Secondary: "For axis y = k: radius = |f(x) - k|"
  - Secondary: "For axis x = k: radius = |f(y) - k|"

### Slide 14: Radius Adjustment Diagram
- **Type:** `slide-visual`
- **Section:** Non-Standard Axes
- **Content:**
  - Title: "Measuring Radius from the Axis"
  - **D3 Visualization:** Interactive axis position
    - Show curve y = √x
    - Moveable horizontal line (axis of rotation)
    - Show radius measurement from axis to curve
    - Display: "Radius = f(x) - k" or "Radius = k - f(x)"
  - Caption: "The radius depends on where the axis is relative to the curve"

### Slide 15: Example 4 - Rotation Around y = -1
- **Type:** `slide-example`
- **Section:** Non-Standard Axes
- **Content:**
  - Title: "Example: Rotation Around y = -1"
  - Problem: "Region between y = √x and y = x² on [0,1], rotated around y = -1"
  - Setup:
    - "Axis y = -1 is BELOW the region"
    - "Outer radius: R = √x - (-1) = √x + 1"
    - "Inner radius: r = x² - (-1) = x² + 1"

### Slide 16: Example 4 - Evaluation
- **Type:** `slide-example`
- **Section:** Non-Standard Axes
- **Content:**
  - Title: "Example: Rotation Around y = -1 (completed)"
  - Setup:
    - $$V = \pi \int_0^1 \left[(\sqrt{x}+1)^2 - (x^2+1)^2\right]\,dx$$
  - Expand:
    - "(√x + 1)² = x + 2√x + 1"
    - "(x² + 1)² = x⁴ + 2x² + 1"
  - Evaluate:
    - $$V = \pi \int_0^1 (x + 2\sqrt{x} - x^4 - 2x^2)\,dx = \frac{29\pi}{30}$$
  - Observation: "Larger than 3π/10 from x-axis rotation - farther axis = more volume"

### Slide 17: Example 5 - Rotation Around x = 2
- **Type:** `slide-example`
- **Section:** Non-Standard Axes
- **Content:**
  - Title: "Example: Rotation Around x = 2"
  - Problem: "Region between y = x and y = x² on [0,1], rotated around x = 2"
  - Key insight: "Vertical axis → use dy (horizontal slices)"
  - Setup:
    - "Rewrite: x = y (line) and x = √y (parabola)"
    - "Axis x = 2 is to the RIGHT of region"
    - "Outer: R = 2 - y (farther from x = 2)"
    - "Inner: r = 2 - √y (closer to x = 2)"

### Slide 18: Example 5 - Evaluation
- **Type:** `slide-example`
- **Section:** Non-Standard Axes
- **Content:**
  - Title: "Example: Rotation Around x = 2 (completed)"
  - Evaluation:
    - $$V = \pi \int_0^1 \left[(2-y)^2 - (2-\sqrt{y})^2\right]\,dy$$
    - Expand and simplify:
    - $$= \pi \int_0^1 (y^2 - 5y + 4\sqrt{y})\,dy$$
    - $$= \pi \left[\frac{y^3}{3} - \frac{5y^2}{2} + \frac{8y^{3/2}}{3}\right]_0^1$$
    - $$= \pi \left(\frac{1}{3} - \frac{5}{2} + \frac{8}{3}\right) = \frac{\pi}{2}$$
  - Result box: V = π/2 cubic units

### Slide 19: Decision Flowchart
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Disc or Washer? A Decision Guide"
  - List (numbered):
    - "1. Draw the region and identify the axis of rotation"
    - "2. Is the region adjacent to the axis? → Disc method"
    - "3. Is there a gap between region and axis? → Washer method"
    - "4. Which curve is FARTHER from the axis? → Outer radius R"
    - "5. Which curve is CLOSER to the axis? → Inner radius r"
    - "6. Vertical axis? Use dy. Horizontal axis? Use dx."

### Slide 20: Critical Reminder
- **Type:** `slide-statement`
- **Section:** Summary
- **Content:**
  - Statement: "R² - r², NOT (R - r)²"
  - Visual comparison:
    - "If R = 5, r = 3:"
    - "R² - r² = 25 - 9 = 16 ✓"
    - "(R - r)² = 4 ✗"
  - Caption: "This is the most common error on the AP exam!"

### Slide 21: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem 1: "y = x³ rotated around x-axis from x = 0 to x = 2 (disc)"
  - Problem 2: "Region between y = 4 and y = x² rotated around y = 5 (washer)"
  - Task: "Set up the integrals. Identify R and r for Problem 2."
  - Time: "4 minutes"

### Slide 22: Practice Solutions
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Problem 1:
    - "r = x³"
    - "V = π∫₀² (x³)² dx = π∫₀² x⁶ dx = π[x⁷/7]₀² = 128π/7"
  - Problem 2:
    - "Axis y = 5 is ABOVE region"
    - "R = 5 - x² (from axis to parabola, farther)"
    - "r = 5 - 4 = 1 (from axis to line, closer)"
    - "V = π∫₋₂² [(5-x²)² - 1] dx"

### Slide 23: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Disc method: V = π∫r² (region touches axis)"
    - "Washer method: V = π∫(R² - r²) (gap between region and axis)"
    - "Radius = distance from AXIS to curve (not from x-axis!)"
    - "For non-standard axes: adjust radius formula"
    - "R² - r², NEVER (R - r)²"
    - "Match integration variable to axis orientation"

### Slide 24: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Question: "Which is larger: the volume when y = x (from x = 0 to x = 1) is rotated around the x-axis, or around y = -1?"
  - Follow-up: "Explain your reasoning without calculating."
  - Expected insight: "y = -1 gives larger volume because the radius is larger at every point"

### Slide 25: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Arc Length (BC Topic)"
  - Secondary: "Finding the actual length of curves using the Pythagorean theorem at the infinitesimal level."

---

## D3 Visualization Specifications

### Visualization 1: Rotation Animation (Slide 1)

```javascript
// Animated visualization showing region spinning to form solid
// Features:
// - 2D region (y = √x from 0 to 4)
// - "Rotate" button triggers animation
// - Region spins around x-axis
// - 3D solid emerges from rotation

// Animation sequence:
// - Start with 2D region (filled)
// - On click: rotate region (simulated with expanding ellipses)
// - Final: 3D solid shown with shading

// Implementation:
// - Use CSS 3D transforms or SVG ellipse interpolation
// - Show rotation in progress (ghosted intermediate positions)
// - Final solid with cross-section visible

// Color scheme:
// - Initial region: var(--theme-color) #e11d48
// - Solid: var(--color-function) #60a5fa with gradient

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Disc Cross-Section View (Slide 5)

```javascript
// Visualization showing disc as cross section
// Features:
// - Side view: curve with one vertical slice highlighted
// - Front view: that slice as a circular disc
// - Radius labeled from axis to curve
// - Slider to move slice position

// Interaction:
// - Slider moves slice along curve
// - Disc size updates to match radius at that x
// - Display: "At x = [val], r = f(x) = [val]"

// Visual elements:
// - Curve in profile
// - Highlighted slice with dimension arrow
// - Circular disc shown in separate view

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Slice: var(--theme-color) #e11d48
// - Disc: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 3: Washer Decomposition (Slide 9)

```javascript
// Visualization showing washer = big disc - small disc
// Features:
// - Region between two curves
// - Show outer radius R and inner radius r
// - Animate: big disc → small disc subtracted → washer
// - Formula: π R² - π r² = π(R² - r²)

// Animation sequence:
// - Show big disc (area π R²)
// - Show small disc (area π r²)
// - Subtract: small disc removed from big disc
// - Result: washer (ring)

// Visual elements:
// - Outer disc in one color
// - Inner disc (hole) in contrasting color
// - Final washer clearly showing the ring

// Color scheme:
// - Outer disc: var(--color-function) #60a5fa
// - Inner disc (hole): white
// - Washer fill: var(--theme-color) #e11d48

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 4: Interactive Axis Position (Slide 14)

```javascript
// Interactive visualization showing radius measurement
// Features:
// - Curve y = √x displayed
// - Horizontal line (axis) that can be moved vertically
// - Radius measurement shown from axis to curve
// - Formula updates: "r = f(x) - k" or "r = k - f(x)"

// Interaction:
// - Drag axis line up/down
// - Radius arrow adjusts automatically
// - Display updates with current formula
// - Show when axis is above vs. below curve

// Visual elements:
// - Curve
// - Draggable horizontal line
// - Radius arrow with dimension
// - Formula display

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Axis line: var(--color-secondary) #a78bfa
// - Radius arrow: var(--theme-color) #e11d48

// Font sizes: minimum 1.25rem for all labels
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-8-int-apps: #e11d48` for accents
- Rotation animations should be smooth (use requestAnimationFrame)
- 3D effects simulated with 2D SVG where possible
- Consider using CSS 3D transforms for rotation preview
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Test on both projector and Zoom - ensure radius arrows are clearly visible
- Include interactive elements for tablet touch input
