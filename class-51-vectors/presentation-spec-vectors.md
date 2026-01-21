# Presentation Spec: Vector-Valued Functions

## Class 51 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)
## CED Topics 9.4, 9.5

---

## Overview

This presentation introduces vector-valued functions as a unified way to describe parametric curves. Students will learn to package x(t) and y(t) into a single vector function r(t), differentiate and integrate vector functions component by component, and interpret derivatives geometrically as tangent vectors. Key visualizations include position vector animations, velocity vector decomposition, and the unit tangent vector.

**Theme Color:** `#0891b2` (Unit 9 Cyan)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 9: Parametric, Polar, and Vector-Valued Functions"
  - Title: "Vector-Valued Functions"
  - Subtitle: "Unifying Position, Velocity, and Direction"
  - Meta: "Class 51 | CED 9.4, 9.5 | NCSSM"

### Slide 1: The Notation Problem
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "A drone's position at time t is x = t^2 and y = t^3"
  - Secondary: "Two separate equations... can we use ONE function?"

### Slide 2: The Vector Solution
- **Type:** `slide-two-part`
- **Section:** Opening
- **Content:**
  - Primary: Package as a Vector!
    - $$\mathbf{r}(t) = \langle t^2, t^3 \rangle$$
    - "One function captures both coordinates"
  - Secondary: Why This Matters
    - "Unified notation for physics"
    - "Natural language for motion"
    - "Extends easily to 3D: r(t) = <x(t), y(t), z(t)>"

### Slide 3: Vector Basics Review
- **Type:** `slide-visual`
- **Section:** Review
- **Content:**
  - Title: "Vector Fundamentals"
  - **D3 Visualization:** Vector components display
  - Key concepts:
    - Component form: v = <a, b>
    - Magnitude: |v| = sqrt(a^2 + b^2)
    - Unit vector: v/|v| has magnitude 1
  - Caption: "Vectors have magnitude AND direction"
- **Visualization Details:**
  - Show vector from origin
  - Display components as projections
  - Show magnitude calculation

### Slide 4: Position Vectors
- **Type:** `slide-visual`
- **Section:** Review
- **Content:**
  - Title: "Position Vectors"
  - **D3 Visualization:** Position vector from origin to point
  - Definition: "Vector from origin O to point P = (a, b)"
  - Notation: OP = <a, b>
  - Caption: "The vector's tip is at point P"
- **Visualization Details:**
  - Show coordinate plane
  - Arrow from origin to point
  - Label both point and vector

### Slide 5: Vector Notation Options
- **Type:** `slide-comparison`
- **Section:** Review
- **Content:**
  - Title: "Two Equivalent Notations"
  - Column 1: Bracket Notation
    - r(t) = <x(t), y(t)>
    - "Most common in calculus"
    - "Easy to read components"
  - Column 2: Unit Vector Notation
    - r(t) = x(t)i + y(t)j
    - "Common in physics"
    - "Both appear on AP exam"

### Slide 6: Definition of Vector-Valued Function
- **Type:** `slide-two-part`
- **Section:** Vector-Valued Functions
- **Content:**
  - Primary: Definition
    - "A vector-valued function assigns a VECTOR to each value of t"
    - $$\mathbf{r}(t) = \langle x(t), y(t) \rangle$$
  - Secondary: Geometric Interpretation
    - "As t varies, the tip of r(t) traces a curve"
    - "r(t) points FROM origin TO current position"

### Slide 7: Vector Function Animation
- **Type:** `slide-visual`
- **Section:** Vector-Valued Functions
- **Content:**
  - Title: "Tracing a Curve with Vectors"
  - **D3 Visualization:** Animated position vector tracing a curve
  - Caption: "The tip of r(t) traces the parametric curve"
- **Visualization Details:**
  - Position vector from origin to point on curve
  - As t changes, vector rotates and stretches
  - Trail showing the path traced
  - Display r(t) = <x(t), y(t)> with current values

