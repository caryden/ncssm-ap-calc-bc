# Lesson Plan: Volumes with Cross Sections

## Class 46 | Unit 8: Applications of Integration

---

## Overview

This session introduces the powerful technique of finding volumes of solids with known cross sections. Students extend the "slicing" concept from area between curves to three dimensions: if we know the cross-sectional area at every position, we can integrate to find volume. The lesson covers cross sections perpendicular to the x-axis and y-axis, with shapes including squares, rectangles, semicircles, and equilateral triangles. The emphasis is on correctly identifying the cross-sectional dimension from the base region and applying the appropriate geometric area formula.

**CED Topics:** 8.7 - Volumes with Cross Sections: Squares and Rectangles; 8.8 - Volumes with Cross Sections: Triangles and Semicircles

---

## Learning Objectives

By the end of this class, students will be able to:

1. Explain why V = integral from a to b of A(x)dx gives the volume of a solid with known cross sections
2. Identify the base region and cross-section type from problem descriptions
3. Express the cross-sectional dimension (side, radius, etc.) in terms of the integration variable
4. Apply correct geometric formulas for cross-sectional area (squares, rectangles, triangles, semicircles)
5. Set up and evaluate volume integrals for cross sections perpendicular to either the x-axis or y-axis
6. Visualize three-dimensional solids built from two-dimensional base regions

---

## Materials Needed

- Presentation slides with 3D visualizations (animated cross-section sliders)
- Physical models or 3D-printed cross-section solids (if available)
- Graphing calculators
- Student devices for GeoGebra 3D exploration
- Handout with cross-section area formula reference

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Bread Loaf Analogy:**
Show an image of a sliced loaf of bread.

Ask: "If you knew the area of each slice, how would you find the total volume of the loaf?"

**Answer:** Add up all the slice areas! Each slice has thickness dx, area A(x), so volume approximately equals sum of A(x) * dx.

**Calculus Version:** When slices are infinitely thin, we integrate:
$$V = \int_a^b A(x)\,dx$$

**Today's Goal:** Learn to compute A(x) for various cross-section shapes, then integrate to find volume.

### The General Principle (8 min)

**Volume by Slicing:**
If a solid extends from x = a to x = b, and the cross-sectional area at position x is A(x), then:

$$V = \int_a^b A(x)\,dx$$

**Why This Works:**
- Each thin slice at position x has thickness dx and area A(x)
- Volume of thin slice is approximately A(x) * dx
- Total volume = sum of all slice volumes = integral

*Visualization:* Show D3 animation of slices accumulating to form the solid.

**The Key Step:**
To find A(x):
1. Identify the base region in the xy-plane
2. At position x, find the relevant dimension (usually f(x) - g(x) or just f(x))
3. This dimension becomes the side/radius/base of the cross section
4. Apply the geometric formula for that shape

**Cavalieri's Principle:**
If two solids have the same cross-sectional area at every height, they have the same volume. This justifies our approach regardless of cross-section shape.

### Cross Sections Perpendicular to x-axis (20 min)

**Standard Setup:**
Base region is bounded by curves in the xy-plane. Cross sections are perpendicular to the x-axis (vertical slicing planes).

**Example 1: Square Cross Sections**

*Problem:* The base is the region bounded by y = x^2 and y = 4 from x = -2 to x = 2. Cross sections perpendicular to the x-axis are squares.

*Solution:*
1. **Sketch base:** Parabola y = x^2 below, line y = 4 above
2. **At position x:** Region extends from y = x^2 to y = 4
3. **Side of square:** s = 4 - x^2
4. **Area of square:** A(x) = s^2 = (4 - x^2)^2 = 16 - 8x^2 + x^4
5. **Volume:**
   V = integral from -2 to 2 of (16 - 8x^2 + x^4)dx
   = [16x - (8/3)x^3 + x^5/5] from -2 to 2
   = 2 * [32 - 64/3 + 32/5]
   = 2 * [(480 - 320 + 96)/15]
   = 2 * (256/15) = 512/15

