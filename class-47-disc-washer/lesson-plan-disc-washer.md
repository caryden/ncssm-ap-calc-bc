# Lesson Plan: Volumes of Revolution - Disc and Washer Methods

## Class 47 | Unit 8: Applications of Integration

---

## Overview

This session focuses on volumes of revolution, a special and important case of cross-sectional volumes. When a region is rotated around an axis, each cross section becomes a circular disc (for solid regions) or an annular washer (for hollow regions). Students will learn to set up volume integrals for rotation around the x-axis, y-axis, and other horizontal or vertical lines, with careful attention to correctly measuring radii from the axis of rotation. This topic is one of the most frequently tested on the AP Calculus exam.

**CED Topics:** 8.9 - Volume with Disc Method: Revolving Around the x- or y-Axis; 8.10 - Volume with Disc Method: Revolving Around Other Axes; 8.11 - Volume with Washer Method: Revolving Around the x- or y-Axis; 8.12 - Volume with Washer Method: Revolving Around Other Axes

---

## Learning Objectives

By the end of this class, students will be able to:

1. Explain why volumes of revolution are a special case of cross-sectional volumes with circular cross sections
2. Set up and evaluate disc method integrals for rotation around the x-axis: V = pi * integral of [f(x)]^2 dx
3. Set up and evaluate disc method integrals for rotation around the y-axis: V = pi * integral of [f(y)]^2 dy
4. Distinguish when to use the washer method (hollow core) vs. disc method (solid core)
5. Set up and evaluate washer method integrals: V = pi * integral of (R^2 - r^2) dx (or dy)
6. Correctly determine radii for rotation around lines other than the coordinate axes
7. Identify which curve provides the outer radius and which provides the inner radius

---

## Materials Needed

- Presentation slides with rotation animations and 3D visualizations
- Physical disc/washer demonstration models (paper plates with holes cut out)
- Graphing calculators
- Student devices for GeoGebra 3D exploration
- Practice problem handout with various axes of rotation

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Rotation Animation:**
Show an animation of a region rotating around the x-axis to form a solid of revolution.

Ask: "How would you find the volume of this solid?"

**Connection to Yesterday:** Cross sections here are circles (discs) or rings (washers). We know how to find volume when we know cross-sectional area: V = integral of A(x)dx.

**Key Insight:** For a circle, A = pi*r^2. For a washer, A = pi*R^2 - pi*r^2 = pi*(R^2 - r^2).

**Today's Goal:** Develop systematic methods for finding volumes of revolution around any axis.

### Disc Method: Rotation Around x-axis (10 min)

**Setup:**
Rotate y = f(x) from x = a to x = b around the x-axis.

- Each vertical slice at position x, when rotated, becomes a circular disc
- Radius of disc: r = f(x) (distance from x-axis to curve)
- Area of disc: A(x) = pi*[f(x)]^2
- Volume: V = integral from a to b of pi*[f(x)]^2 dx

$$V = \pi \int_a^b [f(x)]^2\,dx$$

**Example 1: Disc Around x-axis**
Find the volume when y = sqrt(x) is rotated around the x-axis from x = 0 to x = 4.

*Solution:*
1. **Radius:** r = sqrt(x) (distance from x-axis to curve)
2. **Area:** A(x) = pi*(sqrt(x))^2 = pi*x
3. **Volume:**
   V = pi * integral from 0 to 4 of x dx
   = pi * [x^2/2] from 0 to 4
   = pi * 8 = 8pi

*Visualization:* The solid looks like a cone-ish shape, wider at x = 4.

**Geometric Verification:**
This solid is a "paraboloid." The formula confirms the volume of a specific shape that students can visualize.

### Disc Method: Rotation Around y-axis (8 min)

**Setup:**
Rotate x = f(y) from y = c to y = d around the y-axis.

- Horizontal slices, so integrate with respect to y
- Radius: r = f(y) (distance from y-axis to curve)
- V = pi * integral from c to d of [f(y)]^2 dy

$$V = \pi \int_c^d [f(y)]^2\,dy$$

**Example 2: Disc Around y-axis**
Find the volume when y = x^2 (equivalently x = sqrt(y)) is rotated around the y-axis from y = 0 to y = 4.

*Solution:*
1. **Rewrite:** x = sqrt(y)
2. **Radius:** r = sqrt(y) (distance from y-axis to curve)
3. **Volume:**
   V = pi * integral from 0 to 4 of (sqrt(y))^2 dy
   = pi * integral from 0 to 4 of y dy
   = pi * [y^2/2] from 0 to 4 = 8pi

*Note:* Same answer as Example 1 - same parabola, same region, just different axis of rotation. This is a coincidence for this particular region!

### Washer Method: Introduction (10 min)

**When to Use:**
When the region has a "hole" - there's a gap between the region and the axis of rotation.

**Setup:**
Region between y = f(x) (outer curve) and y = g(x) (inner curve), rotated around x-axis, where f(x) >= g(x) >= 0.

