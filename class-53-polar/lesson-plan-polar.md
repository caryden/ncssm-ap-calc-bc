# Lesson Plan: Polar Coordinates and Derivatives

## Class 53 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)

---

## Overview

This session introduces polar coordinates as an alternative to Cartesian coordinates, ideal for describing curves with radial symmetry. Students will learn to plot points and curves in polar form, convert between coordinate systems, and find derivatives of polar curves using the parametric connection. Understanding polar coordinates sets the stage for calculating polar areas in the next class.

**CED Topic:** 9.7 - Defining Polar Coordinates and Differentiating in Polar Form

---

## Learning Objectives

By the end of this class, students will be able to:

1. Plot points given polar coordinates (r, theta)
2. Convert between polar and Cartesian coordinates in both directions
3. Recognize and sketch common polar curves (circles, cardioids, roses, limacons)
4. Find dy/dx for polar curves using the parametric formula
5. Identify points where polar curves have horizontal or vertical tangents
6. Determine the tangent line at the origin for curves passing through it

---

## Materials Needed

- Presentation slides with D3 visualizations (polar coordinate system)
- Graphing calculators with polar mode
- Student devices for Desmos polar graphing
- Polar graph paper (optional)
- Common polar curves reference sheet (optional)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A Simplicity Challenge**

> "Describe a circle of radius 2 centered at the origin."

**Cartesian:** x^2 + y^2 = 4 (implicit, not a function)

