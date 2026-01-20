# Presentation Spec: Parametric Equations and Derivatives

## Class 49 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)
## CED Topics 9.1, 9.2

---

## Overview

This presentation introduces parametric equations as a powerful way to describe curves where both x and y are functions of a third variable (typically time). Key visualizations include interactive curve tracing animations, velocity vector decomposition, and the secant-to-tangent approach for parametric derivatives. The second derivative formula receives special attention due to its common error potential.

**Theme Color:** `#0891b2` (Unit 9 Cyan)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 9: Parametric, Polar, and Vector-Valued Functions"
  - Title: "Parametric Equations"
  - Subtitle: "Describing Motion Through Space"
  - Meta: "Class 49 | CED 9.1, 9.2 | NCSSM"

### Slide 1: The Big Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "How do we describe the path of a ball thrown in the air?"
  - Secondary: "Position depends on time: x(t) = horizontal, y(t) = vertical"
- **Notes:** Emphasize that this is fundamentally different from y = f(x)

### Slide 2: What is a Parametric Curve?
- **Type:** `slide-two-part`
- **Section:** Understanding Parametric Equations
- **Content:**
  - Primary: Definition
    - "A curve described by x = f(t) and y = g(t)"
    - "As t varies, the point (x, y) traces a curve"
  - Secondary: Key Features
    - "The curve has direction (orientation)"
    - "t is called the parameter (often represents time)"
    - "Same curve can have different parametrizations"

### Slide 3: Parametric Curve Animation
- **Type:** `slide-visual`
- **Section:** Understanding Parametric Equations
- **Content:**
  - Title: "Tracing a Parametric Curve"
  - **D3 Visualization:** Animated point tracing a curve as t increases
  - Caption: "Watch the point move as t increases from 0 to 2pi"
- **Visualization Details:**
  - Show curve r(t) = (cos(t), sin(t)) (circle)
  - Point moves along curve with trail
  - Display current (x, y) and t value
  - Arrows showing direction of travel

### Slide 4: Example Gallery
- **Type:** `slide-comparison`
- **Section:** Understanding Parametric Equations
- **Content:**
  - Title: "Common Parametric Curves"
  - Column 1: Simple Examples
    - Line: x = 1 + 2t, y = 3 - t
    - Parabola: x = t, y = t^2
  - Column 2: Trigonometric Examples
    - Circle: x = cos(t), y = sin(t)
    - Ellipse: x = 3cos(t), y = 2sin(t)
- **Notes:** Emphasize that parametric form can represent curves that fail vertical line test

### Slide 5: Plotting Parametric Curves
- **Type:** `slide-visual`
- **Section:** Understanding Parametric Equations
- **Content:**
  - Title: "The Table Method"
  - **D3 Visualization:** Interactive table and plot
    - Left panel: Table with t, x(t), y(t) columns
    - Right panel: Plot showing points being placed
  - Caption: "Plot points in order, then connect with arrows"
- **Visualization Details:**
  - User can step through t values
  - Points appear on graph as table fills
  - Arrows indicate direction

### Slide 6: Eliminating the Parameter
- **Type:** `slide-example`
- **Section:** Understanding Parametric Equations
- **Content:**
  - Title: "Converting to Cartesian Form"
  - Example: x = t, y = t^2
  - Step 1: From x = t, we get t = x
  - Step 2: Substitute into y: y = x^2
  - Result: "Familiar parabola y = x^2"
  - Warning box: "Not always possible! Circles, spirals, etc."

### Slide 7: Why Parametrics Matter
- **Type:** `slide-list`
- **Section:** Understanding Parametric Equations
- **Content:**
  - Title: "The Power of Parametric Form"
  - List items:
    - "Motion description: Natural for physics (position vs. time)"
    - "Complex curves: Represent curves that fail vertical line test"
    - "Direction information: Know which way the curve is traced"
    - "Multiple traversals: Curve can be traced more than once"

### Slide 8: The Key Question
- **Type:** `slide-statement`
- **Section:** Derivatives of Parametric Equations
- **Content:**
  - Statement: "What's the slope of the tangent line at a point on a parametric curve?"
  - Secondary: "We want dy/dx, but y isn't given as a function of x!"

### Slide 9: The Chain Rule Approach
- **Type:** `slide-visual`
- **Section:** Derivatives of Parametric Equations
- **Content:**
  - Title: "Deriving the Slope Formula"
  - Math derivation with annotations:
    - "Both x and y are functions of t"
    - "By the chain rule: dy/dt = (dy/dx)(dx/dt)"
    - "Solving for slope:"
  - Definition box with cyan border:
    - $$\frac{dy}{dx} = \frac{dy/dt}{dx/dt} = \frac{y'(t)}{x'(t)}$$
  - Caption: "It's NOT just fraction cancellation - it's the chain rule!"