### Slide 8: Example Gallery
- **Type:** `slide-list`
- **Section:** Vector-Valued Functions
- **Content:**
  - Title: "Common Vector Functions"
  - List items:
    - "r(t) = <t, t^2>: Parabola y = x^2"
    - "r(t) = <cos(t), sin(t)>: Unit circle (counterclockwise)"
    - "r(t) = <t - sin(t), 1 - cos(t)>: Cycloid"
    - "r(t) = <3cos(t), 2sin(t)>: Ellipse"
- **Notes:** Same curves as parametric, just packaged differently

### Slide 9: The Big Question
- **Type:** `slide-statement`
- **Section:** Derivatives
- **Content:**
  - Statement: "How do we differentiate a vector-valued function?"
  - Secondary: "What does the derivative even mean geometrically?"

### Slide 10: Derivative Definition
- **Type:** `slide-visual`
- **Section:** Derivatives
- **Content:**
  - Title: "The Derivative of a Vector Function"
  - Limit definition:
    - $$\mathbf{r}'(t) = \lim_{h \to 0} \frac{\mathbf{r}(t+h) - \mathbf{r}(t)}{h}$$
  - **D3 Visualization:** Secant vectors approaching tangent
  - Caption: "The derivative is the limit of secant vectors"
- **Visualization Details:**
  - Show curve with point r(t)
  - Show r(t+h) for various h values
  - Difference vector r(t+h) - r(t)
  - As h shrinks, secant becomes tangent

### Slide 11: Component-by-Component Rule
- **Type:** `slide-two-part`
- **Section:** Derivatives
- **Content:**
  - Primary: The Key Result
    - "Differentiate component by component!"
    - Definition box with cyan border:
      - "If r(t) = <x(t), y(t)>, then"
      - $$\mathbf{r}'(t) = \langle x'(t), y'(t) \rangle$$
  - Secondary: Why This Works
    - "Vector subtraction and division work component-wise"
    - "The limit of a vector = vector of limits"

### Slide 12: Derivative Examples
- **Type:** `slide-example`
- **Section:** Derivatives
- **Content:**
  - Title: "Differentiation Examples"
  - Example 1:
    - r(t) = <t^2, t^3>
    - r'(t) = <2t, 3t^2>
  - Example 2:
    - r(t) = <cos(t), sin(t)>
    - r'(t) = <-sin(t), cos(t)>

### Slide 13: Geometric Interpretation
- **Type:** `slide-visual`
- **Section:** Derivatives
- **Content:**
  - Title: "r'(t) is TANGENT to the Curve!"
  - **D3 Visualization:** Curve with tangent vector
  - Key properties (annotated on visual):
    - "r'(t) points in direction of motion"
    - "|r'(t)| = speed"
    - "r'(t) is the velocity vector"
  - Caption: "The derivative tells us how the position is changing"
- **Visualization Details:**
  - Show curve with point
  - r'(t) vector attached at the point
  - Vector tangent to curve
  - Direction arrow showing motion

### Slide 14: Velocity and Speed
- **Type:** `slide-comparison`
- **Section:** Derivatives
- **Content:**
  - Title: "Velocity vs. Speed"
  - Column 1: Velocity (Vector)
    - v(t) = r'(t) = <x'(t), y'(t)>
    - "Has magnitude AND direction"
    - "Points in direction of motion"
  - Column 2: Speed (Scalar)
    - |v(t)| = |r'(t)|
    - = sqrt((x')^2 + (y')^2)
    - "Always non-negative"
    - "How fast, regardless of direction"

### Slide 15: Interactive Velocity Explorer
- **Type:** `slide-visual`
- **Section:** Derivatives
- **Content:**
  - Title: "Exploring Velocity on Curves"
  - **D3 Visualization:** Interactive curve with velocity vector
  - Features:
    - Slider for t value
    - Position vector r(t) shown
    - Velocity vector r'(t) at the point
    - Speed |r'(t)| displayed
  - Caption: "Notice how velocity changes around the curve"
- **Visualization Details:**
  - Ellipse curve
  - Moving point with attached velocity vector
  - Display: r(t), r'(t), |r'(t)|

