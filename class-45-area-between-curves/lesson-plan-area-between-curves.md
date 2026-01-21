# Lesson Plan: Area Between Curves

## Class 45 | Unit 8: Applications of Integration

---

## Overview

This session extends students' understanding of definite integrals from finding area under a single curve to finding the area enclosed between two curves. Students will learn to set up integrals using both vertical slices (functions of x) and horizontal slices (functions of y), developing the judgment to choose the most efficient approach for a given problem. The emphasis is on graphing first, identifying which function is "on top" or "on the right," and handling regions where curves cross.

**CED Topics:** 8.4 - Finding the Area Between Curves Expressed as Functions of x; 8.5 - Finding the Area Between Curves Expressed as Functions of y

---

## Learning Objectives

By the end of this class, students will be able to:

1. Calculate the area between two curves using vertical slices: A = integral from a to b of [f(x) - g(x)]dx where f(x) >= g(x)
2. Calculate the area between two curves using horizontal slices: A = integral from c to d of [f(y) - g(y)]dy where f(y) >= g(y)
3. Find the intersection points of two curves to determine integration bounds
4. Identify when curves cross and appropriately split the integral into subintervals
5. Strategically choose between dx and dy integration based on the region's geometry
6. Interpret the area calculation in applied contexts

---

## Materials Needed

- Presentation slides with D3 visualizations (slicing animations, dx vs. dy comparison)
- Graphing calculators
- Student devices for Desmos exploration
- Handout with practice problems featuring various region types

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Visual Motivation:**
Display the region bounded by y = x^2 and y = x + 2.

Ask: "We know how to find the area under y = x + 2 and the area under y = x^2 separately. How would you find just the shaded region between them?"

**Key Insight:** Area between = Area under top curve - Area under bottom curve = integral of (top - bottom)

**Today's Goal:** Develop systematic methods for finding area between any two curves, whether we slice vertically or horizontally.

### Area with Respect to x: Vertical Slices (15 min)

**The Setup:**
For a region between y = f(x) (top) and y = g(x) (bottom) from x = a to x = b:

$$A = \int_a^b [f(x) - g(x)]\,dx$$

**Think in Slices:**
- Each vertical slice at position x is a thin rectangle
- Width of slice: dx
- Height of slice: f(x) - g(x) (top minus bottom)
- Area of slice: [f(x) - g(x)]dx
- Total area: sum all slices = integral

*Visualization:* Animate rectangles filling the region from left to right.

**Example 1: Parabola and Line**
Find the area between y = x^2 and y = x + 2.

1. **Graph:** Sketch both curves (parabola opening up, line with slope 1)
2. **Find intersections:** x^2 = x + 2
   - x^2 - x - 2 = 0
   - (x - 2)(x + 1) = 0
   - x = -1 and x = 2
3. **Identify top:** At x = 0: y = 0 (parabola) vs. y = 2 (line). Line is on top.
4. **Set up integral:**
   A = integral from -1 to 2 of [(x + 2) - x^2]dx
5. **Evaluate:**
   = [x^2/2 + 2x - x^3/3] from -1 to 2
   = (2 + 4 - 8/3) - (1/2 - 2 + 1/3)
   = (18 - 8)/3 - (3 - 12 + 2)/6
   = 10/3 - (-7/6) = 10/3 + 7/6 = 27/6 = 9/2

**Example 2: Curves That Cross**
Find the area between y = x^3 and y = x from x = -1 to x = 1.

1. **Find crossings:** x^3 = x gives x(x^2 - 1) = 0, so x = -1, 0, 1
2. **Check each subinterval:**
   - On [-1, 0]: test x = -0.5: (-0.125) vs. (-0.5), so x^3 > x (x^3 on top)
   - On [0, 1]: test x = 0.5: (0.125) vs. (0.5), so x > x^3 (x on top)
3. **Split the integral:**
   A = integral from -1 to 0 of (x^3 - x)dx + integral from 0 to 1 of (x - x^3)dx