### Slide 10: Velocity Interpretation
- **Type:** `slide-visual`
- **Section:** Derivatives of Parametric Equations
- **Content:**
  - Title: "Understanding the Formula"
  - **D3 Visualization:** Curve with velocity vector decomposition
    - Point on curve with velocity vector
    - Horizontal component: dx/dt
    - Vertical component: dy/dt
    - Slope = vertical/horizontal
  - Caption: "Slope = (vertical velocity) / (horizontal velocity)"
- **Visualization Details:**
  - Show moving point on ellipse
  - Decompose velocity into components
  - Display dy/dx = (dy/dt)/(dx/dt)

### Slide 11: Example 1 - Parabola
- **Type:** `slide-example`
- **Section:** Derivatives of Parametric Equations
- **Content:**
  - Title: "Example: Parabola"
  - Given: x = t, y = t^2
  - dx/dt = 1
  - dy/dt = 2t
  - dy/dx = 2t/1 = 2t = 2x
  - Verification: "Matches derivative of y = x^2!"

### Slide 12: Example 2 - Circle
- **Type:** `slide-example`
- **Section:** Derivatives of Parametric Equations
- **Content:**
  - Title: "Example: Unit Circle"
  - Given: x = cos(t), y = sin(t)
  - dx/dt = -sin(t)
  - dy/dt = cos(t)
  - dy/dx = cos(t)/(-sin(t)) = -cot(t)
  - At t = pi/4: dy/dx = -cot(pi/4) = -1
  - Caption: "Slope is -1 at the 45-degree point"

### Slide 13: Interactive Tangent Explorer
- **Type:** `slide-visual`
- **Section:** Derivatives of Parametric Equations
- **Content:**
  - Title: "Tangent Lines on Parametric Curves"
  - **D3 Visualization:** Interactive curve with moveable tangent line
  - Slider for t value
  - Display: Point coordinates, dy/dt, dx/dt, and slope dy/dx
  - Caption: "Drag to see how the slope changes around the curve"
- **Visualization Details:**
  - Show ellipse with tangent line
  - As t changes, tangent line moves
  - Display calculated slope at each point

### Slide 14: Tangent Line Equation
- **Type:** `slide-two-part`
- **Section:** Derivatives of Parametric Equations
- **Content:**
  - Primary: Formula
    - Point: (x(t_0), y(t_0))
    - Slope: m = dy/dx at t = t_0
    - Line: y - y(t_0) = m(x - x(t_0))
  - Secondary: Example
    - For x = t^2, y = t^3 at t = 1
    - Point: (1, 1)
    - m = (3t^2)/(2t)|_{t=1} = 3/2
    - Line: y - 1 = (3/2)(x - 1)

### Slide 15: The Second Derivative
- **Type:** `slide-statement`
- **Section:** Second Derivatives
- **Content:**
  - Statement: "Finding d^2y/dx^2 requires extra care!"
  - Secondary: "The most common error on parametric problems..."
- **Notes:** Build suspense for the critical formula

### Slide 16: Second Derivative Formula
- **Type:** `slide-visual`
- **Section:** Second Derivatives
- **Content:**
  - Title: "The Second Derivative"
  - Error box (red border):
    - "WRONG: d^2y/dx^2 = (d^2y/dt^2)/(d^2x/dt^2)"
  - Correct box (green border):
    - "RIGHT: d^2y/dx^2 = (d/dt(dy/dx))/(dx/dt)"
  - Explanation: "Take derivative of dy/dx with respect to t, then divide by dx/dt"
  - Caption: "Memorize the correct formula - this appears frequently on the AP exam!"

### Slide 17: Second Derivative Example
- **Type:** `slide-example`
- **Section:** Second Derivatives
- **Content:**
  - Title: "Example: x = t^2, y = t^3"
  - Step 1: dy/dx = (3t^2)/(2t) = 3t/2
  - Step 2: d/dt(dy/dx) = d/dt(3t/2) = 3/2
  - Step 3: d^2y/dx^2 = (3/2)/(2t) = 3/(4t)
  - Verification: "At t = 1, d^2y/dx^2 = 3/4 > 0 (concave up)"

### Slide 18: Horizontal Tangents
- **Type:** `slide-two-part`
- **Section:** Horizontal and Vertical Tangents
- **Content:**
  - Primary: Definition
    - "Horizontal tangent when dy/dx = 0"
    - "This means dy/dt = 0 AND dx/dt =/= 0"
  - Secondary: Geometric Meaning
    - "The curve has a horizontal tangent line"
    - "The vertical velocity is zero"

### Slide 19: Vertical Tangents
- **Type:** `slide-two-part`
- **Section:** Horizontal and Vertical Tangents
- **Content:**
  - Primary: Definition
    - "Vertical tangent when dy/dx is undefined"
    - "This means dx/dt = 0 AND dy/dt =/= 0"
  - Secondary: Special Case
    - "If both dy/dt = 0 AND dx/dt = 0: need further analysis"
    - "Could be a cusp, corner, or self-intersection"

