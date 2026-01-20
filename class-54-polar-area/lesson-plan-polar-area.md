# Lesson Plan: Polar Area

## Class 54 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)

---

## Overview

This session derives and applies the polar area formula. Unlike Cartesian integration with vertical rectangles, polar area uses infinitesimal sectors (pie slices) radiating from the origin. Students will calculate areas enclosed by single polar curves and areas between two polar curves, learning to identify proper bounds and handle intersection points. This completes Unit 9's exploration of non-Cartesian curve descriptions.

**CED Topics:** 9.8 - Finding the Area of a Polar Region or the Area Bounded by Two Polar Curves, 9.9 - Finding the Area of a Polar Region (BC Only)

---

## Learning Objectives

By the end of this class, students will be able to:

1. Derive the polar area formula from sector area geometry
2. Set up polar area integrals with correct angle bounds
3. Calculate areas enclosed by polar curves (circles, cardioids, roses)
4. Find areas between two polar curves by identifying inner and outer curves
5. Determine intersection points of polar curves
6. Use symmetry to simplify polar area calculations

---

## Materials Needed

- Presentation slides with D3 visualizations (sector animation)
- Graphing calculators with polar mode
- Student devices for Desmos polar graphing
- Polar area formula reference card (optional)
- Polar graph paper (optional)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A New Kind of Area Problem**

> "Find the area inside the cardioid r = 1 + cos(theta)."

Show the cardioid - it's NOT bounded by vertical lines like our usual area problems!

**The Challenge:**
- Can't use integral of (top - bottom) dx
- Need a different approach suited to polar geometry

**The Insight:**
In polar coordinates, natural "slices" are sectors (pie slices), not rectangles!

### Deriving the Polar Area Formula (12 min)

**Review: Sector Area**

For a circular sector with radius r and central angle theta:
$$A_{sector} = \frac{1}{2}r^2\theta$$

This is like the fraction theta/(2*pi) of the full circle area pi*r^2.

**The Setup:**
- Region bounded by r = f(theta) from theta = alpha to theta = beta
- Divide the angle interval into n thin sectors, each with angle d*theta

**The Infinitesimal Sector:**
- At angle theta_i, the radius is r(theta_i)
- This thin sector has area approximately:
$$dA \approx \frac{1}{2}[r(\theta)]^2 \cdot d\theta$$

**Summing Up:**
- Total area is approximately sum of all sector areas
- As n approaches infinity (d*theta approaches 0), sum becomes integral

**The Polar Area Formula:**
$$A = \frac{1}{2}\int_{\alpha}^{\beta} [r(\theta)]^2\, d\theta$$

**Key Points to Emphasize:**
- The 1/2 factor is essential (from sector formula)
- We SQUARE r(theta) - don't forget!
- Bounds are ANGLES, not radii
- This is fundamentally different from Cartesian area!

### Example 1: Circle - Verify the Formula (5 min)

**Problem:** Find the area of a circle of radius a.

**Setup:** r = a (constant), theta from 0 to 2*pi

**Calculation:**
$$A = \frac{1}{2}\int_0^{2\pi} a^2\, d\theta = \frac{1}{2}a^2[\theta]_0^{2\pi} = \frac{1}{2}a^2(2\pi) = \pi a^2$$

**Success!** We recover the familiar circle area formula.

### Example 2: Cardioid Area (8 min)

**Problem:** Find the area inside r = 1 + cos(theta).

**Determine Bounds:**
- The cardioid is traced once as theta goes from 0 to 2*pi
- The curve encloses the origin

**Setup:**
$$A = \frac{1}{2}\int_0^{2\pi} (1 + \cos\theta)^2\, d\theta$$

**Expand the Integrand:**
$$(1 + \cos\theta)^2 = 1 + 2\cos\theta + \cos^2\theta$$

**Use the identity:** cos^2(theta) = (1 + cos(2*theta))/2
$$= 1 + 2\cos\theta + \frac{1 + \cos(2\theta)}{2} = \frac{3}{2} + 2\cos\theta + \frac{1}{2}\cos(2\theta)$$

**Integrate:**
$$\int_0^{2\pi}\left(\frac{3}{2} + 2\cos\theta + \frac{1}{2}\cos(2\theta)\right)d\theta$$
$$= \left[\frac{3\theta}{2} + 2\sin\theta + \frac{1}{4}\sin(2\theta)\right]_0^{2\pi}$$
$$= \left(\frac{3 \cdot 2\pi}{2} + 0 + 0\right) - (0 + 0 + 0) = 3\pi$$

**Final Answer:**
$$A = \frac{1}{2}(3\pi) = \frac{3\pi}{2}$$

### Example 3: Rose Petal (5 min)

**Problem:** Find the area of ONE petal of r = sin(2*theta).

**Identify the Petal:**
- r = sin(2*theta) = 0 when 2*theta = 0, pi, 2*pi, ...
- So r = 0 at theta = 0, pi/2, pi, 3*pi/2, ...
- First petal: theta from 0 to pi/2 (where sin(2*theta) >= 0)

**Setup:**
$$A = \frac{1}{2}\int_0^{\pi/2} \sin^2(2\theta)\, d\theta$$

**Use identity:** sin^2(u) = (1 - cos(2u))/2
$$= \frac{1}{2}\int_0^{\pi/2} \frac{1 - \cos(4\theta)}{2}\, d\theta = \frac{1}{4}\int_0^{\pi/2} (1 - \cos(4\theta))\, d\theta$$

**Integrate:**
$$= \frac{1}{4}\left[\theta - \frac{1}{4}\sin(4\theta)\right]_0^{\pi/2} = \frac{1}{4}\left[\frac{\pi}{2} - 0 - 0 + 0\right] = \frac{\pi}{8}$$

