# Presentation Spec: Polar Coordinates and Derivatives

## Class 53 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)
## CED Topic 9.7

---

## Overview

This presentation introduces polar coordinates as an alternative to Cartesian coordinates, ideal for describing curves with radial symmetry. Students learn to plot points and curves in polar form, convert between coordinate systems, and find derivatives of polar curves using the parametric connection. Key visualizations include polar grid systems, famous curve galleries, and interactive tangent line explorers.

**Theme Color:** `#0891b2` (Unit 9 Cyan)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 9: Parametric, Polar, and Vector-Valued Functions"
  - Title: "Polar Coordinates"
  - Subtitle: "Describing Curves with Distance and Angle"
  - Meta: "Class 53 | CED 9.7 | NCSSM"

### Slide 1: A Simplicity Challenge
- **Type:** `slide-comparison`
- **Section:** Opening
- **Content:**
  - Title: "Describe a Circle of Radius 2"
  - Column 1: Cartesian
    - x^2 + y^2 = 4
    - "Implicit equation"
    - "Not even a function!"
  - Column 2: Polar
    - r = 2
    - "That's it!"
    - "Elegantly simple"
- **Notes:** Some curves are MUCH simpler in polar coordinates

### Slide 2: Polar Coordinate Definition
- **Type:** `slide-visual`
- **Section:** The Polar System
- **Content:**
  - Title: "The Polar Coordinate System"
  - **D3 Visualization:** Polar grid with labeled point
  - Definition:
    - r = distance from origin (can be negative!)
    - theta = angle from positive x-axis (counterclockwise positive)
  - Notation: Point P has polar coordinates (r, theta)
  - Caption: "Distance and direction from the origin"
- **Visualization Details:**
  - Polar grid with concentric circles and angle rays
  - Sample point plotted with r and theta labeled
  - Arrow showing angle measurement

### Slide 3: Plotting Polar Points
- **Type:** `slide-two-part`
- **Section:** The Polar System
- **Content:**
  - Primary: The Plotting Method
    - "1. Start at origin"
    - "2. Rotate to angle theta"
    - "3. Move distance |r| along the ray (or opposite if r < 0)"
  - Secondary: Examples
    - (3, pi/4): 3 units at 45 degrees
    - (2, pi): 2 units at 180 degrees
    - (-2, pi/4): 2 units OPPOSITE to 45 degrees

### Slide 4: Negative r Explained
- **Type:** `slide-visual`
- **Section:** The Polar System
- **Content:**
  - Title: "What Does Negative r Mean?"
  - **D3 Visualization:** Showing equivalent points
  - Key insight: (-2, pi/4) = (2, 5*pi/4)
  - "Negative r means go in the OPPOSITE direction of theta"
  - Caption: "Both representations describe the same point"
- **Visualization Details:**
  - Show both (r, theta) and (-r, theta + pi) pointing to same location
  - Color-code the two representations

### Slide 5: Non-Uniqueness Warning
- **Type:** `slide-statement`
- **Section:** The Polar System
- **Content:**
  - Statement: "The same point has INFINITELY many polar representations!"
  - Secondary examples:
    - "(3, pi/6) = (3, 13*pi/6) = (-3, 7*pi/6) = ..."
    - "Add 2*pi*n to theta, or negate r and add pi"
- **Notes:** Unlike Cartesian, polar coordinates are not unique

### Slide 6: Conversion Formulas
- **Type:** `slide-two-part`
- **Section:** The Polar System
- **Content:**
  - Primary: Polar to Cartesian
    - x = r*cos(theta)
    - y = r*sin(theta)
  - Secondary: Cartesian to Polar
    - r = sqrt(x^2 + y^2)
    - theta = arctan(y/x) (with quadrant adjustment!)
  - Warning box: "arctan only gives angles in (-pi/2, pi/2) - check the quadrant!"

### Slide 7: Conversion Example
- **Type:** `slide-example`
- **Section:** The Polar System
- **Content:**
  - Title: "Converting Coordinates"
  - Example 1: Polar to Cartesian
    - (4, pi/3) → x = 4*cos(pi/3) = 2, y = 4*sin(pi/3) = 2*sqrt(3)
    - Answer: (2, 2*sqrt(3))
  - Example 2: Cartesian to Polar
    - (2, 2) → r = sqrt(8) = 2*sqrt(2), theta = arctan(1) = pi/4
    - Answer: (2*sqrt(2), pi/4)