4. **Evaluate each:**
   = [x^4/4 - x^2/2] from -1 to 0 + [x^2/2 - x^4/4] from 0 to 1
   = (0) - (1/4 - 1/2) + (1/2 - 1/4) - 0
   = 1/4 + 1/4 = 1/2

*Key lesson:* When curves cross, determine which is on top in each subinterval.

### Area with Respect to y: Horizontal Slices (12 min)

**The Setup:**
For a region between x = f(y) (right) and x = g(y) (left) from y = c to y = d:

$$A = \int_c^d [f(y) - g(y)]\,dy$$

**Think in Slices:**
- Each horizontal slice at position y is a thin rectangle
- Height of slice: dy
- Width of slice: f(y) - g(y) (right minus left)
- Total area: integral

**When to Use dy:**
- Curves are naturally expressed as x = f(y)
- Region is bounded on left and right (not top and bottom)
- Using dx would require multiple integrals

**Example 3: Classic dy Problem**
Find the area bounded by x = y^2 and x = y + 2.

1. **Note:** Curves are given as functions of y, so dy is natural
2. **Find intersections:** y^2 = y + 2
   - y^2 - y - 2 = 0
   - (y - 2)(y + 1) = 0
   - y = -1 and y = 2
3. **Identify right:** At y = 0: x = 0 (parabola) vs. x = 2 (line). Line is on right.
4. **Set up integral:**
   A = integral from -1 to 2 of [(y + 2) - y^2]dy
5. **Evaluate:**
   = [y^2/2 + 2y - y^3/3] from -1 to 2
   = (2 + 4 - 8/3) - (1/2 - 2 + 1/3)
   = 9/2 (same as Example 1 - same region, different orientation!)

**Example 4: dx vs. dy Comparison**
Region bounded by y = sqrt(x), y = 0, and x = 4.

**Using dx:** A = integral from 0 to 4 of sqrt(x)dx = (2/3)x^(3/2) |_0^4 = 16/3

**Using dy:** Rewrite as x = y^2. Bounds: y = 0 to y = 2.
A = integral from 0 to 2 of (4 - y^2)dy = [4y - y^3/3] from 0 to 2 = 8 - 8/3 = 16/3

Both work! In this case, dx was slightly simpler.

### Strategic Decision Making (8 min)

**Decision Framework:**
1. **Graph the region** to understand its shape
2. **Consider both orientations:**
   - Can you slice vertically with ONE integral?
   - Can you slice horizontally with ONE integral?
3. **Choose the simpler setup** (fewer integrals, simpler integrand)
4. **Check your answer** (positive, reasonable magnitude)

**Quick Decision Practice:**
Show 4 regions. Students vote: "dx" or "dy"?

1. Region between y = x^2 and y = 4 (dx is simple: one integral)
2. Region between x = y^2 and y = x - 2 (dy is simpler: one integral)
3. Region between y = sin(x) and y = cos(x) on [0, pi] (dx works: may need to split at pi/4)
4. Region bounded by y = x, y = 2-x, and y = 0 (either works; dx may be cleaner)

**Discussion:** What makes one choice better? (Avoid multiple integrals; simpler antiderivatives; matching how curves are given)

### Guided Practice (5 min)

**Problem 1:** Set up and evaluate the area between y = 4 - x^2 and y = x^2 - 4.
- Intersection: 4 - x^2 = x^2 - 4 gives 8 = 2x^2, so x = +/- 2
- Top: 4 - x^2 is above x^2 - 4 (check x = 0: 4 > -4)
- A = integral from -2 to 2 of [(4 - x^2) - (x^2 - 4)]dx = integral of (8 - 2x^2)dx
- = [8x - (2/3)x^3] from -2 to 2 = (16 - 16/3) - (-16 + 16/3) = 32 - 32/3 = 64/3

**Problem 2:** Set up (but do not evaluate) the area between x = y^2 - 4 and x = y - 2.
- Find intersections: y^2 - 4 = y - 2 gives y^2 - y - 2 = 0, so y = -1, 2
- Check y = 0: -4 vs. -2, so line is on right
- A = integral from -1 to 2 of [(y - 2) - (y^2 - 4)]dy = integral of (-y^2 + y + 2)dy