**Polar:** r = 2 (that's it!)

Some curves that are complicated in Cartesian coordinates become simple in polar. Circles, spirals, roses, and other radially symmetric curves are natural to describe with distance from origin and angle.

**Preview:** Today we learn polar coordinates and how to find slopes of polar curves.

### Polar Coordinate System (10 min)

**Definition:**
A point P has polar coordinates (r, theta) where:
- r = distance from origin (can be negative!)
- theta = angle from positive x-axis (counterclockwise is positive)

**Plotting Points:**
1. Start at origin
2. Rotate to angle theta
3. Move distance |r| along that ray (or opposite if r < 0)

**Example Points:**
- (3, pi/4): 3 units along the 45-degree ray
- (2, pi): 2 units along the 180-degree ray (on negative x-axis)
- (-2, pi/4): 2 units in the OPPOSITE direction of 45 degrees
  - Same as (2, 5*pi/4)!

**Non-Uniqueness (Important!):**
The same point has MANY polar representations:
- (3, pi/6) = (3, pi/6 + 2*pi) = (3, 13*pi/6)
- (3, pi/6) = (-3, pi/6 + pi) = (-3, 7*pi/6)

Adding 2*pi*n to theta or negating r while adding pi both give the same point.

**Conversion Formulas:**

Polar to Cartesian:
- x = r * cos(theta)
- y = r * sin(theta)

Cartesian to Polar:
- r = sqrt(x^2 + y^2)
- theta = arctan(y/x) (with quadrant adjustment!)

**Example:** Convert (2, 2) to polar.
- r = sqrt(4 + 4) = 2*sqrt(2)
- theta = arctan(1) = pi/4 (first quadrant)
- Polar: (2*sqrt(2), pi/4)

### Polar Curves (10 min)

**Definition:**
A polar curve is defined by r = f(theta).

For each angle theta, the function tells us how far from the origin to plot.

**Plotting Technique:**
1. Make a table: theta, r = f(theta)
2. Plot points in polar coordinates
3. Connect smoothly, noting direction of increasing theta

**Gallery of Famous Polar Curves:**

**1. Circles:**
- r = a: Circle centered at origin, radius a
- r = a*cos(theta): Circle passing through origin, center at (a/2, 0)
- r = a*sin(theta): Circle passing through origin, center at (0, a/2)

**2. Cardioid (Heart Shape):**
- r = a(1 + cos(theta)) or r = a(1 + sin(theta))
- Passes through origin once
- Has a cusp at the origin

**3. Limacon:**
- r = a + b*cos(theta)
- Inner loop if a < b
- Dimpled (no loop) if b < a < 2b
- Convex if a >= 2b

**4. Rose Curves:**
- r = a*cos(n*theta) or r = a*sin(n*theta)
- n petals if n is odd
- 2n petals if n is even

**5. Spirals:**
- r = a*theta (Archimedean spiral - evenly spaced)
- r = a*e^(b*theta) (Logarithmic spiral - self-similar)

**Demonstration:** Use Desmos to show each curve type, varying parameters.

### Derivatives in Polar Coordinates (12 min)

**The Key Insight:**
Polar curves ARE parametric curves!

Take r = f(theta) and convert:
- x(theta) = r(theta) * cos(theta)
- y(theta) = r(theta) * sin(theta)

The parameter is theta!

**Finding dy/dx:**
Use the parametric derivative formula:
$$\frac{dy}{dx} = \frac{dy/d\theta}{dx/d\theta}$$

**Computing dx/dtheta and dy/dtheta:**

Using the product rule (since x = r*cos(theta), y = r*sin(theta)):

$$\frac{dx}{d\theta} = \frac{dr}{d\theta}\cos\theta - r\sin\theta$$

$$\frac{dy}{d\theta} = \frac{dr}{d\theta}\sin\theta + r\cos\theta$$

**The Polar Slope Formula:**
$$\frac{dy}{dx} = \frac{\frac{dr}{d\theta}\sin\theta + r\cos\theta}{\frac{dr}{d\theta}\cos\theta - r\sin\theta}$$

**Critical Warning:** dy/dx is NOT dr/dtheta! The slope requires the full formula.

**Example:** Find dy/dx for r = 1 + sin(theta) at theta = pi/6.

1. r(pi/6) = 1 + 1/2 = 3/2
2. dr/dtheta = cos(theta), so r'(pi/6) = sqrt(3)/2

3. dx/dtheta = r'*cos - r*sin
   = (sqrt(3)/2)(sqrt(3)/2) - (3/2)(1/2)
   = 3/4 - 3/4 = 0

4. dy/dtheta = r'*sin + r*cos
   = (sqrt(3)/2)(1/2) + (3/2)(sqrt(3)/2)
   = sqrt(3)/4 + 3*sqrt(3)/4 = sqrt(3)

5. dy/dx = sqrt(3)/0 = **undefined (vertical tangent!)**

**Horizontal and Vertical Tangents:**
- Horizontal: dy/dtheta = 0 AND dx/dtheta =/= 0
- Vertical: dx/dtheta = 0 AND dy/dtheta =/= 0

### Tangent at the Origin (5 min)

**Special Case:**
When r(theta_0) = 0, the curve passes through the origin at angle theta_0.

**The Tangent Line at Origin:**
The tangent line is the ray theta = theta_0!

**Why?**
As theta approaches theta_0, the point approaches origin along the ray at angle theta_0. This ray IS the tangent line.

**Example:** r = sin(2*theta)
- r = 0 when 2*theta = n*pi, so theta = 0, pi/2, pi, 3*pi/2
- At origin, tangent lines are: theta = 0 (x-axis) and theta = pi/2 (y-axis)
- The four petals are tangent to these axes at the origin

**Practical Application:**
For rose curves r = sin(n*theta), the tangent lines at the origin are evenly spaced, matching the angle between petals.

### Closing (3 min)

**Summary:**
- Polar coordinates: (r, theta) = distance and angle from origin
- Conversion: x = r*cos(theta), y = r*sin(theta)
- Polar curves: r = f(theta), parametric with parameter theta
- Slope formula uses product rule for both dx/dtheta and dy/dtheta
- Tangent at origin is the ray theta = theta_0 where r = 0

**Exit Ticket:**
For r = cos(theta), find dy/dx at theta = pi/4.

(This is a circle passing through the origin - find slope at that point!)

**Preview:** Tomorrow we calculate areas enclosed by polar curves using sector areas instead of rectangles.

---

## Differentiation Strategies

### For students who need more support:
- Provide polar graph paper for plotting practice
- Use calculator/Desmos polar mode extensively for visualization
- Emphasize the parametric connection - this is what they already know!
- Break derivative calculations into clear steps: find r, find r', find dx/dtheta, find dy/dtheta, then divide
- Start with circles before moving to more complex curves

### For advanced students:
- Explore the relationship between polar and complex numbers
- Challenge: Find all horizontal tangents to r = 2 + 4*cos(theta)
- Investigate: How does the number of petals relate to n in r = sin(n*theta)?
- Research: Applications in radar, sonar, and antenna patterns

---

## Common Misconceptions to Address

1. **"r must be positive"**
   - Address: Negative r means go opposite direction. (-2, pi/4) is same as (2, 5*pi/4).

2. **"Each point has unique polar coordinates"**
   - Address: Unlike Cartesian, same point has infinitely many representations. Add 2*pi to theta, or negate r and add pi.

3. **"dy/dx = dr/dtheta"**
   - Address: dr/dtheta tells how r changes, NOT the slope. Must use full parametric formula with product rule.

4. **"Polar curves are NOT parametric curves"**
   - Address: They ARE! x = r(theta)*cos(theta), y = r(theta)*sin(theta) with parameter theta.

5. **"r = 0 means no point"**
   - Address: r = 0 means the point is at the ORIGIN. The curve passes through origin at that theta value.

6. **"Tangent at origin is undefined"**
   - Address: The tangent line at origin is the ray theta = theta_0. This is a well-defined line.

---

## Assessment Notes

- Monitor comfort with polar plotting during the curve gallery
- Watch for proper use of product rule in derivative calculations
- Check that students don't confuse dr/dtheta with dy/dx
- Exit ticket tests whether students can execute the derivative formula
- Note which students need more support with the conversion formulas

---

## Connections

**Prior knowledge:**
- Parametric equations and derivatives (Classes 49-50)
- Vector functions (Class 51)
- Trigonometry and unit circle
- Product rule for derivatives

**Future connections:**
- Polar area (Class 54)
- Complex numbers and Euler's formula (future math courses)
- AP FRQ polar problems (derivatives and area)
- Physics applications: orbits, waves, rotational motion

---

## Notation Notes

**Standard notation:**
- Polar coordinates: (r, theta) or r = f(theta)
- Sometimes theta is written as t or phi
- Some texts use angle brackets for polar: <r, theta>

**Conversion reminder:**
- x = r*cos(theta), y = r*sin(theta) (polar to Cartesian)
- r^2 = x^2 + y^2, tan(theta) = y/x (Cartesian to polar)

**AP Exam conventions:**
- Must know conversion formulas
- Derivative problems may give r = f(theta) and ask for dy/dx at specific theta
- May ask for horizontal/vertical tangent locations
- Calculator graphing of polar curves is common