### Slide 8: Polar Curves Introduction
- **Type:** `slide-two-part`
- **Section:** Polar Curves
- **Content:**
  - Primary: Definition
    - "A polar curve is defined by r = f(theta)"
    - "For each angle theta, the function tells us how far from the origin"
  - Secondary: Plotting Method
    - "1. Make a table: theta, r = f(theta)"
    - "2. Plot points in polar coordinates"
    - "3. Connect smoothly, noting direction of increasing theta"

### Slide 9: Circles in Polar
- **Type:** `slide-visual`
- **Section:** Polar Curves
- **Content:**
  - Title: "Polar Circles"
  - **D3 Visualization:** Three types of polar circles
  - Types:
    - r = a: Circle centered at origin, radius a
    - r = a*cos(theta): Circle through origin, center at (a/2, 0)
    - r = a*sin(theta): Circle through origin, center at (0, a/2)
  - Caption: "Circles take different forms in polar coordinates"
- **Visualization Details:**
  - Show all three circle types
  - Label each with its equation
  - Highlight where each passes through origin

### Slide 10: The Cardioid
- **Type:** `slide-visual`
- **Section:** Polar Curves
- **Content:**
  - Title: "The Cardioid (Heart Shape)"
  - **D3 Visualization:** Animated cardioid tracing
  - Equation: r = a(1 + cos(theta))
  - Features:
    - Passes through origin once
    - Has a cusp at the origin
    - Symmetric about x-axis
  - Caption: "The name comes from the Greek word for 'heart'"
- **Visualization Details:**
  - Animate curve being traced as theta increases
  - Mark the cusp point
  - Show symmetry

### Slide 11: Limacons
- **Type:** `slide-visual`
- **Section:** Polar Curves
- **Content:**
  - Title: "Limacons: r = a + b*cos(theta)"
  - **D3 Visualization:** Three limacon variants
  - Types based on a/b ratio:
    - Inner loop: a < b
    - Dimpled: b < a < 2b
    - Convex: a >= 2b
  - Caption: "The cardioid is a special limacon with a = b"
- **Visualization Details:**
  - Show examples of each type
  - Slider to adjust a/b ratio
  - Label each variant

### Slide 12: Rose Curves
- **Type:** `slide-visual`
- **Section:** Polar Curves
- **Content:**
  - Title: "Rose Curves: r = a*cos(n*theta)"
  - **D3 Visualization:** Rose curves with different n values
  - Petal count:
    - n odd: n petals
    - n even: 2n petals
  - Examples: n = 2 (4 petals), n = 3 (3 petals), n = 4 (8 petals)
  - Caption: "The number of petals depends on n"
- **Visualization Details:**
  - Gallery of roses with n = 2, 3, 4, 5
  - Animation showing each petal being traced
  - Count petals

### Slide 13: Spirals
- **Type:** `slide-visual`
- **Section:** Polar Curves
- **Content:**
  - Title: "Spiral Curves"
  - **D3 Visualization:** Two spiral types
  - Types:
    - Archimedean: r = a*theta (evenly spaced)
    - Logarithmic: r = a*e^(b*theta) (self-similar)
  - Caption: "Spirals grow outward as theta increases"
- **Visualization Details:**
  - Show both spiral types side by side
  - Animate the spiraling motion
  - Note: logarithmic spirals appear in nature (nautilus shell)

### Slide 14: The Key Connection
- **Type:** `slide-statement`
- **Section:** Polar Derivatives
- **Content:**
  - Statement: "Polar curves ARE parametric curves!"
  - Secondary:
    - "x(theta) = r(theta)*cos(theta)"
    - "y(theta) = r(theta)*sin(theta)"
    - "The parameter is theta!"

### Slide 15: Finding dy/dx
- **Type:** `slide-two-part`
- **Section:** Polar Derivatives
- **Content:**
  - Primary: The Parametric Connection
    - "Use the parametric derivative formula:"
    - $$\frac{dy}{dx} = \frac{dy/d\theta}{dx/d\theta}$$
  - Secondary: Computing the Derivatives
    - "x = r*cos(theta), y = r*sin(theta)"
    - "Need product rule for both!"