**Example 2: Semicircular Cross Sections**

*Problem:* Base: y = sqrt(x), y = 0, x = 0 to x = 4. Cross sections are semicircles with diameter on the base.

*Solution:*
1. **At position x:** Diameter = sqrt(x) - 0 = sqrt(x)
2. **Radius:** r = sqrt(x)/2
3. **Area of semicircle:** A(x) = (1/2)pi*r^2 = (1/2)pi*(sqrt(x)/2)^2 = pi*x/8
4. **Volume:**
   V = integral from 0 to 4 of (pi*x/8)dx
   = (pi/8) * [x^2/2] from 0 to 4
   = (pi/8) * 8 = pi

*Visualization:* Show 3D solid with semicircular slices rising from the base.

**Example 3: Equilateral Triangle Cross Sections**

*Problem:* Base: y = x and y = 0 from x = 0 to x = 3. Cross sections are equilateral triangles with one side on the base.

*Solution:*
1. **At position x:** Side of triangle = x
2. **Area of equilateral triangle:** A(x) = (sqrt(3)/4)s^2 = (sqrt(3)/4)x^2

   *Derivation:* For equilateral triangle with side s:
   - Height = (sqrt(3)/2)s (from 30-60-90 triangle)
   - Area = (1/2) * base * height = (1/2) * s * (sqrt(3)/2)s = (sqrt(3)/4)s^2

3. **Volume:**
   V = integral from 0 to 3 of (sqrt(3)/4)x^2 dx
   = (sqrt(3)/4) * [x^3/3] from 0 to 3
   = (sqrt(3)/4) * 9 = 9sqrt(3)/4

### Cross Sections Perpendicular to y-axis (7 min)

**When to Use:**
- Base region is easier to describe as x = f(y), x = g(y)
- Cross sections perpendicular to y-axis (horizontal slicing planes)

**Example 4: Cross Sections Perpendicular to y-axis**

*Problem:* Base: x = y^2 and x = 4 from y = -2 to y = 2. Cross sections perpendicular to y-axis are squares.

*Solution:*
1. **At position y:** Width of region = 4 - y^2
2. **Side of square:** s = 4 - y^2
3. **Area:** A(y) = (4 - y^2)^2
4. **Volume:**
   V = integral from -2 to 2 of (4 - y^2)^2 dy = 512/15

*Note:* This is the same as Example 1 by symmetry! The region is the same; we just sliced horizontally instead of vertically.

### Area Formulas Summary (5 min)

**Reference Chart:**

| Cross Section | Dimension | Area Formula |
|---------------|-----------|--------------|
| Square | side s | A = s^2 |
| Rectangle | base b, height h | A = bh |
| Equilateral Triangle | side s | A = (sqrt(3)/4)s^2 |
| Isosceles Right Triangle | legs of length s | A = (1/2)s^2 |
| Semicircle | diameter d | A = (pi/8)d^2 = (1/2)pi*(d/2)^2 |
| Circle | diameter d | A = (pi/4)d^2 = pi*(d/2)^2 |

**Common Error Prevention:**
- For semicircle: If given diameter d, radius r = d/2. Area = (1/2)pi*r^2 = (1/2)pi*(d/2)^2 = pi*d^2/8.
- For equilateral triangle: Don't use (1/2)s^2; that's for isosceles right triangles!

### Closing (5 min)

**Summary:**
- Volume = integral of A(x)dx (or A(y)dy)
- The key challenge is setting up A(x) correctly
- Steps: (1) Identify base region, (2) Find cross-section dimension at position x, (3) Apply correct area formula, (4) Integrate

**Exit Ticket:**
Set up (but do not evaluate) the integral for the volume where:
- Base: y = x, y = 0, x = 4
- Cross sections perpendicular to x-axis are isosceles right triangles with legs on the base