- Outer radius: R = f(x) (farther from axis)
- Inner radius: r = g(x) (closer to axis)
- Washer area: A(x) = pi*R^2 - pi*r^2 = pi*(R^2 - r^2)
- Volume: V = pi * integral of (R^2 - r^2) dx

$$V = \pi \int_a^b \left([R(x)]^2 - [r(x)]^2\right)\,dx$$

**Critical Point:** It's R^2 - r^2, NOT (R - r)^2!
- R^2 - r^2 = (R+r)(R-r)
- (R-r)^2 = R^2 - 2Rr + r^2
- These are NOT the same!

**Example 3: Washer Around x-axis**
Find the volume when the region between y = sqrt(x) and y = x^2 is rotated around the x-axis.

*Solution:*
1. **Find intersection:** x^2 = sqrt(x) gives x^4 = x, so x(x^3 - 1) = 0, thus x = 0 or x = 1
2. **On [0, 1]:** At x = 0.5, sqrt(0.5) approximately equals 0.71 > 0.25 = (0.5)^2, so sqrt(x) is outer
3. **Outer radius:** R = sqrt(x)
4. **Inner radius:** r = x^2
5. **Volume:**
   V = pi * integral from 0 to 1 of [(sqrt(x))^2 - (x^2)^2] dx
   = pi * integral from 0 to 1 of [x - x^4] dx
   = pi * [x^2/2 - x^5/5] from 0 to 1
   = pi * (1/2 - 1/5) = pi * 3/10 = 3pi/10

*Visualization:* Show washer cross-section with hole in the middle.

### Rotation Around Other Lines (12 min)

**Key Principle:**
Radius = distance from AXIS OF ROTATION to the curve.

For axis y = k:
- If axis is BELOW region: R = f(x) - k, r = g(x) - k
- If axis is ABOVE region: R = k - g(x), r = k - f(x)

For axis x = k:
- If axis is LEFT of region: R = f(y) - k, r = g(y) - k
- If axis is RIGHT of region: R = k - g(y), r = k - f(y)

**Example 4: Rotation Around y = -1**
Same region (y = sqrt(x) to y = x^2 on [0, 1]), rotated around y = -1.

*Solution:*
1. The line y = -1 is BELOW the region
2. All distances from y = -1 are measured upward
3. **Outer radius:** R = sqrt(x) - (-1) = sqrt(x) + 1
4. **Inner radius:** r = x^2 - (-1) = x^2 + 1
5. **Volume:**
   V = pi * integral from 0 to 1 of [(sqrt(x) + 1)^2 - (x^2 + 1)^2] dx

*Expand:*
- (sqrt(x) + 1)^2 = x + 2sqrt(x) + 1
- (x^2 + 1)^2 = x^4 + 2x^2 + 1

V = pi * integral from 0 to 1 of [x + 2sqrt(x) + 1 - x^4 - 2x^2 - 1] dx
= pi * integral from 0 to 1 of [x + 2sqrt(x) - x^4 - 2x^2] dx
= pi * [x^2/2 + (4/3)x^(3/2) - x^5/5 - (2/3)x^3] from 0 to 1
= pi * [1/2 + 4/3 - 1/5 - 2/3]
= pi * [1/2 + 2/3 - 1/5]
= pi * [15/30 + 20/30 - 6/30]
= pi * 29/30 = 29pi/30

*Observation:* Moving the axis away from the region INCREASED the volume (from 3pi/10 = 9pi/30 to 29pi/30). More material is swept out with a larger radius!

**Example 5: Rotation Around x = 2**
Region between y = x and y = x^2 from x = 0 to x = 1, rotated around x = 2.

*Solution:*
1. Rotation around VERTICAL line, so use horizontal slices (dy)
2. **Rewrite curves:** x = y (line) and x = sqrt(y) (parabola, taking positive root)
3. Bounds: y = 0 to y = 1
4. Axis x = 2 is to the RIGHT of the region
5. **Outer radius:** R = 2 - y (distance from x = 2 to x = y)
6. **Inner radius:** r = 2 - sqrt(y) (distance from x = 2 to x = sqrt(y))

V = pi * integral from 0 to 1 of [(2-y)^2 - (2-sqrt(y))^2] dy

*Expand:*
- (2-y)^2 = 4 - 4y + y^2
- (2-sqrt(y))^2 = 4 - 4sqrt(y) + y

V = pi * integral from 0 to 1 of [4 - 4y + y^2 - 4 + 4sqrt(y) - y] dy
= pi * integral from 0 to 1 of [y^2 - 5y + 4sqrt(y)] dy
= pi * [y^3/3 - 5y^2/2 + (8/3)y^(3/2)] from 0 to 1
= pi * [1/3 - 5/2 + 8/3]
= pi * [1/3 + 8/3 - 5/2]
= pi * [3 - 5/2]
= pi * 1/2 = pi/2

