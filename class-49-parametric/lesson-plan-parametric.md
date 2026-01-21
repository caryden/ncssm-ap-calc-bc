# Lesson Plan: Parametric Equations and Derivatives

## Class 49 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)

---

## Overview

This session introduces parametric equations as a powerful way to describe curves where both x and y are functions of a third variable (typically time). Students will learn to find derivatives of parametric curves using the chain rule, interpret these derivatives as slopes and rates of change, and identify horizontal and vertical tangent points. This foundational content prepares students for arc length, vectors, and polar coordinates.

**CED Topics:** 9.1 - Defining and Differentiating Parametric Equations, 9.2 - Second Derivatives of Parametric Equations

---

## Learning Objectives

By the end of this class, students will be able to:

1. Describe curves using parametric equations x = f(t) and y = g(t)
2. Plot parametric curves by creating tables of values and identifying direction of motion
3. Eliminate the parameter when possible to connect to Cartesian forms
4. Calculate dy/dx for parametric curves using the formula dy/dx = (dy/dt)/(dx/dt)
5. Calculate second derivatives d^2y/dx^2 using the correct formula
6. Find points where parametric curves have horizontal or vertical tangents

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators with parametric mode
- Student devices for Desmos exploration
- Parametric curve reference sheet (optional)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Motion as Motivation**

> "How do we describe the path of a ball thrown in the air?"

The position depends on time:
- x(t) = horizontal position at time t
- y(t) = vertical position at time t

This is fundamentally different from y = f(x) - we're describing how something MOVES through space.

**Key Question:** If we know x(t) and y(t), how do we find the slope of the path?

### Understanding Parametric Equations (10 min)

**What is a Parametric Curve?**

Definition: A curve described by:
- x = f(t) (x-coordinate as function of parameter t)
- y = g(t) (y-coordinate as function of parameter t)

As t varies, the point (x, y) traces a curve in the plane.

**Why Parametrics Matter:**
1. **Motion description:** Natural for physics (position vs. time)
2. **Complex curves:** Can represent curves that fail the vertical line test
3. **Direction information:** The parameter gives the direction of travel

**Plotting Technique:**
1. Make a table of t, x(t), y(t) values
2. Plot points (x, y) in order
3. Mark direction with arrows

**Example Gallery:**
1. Line: x = 1 + 2t, y = 3 - t (linear motion)
2. Parabola: x = t, y = t^2 (familiar curve, new form)
3. Circle: x = cos(t), y = sin(t) (elegant parametrization)
4. Ellipse: x = 3cos(t), y = 2sin(t) (scaled circle)

**Eliminating the Parameter:**
- Sometimes solve for t in one equation and substitute
- Example: x = t, y = t^2 gives y = x^2
- Not always possible (circles, spirals) and loses direction information

### Derivatives of Parametric Equations (15 min)

**The Key Question:**
We want the slope dy/dx, but y is not given as a function of x.

**The Chain Rule Approach:**
- Both x and y are functions of t
- By the chain rule: dy/dt = (dy/dx)(dx/dt)
- Solving for slope: **dy/dx = (dy/dt)/(dx/dt) = y'(t)/x'(t)**

**Interpretation:**
- dy/dt = vertical velocity (how fast y changes with t)
- dx/dt = horizontal velocity (how fast x changes with t)
- dy/dx = slope = (vertical velocity)/(horizontal velocity)

**Example 1: Parabola**
- x = t, y = t^2
- dx/dt = 1, dy/dt = 2t
- dy/dx = 2t/1 = 2t = 2x (matches derivative of y = x^2!)

**Example 2: Circle**
- x = cos(t), y = sin(t)
- dx/dt = -sin(t), dy/dt = cos(t)
- dy/dx = cos(t)/(-sin(t)) = -cot(t)
- At t = pi/4: dy/dx = -1

**Tangent Line Equation:**
- Point: (x(t_0), y(t_0))
- Slope: dy/dx evaluated at t = t_0
- Line: y - y(t_0) = m(x - x(t_0))

### Second Derivatives (8 min)

**The Formula (CRITICAL - Most Common Error!):**

$$\frac{d^2y}{dx^2} = \frac{d}{dx}\left(\frac{dy}{dx}\right) = \frac{\frac{d}{dt}\left(\frac{dy}{dx}\right)}{\frac{dx}{dt}}$$

**Common Error Alert:**
- WRONG: d^2y/dx^2 = (d^2y/dt^2)/(d^2x/dt^2)
- RIGHT: d^2y/dx^2 = (d/dt(dy/dx))/(dx/dt)

