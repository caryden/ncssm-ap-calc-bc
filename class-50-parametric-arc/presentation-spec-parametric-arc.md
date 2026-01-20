# Presentation Spec: Parametric Arc Length

## Class 50 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)
## CED Topic 9.3

---

## Overview

This presentation derives and applies the arc length formula for parametric curves. Building on parametric derivatives from Class 49, students discover how the Pythagorean theorem on infinitesimal displacements leads to the integral formula. Key visualizations include segment approximation animations, the ds triangle, and the physics interpretation of arc length as the integral of speed.

**Theme Color:** `#0891b2` (Unit 9 Cyan)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 9: Parametric, Polar, and Vector-Valued Functions"
  - Title: "Arc Length"
  - Subtitle: "Measuring Distance Along Parametric Curves"
  - Meta: "Class 50 | CED 9.3 | NCSSM"

### Slide 1: The Big Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "How much track does a roller coaster loop need?"
  - Secondary: "The loop follows x = t - sin(t), y = 1 - cos(t)..."
- **Notes:** This is a cycloid - can't easily write as y = f(x)

### Slide 2: Review - Cartesian Arc Length
- **Type:** `slide-two-part`
- **Section:** Review
- **Content:**
  - Primary: The Familiar Formula
    - "For y = f(x) from x = a to x = b:"
    - $$L = \int_a^b \sqrt{1 + \left(\frac{dy}{dx}\right)^2}\, dx$$
  - Secondary: Limitation
    - "Requires y as a function of x"
    - "Can't handle vertical tangents or curves that double back"
    - "What we need: a formula for ANY parametric curve"

### Slide 3: The Infinitesimal Approach
- **Type:** `slide-visual`
- **Section:** Deriving the Formula
- **Content:**
  - Title: "Breaking the Curve into Tiny Pieces"
  - **D3 Visualization:** Curve approximated by line segments
  - Caption: "Each tiny piece is approximately a straight line segment"
- **Visualization Details:**
  - Show parametric curve
  - Slider controls number of segments n
  - Display total length of segments
  - As n increases, approximation improves

### Slide 4: The ds Triangle
- **Type:** `slide-visual`
- **Section:** Deriving the Formula
- **Content:**
  - Title: "The Infinitesimal Triangle"
  - **D3 Visualization:** Zoomed view of curve with dx-dy-ds triangle
  - Labels:
    - Horizontal leg: dx
    - Vertical leg: dy
    - Hypotenuse: ds
  - Pythagorean theorem: ds = sqrt(dx^2 + dy^2)
  - Caption: "Pythagorean theorem on the tiny triangle"
- **Visualization Details:**
  - Animate zoom into a tiny piece of curve
  - Show the piece becoming nearly straight
  - Right triangle with labeled sides

### Slide 5: From Triangle to Formula
- **Type:** `slide-visual`
- **Section:** Deriving the Formula
- **Content:**
  - Title: "Building the Arc Length Formula"
  - Step-by-step derivation:
    - Start: ds = sqrt(dx^2 + dy^2)
    - Substitute: dx = (dx/dt)dt, dy = (dy/dt)dt
    - Factor: ds = sqrt((dx/dt)^2 + (dy/dt)^2) dt
    - Integrate: L = integral of ds
  - Definition box with cyan border:
    - $$L = \int_a^b \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2}\, dt$$

### Slide 6: The Speed Interpretation
- **Type:** `slide-two-part`
- **Section:** Deriving the Formula
- **Content:**
  - Primary: Physical Meaning
    - "sqrt((dx/dt)^2 + (dy/dt)^2) = SPEED"
    - "This is how fast the point moves along the curve"
  - Secondary: Key Insight
    - "Arc length = integral of speed"
    - "Distance = integral of rate"
    - "It's 'distance = speed x time' in infinitesimal form!"

### Slide 7: Speed Visualization
- **Type:** `slide-visual`
- **Section:** Deriving the Formula
- **Content:**
  - Title: "Arc Length as Integral of Speed"
  - **D3 Visualization:** Two-panel display
    - Top: Parametric curve with moving point
    - Bottom: Speed graph with shaded area
  - Caption: "The shaded area equals the distance traveled"
- **Visualization Details:**
  - Animate point moving along curve
  - Speed graph shows sqrt((dx/dt)^2 + (dy/dt)^2) vs t
  - Shaded area accumulates as point moves
  - Display running total of arc length

### Slide 8: Example 1 - Circle
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Verifying with a Circle"
  - Given: x = r*cos(t), y = r*sin(t), t in [0, 2pi]
  - dx/dt = -r*sin(t), dy/dt = r*cos(t)
  - (dx/dt)^2 + (dy/dt)^2 = r^2*sin^2(t) + r^2*cos^2(t) = r^2
  - sqrt(r^2) = r (constant speed!)
  - L = integral from 0 to 2pi of r dt = 2*pi*r
  - Result box: "Circumference = 2*pi*r. It works!"

