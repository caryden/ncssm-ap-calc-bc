# Presentation Spec: Motion with Vectors

## Class 52 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)
## CED Topic 9.6

---

## Overview

This presentation applies vector calculus to analyze motion in the plane. Students connect position, velocity, and acceleration vectors through differentiation, calculate speed and total distance traveled, and distinguish between distance and displacement. Key visualizations include motion simulators, velocity/acceleration vector animations, and the speed accumulation graph. This class integrates physics concepts with calculus for the motion problems common on AP exams.

**Theme Color:** `#0891b2` (Unit 9 Cyan)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 9: Parametric, Polar, and Vector-Valued Functions"
  - Title: "Motion in the Plane"
  - Subtitle: "Position, Velocity, and Acceleration Vectors"
  - Meta: "Class 52 | CED 9.6 | NCSSM"

### Slide 1: The Projectile Question
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "At the Peak of a Projectile's Path..."
  - **D3 Visualization:** Animated projectile motion
  - Question: "What's the velocity at the highest point?"
  - Question: "What's the acceleration at the highest point?"
- **Visualization Details:**
  - Show parabolic trajectory
  - Animate ball moving along path
  - Highlight the peak point

### Slide 2: The Answer Revealed
- **Type:** `slide-two-part`
- **Section:** Opening
- **Content:**
  - Primary: At the Peak
    - "Vertical velocity = 0, but horizontal velocity is NOT zero!"
    - "v = <v_x, 0> - still moving horizontally"
  - Secondary: Acceleration
    - "Acceleration is ALWAYS <0, -g>, pointing down"
    - "Even at the peak, gravity acts!"
- **Notes:** Key insight: 2D motion requires tracking components separately

### Slide 3: Review - The Derivative Chain
- **Type:** `slide-visual`
- **Section:** The Derivative Chain
- **Content:**
  - Title: "From 1D to 2D Motion"
  - 1D Chain: s(t) → v(t) = s'(t) → a(t) = s''(t)
  - 2D Chain (with vector notation):
    - Position: r(t) = <x(t), y(t)>
    - Velocity: v(t) = r'(t) = <x'(t), y'(t)>
    - Acceleration: a(t) = r''(t) = <x''(t), y''(t)>
  - Caption: "Same derivative relationships, now with vectors!"

### Slide 4: Velocity Vector Analysis
- **Type:** `slide-two-part`
- **Section:** Velocity
- **Content:**
  - Primary: The Velocity Vector
    - $$\mathbf{v}(t) = \mathbf{r}'(t) = \left\langle \frac{dx}{dt}, \frac{dy}{dt} \right\rangle$$
  - Secondary: Key Properties
    - "Direction: Points in direction of motion (tangent to curve)"
    - "Components: v_x = horizontal velocity, v_y = vertical velocity"
    - "Magnitude: |v(t)| = speed = sqrt((v_x)^2 + (v_y)^2)"

### Slide 5: Velocity vs. Speed
- **Type:** `slide-comparison`
- **Section:** Velocity
- **Content:**
  - Title: "Critical Distinction"
  - Column 1: Velocity (VECTOR)
    - "v(t) = <v_x(t), v_y(t)>"
    - "Has magnitude AND direction"
    - "Can have negative components"
    - "Points in direction of motion"
  - Column 2: Speed (SCALAR)
    - "|v(t)| = sqrt((v_x)^2 + (v_y)^2)"
    - "Magnitude only"
    - "Always non-negative"
    - "How fast, not which way"

### Slide 6: Linear Motion Example
- **Type:** `slide-example`
- **Section:** Velocity
- **Content:**
  - Title: "Example: Linear Motion"
  - Given: r(t) = <1 + 2t, 3 - t>
  - v(t) = r'(t) = <2, -1> (constant velocity)
  - Speed = sqrt(4 + 1) = sqrt(5)
  - Interpretation:
    - "Moving right (v_x = 2 > 0)"
    - "Moving down (v_y = -1 < 0)"
    - "Constant speed sqrt(5) in a straight line"