### Closing (5 min)

**Summary:**
- **Disc method:** V = pi * integral of r^2 (when region touches the axis)
- **Washer method:** V = pi * integral of (R^2 - r^2) (when there's a hole)
- **Key insight:** Radius = distance from AXIS to curve (not from x-axis!)
- **Non-standard axes:** Adjust radius formulas based on axis position
- **R^2 - r^2, NOT (R-r)^2**

**Decision Flowchart:**
1. Is the region adjacent to the axis? -> Disc method
2. Is there a gap between region and axis? -> Washer method
3. Which curve is farther from axis? -> Outer radius
4. Which curve is closer to axis? -> Inner radius

**Exit Ticket:**
Which is larger: the volume when y = x (from x = 0 to x = 1) is rotated around the x-axis, or when it's rotated around y = -1?

*Answer:* y = -1 gives larger volume. Around x-axis: V = pi/3. Around y = -1: R = x+1, V = pi * integral of (x+1)^2 dx from 0 to 1 = 7pi/3. (Much larger!)

**Preview:** Tomorrow, we tackle arc length - finding the actual length of curves (BC topic).

---

## Differentiation Strategies

### For students who need more support:
- Provide a visual flowchart for disc vs. washer decision
- Always draw the axis of rotation clearly and label radii
- Start with standard axes (x and y) before other lines
- Use colored markers: one color for outer radius, another for inner
- Practice R^2 - r^2 vs. (R-r)^2 with numerical examples

### For advanced students:
- Challenge: Find the volume when y = sin(x) on [0, pi] is rotated around y = 2
- Explore: Shell method (different approach, same answers)
- Investigate: For what axis position k does rotating y = x^2 (from 0 to 1) around y = k give minimum volume?
- Extension: Gabriel's Horn paradox (infinite length, finite volume)

---

## Common Misconceptions to Address

1. **"Radius = f(x) always"**
   - Address: Radius = distance from AXIS to curve. For axis y = k, radius = f(x) - k or k - f(x). Draw and measure from the actual axis!

2. **"Subtract radii, then square: (R - r)^2"**
   - Address: WRONG! Washer = big disc minus small disc = pi*R^2 - pi*r^2 = pi*(R^2 - r^2). Show numerical example: R=5, r=3 gives 16 (not 4).

3. **"Outer radius is always the top function"**
   - Address: "Outer" means farther from AXIS OF ROTATION. If axis is above the region, the "bottom" function may be farther from the axis!

4. **"Use dx for y-axis rotation"**
   - Address: For y-axis rotation with disc/washer, slices are perpendicular to y-axis, so use dy. (Shell method, which we won't cover, uses dx.)

5. **"Washers only when both curves are above the x-axis"**
   - Address: Use washer whenever there's a gap between the region and axis of rotation. The curves' positions relative to x-axis don't matter - only their positions relative to the rotation axis.

6. **"Forgetting pi or putting it inside integral"**
   - Address: V = pi * integral(...). The pi is a constant multiplier. Factor it out to simplify calculations and reduce errors.

---

## Assessment Notes

- Watch for the R^2 - r^2 vs. (R-r)^2 error - it's extremely common
- Check that students correctly identify which curve gives outer vs. inner radius
- The non-standard axis problems reveal deep understanding vs. formula memorization
- Exit ticket tests conceptual reasoning about how axis position affects volume
- Common errors: wrong limits, wrong radius measurement, forgetting to square, mixing up dx and dy

---

## Connections

**Prior knowledge:**
- Cross-section volumes (Class 46) - disc/washer is a special case
- Area between curves (Class 45) - determines the region to rotate
- Definite integral evaluation (Unit 6)
- Circle area formula A = pi*r^2

**Future connections:**
- Arc length (Class 48) - another application of integration
- Shell method (not in this course, but conceptually related)
- Parametric/polar volumes (Unit 9)
- AP Exam - volumes of revolution are among the most frequently tested topics

---

## Rule of Four Emphasis

**Graphical:** Visualize the 2D region rotating around the axis. 3D animations and GeoGebra help students "see" the solid.

**Numerical:** Compute radii at specific x-values to verify formulas. Use calculator for complicated integrals.

**Analytical:** Derive radius expressions from curve equations. Set up and evaluate volume integrals.

**Verbal:** "The volume is found by adding up infinitely many thin discs (or washers). Each disc at position x has radius equal to the distance from the axis to the curve, thickness dx, and area pi*r^2 (or pi*(R^2-r^2) for washers)."

---

## AP Exam Tips

- Volumes of revolution appear on nearly every AP exam
- "Set up but do not evaluate" is common - focus on correct setup
- Non-standard axes (y = k or x = k) are frequently tested
- Read carefully to identify the axis of rotation
- Draw a picture showing the region, axis, and a representative slice
- Label R and r clearly in washer problems
- Check: Is your integrand positive? Is your answer positive?