### Slide 16: The Derivative Formulas
- **Type:** `slide-visual`
- **Section:** Polar Derivatives
- **Content:**
  - Title: "Derivatives in Polar Form"
  - Product rule applications:
    - dx/d(theta) = (dr/d(theta))*cos(theta) - r*sin(theta)
    - dy/d(theta) = (dr/d(theta))*sin(theta) + r*cos(theta)
  - The slope formula:
    - $$\frac{dy}{dx} = \frac{\frac{dr}{d\theta}\sin\theta + r\cos\theta}{\frac{dr}{d\theta}\cos\theta - r\sin\theta}$$
  - Warning box: "dy/dx is NOT dr/d(theta)!"

### Slide 17: Slope Formula Example
- **Type:** `slide-example`
- **Section:** Polar Derivatives
- **Content:**
  - Title: "Example: Cardioid Slope"
  - Given: r = 1 + sin(theta), find dy/dx at theta = pi/6
  - Step 1: r(pi/6) = 1 + 1/2 = 3/2
  - Step 2: dr/d(theta) = cos(theta), r'(pi/6) = sqrt(3)/2
  - Step 3: dx/d(theta) = r'*cos - r*sin = (sqrt(3)/2)(sqrt(3)/2) - (3/2)(1/2) = 3/4 - 3/4 = 0
  - Step 4: dy/d(theta) = r'*sin + r*cos = (sqrt(3)/2)(1/2) + (3/2)(sqrt(3)/2) = sqrt(3)
  - Step 5: dy/dx = sqrt(3)/0 = undefined → **Vertical tangent!**

### Slide 18: Critical Warning
- **Type:** `slide-statement`
- **Section:** Polar Derivatives
- **Content:**
  - Statement: "dr/d(theta) is NOT the slope!"
  - Secondary:
    - "dr/d(theta) tells how r changes with theta"
    - "dy/dx requires the full parametric formula"
    - "Must use product rule for x and y"
- **Notes:** Most common error in polar derivatives

### Slide 19: Horizontal and Vertical Tangents
- **Type:** `slide-two-part`
- **Section:** Polar Derivatives
- **Content:**
  - Primary: Horizontal Tangent
    - "dy/d(theta) = 0 AND dx/d(theta) =/= 0"
    - "Numerator zero, denominator nonzero"
  - Secondary: Vertical Tangent
    - "dx/d(theta) = 0 AND dy/d(theta) =/= 0"
    - "Denominator zero, numerator nonzero"

### Slide 20: Interactive Tangent Explorer
- **Type:** `slide-visual`
- **Section:** Polar Derivatives
- **Content:**
  - Title: "Polar Tangent Line Explorer"
  - **D3 Visualization:** Polar curve with interactive tangent
  - Features:
    - Slider for theta
    - Tangent line at current point
    - Display: r, dr/d(theta), dx/d(theta), dy/d(theta), dy/dx
  - Caption: "Explore how the tangent changes around the curve"
- **Visualization Details:**
  - Show cardioid or rose curve
  - Moveable point with tangent line
  - Highlight horizontal/vertical tangent positions

### Slide 21: Tangent at the Origin
- **Type:** `slide-two-part`
- **Section:** Polar Derivatives
- **Content:**
  - Primary: Special Case
    - "When r(theta_0) = 0, the curve passes through origin"
    - "The tangent line at origin is the ray theta = theta_0"
  - Secondary: Why?
    - "As theta approaches theta_0, the point approaches origin along the ray"
    - "This ray IS the tangent direction"

### Slide 22: Origin Tangent Example
- **Type:** `slide-visual`
- **Section:** Polar Derivatives
- **Content:**
  - Title: "Example: Rose Curve at Origin"
  - **D3 Visualization:** r = sin(2*theta) with tangent lines at origin
  - r = 0 when 2*theta = n*pi, so theta = 0, pi/2, pi, 3*pi/2
  - Tangent lines at origin: the x and y axes
  - Caption: "The four petals are tangent to these axes at the origin"
- **Visualization Details:**
  - Show 4-petal rose
  - Mark the four tangent lines through origin
  - Label each with its theta value

### Slide 23: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Given: r = cos(theta)
  - Tasks:
    - a) What curve is this?
    - b) Find dy/dx at theta = pi/4
    - c) Where does the curve pass through the origin?
  - Time: "4 minutes"

