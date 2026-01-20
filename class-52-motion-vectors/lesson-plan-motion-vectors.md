# Lesson Plan: Motion with Vectors

## Class 52 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)

---

## Overview

This session applies vector calculus to analyze motion in the plane. Students will connect position, velocity, and acceleration vectors through differentiation, calculate speed and total distance traveled, and distinguish between distance and displacement. This class brings together parametric equations, vector functions, and integration in the context of physics-based problems that appear frequently on the AP exam.

**CED Topic:** 9.6 - Solving Motion Problems Using Parametric and Vector-Valued Functions

---

## Learning Objectives

By the end of this class, students will be able to:

1. Identify position r(t), velocity v(t) = r'(t), and acceleration a(t) = r''(t) vectors
2. Calculate speed as the magnitude of velocity: |v(t)|
3. Distinguish between displacement (vector) and total distance traveled (scalar)
4. Calculate total distance traveled as the integral of speed
5. Determine when a particle is at rest, speeding up, or slowing down
6. Solve initial value problems to find position from velocity or velocity from acceleration

---

## Materials Needed

- Presentation slides with D3 visualizations (motion simulation)
- Graphing calculators with parametric/vector capabilities
- Student devices for Desmos exploration
- Motion problem reference sheet (optional)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Projectile Question**

Show animation of projectile motion: a ball thrown at an angle.

> "At the highest point of its path, what's the velocity? What's the acceleration?"

**Discuss:**
- At the peak: vertical velocity = 0, but horizontal velocity is NOT zero
- v = <v_x, 0> at the peak (still moving horizontally!)
- Acceleration is ALWAYS <0, -g>, pointing down, even at the peak

**Key Insight:** In 2D motion, we must track components separately. Vectors are the natural tool.

### Review: The Derivative Chain (5 min)

**From 1D to 2D:**

Recall from earlier work:
- Position s(t) → Velocity v(t) = s'(t) → Acceleration a(t) = s''(t)

**In 2D with vectors:**
- Position: **r**(t) = <x(t), y(t)>
- Velocity: **v**(t) = **r**'(t) = <x'(t), y'(t)>
- Acceleration: **a**(t) = **v**'(t) = **r**''(t) = <x''(t), y''(t)>

The chain of derivatives works exactly the same way, but now with vectors!

### Velocity Vector Analysis (12 min)

**The Velocity Vector:**
$$\mathbf{v}(t) = \mathbf{r}'(t) = \left\langle \frac{dx}{dt}, \frac{dy}{dt} \right\rangle$$

**Key Properties:**
1. **Direction:** Points in direction of motion (tangent to curve)
2. **Components:** v_x = horizontal velocity, v_y = vertical velocity
3. **Magnitude:** |**v**(t)| = speed = sqrt((v_x)^2 + (v_y)^2)

**Critical Distinction:**
- **Velocity** is a VECTOR (has direction)
- **Speed** is a SCALAR (magnitude only, always non-negative)

**Example 1: Linear Motion**
- r(t) = <1 + 2t, 3 - t>
- v(t) = <2, -1> (constant velocity)
- Speed = sqrt(4 + 1) = sqrt(5)
- Interpretation: Moving right (v_x > 0) and down (v_y < 0)

**Example 2: Projectile Motion**
- r(t) = <50t, 80t - 16t^2> (initial velocity <50, 80>, gravity -32)
- v(t) = <50, 80 - 32t>
- At t = 0: v = <50, 80>, speed = sqrt(2500 + 6400) = sqrt(8900) approx 94.3 ft/s
- At t = 2.5: v = <50, 0>, speed = 50 ft/s (at maximum height)
- v_x is constant; v_y decreases linearly (gravity affects only vertical)

**When is the particle at rest?**
- v(t) = <0, 0> (BOTH components must be zero)
- For projectile: Never! v_x = 50 is never zero.

### Acceleration Vector Analysis (10 min)

**The Acceleration Vector:**
$$\mathbf{a}(t) = \mathbf{v}'(t) = \mathbf{r}''(t) = \left\langle \frac{d^2x}{dt^2}, \frac{d^2y}{dt^2} \right\rangle$$

**Key Insight:** Acceleration is the rate of change of velocity - changes in BOTH magnitude (speed) AND direction.

**Example: Projectile Motion (continued)**
- a(t) = <0, -32> (constant, pointing down)
- Acceleration is always downward, regardless of position in path
- At peak: v = <50, 0> points right, a = <0, -32> points down

**Example: Circular Motion**
- r(t) = <3cos(t), 3sin(t)>
- v(t) = <-3sin(t), 3cos(t)>
- a(t) = <-3cos(t), -3sin(t)> = -r(t)
- Acceleration points toward CENTER (centripetal acceleration!)
- Speed: |v(t)| = sqrt(9sin^2(t) + 9cos^2(t)) = 3 (constant)

**Speeding Up vs. Slowing Down in 2D:**

In 1D: Compare signs of v and a.
In 2D: Use the dot product!

$$\mathbf{v} \cdot \mathbf{a} = v_x a_x + v_y a_y$$

- If **v** dot **a** > 0: Speeding up (velocity and acceleration have component in same direction)
- If **v** dot **a** < 0: Slowing down (acceleration opposes velocity)
- If **v** dot **a** = 0: Constant speed, changing direction only

**Example:** For circular motion:
- v(t) = <-3sin(t), 3cos(t)>
- a(t) = <-3cos(t), -3sin(t)>
- v dot a = 9sin(t)cos(t) - 9cos(t)sin(t) = 0
- Speed is constant! (Acceleration only changes direction, not speed)

### Distance vs. Displacement (10 min)