### Slide 9: Circle Speed Insight
- **Type:** `slide-statement`
- **Section:** Examples
- **Content:**
  - Statement: "The point moves around the circle at constant speed r"
  - Secondary: "No speeding up, no slowing down - uniform circular motion"
- **Notes:** Connect to physics of circular motion

### Slide 10: Example 2 - The Cycloid
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "One Arch of a Cycloid"
  - **D3 Visualization:** Animated cycloid generation
    - Rolling circle with point on rim
    - Path traced by the point
  - Given: x = t - sin(t), y = 1 - cos(t), t in [0, 2pi]
  - Caption: "A point on a rolling wheel traces a cycloid"
- **Visualization Details:**
  - Show wheel rolling along x-axis
  - Point on rim traces the cycloid
  - Mark one complete arch

### Slide 11: Cycloid Calculation - Setup
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Cycloid Arc Length: Setup"
  - Derivatives:
    - dx/dt = 1 - cos(t)
    - dy/dt = sin(t)
  - Sum of squares:
    - (dx/dt)^2 + (dy/dt)^2 = (1 - cos(t))^2 + sin^2(t)
    - = 1 - 2cos(t) + cos^2(t) + sin^2(t)
    - = 2 - 2cos(t) = 2(1 - cos(t))

### Slide 12: Cycloid Calculation - Trig Identity
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Cycloid Arc Length: Using Trig"
  - Identity box: 1 - cos(t) = 2*sin^2(t/2)
  - sqrt(2(1 - cos(t))) = sqrt(4*sin^2(t/2)) = 2|sin(t/2)|
  - For t in [0, 2pi]: sin(t/2) >= 0, so |sin(t/2)| = sin(t/2)
  - Integrand simplifies to: 2*sin(t/2)

### Slide 13: Cycloid Calculation - Final
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Cycloid Arc Length: Result"
  - L = integral from 0 to 2pi of 2*sin(t/2) dt
  - Substitution: u = t/2, du = dt/2
  - L = 4 * integral from 0 to pi of sin(u) du
  - L = 4[-cos(u)] from 0 to pi = 4[-(-1) - (-1)] = 4(2) = 8
  - Result box: "One arch of a cycloid (radius 1) has length 8"
  - Caption: "Remarkably, this is exactly 4 times the diameter!"

### Slide 14: When Integrals Are Hard
- **Type:** `slide-statement`
- **Section:** Calculator Methods
- **Content:**
  - Statement: "Many arc length integrals don't have elementary antiderivatives"
  - Secondary: "That's when we reach for the calculator..."

### Slide 15: Example 3 - Calculator Required
- **Type:** `slide-example`
- **Section:** Calculator Methods
- **Content:**
  - Title: "Calculator-Required Example"
  - Given: x = t^2, y = t^3, t in [0, 2]
  - dx/dt = 2t, dy/dt = 3t^2
  - L = integral from 0 to 2 of sqrt(4t^2 + 9t^4) dt
  - = integral from 0 to 2 of t*sqrt(4 + 9t^2) dt
  - Calculator result: L approximately 9.073
  - Caption: "On the AP exam: 'Set up but do not evaluate' is common"

### Slide 16: Analytical vs. Numerical
- **Type:** `slide-comparison`
- **Section:** Calculator Methods
- **Content:**
  - Title: "When to Use Each Method"
  - Column 1: By Hand
    - "Integrand simplifies nicely"
    - "Trig identities help"
    - "Substitution works"
    - "Example: circle, cycloid"
  - Column 2: Calculator
    - "Complex square root"
    - "No obvious substitution"
    - "AP exam calculator section"
    - "Example: most real-world curves"

### Slide 17: Arc Length Accumulator
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Watching Arc Length Accumulate"
  - **D3 Visualization:** Arc length accumulation animation
  - Features:
    - Curve with moving point
    - Running total of distance traveled
    - Compare to direct distance (displacement)
  - Caption: "Arc length can be much longer than straight-line distance"
- **Visualization Details:**
  - Show parametric curve
  - Animate point moving along curve
  - Display arc length vs. displacement magnitude
  - Highlight that they're different!

### Slide 18: Key Formula Comparison
- **Type:** `slide-comparison`
- **Section:** Summary
- **Content:**
  - Title: "Arc Length Formulas"
  - Column 1: Cartesian
    - $$L = \int_a^b \sqrt{1 + \left(\frac{dy}{dx}\right)^2}\, dx$$
    - "For y = f(x)"
  - Column 2: Parametric
    - $$L = \int_a^b \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2}\, dt$$
    - "For x = f(t), y = g(t)"