*Answer:* At x, leg length = x. Area = (1/2)x^2. V = integral from 0 to 4 of (1/2)x^2 dx

**Preview:** Tomorrow, a special case where cross sections are circles - the disc and washer methods for volumes of revolution!

---

## Differentiation Strategies

### For students who need more support:
- Provide physical models (Play-Doh or paper) to build cross-section solids
- Create a structured worksheet: "Base region: ___, Cross section shape: ___, Dimension = ___, Area formula: ___, A(x) = ___"
- Start with simpler bases (rectangles, triangles) before curves
- Emphasize that the hard part is A(x); the integral is often straightforward

### For advanced students:
- Challenge: Find the volume where the base is a circle x^2 + y^2 = 1 and cross sections perpendicular to x-axis are squares
- Explore: What if cross sections are regular hexagons?
- Investigate: Given a solid with V = integral from 0 to 1 of pi*x^4 dx, describe possible base region and cross sections
- Extension: Set up the volume of a pyramid with square base (recovers V = (1/3)Bh)

---

## Common Misconceptions to Address

1. **"The cross section is always a square"**
   - Address: Read the problem carefully! Each shape has a different area formula. The word "square" vs "semicircle" vs "triangle" changes everything.

2. **"The base of the cross section is f(x)"**
   - Address: Usually the dimension is f(x) - g(x) (top minus bottom) or the full span across the base region. Draw the slice and measure carefully.

3. **"Semicircle diameter = radius"**
   - Address: If the problem says "semicircles with diameter on the base," then d = f(x) - g(x) and r = d/2. Area = (1/2)pi*r^2.

4. **"Just multiply area by length"**
   - Address: That works for prisms (constant cross section), but here A(x) varies with position. We must integrate, not just multiply.

5. **"Equilateral triangle area = (1/2)bh with h = s"**
   - Address: For equilateral triangle, h = (sqrt(3)/2)s, so A = (sqrt(3)/4)s^2, not (1/2)s^2.

6. **"Same setup as area between curves"**
   - Address: Area between curves gives A(x), but for volume you still need to integrate A(x)dx. Don't stop at A(x)!

---

## Assessment Notes

- Monitor ability to identify the base region from verbal descriptions
- Watch for students using wrong area formulas (especially equilateral vs. isosceles right triangles)
- The physical/visual component is crucial; note who can mentally construct the 3D solid
- Exit ticket tests setup skills; evaluate whether A(x) is correct and integral bounds match base region
- Common errors: squaring when shouldn't, not squaring when should, wrong limits of integration

---

## Connections

**Prior knowledge:**
- Area between curves (Class 45) - provides the "height" of cross sections
- Definite integral evaluation (Unit 6)
- Geometric formulas for area (prior math courses)
- Riemann sum interpretation (Unit 6)

**Future connections:**
- Disc/washer method (Class 47) - cross sections are circles/annuli
- Arc length (Class 48) - different application of slicing
- Volume with parametric/polar curves (Unit 9)
- AP Exam - cross-section problems appear regularly on both AB and BC exams

---

## Rule of Four Emphasis

**Graphical:** Draw the base region and visualize cross sections standing perpendicular. 3D sketches and GeoGebra visualizations help.

**Numerical:** Compute A(x) at specific x-values to verify the formula. Use calculator to evaluate complicated integrals.

**Analytical:** Derive A(x) using geometric formulas. Set up and evaluate the definite integral.

**Verbal:** "The volume is the accumulated sum of infinitely many thin slabs. Each slab at position x has thickness dx and cross-sectional area A(x). The integral adds up all these slab volumes."

---

## 3D Visualization Tips

- Use GeoGebra 3D for dynamic visualization
- Stack paper cutouts of cross sections to build physical models
- Emphasize: the base region is in the xy-plane; cross sections "stand up" perpendicular to it
- For dy problems, imagine slicing horizontally like a horizontal bread slicer