**Example:** x = t^2, y = t^3
1. dy/dx = (3t^2)/(2t) = 3t/2
2. d/dt(dy/dx) = d/dt(3t/2) = 3/2
3. d^2y/dx^2 = (3/2)/(2t) = 3/(4t)

**Verification:** At t = 1, d^2y/dx^2 = 3/4 (positive, so concave up)

### Horizontal and Vertical Tangents (7 min)

**Horizontal Tangent:**
- dy/dx = 0 means dy/dt = 0 AND dx/dt =/= 0
- The numerator is zero, denominator is not

**Vertical Tangent:**
- dy/dx undefined means dx/dt = 0 AND dy/dt =/= 0
- The denominator is zero, numerator is not

**Cusp or Indeterminate:**
- If dy/dt = 0 AND dx/dt = 0 at the same t, need further analysis
- Could be a cusp, corner, or self-intersection

**Example:** Find all horizontal and vertical tangents for x = t^2 - 4, y = t^3 - 3t

1. dx/dt = 2t = 0 at t = 0
2. dy/dt = 3t^2 - 3 = 3(t^2 - 1) = 0 at t = +/- 1

**Results:**
- Vertical tangent at t = 0: point (-4, 0)
- Horizontal tangents at t = +/- 1: points (-3, -2) and (-3, 2)

### Closing (5 min)

**Summary:**
- Parametric equations describe curves through component functions x(t), y(t)
- Slope formula: dy/dx = (dy/dt)/(dx/dt) (chain rule!)
- Second derivative: d^2y/dx^2 = (d/dt(dy/dx))/(dx/dt)
- Horizontal tangent: dy/dt = 0 and dx/dt =/= 0
- Vertical tangent: dx/dt = 0 and dy/dt =/= 0

**Exit Ticket:**
For x = e^t, y = e^(2t), find dy/dx and simplify your answer.

**Preview:** Tomorrow we'll find the arc length of parametric curves - how far does a particle actually travel along its path?

---

## Differentiation Strategies

### For students who need more support:
- Emphasize the "velocity" interpretation: slope = vertical velocity / horizontal velocity
- Provide step-by-step templates for derivative calculations
- Start with simple examples where parameter can be eliminated to check
- Use graphing calculators in parametric mode to visualize
- Pair with peers during practice problems

### For advanced students:
- Challenge: Find d^2y/dx^2 for the cycloid x = t - sin(t), y = 1 - cos(t)
- Explore: When does the chain rule derivation fail? (when dx/dt = 0)
- Research: Parametric representations of famous curves (Lissajous figures, epicycloids)
- Investigate: Multiple parametrizations of the same curve

---

## Common Misconceptions to Address

1. **"Just eliminate t and use regular calculus"**
   - Address: Elimination loses timing/direction information. Show curves where elimination is impossible (circles, spirals). Parametric form is often more natural.

2. **"dy/dx = (dy/dt)/(dx/dt) is just fraction cancellation"**
   - Address: It's the chain rule! Derive carefully: dy/dt = (dy/dx)(dx/dt), then solve for dy/dx.

3. **"d^2y/dx^2 = (d^2y/dt^2)/(d^2x/dt^2)"**
   - Address: Show counterexample. The correct formula requires differentiating dy/dx with respect to t first, then dividing by dx/dt.

4. **"Horizontal tangent when y'(t) = 0"**
   - Address: Must also check that x'(t) =/= 0. If both are zero, further analysis needed.

5. **"The parameter must represent time"**
   - Address: Parameter can be angle, arc length, or abstract. Time is the most intuitive interpretation.

---

## Assessment Notes

- Monitor student understanding during the chain rule derivation
- Watch for the second derivative error during practice
- Exit ticket reveals whether students can execute the basic slope formula
- Note which students struggle with algebraic simplification vs. conceptual understanding
- Check that students properly distinguish horizontal vs. vertical tangent conditions

---

## Connections

**Prior knowledge:**
- Chain rule from Unit 3
- Implicit differentiation concepts
- Slope formula and tangent lines
- Basic trigonometric derivatives

**Future connections:**
- Arc length of parametric curves (Class 50)
- Vector-valued functions (Class 51)
- Motion problems with vectors (Class 52)
- Polar curves as special parametric curves (Class 53)
- AP FRQ parametric problems

---

## Notation Notes

**Equivalent notations:**
- dy/dx = (dy/dt)/(dx/dt) = y'(t)/x'(t)
- The parameter is often t (time), but could be theta, s, or any variable
- Some texts use dot notation: x-dot for dx/dt

**On the AP Exam:**
- Know both forms of the slope formula
- Be comfortable with d^2y/dx^2 notation
- Recognize parametric equations in various contexts