### Slide 19: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem: "Set up (don't evaluate) the arc length integral for:"
  - Curve: x = e^t, y = e^(-t), from t = 0 to t = 1
  - Tasks:
    - Find dx/dt and dy/dt
    - Write the integrand
    - Write the complete integral
  - Time: "3 minutes"

### Slide 20: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - dx/dt = e^t, dy/dt = -e^(-t)
  - (dx/dt)^2 + (dy/dt)^2 = e^(2t) + e^(-2t)
  - Integrand: sqrt(e^(2t) + e^(-2t))
  - Answer: L = integral from 0 to 1 of sqrt(e^(2t) + e^(-2t)) dt
  - Calculator: L approximately 2.003

### Slide 21: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List items:
    - "Arc length comes from Pythagorean theorem: ds = sqrt(dx^2 + dy^2)"
    - "Formula: L = integral of sqrt((dx/dt)^2 + (dy/dt)^2) dt"
    - "Physical interpretation: Arc length = integral of speed"
    - "Bounds are t-values (parameter bounds), not x or y"
    - "Many integrals require calculator - know how to set up correctly"

### Slide 22: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "A particle moves along the path x = 3t, y = 4t for t in [0, 5]."
  - Question: "What is the total distance traveled?"
  - Hint: "This should have a simple answer..."

### Slide 23: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Vector-Valued Functions"
  - Secondary: "Package x(t) and y(t) together as r(t) = <x(t), y(t)>"

---

## D3 Visualization Specifications

### Visualization 1: Segment Approximation (Slide 3)

```javascript
// Arc length approximation with line segments
// Features:
// - Parametric curve (e.g., cycloid or ellipse)
// - Slider to control number of segments n
// - n line segments approximating the curve
// - Display: sum of segment lengths
// - As n increases, sum converges to true arc length

// Color scheme:
// - Curve: var(--color-function) #60a5fa (faint)
// - Segments: var(--theme-color) #0891b2
// - Endpoints: var(--color-derivative) #f97316

// Interaction:
// - Slider: n from 4 to 100
// - Display running total and true value
// - Show convergence

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: The ds Triangle (Slide 4)

```javascript
// Infinitesimal triangle visualization
// Features:
// - Smooth curve with zoom capability
// - "Zoom in" animation to show tiny piece
// - Right triangle with labeled sides: dx, dy, ds
// - Pythagorean theorem annotation

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - dx leg: #10b981 (green)
// - dy leg: #f59e0b (amber)
// - ds hypotenuse: var(--theme-color) #0891b2

// Animation:
// - Initial: full curve view
// - Zoom in to tiny piece
// - Triangle appears with labels
// - Formula appears: ds^2 = dx^2 + dy^2
```

### Visualization 3: Speed and Arc Length (Slide 7)

```javascript
// Two-panel speed/arc length visualization
// Features:
// - Top panel: parametric curve with animated point
// - Bottom panel: speed vs. t graph
// - Shaded area under speed curve = arc length
// - Running total of arc length displayed

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Moving point: var(--theme-color) #0891b2
// - Speed curve: var(--color-derivative) #f97316
// - Shaded area: rgba(8, 145, 178, 0.3)

// Interaction:
// - Play/pause button
// - Manual time slider
// - Area shading follows point position
```

### Visualization 4: Cycloid Generation (Slide 10)

```javascript
// Animated cycloid generation
// Features:
// - Circle rolling along x-axis (no slipping)
// - Point marked on circumference
// - Trace of point position as circle rolls
// - Complete one full rotation

// Color scheme:
// - Rolling circle: var(--theme-color) #0891b2
// - Tracing point: #f97316 (orange)
// - Traced path: var(--color-function) #60a5fa
// - Ground line: #94a3b8 (slate)

// Animation:
// - Circle rolls one complete rotation
// - Point traces cycloid arch
// - Can pause and resume
```

### Visualization 5: Arc Length Accumulator (Slide 17)

```javascript
// Arc length vs displacement comparison
// Features:
// - Parametric curve with moving point
// - Arc length counter (distance along curve)
// - Straight-line distance from start
// - Visual comparison showing arc length > displacement

// Color scheme:
// - Curve and path: var(--color-function) #60a5fa
// - Moving point: var(--theme-color) #0891b2
// - Displacement line: #ef4444 (red dashed)
// - Arc length indicator: #22c55e (green)

// Display:
// - "Arc length: X.XX units"
// - "Displacement: X.XX units"
// - Highlight difference
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-9-param: #0891b2` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Animations should respect prefers-reduced-motion
- Include calculator tips for numerical integration
- Emphasize the "set up but don't evaluate" pattern for AP preparation
