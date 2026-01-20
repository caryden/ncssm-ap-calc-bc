# Lesson Plan: Vector-Valued Functions

## Class 51 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)

---

## Overview

This session introduces vector-valued functions as a unified way to describe parametric curves. Students will learn to package x(t) and y(t) into a single vector function r(t), differentiate and integrate vector functions component by component, and interpret derivatives geometrically as tangent vectors. This notation bridges calculus and physics, preparing students for motion analysis.

**CED Topics:** 9.4 - Defining and Differentiating Vector-Valued Functions, 9.5 - Integrating Vector-Valued Functions

---

## Learning Objectives

By the end of this class, students will be able to:

1. Write parametric equations in vector form: r(t) = <x(t), y(t)>
2. Differentiate vector-valued functions component by component
3. Interpret r'(t) as the tangent/velocity vector to the curve
4. Calculate speed as the magnitude of the derivative: |r'(t)|
5. Integrate vector-valued functions with initial conditions
6. Find equations of tangent lines to curves in vector form

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators
- Student devices for Desmos exploration
- Vector notation reference card (optional)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A Notation Problem**

> "A drone's position at time t is x = t^2 and y = t^3. We've been writing this as two separate equations. Can we describe this with ONE function?"

**The Solution:** Package them together as a vector!
$$\mathbf{r}(t) = \langle t^2, t^3 \rangle$$

One function captures both coordinates. As t varies, r(t) traces the curve.

**Why This Matters:**
- Unified notation for position, velocity, acceleration
- Natural language for physics
- Generalizes easily to 3D: r(t) = <x(t), y(t), z(t)>

### Review: Vectors in the Plane (5 min)

**Vector Basics:**
- A vector has magnitude (length) and direction
- Component form: **v** = <a, b>
- Magnitude: |**v**| = sqrt(a^2 + b^2)
- Unit vector: **v**/|**v**| has magnitude 1

**Position Vectors:**
- Vector from origin to point P = (a, b)
- Written as **OP** = <a, b>
- The vector's tip is at point P

**Notation Options:**
- Bracket notation: <a, b>
- Unit vector notation: a**i** + b**j**
- Both are used on AP exams

### Vector-Valued Functions (10 min)

**Definition:**
A vector-valued function assigns a vector to each value of the parameter t:
$$\mathbf{r}(t) = \langle x(t), y(t) \rangle$$

Also written as: r(t) = x(t)**i** + y(t)**j**

**Graphing:**
- As t varies, the tip of r(t) traces a curve in the plane
- This is exactly the parametric curve (x(t), y(t))
- r(t) points FROM the origin TO the current position

**Example Gallery:**
1. r(t) = <t, t^2>: parabola y = x^2
2. r(t) = <cos(t), sin(t)>: unit circle (counterclockwise)
3. r(t) = <t - sin(t), 1 - cos(t)>: cycloid
4. r(t) = <3cos(t), 2sin(t)>: ellipse

**Domain:**
- All t values where ALL components are defined
- May be restricted by context (e.g., t >= 0 for physical time)

**Connection to Parametric:**
- Vector form and parametric form are the SAME curve
- Vector notation emphasizes the directional nature
- Parametric notation emphasizes the component functions

### Derivatives of Vector Functions (15 min)

**Definition (Limit Form):**
$$\mathbf{r}'(t) = \lim_{h \to 0} \frac{\mathbf{r}(t+h) - \mathbf{r}(t)}{h}$$

**Key Result: Differentiate Component by Component!**

If r(t) = <x(t), y(t)>, then:
$$\mathbf{r}'(t) = \langle x'(t), y'(t) \rangle$$

**Why This Works:**
- Vector subtraction works component by component
- Scalar division works component by component
- The limit of a vector is the vector of limits (when they exist)

**Example 1:**
- r(t) = <t^2, t^3>
- r'(t) = <2t, 3t^2>

**Example 2:**
- r(t) = <cos(t), sin(t)>
- r'(t) = <-sin(t), cos(t)>

**Geometric Interpretation:**

r'(t) is **tangent to the curve** at the point r(t)!