### Slide 20: Tangent Analysis Example
- **Type:** `slide-visual`
- **Section:** Horizontal and Vertical Tangents
- **Content:**
  - Title: "Finding All Tangents"
  - Example: x = t^2 - 4, y = t^3 - 3t
  - **D3 Visualization:** Curve with marked tangent points
    - dx/dt = 2t = 0 at t = 0
    - dy/dt = 3t^2 - 3 = 0 at t = +/- 1
  - Results:
    - Vertical tangent at t = 0: point (-4, 0)
    - Horizontal tangents at t = +/- 1: points (-3, -2) and (-3, 2)
  - Caption: "This curve has one vertical and two horizontal tangents"

### Slide 21: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem: "For x = cos(t), y = sin(2t), find:"
  - Tasks:
    - a) dy/dx
    - b) The slope at t = pi/3
    - c) All values of t where tangent is horizontal
  - Time: "4 minutes"

### Slide 22: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - a) dy/dx = (2cos(2t))/(-sin(t))
  - b) At t = pi/3: dy/dx = (2cos(2pi/3))/(-sin(pi/3)) = (2(-1/2))/(-sqrt(3)/2) = 2/sqrt(3)
  - c) Horizontal: 2cos(2t) = 0, so 2t = pi/2, 3pi/2, ... giving t = pi/4, 3pi/4, ...
  - Check: sin(t) =/= 0 at these values (confirmed!)

### Slide 23: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List items:
    - "Parametric equations describe curves with x(t) and y(t)"
    - "Slope formula: dy/dx = (dy/dt)/(dx/dt) - the chain rule!"
    - "Second derivative: d^2y/dx^2 = (d/dt(dy/dx))/(dx/dt)"
    - "Horizontal tangent: dy/dt = 0 (with dx/dt =/= 0)"
    - "Vertical tangent: dx/dt = 0 (with dy/dt =/= 0)"

### Slide 24: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "For x = e^t, y = e^(2t), find dy/dx and simplify."
  - Hint: "This should simplify to a familiar form..."

### Slide 25: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Arc Length of Parametric Curves"
  - Secondary: "How far does a particle travel along its path?"

---

## D3 Visualization Specifications

### Visualization 1: Parametric Curve Tracer (Slide 3)

```javascript
// Animated curve tracing visualization
// Features:
// - Curve: unit circle (or selectable curve)
// - Animated point that moves as t increases
// - Trail showing path already traced
// - Direction arrows along curve
// - Display: current t, x(t), y(t) values

// Color scheme:
// - Curve trail: var(--color-function) #60a5fa
// - Moving point: var(--theme-color) #0891b2
// - Direction arrows: var(--color-derivative) #f97316

// Animation:
// - Play/pause button
// - Speed control
// - t slider for manual control

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Velocity Decomposition (Slide 10)

```javascript
// Velocity vector decomposition visualization
// Features:
// - Ellipse curve with moving point
// - Velocity vector attached to point
// - Horizontal component (dx/dt) in one color
// - Vertical component (dy/dt) in another color
// - Real-time display of slope = (dy/dt)/(dx/dt)

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Point: var(--theme-color) #0891b2
// - Horizontal velocity: #10b981 (green)
// - Vertical velocity: #f59e0b (amber)
// - Velocity vector: #f97316 (orange)

// Interaction:
// - Slider controls t parameter
// - Components update in real-time
// - Slope value displayed prominently
```

### Visualization 3: Tangent Line Explorer (Slide 13)

```javascript
// Interactive tangent line visualization
// Features:
// - Parametric curve (ellipse or user-selectable)
// - Moveable point along curve
// - Tangent line drawn at current point
// - Display: (x, y), dy/dt, dx/dt, dy/dx

// Interaction:
// - Click and drag point along curve
// - Or use slider for t value
// - Tangent line updates in real-time
// - Highlight when tangent is horizontal or vertical
```

### Visualization 4: Tangent Analysis (Slide 20)

```javascript
// Static visualization showing tangent analysis
// Features:
// - Curve x = t^2 - 4, y = t^3 - 3t
// - Marked points at horizontal tangents (-3, 2) and (-3, -2)
// - Marked point at vertical tangent (-4, 0)
// - Horizontal tangent lines drawn in one color
// - Vertical tangent line drawn in another color
// - Labels for each special point

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Horizontal tangent: #22c55e (green)
// - Vertical tangent: #ef4444 (red)
// - Special points: var(--theme-color) #0891b2
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-9-param: #0891b2` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Animations should respect prefers-reduced-motion
- Include Desmos links for extended exploration