### Closing (5 min)

**Summary:**
- Vertical slices (dx): A = integral of (top - bottom)dx
- Horizontal slices (dy): A = integral of (right - left)dy
- Always graph first and find intersection points
- When curves cross, split the integral
- Choose orientation strategically to minimize complexity

**Exit Ticket:**
Sketch the region between y = x and y = x^2 for x in [0, 1], then set up (don't solve) the integral.
(Answer: A = integral from 0 to 1 of (x - x^2)dx since x >= x^2 on [0, 1])

**Preview:** Tomorrow we extend this "slicing" idea to three dimensions. If we know the cross-sectional area at every position, we can find volume!

---

## Differentiation Strategies

### For students who need more support:
- Provide a step-by-step checklist: (1) Graph, (2) Find intersections, (3) Identify top/right, (4) Set up integral, (5) Evaluate
- Always verify which function is larger at a test point before integrating
- Start with regions that don't require splitting
- Color-code "top" and "bottom" curves in different colors

### For advanced students:
- Challenge: Find the area enclosed by the curves y = x^3 - x and y = 3x (requires finding three intersection points)
- Explore: For what value of k does the line y = k divide the region between y = x^2 and y = 4 into two equal areas?
- Investigate: Can you find a region where both dx and dy require multiple integrals?
- Extension: Set up integrals for area in polar coordinates (preview of Unit 9)

---

## Common Misconceptions to Address

1. **"Just integrate f(x) - g(x) without checking which is larger"**
   - Address: Always verify at a test point. If you get a negative answer, you subtracted in the wrong order!

2. **"Area can be negative"**
   - Address: Geometric area is always positive. If your integral is negative, either you have the order wrong or you forgot to split at a crossing point.

3. **"Use the same limits for both functions"**
   - Address: Limits come from where the curves INTERSECT, not arbitrary endpoints. Solve f(x) = g(x) to find them.

4. **"Always integrate with respect to x"**
   - Address: Show a problem where dx requires two integrals but dy requires only one. Flexibility pays off!

5. **"The curves must cross the x-axis"**
   - Address: Area between curves doesn't involve the x-axis at all. We subtract curves directly, regardless of where the x-axis is.

6. **"Subtract the integrals instead of integrating the difference"**
   - Address: While integral(f) - integral(g) = integral(f-g), it's cleaner and less error-prone to set up integral(f-g) directly.

---

## Assessment Notes

- Monitor whether students graph before setting up integrals (critical habit)
- Watch for sign errors when subtracting curves
- The "which orientation" quick practice reveals strategic thinking
- Check that students verify their "top" function choice at a test point
- Exit ticket assesses basic setup; note who can correctly identify the integrand order
- Common errors to track: wrong intersection points (algebra), wrong order of subtraction, forgetting to split

---

## Connections

**Prior knowledge:**
- Definite integrals as area under a curve (Unit 6)
- Solving systems of equations (finding intersections)
- Riemann sums as approximations (Unit 6)
- Average value of a function (Class 44)

**Future connections:**
- Volumes with cross sections (Class 46) - slicing idea extends to 3D
- Disc/washer method (Class 47) - area between curves becomes cross-sectional area
- Arc length (Class 48) - different use of Pythagorean theorem in slices
- Polar area (Unit 9) - area formula adapts to r = f(theta)
- AP Exam - area between curves is a perennial FRQ topic

---

## Rule of Four Emphasis

**Graphical:** Visualize the region by graphing both curves and shading the enclosed area. The graph reveals which function is on top/right.

**Numerical:** Test specific x-values (or y-values) to verify which function is larger. Use intersection-finding features on calculators.

**Analytical:** Set up and evaluate the definite integral. Find intersection points algebraically.

**Verbal:** "The area between curves is the accumulated sum of infinitely many thin slices, each with width dx (or dy) and height equal to the difference between the curves at that position."