### Slide 7: Projectile Motion Example
- **Type:** `slide-visual`
- **Section:** Velocity
- **Content:**
  - Title: "Example: Projectile Motion"
  - Given: r(t) = <50t, 80t - 16t^2>
  - v(t) = <50, 80 - 32t>
  - **D3 Visualization:** Projectile with velocity vectors at different points
  - Analysis:
    - At t = 0: v = <50, 80>, speed ≈ 94.3
    - At t = 2.5: v = <50, 0>, speed = 50 (at peak)
    - At t = 5: v = <50, -80>, speed ≈ 94.3
  - Caption: "Horizontal velocity constant; vertical velocity changes linearly"

### Slide 8: When is the Particle at Rest?
- **Type:** `slide-two-part`
- **Section:** Velocity
- **Content:**
  - Primary: Definition
    - "At rest means v(t) = <0, 0>"
    - "BOTH components must be zero!"
  - Secondary: Projectile Example
    - "For r(t) = <50t, 80t - 16t^2>:"
    - "v_x = 50 is never zero"
    - "The particle is NEVER at rest!"
    - "At the peak, it's still moving horizontally"

### Slide 9: Acceleration Vector Analysis
- **Type:** `slide-two-part`
- **Section:** Acceleration
- **Content:**
  - Primary: The Acceleration Vector
    - $$\mathbf{a}(t) = \mathbf{v}'(t) = \mathbf{r}''(t) = \left\langle \frac{d^2x}{dt^2}, \frac{d^2y}{dt^2} \right\rangle$$
  - Secondary: Key Insight
    - "Acceleration is rate of change of VELOCITY"
    - "Changes in both magnitude (speed) AND direction"
    - "Does NOT necessarily point in direction of motion!"

### Slide 10: Projectile Acceleration
- **Type:** `slide-visual`
- **Section:** Acceleration
- **Content:**
  - Title: "Projectile Motion: Acceleration"
  - **D3 Visualization:** Projectile path with acceleration vectors
  - Given: r(t) = <50t, 80t - 16t^2>
  - v(t) = <50, 80 - 32t>
  - a(t) = <0, -32> (constant!)
  - Caption: "Acceleration always points DOWN, regardless of position"
- **Visualization Details:**
  - Show acceleration vector at multiple points
  - All pointing straight down
  - Even at peak, a points down

### Slide 11: Circular Motion - A Surprise
- **Type:** `slide-visual`
- **Section:** Acceleration
- **Content:**
  - Title: "Circular Motion Analysis"
  - **D3 Visualization:** Particle on circle with v and a vectors
  - Given: r(t) = <3cos(t), 3sin(t)>
  - v(t) = <-3sin(t), 3cos(t)>
  - a(t) = <-3cos(t), -3sin(t)> = -r(t)
  - Key insight: "Acceleration points toward CENTER!"
  - Caption: "This is centripetal acceleration"
- **Visualization Details:**
  - Circle with moving point
  - Velocity tangent to circle
  - Acceleration pointing toward origin
  - Show a = -r relationship

### Slide 12: Constant Speed on Circle
- **Type:** `slide-statement`
- **Section:** Acceleration
- **Content:**
  - Statement: "On a circle, speed is constant even though velocity changes!"
  - Secondary: "Speed = |v(t)| = sqrt(9sin^2(t) + 9cos^2(t)) = 3"
  - "Acceleration only changes DIRECTION, not speed"

### Slide 13: Speeding Up vs. Slowing Down
- **Type:** `slide-two-part`
- **Section:** Acceleration
- **Content:**
  - Primary: The 2D Rule
    - "Use the dot product: v dot a"
    - "v dot a = v_x*a_x + v_y*a_y"
  - Secondary: Interpretation
    - "v dot a > 0: Speeding up"
    - "v dot a < 0: Slowing down"
    - "v dot a = 0: Constant speed (direction changing only)"
- **Notes:** This generalizes the 1D sign comparison

### Slide 14: Dot Product Example
- **Type:** `slide-example`
- **Section:** Acceleration
- **Content:**
  - Title: "Verifying Constant Speed on Circle"
  - v(t) = <-3sin(t), 3cos(t)>
  - a(t) = <-3cos(t), -3sin(t)>
  - v dot a = (-3sin)(−3cos) + (3cos)(−3sin)
  - = 9sin(t)cos(t) - 9cos(t)sin(t) = 0
  - Conclusion: "Speed is constant! Acceleration only changes direction."