Key properties:
1. r'(t) points in the direction of motion (as t increases)
2. |r'(t)| = sqrt((x'(t))^2 + (y'(t))^2) = **speed**
3. r'(t) is the velocity vector

**The Unit Tangent Vector:**
$$\mathbf{T}(t) = \frac{\mathbf{r}'(t)}{|\mathbf{r}'(t)|}$$
- Direction of motion, normalized to length 1
- Undefined where r'(t) = 0

**Example with Interpretation:**
- r(t) = <cos(t), sin(t)> (unit circle)
- r'(t) = <-sin(t), cos(t)>
- At t = 0: r(0) = <1, 0>, r'(0) = <0, 1>
- Position is at (1, 0), velocity points straight up
- The particle moves counterclockwise!

**Speed calculation:**
- |r'(t)| = sqrt(sin^2(t) + cos^2(t)) = 1
- Constant speed of 1 unit per unit time

### Applications: Tangent Lines (8 min)

**Tangent Line in Vector Form:**
- Point on curve: P = r(t_0)
- Direction vector: **v** = r'(t_0)
- Tangent line: **L**(s) = r(t_0) + s * r'(t_0)

Here s is a new parameter for points on the line.

**Example:** Find the tangent line to r(t) = <t^2, t^3> at t = 1.

1. Point: r(1) = <1, 1>
2. Derivative: r'(t) = <2t, 3t^2>
3. Direction: r'(1) = <2, 3>
4. Tangent line: **L**(s) = <1, 1> + s<2, 3> = <1 + 2s, 1 + 3s>

**Converting to parametric form:**
- x = 1 + 2s
- y = 1 + 3s

**Converting to Cartesian form:**
- From x = 1 + 2s: s = (x-1)/2
- Substitute: y = 1 + 3(x-1)/2 = (3x - 1)/2
- Line: y - 1 = (3/2)(x - 1) or y = (3/2)x - 1/2

### Integration of Vector Functions (5 min)

**Antiderivatives - Component by Component:**
$$\int \mathbf{r}(t)\, dt = \left\langle \int x(t)\, dt, \int y(t)\, dt \right\rangle$$

**Important:** The constant of integration is a VECTOR!
$$\int \mathbf{r}(t)\, dt = \mathbf{R}(t) + \mathbf{C}$$

where **C** = <C_1, C_2>

**Example with Initial Condition:**

If r'(t) = <2t, 3t^2> and r(0) = <1, -2>, find r(t).

1. Integrate: r(t) = <t^2 + C_1, t^3 + C_2>
2. Apply initial condition: r(0) = <C_1, C_2> = <1, -2>
3. Solution: r(t) = <t^2 + 1, t^3 - 2>

**Definite Integrals:**
$$\int_a^b \mathbf{r}(t)\, dt = \left\langle \int_a^b x(t)\, dt, \int_a^b y(t)\, dt \right\rangle$$

This gives a vector (the net displacement if r is velocity).

### Closing (2 min)

**Summary:**
- Vector functions package x(t), y(t) into r(t) = <x(t), y(t)>
- Differentiation is component by component: r'(t) = <x'(t), y'(t)>
- r'(t) is the tangent/velocity vector
- |r'(t)| is the speed
- Integration is component by component, with vector constant

**Exit Ticket:**
For r(t) = <e^t, e^(-t)>, find r'(t) and calculate |r'(1)|.

**Preview:** Tomorrow we analyze motion in the plane - connecting position, velocity, and acceleration vectors to physical problems.

---

## Differentiation Strategies

### For students who need more support:
- Emphasize the component-by-component rule - work on x and y separately
- Draw position vectors from origin to curve to visualize r(t)
- Use familiar parametric curves (circle, parabola) as examples
- Connect to physics: position, velocity, speed
- Provide templates for tangent line calculations

### For advanced students:
- Explore the unit tangent and normal vectors T and N
- Challenge: Prove that for any vector function, r(t) dot r'(t) = 0 implies constant magnitude
- Investigate: Curvature using r'(t) and r''(t)
- Research: Applications in computer graphics and animation

---

## Common Misconceptions to Address

1. **"Vectors and parametric equations are different things"**
   - Address: r(t) = <x(t), y(t)> IS the parametric representation in vector form. Same curve, unified notation.

2. **"The derivative r'(t) is also a position"**
   - Address: r(t) is position (where you are); r'(t) is velocity (how fast and which direction). Different meanings!

3. **"Magnitude of r'(t) is the slope"**
   - Address: |r'(t)| is SPEED. Slope is (y-component of r')/(x-component of r'). These are different quantities.

4. **"r'(t) points toward the origin"**
   - Address: r'(t) is tangent to the curve, points in direction of motion. Demonstrate with the circle example.

5. **"The constant of integration is a number"**
   - Address: When integrating vectors, the constant is a VECTOR <C_1, C_2>. Use initial conditions to find both components.

---

## Assessment Notes

- Monitor understanding of the component-by-component differentiation rule
- Watch for proper bracket notation vs i-j notation
- Check that students distinguish position from velocity vectors
- Exit ticket reveals comfort with derivative calculation and magnitude
- Note whether students can set up tangent line problems

---

## Connections

**Prior knowledge:**
- Parametric equations (Class 49)
- Parametric derivatives (Class 49)
- Vector basics from prior math courses
- Pythagorean theorem for magnitude

**Future connections:**
- Motion analysis with vectors (Class 52)
- Velocity, acceleration, distance traveled
- Polar coordinates as special vectors (Class 53)
- AP FRQ particle motion problems

---

## Notation Notes

**Equivalent notations for vectors:**
- Bracket: <a, b>
- Unit vector: a**i** + b**j**
- Ordered pair: (a, b) - sometimes used but less clear

**Notation for vector functions:**
- r(t), **r**(t), or **r** with arrow
- Components: <x(t), y(t)> or x(t)**i** + y(t)**j**
- Derivative: r'(t), dr/dt, or **r**-dot

**AP Exam conventions:**
- Both bracket and i-j notation appear
- Be comfortable reading and writing both
- Speed is often denoted |v(t)| or v(t) (scalar)