### Slide 16: Circle Example Deep Dive
- **Type:** `slide-visual`
- **Section:** Derivatives
- **Content:**
  - Title: "Unit Circle Analysis"
  - Given: r(t) = <cos(t), sin(t)>
  - r'(t) = <-sin(t), cos(t)>
  - At t = 0:
    - r(0) = <1, 0> (point on right of circle)
    - r'(0) = <0, 1> (velocity points up!)
  - **D3 Visualization:** Circle with marked point and velocity
  - Caption: "The particle moves counterclockwise - velocity is perpendicular to position"

### Slide 17: Unit Tangent Vector
- **Type:** `slide-two-part`
- **Section:** Derivatives
- **Content:**
  - Primary: Definition
    - "The unit tangent vector T(t):"
    - $$\mathbf{T}(t) = \frac{\mathbf{r}'(t)}{|\mathbf{r}'(t)|}$$
    - "Direction of motion, normalized to length 1"
  - Secondary: When to Use
    - "When you only care about direction, not speed"
    - "Undefined where r'(t) = 0"

### Slide 18: Tangent Lines to Curves
- **Type:** `slide-two-part`
- **Section:** Applications
- **Content:**
  - Primary: Tangent Line Formula
    - Point on curve: P = r(t_0)
    - Direction vector: v = r'(t_0)
    - Tangent line: L(s) = r(t_0) + s * r'(t_0)
  - Secondary: Note
    - "s is a new parameter for points on the line"
    - "s = 0 gives the point P"

### Slide 19: Tangent Line Example
- **Type:** `slide-example`
- **Section:** Applications
- **Content:**
  - Title: "Example: Tangent Line"
  - Given: r(t) = <t^2, t^3>, find tangent line at t = 1
  - Step 1: Point: r(1) = <1, 1>
  - Step 2: r'(t) = <2t, 3t^2>, so r'(1) = <2, 3>
  - Step 3: Tangent line: L(s) = <1, 1> + s<2, 3> = <1 + 2s, 1 + 3s>
  - Parametric form: x = 1 + 2s, y = 1 + 3s
  - Cartesian form: y - 1 = (3/2)(x - 1)

### Slide 20: Integration of Vector Functions
- **Type:** `slide-two-part`
- **Section:** Integration
- **Content:**
  - Primary: The Rule
    - "Integrate component by component:"
    - $$\int \mathbf{r}(t)\, dt = \left\langle \int x(t)\, dt, \int y(t)\, dt \right\rangle$$
  - Secondary: Critical Warning!
    - "The constant of integration is a VECTOR!"
    - "C = <C_1, C_2>, not just a number"

### Slide 21: Integration Example
- **Type:** `slide-example`
- **Section:** Integration
- **Content:**
  - Title: "Integration with Initial Condition"
  - Given: r'(t) = <2t, 3t^2> and r(0) = <1, -2>
  - Step 1: Integrate: r(t) = <t^2 + C_1, t^3 + C_2>
  - Step 2: Apply r(0) = <1, -2>:
    - <C_1, C_2> = <1, -2>
  - Step 3: Solution: r(t) = <t^2 + 1, t^3 - 2>
  - Caption: "Initial conditions determine the constant vector"

### Slide 22: Higher Derivatives
- **Type:** `slide-two-part`
- **Section:** Integration
- **Content:**
  - Primary: Second Derivative
    - r''(t) = <x''(t), y''(t)>
    - "The acceleration vector"
    - "Pattern continues for any order"
  - Secondary: Definite Integrals
    - Integral from a to b of r(t) dt = <integral of x(t), integral of y(t)>
    - "Result is a vector (net displacement if r is velocity)"

### Slide 23: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Given: r(t) = <e^t, e^(-t)>
  - Find:
    - a) r'(t)
    - b) |r'(1)| (speed at t = 1)
    - c) Equation of tangent line at t = 0
  - Time: "4 minutes"