**Displacement (Vector):**
$$\Delta \mathbf{r} = \mathbf{r}(t_2) - \mathbf{r}(t_1)$$
- Straight-line vector from start to end
- Can be zero even if particle moved!

**Total Distance Traveled (Scalar):**
$$\text{Distance} = \int_{t_1}^{t_2} |\mathbf{v}(t)|\, dt = \int_{t_1}^{t_2} \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2}\, dt$$

This is the **arc length formula**! Distance = integral of speed.

**Critical Distinction:**
- Displacement ignores the path (just start and end)
- Distance accounts for all travel, including backtracking

**Example:**
- r(t) = <sin(t), 1 - cos(t)> for t in [0, 2pi]
- Displacement: r(2pi) - r(0) = <0, 0> - <0, 0> = <0, 0> (returns to start!)
- Distance: v(t) = <cos(t), sin(t)>, |v(t)| = 1
- Distance = integral from 0 to 2pi of 1 dt = 2pi

**Important:** Distance equals |displacement| ONLY for motion in a straight line without reversing!

### Integration for Position/Velocity (5 min)

**Finding Velocity from Acceleration:**
$$\mathbf{v}(t) = \int \mathbf{a}(t)\, dt + \mathbf{v}_0$$

**Finding Position from Velocity:**
$$\mathbf{r}(t) = \int \mathbf{v}(t)\, dt + \mathbf{r}_0$$

**Initial Conditions are Essential:**
The constant of integration is a VECTOR - need initial values to determine it.

**Example:**
A particle has a(t) = <2, -6t>, v(0) = <1, 4>, r(0) = <0, 0>. Find r(t).

**Step 1:** Find v(t)
- v(t) = integral of <2, -6t> dt = <2t + C_1, -3t^2 + C_2>
- v(0) = <C_1, C_2> = <1, 4>
- v(t) = <2t + 1, -3t^2 + 4>

**Step 2:** Find r(t)
- r(t) = integral of <2t + 1, -3t^2 + 4> dt = <t^2 + t + D_1, -t^3 + 4t + D_2>
- r(0) = <D_1, D_2> = <0, 0>
- r(t) = <t^2 + t, -t^3 + 4t>

### Closing (3 min)

**Summary:**
- Position, velocity, acceleration form a derivative chain: r → v → a
- Speed = |v(t)| (always non-negative)
- Displacement = r(b) - r(a) (vector, straight-line change)
- Distance = integral of |v(t)| dt (scalar, total path length)
- Use dot product v dot a to determine speeding up/slowing down

**Exit Ticket:**
Given r(t) = <t^2, t^3 - 3t>, find:
a) v(1) and speed at t = 1
b) a(1)

**Preview:** Next we explore polar coordinates - a completely different way to describe curves using distance and angle instead of x and y.

---

## Differentiation Strategies

### For students who need more support:
- Connect to 1D motion from earlier units - same concepts, now with two components
- Draw velocity and acceleration vectors at multiple points on a path
- Use physics simulations to build intuition about motion
- Emphasize: speed is always positive, velocity can have negative components
- Provide structured templates for integration with initial conditions

### For advanced students:
- Explore tangential and normal components of acceleration
- Challenge: When does a particle travel in a straight line?
- Investigate: Kepler's laws and orbital motion
- Research: Applications in robotics and autonomous navigation

---

## Common Misconceptions to Address

1. **"Velocity equals speed"**
   - Address: Velocity is a VECTOR with magnitude AND direction. Speed is just the magnitude, always non-negative.

2. **"Acceleration points in direction of motion"**
   - Address: Acceleration points in direction velocity is CHANGING. Can be tangent, perpendicular, or any direction. Show circular motion example.

3. **"Zero acceleration means not moving"**
   - Address: a(t) = 0 means constant velocity (straight line, constant speed). Motion continues!

4. **"Distance = |displacement|"**
   - Address: Only true for straight-line motion without reversing. A round trip has zero displacement but positive distance.

5. **"Speed can be negative"**
   - Address: Speed = |v(t)| is always non-negative. Negative components indicate direction in 2D.

6. **"Particle speeds up when |a| > 0"**
   - Address: In 2D, use v dot a. Particle speeds up when v and a have positive dot product.

---

## Assessment Notes

- Monitor understanding of the velocity/speed distinction
- Watch for correct use of initial conditions in integration
- Check that students can set up distance integrals correctly
- Exit ticket tests basic derivative calculation and speed
- Note which students struggle with the dot product criterion for speeding up/slowing down

---

## Connections

**Prior knowledge:**
- 1D motion and rates of change (Unit 4)
- Parametric derivatives (Class 49)
- Arc length (Class 50)
- Vector functions and derivatives (Class 51)

**Future connections:**
- Polar coordinates (Class 53)
- Similar motion problems in polar form
- AP FRQ particle motion problems (extremely common!)
- Physics applications: projectile motion, orbital mechanics

---

## Notation Notes

**Standard notation:**
- Position: r(t), s(t), or P(t)
- Velocity: v(t) = r'(t) = dr/dt
- Acceleration: a(t) = v'(t) = r''(t) = d^2r/dt^2
- Speed: |v(t)| or sometimes just v(t) when context is clear

**AP Exam conventions:**
- Both bracket and i-j notation appear
- "Find the speed" always means find |v(t)|
- "Find the velocity" means find the vector v(t)
- "Total distance traveled" means integral of speed
- "Displacement" means r(b) - r(a)

**Common problem types:**
- Find velocity/acceleration at specific time
- Find when particle is at rest
- Find total distance traveled (integral of speed)
- Find position from velocity with initial condition
- Determine when speeding up vs slowing down