### Slide 24: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - a) Circle passing through origin, center at (1/2, 0)
  - b) At theta = pi/4:
    - r = sqrt(2)/2, r' = -sqrt(2)/2
    - dx/d(theta) = r'*cos - r*sin = -1/2 - 1/2 = -1
    - dy/d(theta) = r'*sin + r*cos = -1/2 + 1/2 = 0
    - dy/dx = 0/(-1) = 0 → **Horizontal tangent!**
  - c) r = cos(theta) = 0 at theta = pi/2 (and -pi/2)

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List items:
    - "Polar coordinates: (r, theta) = distance and angle from origin"
    - "Same point has multiple representations (non-unique)"
    - "Conversion: x = r*cos(theta), y = r*sin(theta)"
    - "Polar curves are parametric with theta as parameter"
    - "Slope requires product rule: dy/dx =/= dr/d(theta)!"
    - "Tangent at origin is the ray theta = theta_0 where r = 0"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Given: r = 1 + cos(theta)
  - Question: "Find all theta in [0, 2*pi] where the tangent is horizontal."
  - Hint: "Set dy/d(theta) = 0 and check that dx/d(theta) =/= 0"

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Area in Polar Coordinates"
  - Secondary: "Sectors (pie slices) instead of rectangles!"

---

## D3 Visualization Specifications

### Visualization 1: Polar Grid with Point (Slide 2)

```javascript
// Polar coordinate system display
// Features:
// - Concentric circles at r = 1, 2, 3, ...
// - Radial lines at common angles (0, pi/6, pi/4, pi/3, pi/2, ...)
// - Labeled sample point with r and theta
// - Arrow showing angle measurement

// Color scheme:
// - Grid: #e2e8f0 (light gray)
// - Point: var(--theme-color) #0891b2
// - r measurement: #22c55e (green)
// - theta arc: #f97316 (orange)

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Negative r Explanation (Slide 4)

```javascript
// Showing equivalent points with negative r
// Features:
// - Point at (r, theta)
// - Same point at (-r, theta + pi)
// - Both representations highlighted
// - Animation toggling between them

// Color scheme:
// - First representation: var(--theme-color) #0891b2
// - Second representation: #f97316 (orange)
// - Point: both colors combined
```

### Visualization 3: Famous Curves Gallery (Slides 9-13)

```javascript
// Interactive polar curve display
// Features:
// - Dropdown to select curve type
// - Animate curve being traced
// - Display equation
// - Mark special points (origin crossings, max r, etc.)

// Curve types:
// - Circles: r = a, r = a*cos(theta), r = a*sin(theta)
// - Cardioid: r = a(1 + cos(theta))
// - Limacons: r = a + b*cos(theta) with slider for ratio
// - Roses: r = a*cos(n*theta) with n selector
// - Spirals: r = a*theta, r = a*e^(b*theta)

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Tracing point: var(--theme-color) #0891b2
// - Special points: #f97316 (orange)
```

### Visualization 4: Tangent Line Explorer (Slide 20)

```javascript
// Interactive polar tangent visualization
// Features:
// - Polar curve (cardioid or user-selectable)
// - Slider for theta value
// - Tangent line at current point
// - Display panel: r, r', dx/dtheta, dy/dtheta, dy/dx

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Point: var(--theme-color) #0891b2
// - Tangent line: #f97316 (orange)
// - Horizontal tangent: #22c55e (green, when dy/dx = 0)
// - Vertical tangent: #ef4444 (red, when dy/dx undefined)

// Interaction:
// - Slider controls theta
// - All values update in real-time
// - Highlight special tangent positions
```

### Visualization 5: Rose Tangents at Origin (Slide 22)

```javascript
// Rose curve with tangent lines at origin
// Features:
// - 4-petal rose r = sin(2*theta)
// - Tangent lines through origin at theta = 0, pi/2, pi, 3*pi/2
// - Labels showing which theta produces each tangent
// - Animate petals being traced

// Color scheme:
// - Rose curve: var(--color-function) #60a5fa
// - Tangent lines: #f97316 (orange dashed)
// - Origin: var(--theme-color) #0891b2
// - Labels: #64748b (slate)
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-9-param: #0891b2` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Animations should respect prefers-reduced-motion
- Include Desmos links for student exploration in polar mode
- Emphasize the product rule requirement for derivatives
- The "dr/d(theta) is NOT the slope" warning is critical