**Total Rose Area:**
This rose has 4 petals (since n = 2 is even, there are 2n = 4 petals).
Total area = 4 * (pi/8) = pi/2

### Area Between Two Polar Curves (10 min)

**The Setup:**
- Outer curve: r = f(theta)
- Inner curve: r = g(theta)
- Want area between them from theta = alpha to theta = beta

**The Formula:**
$$A = \frac{1}{2}\int_{\alpha}^{\beta} \left([r_{outer}]^2 - [r_{inner}]^2\right)\, d\theta$$

**Important Considerations:**
1. **Which is outer?** At each theta, the larger r is the outer curve
2. **Finding bounds:** Usually intersection points (where r_1 = r_2)
3. **Origin caution:** Both curves may pass through origin at different theta values

**Example:** Find area inside r = 2 and outside r = 2(1 - cos(theta)) for the region where the circle is the outer curve.

**Step 1: Find intersections**
Set 2 = 2(1 - cos(theta))
1 = 1 - cos(theta)
cos(theta) = 0
theta = pi/2 and theta = 3*pi/2 = -pi/2

**Step 2: Determine which is outer**
- At theta = 0: Circle r = 2, Cardioid r = 0. Circle is outer.
- At theta = pi: Circle r = 2, Cardioid r = 4. Cardioid is outer.

So for theta in [-pi/2, pi/2], circle is outer, cardioid is inner.

**Step 3: Set up integral**
$$A = \frac{1}{2}\int_{-\pi/2}^{\pi/2} \left[4 - 4(1 - \cos\theta)^2\right]\, d\theta$$

**Step 4: Simplify using symmetry**
The integrand is even (symmetric about theta = 0), so:
$$A = 2 \cdot \frac{1}{2}\int_0^{\pi/2} \left[4 - 4(1 - \cos\theta)^2\right]\, d\theta$$

(Complete calculation or use calculator for numerical answer)

**Finding Intersection Points - A Warning:**
- Setting r_1 = r_2 finds where curves cross at same theta
- But curves may BOTH pass through origin at DIFFERENT theta values
- Always check: Does either curve have r = 0? At what theta?

### Closing (5 min)

**Summary:**
- Polar area uses sectors, not rectangles
- Formula: A = (1/2) * integral of r^2 d*theta
- Bounds are angles (theta values)
- Between curves: (1/2) * integral of (r_outer^2 - r_inner^2) d*theta
- Don't forget: the 1/2, squaring r, and checking bounds

**Exit Ticket:**
Set up (don't evaluate) the integral for the area inside r = sin(theta).

Expected answer: A = (1/2) * integral from 0 to pi of sin^2(theta) d*theta
(This is a circle of diameter 1, so area should be pi/4)

**Preview:** Unit 10 begins next - Infinite Series! We'll explore sums that go on forever yet can have finite values.

---

## Differentiation Strategies

### For students who need more support:
- Draw the sector and show where (1/2)r^2*d*theta comes from
- Practice identifying bounds by tracing curves on Desmos
- Use symmetry to simplify integrals when possible
- Start with simple curves (circles) before cardioids and roses
- Provide a checklist: 1) Sketch curve, 2) Identify bounds, 3) Set up integral, 4) Evaluate

### For advanced students:
- Challenge: Find area inside both r = sin(theta) and r = cos(theta) (intersection region)
- Explore: Arc length in polar coordinates (not AP required but interesting)
- Investigate: Why does the 4-petal rose r = sin(2*theta) have total area pi/2, same as a unit circle?
- Research: Applications in radar cross-sections and antenna patterns

---

## Common Misconceptions to Address

1. **"Use integral of r, not r^2"**
   - Address: Area formula is (1/2)r^2 d*theta, from sector area. Draw the sector and derive the formula explicitly.

2. **"Bounds are r values"**
   - Address: Bounds are ANGLES. We integrate over theta from alpha to beta, not over r values.

3. **"Area of a rose = integral from 0 to 2*pi"**
   - Address: May overcount due to negative r or symmetry. For roses, integrate over one petal and multiply.

4. **"Subtract any two r values for area between curves"**
   - Address: Must identify which curve is OUTER (larger r) at each theta. They may switch roles!

5. **"Intersection means r_1(theta) = r_2(theta) only"**
   - Address: Curves can also both pass through origin at different theta values. Check r = 0 cases separately.

6. **"Forgetting the 1/2"**
   - Address: This is the most common computational error. Emphasize it comes from sector area formula.

---

## Assessment Notes

- Monitor understanding during the derivation - can students explain the sector approach?
- Watch for the 1/2 factor and proper squaring during calculations
- Check that students can identify correct angle bounds
- Exit ticket tests whether students can set up the integral correctly
- Note comfort level with trig identities needed for integration

---

## Connections

**Prior knowledge:**
- Polar coordinates and curves (Class 53)
- Integration techniques (Unit 6)
- Trigonometric identities
- Area between curves (Unit 8)

**Future connections:**
- Unit 10: Infinite Series (new topic beginning)
- AP FRQ polar area problems (very common)
- Physics applications: moment of inertia, probability distributions

---

## Notation Notes

**Standard notation:**
- Area: A = (1/2) * integral of r^2 d*theta
- Bounds: theta from alpha to beta
- Outer curve: r_outer or r_2
- Inner curve: r_inner or r_1

**AP Exam conventions:**
- Must know the polar area formula
- "Set up but do not evaluate" is common
- May need to find intersection points first
- Calculator-active questions may ask for numerical area
- Free-response often combines with derivatives

**Common computational tools:**
- cos^2(theta) = (1 + cos(2*theta))/2
- sin^2(theta) = (1 - cos(2*theta))/2
- Symmetry can halve or quarter the work
- Calculator for complex integrals
