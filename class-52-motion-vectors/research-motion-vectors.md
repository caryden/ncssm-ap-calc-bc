# Research: Motion with Vectors

## Overview

This document summarizes research on how expert educators teach planar motion using vector-valued functions. It informs the lesson plan and presentation spec for Class 52, covering CED topic 9.6.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Motion and Derivatives

**Source:** [3Blue1Brown - Essence of Calculus](https://www.3blue1brown.com/topics/calculus)

**Core Pedagogical Strategy:**

Motion in the plane naturally calls for vectors. Position, velocity, and acceleration are all vectors, and their relationships mirror the scalar case: velocity is the derivative of position, acceleration is the derivative of velocity.

**The Key Insight:**

> "Position tells you where something is. Velocity tells you how that position is changing. Acceleration tells you how that velocity is changing. Each is the derivative of the one before."

**Vector Chain:**
- Position: r(t) = <x(t), y(t)>
- Velocity: v(t) = r'(t) = <x'(t), y'(t)>
- Acceleration: a(t) = v'(t) = r''(t) = <x''(t), y''(t)>

**Why Vectors Are Essential:**

1. **Direction matters:** Velocity isn't just speed; it includes direction
2. **2D motion is richer:** Particles can curve, speed up, slow down, change direction
3. **Decomposition:** Analyze horizontal and vertical motion separately, then combine

### Professor Leonard: Motion in Space

**Source:** [Professor Leonard YouTube - Calculus III](https://www.youtube.com/@ProfessorLeonard)

**Teaching Framework:**

1. **Set up the problem:** Define r(t) as position vector
2. **Find velocity:** v(t) = r'(t), interpret as tangent/direction of motion
3. **Find speed:** |v(t)| = sqrt((x')^2 + (y')^2), a scalar
4. **Find acceleration:** a(t) = v'(t), interpret as how velocity changes
5. **Analyze motion:** When speeding up? Slowing down? Changing direction?

**Practice Progression:**

1. Constant velocity: r(t) = <2t + 1, 3t - 2>
2. Projectile motion: r(t) = <v_0 t cos(theta), v_0 t sin(theta) - (1/2)gt^2>
3. Circular motion: r(t) = <r cos(omega t), r sin(omega t)>
4. Complex paths: Analyze direction changes, acceleration components

### Khan Academy: Planar Motion

**Source:** [Khan Academy - AP Calculus BC](https://www.khanacademy.org/math/ap-calculus-bc)

**Key Teaching Points:**

1. **Position vector:** r(t) gives location at time t
2. **Velocity vector:** v(t) = r'(t), tangent to path
3. **Speed:** |v(t)|, always non-negative
4. **Acceleration vector:** a(t) = r''(t)
5. **Total distance:** Integral of speed from t = a to t = b

**Distinguishing Speed and Velocity:**
- Velocity is a VECTOR (has direction)
- Speed is a SCALAR (magnitude only)
- Speed = |velocity| = sqrt((dx/dt)^2 + (dy/dt)^2)

### Paul's Online Math Notes: Velocity and Acceleration

**Source:** [Paul's Online Math Notes - Calculus III](https://tutorial.math.lamar.edu/classes/calciii/velocityacceleration.aspx)

**Teaching Approach:**

1. **Position function:** r(t) describes where object is
2. **Velocity:** v(t) = r'(t), direction and rate of position change
3. **Speed:** |v(t)|, how fast regardless of direction
4. **Acceleration:** a(t) = r''(t), rate of change of velocity
5. **Tangential and normal components:** a = a_T T + a_N N (advanced)

**Key Formulas:**
- Distance traveled: integral from a to b of |v(t)| dt
- Displacement: r(b) - r(a)
- Average velocity: (r(b) - r(a))/(b - a)

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Path Animation** | Point moving along curve with time | Shows motion directly |
| **Velocity Arrow** | Draw v(t) at current position | Visualizes instantaneous velocity |
| **Acceleration Arrow** | Draw a(t) at current position | Shows how velocity is changing |
| **Speedometer** | Display |v(t)| numerically | Quantifies speed |
| **Component Decomposition** | Show v_x and v_y separately | Breaks down 2D into two 1D problems |
| **Tangent/Normal Vectors** | T and N vectors at each point | Shows direction of motion and turning |
| **Distance Accumulator** | Total distance increasing over time | Connects to arc length integral |

### Recommended D3 Visualization

**Motion Simulator:**
1. Display curve with point representing particle
2. Time slider or play button to animate motion
3. Show velocity vector v(t) attached to particle
4. Show acceleration vector a(t) at particle
5. Display: position coordinates, velocity components, speed, time
6. Trail showing path already traveled

**Speed and Distance Panel:**
1. Upper panel: animated motion with velocity vector
2. Lower panel: speed |v(t)| graphed against t
3. Shaded area under speed curve = total distance traveled
4. Real-time update of distance as animation progresses

**Velocity Components:**
1. Display 2D motion path
2. Show moving particle with velocity vector
3. Decompose velocity into horizontal (v_x) and vertical (v_y)
4. Side graphs showing v_x(t) and v_y(t) separately
5. Demonstrate how 2D motion = combination of two 1D motions

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Velocity equals speed"** | Confusing scalar and vector | Velocity is a VECTOR with magnitude AND direction. Speed is just the magnitude. |
| **"Acceleration points in direction of motion"** | Not understanding acceleration's role | Acceleration points in direction velocity is CHANGING. Can be tangent, normal, or anywhere. |
| **"Zero acceleration means not moving"** | Confusing a(t) = 0 with v(t) = 0 | a(t) = 0 means constant velocity (straight line, constant speed). Motion continues. |
| **"Distance = displacement"** | Ignoring path | Displacement is straight-line difference. Distance accounts for all travel, including backtracking. |
| **"Speed can be negative"** | Applying sign to magnitude | Speed = |v(t)| is always non-negative. Negative velocity components indicate direction, not negative speed. |
| **"Particle speeds up when a > 0"** | Scalar thinking in vector context | Particle speeds up when v and a have component in same direction. In 2D, analyze v dot a. |
| **"Total distance = |r(b) - r(a)|"** | Confusing with displacement magnitude | Total distance = integral of |v(t)| dt, not magnitude of displacement. |

### Misconception-Busting Exercises

1. **Velocity vs. Speed:**
   - r(t) = <cos(t), sin(t)> (circular motion)
   - v(t) = <-sin(t), cos(t)>
   - At t = pi/2: v = <-1, 0> (pointing left)
   - Speed = |v| = sqrt(1 + 0) = 1
   - Velocity vector points left; speed is 1 (no direction)

2. **Acceleration Direction:**
   - Same circular motion: a(t) = v'(t) = <-cos(t), -sin(t)>
   - At t = 0: r = <1, 0>, v = <0, 1>, a = <-1, 0>
   - Acceleration points toward CENTER, not direction of motion!
   - This is centripetal acceleration

3. **Distance vs. Displacement:**
   - r(t) = <sin(t), 1 - cos(t)> for t in [0, 2pi]
   - Displacement: r(2pi) - r(0) = <0, 0> - <0, 0> = <0, 0> (back to start!)
   - Distance: integral_0^{2pi} |v(t)| dt = 8 (full arch length)
   - Distance ≠ |displacement|!

4. **Speeding Up in 2D:**
   - Particle speeds up when v and a have positive dot product
   - v dot a > 0: speeding up
   - v dot a < 0: slowing down
   - v dot a = 0: speed constant, direction changing

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 52 lesson should:

### Opening (5 min)
- Show animation of projectile motion (e.g., thrown ball)
- "What's the velocity at the peak? What's the acceleration?"
- At peak: vertical velocity = 0, but horizontal velocity ≠ 0
- Acceleration is always g downward, even at peak
- Preview: Analyze 2D motion using vector calculus

### Review: Position, Velocity, Acceleration (5 min)

**From 1D Motion (Class 20):**
- Position s(t), velocity v(t) = s'(t), acceleration a(t) = s''(t)
- Sign of velocity: direction (left/right)
- Sign of acceleration: speeding up/slowing down depends on comparing with velocity

**Extending to 2D:**
- Position r(t) = <x(t), y(t)>
- Velocity v(t) = <x'(t), y'(t)> = <v_x(t), v_y(t)>
- Acceleration a(t) = <x''(t), y''(t)> = <a_x(t), a_y(t)>

### Velocity Vector Analysis (12 min)

**Velocity as Derivative:**
v(t) = r'(t) = <dx/dt, dy/dt>

**Properties of the Velocity Vector:**
1. **Direction:** Points in direction of motion (tangent to curve)
2. **Magnitude:** |v(t)| = speed = sqrt((v_x)^2 + (v_y)^2)
3. **Components:** v_x = horizontal velocity, v_y = vertical velocity

**Example 1: Linear Motion**
- r(t) = <1 + 2t, 3 - t>
- v(t) = <2, -1> (constant velocity)
- Speed = sqrt(4 + 1) = sqrt(5)
- Moving right (v_x > 0) and down (v_y < 0)

**Example 2: Projectile Motion**
- r(t) = <50t, 80t - 16t^2>
- v(t) = <50, 80 - 32t>
- At t = 0: v = <50, 80>, speed = sqrt(2500 + 6400) = sqrt(8900) ≈ 94.3
- At t = 2.5: v = <50, 0>, speed = 50 (at maximum height)
- v_x is constant, v_y changes linearly

### Acceleration Vector Analysis (10 min)

**Acceleration as Second Derivative:**
a(t) = v'(t) = r''(t) = <dv_x/dt, dv_y/dt>

**Meaning of Acceleration:**
- Rate of change of velocity (direction AND magnitude)
- Does NOT necessarily point in direction of motion

**Example: Projectile Motion (continued)**
- a(t) = <0, -32> (constant, pointing down)
- Acceleration is always downward, regardless of where in the path
- At peak: v = <50, 0> points horizontally, a = <0, -32> points down

**Example: Circular Motion**
- r(t) = <3cos(t), 3sin(t)>
- v(t) = <-3sin(t), 3cos(t)>
- a(t) = <-3cos(t), -3sin(t)> = -r(t)
- Acceleration points toward center (centripetal)
- Speed is constant: |v(t)| = 3

**Speeding Up vs. Slowing Down:**
- In 2D, use the dot product: v dot a
- If v dot a > 0: speeding up
- If v dot a < 0: slowing down
- If v dot a = 0: constant speed (changing direction only)

### Distance and Displacement (8 min)

**Displacement (Vector):**
- Delta r = r(t_2) - r(t_1)
- Straight-line vector from start to end
- Can be zero even if particle moved

**Total Distance Traveled (Scalar):**
- integral from t_1 to t_2 of |v(t)| dt
- = integral from t_1 to t_2 of sqrt((dx/dt)^2 + (dy/dt)^2) dt
- This is the arc length formula!
- Always non-negative, accounts for all motion

**Example:**
- r(t) = <sin(t), 1 - cos(t)> for t in [0, 2pi]
- Displacement: r(2pi) - r(0) = <0, 0> (returns to start)
- Distance: Need to compute integral of |v(t)| dt
- v(t) = <cos(t), sin(t)>, |v(t)| = 1
- Distance = integral_0^{2pi} 1 dt = 2pi

### Integration for Position (5 min)

**Finding Position from Velocity:**
r(t) = integral v(t) dt + r_0

**Finding Velocity from Acceleration:**
v(t) = integral a(t) dt + v_0

**Example:** A particle has a(t) = <2, -6t>, v(0) = <1, 4>, r(0) = <0, 0>
- v(t) = integral <2, -6t> dt + <1, 4> = <2t + 1, -3t^2 + 4>
- r(t) = integral <2t + 1, -3t^2 + 4> dt + <0, 0> = <t^2 + t, -t^3 + 4t>

### Closing (5 min)
- Summary: Position, velocity, acceleration form a derivative chain
- Speed = |v(t)|, distance = integral of speed
- Displacement ≠ distance in general
- Exit ticket: Given r(t) = <t^2, t^3 - 3t>, find v(t), a(t), and speed at t = 1
- Preview: Polar coordinates (another way to describe curves)

### Key Principles Throughout

1. **Velocity is tangent:** v(t) points in direction of motion
2. **Speed is magnitude:** |v(t)| is always non-negative
3. **Acceleration shows change:** a(t) shows how velocity changes
4. **Component analysis:** Can analyze x and y motions separately
5. **Distance ≠ displacement:** Distance uses integral of speed

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **9.6:** Solving Motion Problems Using Parametric and Vector-Valued Functions

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (finding derivatives, integrals)
- **MP 2:** Connecting Representations (vector, graphical, physical)
- **MP 3:** Justification (explaining motion analysis)
- **MP 4:** Communication (proper vector notation, physical interpretation)

### AP Exam Connection
- Motion problems are extremely common on BC FRQs
- Common question types:
  - Find velocity and acceleration at specific time
  - Find when particle is at rest (v = 0)
  - Find total distance traveled (integral of speed)
  - Find position from velocity with initial condition
  - Determine when speeding up or slowing down
  - Find slope of path (dy/dx = v_y/v_x)
- Both calculator and non-calculator sections
- Common errors:
  - Confusing displacement with distance
  - Forgetting initial conditions in integration
  - Using displacement formula for distance
  - Not recognizing when to use magnitude

### Fluency Goal
By the end of this class, students should:
- Find velocity and acceleration from position function
- Calculate speed as magnitude of velocity
- Determine displacement and total distance
- Integrate acceleration/velocity with initial conditions
- Analyze motion (direction, speeding up/slowing down)
- Set up and interpret motion problems in context

---

## Sources

- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Khan Academy: AP Calculus BC - Parametric Motion](https://www.khanacademy.org/math/ap-calculus-bc)
- [Professor Leonard: Calculus III Playlist](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Velocity and Acceleration](https://tutorial.math.lamar.edu/classes/calciii/velocityacceleration.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
- [MIT OpenCourseWare: Multivariable Calculus](https://ocw.mit.edu/courses/mathematics/)
- [PhET Interactive Simulations: Projectile Motion](https://phet.colorado.edu/en/simulations/projectile-motion)