### Slide 15: Motion Simulator
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Motion Simulator"
  - **D3 Visualization:** Interactive motion simulation
  - Features:
    - Curve with animated particle
    - Velocity vector v(t) attached to particle
    - Acceleration vector a(t) attached to particle
    - Speedometer display
  - Caption: "Watch how velocity and acceleration interact"
- **Visualization Details:**
  - Choice of curve (projectile, circle, figure-8)
  - Play/pause, time slider
  - Display v(t), a(t), |v(t)|, v dot a

### Slide 16: Distance vs. Displacement
- **Type:** `slide-statement`
- **Section:** Distance and Displacement
- **Content:**
  - Statement: "Distance and Displacement are NOT the same!"
  - Secondary: "A round trip has zero displacement but positive distance."

### Slide 17: Displacement (Vector)
- **Type:** `slide-two-part`
- **Section:** Distance and Displacement
- **Content:**
  - Primary: Definition
    - $$\Delta \mathbf{r} = \mathbf{r}(t_2) - \mathbf{r}(t_1)$$
    - "Straight-line vector from start to end"
  - Secondary: Properties
    - "Can be zero even if particle moved!"
    - "Ignores the actual path taken"
    - "Magnitude |Delta r| = straight-line distance"

### Slide 18: Total Distance (Scalar)
- **Type:** `slide-two-part`
- **Section:** Distance and Displacement
- **Content:**
  - Primary: Formula
    - $$\text{Distance} = \int_{t_1}^{t_2} |\mathbf{v}(t)|\, dt = \int_{t_1}^{t_2} \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2}\, dt$$
  - Secondary: Key Recognition
    - "This is the ARC LENGTH formula!"
    - "Distance = integral of speed"
    - "Always non-negative, accounts for ALL travel"

### Slide 19: Distance vs. Displacement Visual
- **Type:** `slide-visual`
- **Section:** Distance and Displacement
- **Content:**
  - Title: "Comparing Distance and Displacement"
  - **D3 Visualization:** Path with distance and displacement comparison
  - Example: Cycloid arch r(t) = <sin(t), 1 - cos(t)>, t in [0, 2pi]
  - Displacement: r(2pi) - r(0) = <0, 0> (returns to start!)
  - Distance: integral of |v(t)| dt = 2pi
  - Caption: "Same start and end, but traveled a curved path"
- **Visualization Details:**
  - Show the cycloid path
  - Displacement vector (zero length - dot)
  - Distance measurement along curve
  - Clear numerical comparison

### Slide 20: Integration for Position
- **Type:** `slide-two-part`
- **Section:** Integration
- **Content:**
  - Primary: The Formulas
    - "Velocity from acceleration:"
    - $$\mathbf{v}(t) = \int \mathbf{a}(t)\, dt + \mathbf{v}_0$$
    - "Position from velocity:"
    - $$\mathbf{r}(t) = \int \mathbf{v}(t)\, dt + \mathbf{r}_0$$
  - Secondary: Critical Note
    - "Initial conditions are ESSENTIAL"
    - "The constants are VECTORS"

### Slide 21: Integration Example
- **Type:** `slide-example`
- **Section:** Integration
- **Content:**
  - Title: "Finding Position from Acceleration"
  - Given: a(t) = <2, -6t>, v(0) = <1, 4>, r(0) = <0, 0>
  - Step 1 - Find v(t):
    - v(t) = integral of <2, -6t> dt + v(0)
    - v(t) = <2t, -3t^2> + <1, 4> = <2t + 1, -3t^2 + 4>
  - Step 2 - Find r(t):
    - r(t) = integral of <2t + 1, -3t^2 + 4> dt + r(0)
    - r(t) = <t^2 + t, -t^3 + 4t> + <0, 0> = <t^2 + t, -t^3 + 4t>

### Slide 22: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Given: r(t) = <t^2, t^3 - 3t>
  - Find:
    - a) v(t) and v(1)
    - b) a(t) and a(1)
    - c) Speed at t = 1
    - d) Is the particle speeding up or slowing down at t = 1?
  - Time: "4 minutes"