### Slide 24: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - a) r'(t) = <e^t, -e^(-t)>
  - b) r'(1) = <e, -e^(-1)> = <e, -1/e>
    - |r'(1)| = sqrt(e^2 + 1/e^2) approximately 2.72
  - c) At t = 0: r(0) = <1, 1>, r'(0) = <1, -1>
    - L(s) = <1 + s, 1 - s>

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List items:
    - "Vector functions: r(t) = <x(t), y(t)> packages parametric equations"
    - "Differentiate component by component: r'(t) = <x'(t), y'(t)>"
    - "r'(t) is the tangent/velocity vector"
    - "|r'(t)| is speed (always non-negative)"
    - "Integration is component-wise, with constant VECTOR"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Given: r(t) = <sin(t), cos(t)>
  - Questions:
    - "Find r'(t)"
    - "What is the speed at any time t?"
    - "What kind of curve is this?"

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Motion in the Plane"
  - Secondary: "Connecting position, velocity, and acceleration vectors to physics"

---

## D3 Visualization Specifications

### Visualization 1: Vector Components (Slide 3)

```javascript
// Vector fundamentals visualization
// Features:
// - Vector from origin to point
// - Horizontal and vertical component projections
// - Magnitude display
// - Interactive: drag endpoint to change vector

// Color scheme:
// - Main vector: var(--theme-color) #0891b2
// - x-component: #10b981 (green)
// - y-component: #f59e0b (amber)
// - Grid: #e2e8f0 (light gray)

// Display:
// - v = <a, b>
// - |v| = sqrt(a^2 + b^2)
// - Components as dashed projections

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Position Vector Animation (Slide 7)

```javascript
// Animated position vector tracing curve
// Features:
// - Position vector from origin to point on curve
// - Vector rotates and changes length as t changes
// - Trail showing path traced by vector tip
// - Display current r(t) values

// Color scheme:
// - Position vector: var(--theme-color) #0891b2
// - Curve trail: var(--color-function) #60a5fa
// - Origin: #94a3b8

// Animation:
// - Smooth animation of t from a to b
// - Play/pause control
// - t slider for manual control
```

### Visualization 3: Derivative as Tangent (Slide 10)

```javascript
// Secant vectors approaching tangent
// Features:
// - Curve with point r(t)
// - Point r(t+h) that moves closer to r(t)
// - Secant vector (r(t+h) - r(t))/h
// - As h → 0, secant → tangent

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Position points: var(--theme-color) #0891b2
// - Secant vector: #f97316 (changing opacity)
// - Tangent vector: #22c55e (green)

// Animation:
// - h slider from large to small
// - Secant vector shrinks and rotates to tangent
// - Display current h value and vector
```

### Visualization 4: Interactive Velocity Explorer (Slide 15)

```javascript
// Velocity vector on curve
// Features:
// - Ellipse curve with moving point
// - Position vector from origin (optional toggle)
// - Velocity vector attached at point
// - Speed magnitude displayed

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Point: var(--theme-color) #0891b2
// - Position vector: #94a3b8 (light)
// - Velocity vector: #f97316 (orange)

// Interaction:
// - Slider for t value
// - Toggle position vector on/off
// - Display: r(t), r'(t), |r'(t)|
```

### Visualization 5: Circle Velocity Analysis (Slide 16)

```javascript
// Unit circle with position and velocity
// Features:
// - Unit circle with marked point
// - Position vector from origin to point
// - Velocity vector at the point
// - Show that velocity is perpendicular to position

// Color scheme:
// - Circle: var(--color-function) #60a5fa
// - Position vector: var(--theme-color) #0891b2
// - Velocity vector: #f97316 (orange)
// - Perpendicularity indicator: #22c55e

// Display:
// - r(t) = <cos(t), sin(t)>
// - r'(t) = <-sin(t), cos(t)>
// - Show dot product r · r' = 0
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-9-param: #0891b2` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Animations should respect prefers-reduced-motion
- Support both bracket and i-j notation in examples
- Emphasize the constant vector in integration (common error)