### Slide 23: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - a) v(t) = <2t, 3t^2 - 3>, v(1) = <2, 0>
  - b) a(t) = <2, 6t>, a(1) = <2, 6>
  - c) Speed = |v(1)| = |<2, 0>| = 2
  - d) v(1) dot a(1) = (2)(2) + (0)(6) = 4 > 0
     - The particle is SPEEDING UP at t = 1

### Slide 24: Key Formulas Summary
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Formulas"
  - List items:
    - "Position: r(t) = <x(t), y(t)>"
    - "Velocity: v(t) = r'(t) = <x'(t), y'(t)>"
    - "Acceleration: a(t) = r''(t) = <x''(t), y''(t)>"
    - "Speed: |v(t)| = sqrt((x')^2 + (y')^2)"
    - "Distance: integral of |v(t)| dt"
    - "Speeding up/down: sign of v dot a"

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List items:
    - "Position → velocity → acceleration: derivative chain"
    - "Velocity is a VECTOR; speed is its magnitude"
    - "Acceleration doesn't always point in direction of motion"
    - "Distance =/= |displacement| in general"
    - "Use v dot a to determine speeding up/slowing down"
    - "Initial conditions are essential for integration"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - A particle moves so that r(t) = <cos(2t), sin(2t)>.
  - Questions:
    - "Find the speed at any time t."
    - "Is the particle ever speeding up or slowing down?"
    - "What is the total distance traveled from t = 0 to t = pi?"

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Polar Coordinates"
  - Secondary: "A completely different way to describe curves - using distance and angle"

---

## D3 Visualization Specifications

### Visualization 1: Projectile Animation (Slide 1, 7)

```javascript
// Projectile motion visualization
// Features:
// - Parabolic path
// - Animated ball moving along path
// - Velocity vector attached to ball
// - Special highlight at peak

// Color scheme:
// - Path: var(--color-function) #60a5fa
// - Ball: var(--theme-color) #0891b2
// - Velocity vector: #f97316 (orange)
// - Acceleration vector: #ef4444 (red)

// Interaction:
// - Play/pause button
// - Time slider
// - Show/hide velocity and acceleration vectors

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Circular Motion (Slide 11)

```javascript
// Circular motion with velocity and acceleration
// Features:
// - Circle with moving point
// - Position vector from origin
// - Velocity vector tangent to circle
// - Acceleration vector pointing to center
// - Show a = -r relationship

// Color scheme:
// - Circle: var(--color-function) #60a5fa
// - Point: var(--theme-color) #0891b2
// - Position vector: #94a3b8
// - Velocity: #f97316 (orange)
// - Acceleration: #ef4444 (red)

// Animation:
// - Point moves around circle
// - Vectors update in real-time
// - Display v dot a = 0
```

### Visualization 3: Motion Simulator (Slide 15)

```javascript
// Interactive motion simulation
// Features:
// - Multiple curve options (projectile, circle, figure-8)
// - Animated particle with trail
// - Velocity vector v(t)
// - Acceleration vector a(t)
// - Speedometer display
// - v dot a indicator (speeding up/slowing down)

// Color scheme:
// - Path: var(--color-function) #60a5fa
// - Particle: var(--theme-color) #0891b2
// - Velocity: #f97316 (orange)
// - Acceleration: #ef4444 (red)
// - Speeding up indicator: #22c55e (green)
// - Slowing down indicator: #ef4444 (red)

// Interaction:
// - Curve selector dropdown
// - Play/pause button
// - Time slider
// - Checkbox toggles for each vector
```

### Visualization 4: Distance vs. Displacement (Slide 19)

```javascript
// Comparison visualization
// Features:
// - Curved path (cycloid or custom)
// - Animated point moving along path
// - Running count of distance traveled
// - Displacement vector from start to current
// - Clear numerical comparison

// Color scheme:
// - Path: var(--color-function) #60a5fa
// - Point: var(--theme-color) #0891b2
// - Displacement vector: #ef4444 (red dashed)
// - Distance highlight: #22c55e (green along path)

// Display:
// - "Distance traveled: X.XX units"
// - "Displacement magnitude: X.XX units"
// - Highlight when different
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-9-param: #0891b2` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Animations should respect prefers-reduced-motion
- Connect to physics concepts (projectile motion, circular motion)
- Emphasize the v dot a criterion for speeding up/slowing down
- This is a high-frequency AP exam topic - include exam-style practice
