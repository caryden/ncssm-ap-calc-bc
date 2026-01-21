# Lesson Plan: Arc Length of Smooth Planar Curves (BC)

## Class 48 | Unit 8: Applications of Integration

---

## Overview

This BC-only session introduces the arc length formula, derived from the Pythagorean theorem applied to infinitesimal curve segments. Students will understand that arc length is computed by summing the lengths of infinitely many tiny line segments that approximate the curve. The lesson emphasizes both the conceptual derivation and practical computation, noting that many arc length integrals cannot be evaluated by elementary methods and require numerical approximation. Students should focus on correct setup, which is the primary skill tested on the AP exam.

**CED Topic:** 8.13 - The Arc Length of a Smooth, Planar Curve and Distance Traveled (BC Only)

---

## Learning Objectives

By the end of this class, students will be able to:

1. Derive the arc length formula using the Pythagorean theorem on infinitesimal segments
2. Apply the arc length formula: L = integral from a to b of sqrt(1 + [f'(x)]^2) dx
3. Use the alternate form when x is given as a function of y: L = integral from c to d of sqrt(1 + [g'(y)]^2) dy
4. Recognize when arc length integrals can be evaluated exactly (perfect square inside square root)
5. Use technology to approximate arc length when elementary antiderivatives don't exist
6. Verify that arc length is always greater than or equal to horizontal (or vertical) distance

---

## Materials Needed

- Presentation slides with D3 visualizations (polygonal approximation refining to curve)
- Graphing calculators with numerical integration capability
- Student devices for Desmos arc length exploration
- Handout with practice problems (some with nice antiderivatives, some requiring calculator)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Motivating Scenario:**
Show an image of a winding mountain road.

Ask: "If you drive along this curvy road from point A to point B, how far do you actually travel?"

**Key Insight:** The curved distance is longer than "as the crow flies." A 10-mile stretch of winding road might actually be 15 miles of driving.

**Today's Goal:** Develop a formula to calculate the exact length of any smooth curve using calculus.

**Connection:** We've been using "slicing" throughout this unit. For arc length, we slice the curve into tiny pieces, each approximately a straight line segment.

### Derivation of the Arc Length Formula (12 min)

**Step 1: Approximation with Line Segments**

Consider curve y = f(x) from x = a to x = b.
- Partition [a, b] into n subintervals: a = x_0 < x_1 < ... < x_n = b
- On each subinterval, approximate the curve with a straight line segment
- This gives a polygonal (piecewise linear) approximation

*Visualization:* Show curve with 4 segments, then 8, then 16, getting closer to the actual curve.

**Step 2: Length of One Segment**

From point (x_i, f(x_i)) to (x_(i+1), f(x_(i+1))):
- Horizontal distance: delta x = x_(i+1) - x_i
- Vertical distance: delta y = f(x_(i+1)) - f(x_i)
- Segment length: sqrt((delta x)^2 + (delta y)^2) by Pythagorean theorem

*Visualization:* Zoom in on one small piece showing the right triangle with legs dx, dy and hypotenuse ds.

**Step 3: Factor Out delta x**

sqrt((delta x)^2 + (delta y)^2)
= sqrt(1 + (delta y / delta x)^2) * delta x

**Step 4: Apply Mean Value Theorem**

By MVT, there exists c_i in the subinterval such that:
delta y / delta x = f'(c_i)

So segment length = sqrt(1 + [f'(c_i)]^2) * delta x

**Step 5: Write as Riemann Sum**

Total length approximately equals: sum from i=1 to n of sqrt(1 + [f'(c_i)]^2) * delta x

This is a Riemann sum for the function sqrt(1 + [f'(x)]^2)!

**Step 6: Take the Limit**

As n approaches infinity:

$$L = \int_a^b \sqrt{1 + [f'(x)]^2}\,dx$$

**The Geometric Story:**
- ds = sqrt(dx^2 + dy^2) is the infinitesimal arc element (tiny piece of curve)
- L = integral of ds integrates these pieces from a to b
- The Pythagorean theorem is doing all the work!

### The Arc Length Formulas (5 min)

**For y = f(x) from x = a to x = b:**

$$L = \int_a^b \sqrt{1 + \left(\frac{dy}{dx}\right)^2}\,dx$$

**For x = g(y) from y = c to y = d:**

$$L = \int_c^d \sqrt{1 + \left(\frac{dx}{dy}\right)^2}\,dy$$

**The ds Notation:**
Some textbooks write ds = sqrt(dx^2 + dy^2), so L = integral of ds. This emphasizes the geometric interpretation: we're summing infinitesimal arc lengths.

**Key Observation:**
Arc length >= horizontal distance, since sqrt(1 + (f')^2) >= 1. Equality holds only when f' = 0 (horizontal curve).

### Example 1: A "Nice" Integral (8 min)

**Problem:** Find the arc length of y = (1/3)(x^2 + 2)^(3/2) from x = 0 to x = 3.

*Solution:*
1. **Find the derivative:**
   f'(x) = (1/3) * (3/2)(x^2 + 2)^(1/2) * 2x = x(x^2 + 2)^(1/2) = x*sqrt(x^2 + 2)

2. **Compute 1 + [f'(x)]^2:**
   [f'(x)]^2 = x^2(x^2 + 2) = x^4 + 2x^2
   1 + [f'(x)]^2 = 1 + x^4 + 2x^2 = x^4 + 2x^2 + 1 = (x^2 + 1)^2

3. **Take the square root:**
   sqrt(1 + [f'(x)]^2) = sqrt((x^2 + 1)^2) = x^2 + 1 (since x^2 + 1 > 0 always)

4. **Integrate:**
   L = integral from 0 to 3 of (x^2 + 1) dx
   = [x^3/3 + x] from 0 to 3
   = (9 + 3) - 0 = 12

**Key Insight:** This function was carefully constructed so that 1 + (f')^2 is a perfect square! The square root simplifies to a polynomial, making integration easy.

### Example 2: The y-form (6 min)

**Problem:** Find the arc length of x = (1/3)y^3 from y = 0 to y = 2.

*Solution:*
1. Here x is given as a function of y, so use the dy form
2. **Derivative:** dx/dy = y^2
3. **Integrand:** sqrt(1 + (dx/dy)^2) = sqrt(1 + y^4)
4. **Arc length:**
   L = integral from 0 to 2 of sqrt(1 + y^4) dy

**Problem:** This integral has NO elementary antiderivative!

Using a calculator (numerical integration): L approximately equals 3.26

**Takeaway:** Even simple-looking functions can lead to integrals that require numerical methods. This is typical for arc length!

### Example 3: Calculator Required (5 min)

**Problem:** Find the arc length of y = sin(x) from x = 0 to x = pi.

*Solution:*
1. **Derivative:** f'(x) = cos(x)
2. **Integrand:** sqrt(1 + cos^2(x))
3. **Arc length:**
   L = integral from 0 to pi of sqrt(1 + cos^2(x)) dx

This is an elliptic integral - no elementary antiderivative exists!

Using calculator: L approximately equals 3.820

**For Comparison:**
- Horizontal distance from 0 to pi: pi approximately equals 3.14
- Arc length: approximately 3.82
- The sine curve "meanders" about 22% longer than the straight-line distance

### Guided Practice (5 min)

**Problem 1 (Setup Only):**
Set up but do not evaluate the integral for the arc length of y = e^x from x = 0 to x = 1.

*Solution:*
- f'(x) = e^x
- L = integral from 0 to 1 of sqrt(1 + e^(2x)) dx

(This also requires numerical evaluation: L approximately equals 2.00)

**Problem 2 (Evaluate):**
Find the arc length of y = (x^2)/2 - (1/4)ln(x) from x = 1 to x = e.

*Solution:*
1. f'(x) = x - 1/(4x)
2. [f'(x)]^2 = x^2 - 1/2 + 1/(16x^2)
3. 1 + [f'(x)]^2 = x^2 + 1/2 + 1/(16x^2) = (x + 1/(4x))^2
4. sqrt(...) = x + 1/(4x) (positive for x > 0)
5. L = integral from 1 to e of (x + 1/(4x)) dx
   = [x^2/2 + (1/4)ln(x)] from 1 to e
   = (e^2/2 + 1/4) - (1/2 + 0)
   = e^2/2 - 1/4 approximately equals 3.44

### Closing (4 min)

**Summary:**
- Arc length formula: L = integral of sqrt(1 + (dy/dx)^2) dx
- Derived from Pythagorean theorem on infinitesimal segments
- Most arc length integrals require numerical evaluation
- The key AP skill is correct SETUP

**What Makes an Arc Length Integral "Nice":**
The expression 1 + (f')^2 must be a perfect square. This requires f to be carefully constructed (or given in a designed problem).

**Exit Ticket:**
Set up the arc length integral for y = x^3 from x = 0 to x = 2. (Do not evaluate.)

*Answer:* f'(x) = 3x^2, so L = integral from 0 to 2 of sqrt(1 + 9x^4) dx

**BC Connection:**
In Unit 9, we'll see arc length for parametric curves:
L = integral of sqrt((dx/dt)^2 + (dy/dt)^2) dt

This is the natural generalization when both x and y depend on a parameter t.

---

## Differentiation Strategies

### For students who need more support:
- Provide the formula on a reference card
- Walk through the Pythagorean theorem derivation with concrete numbers first
- Practice finding f'(x) and computing 1 + [f'(x)]^2 before integrating
- Focus on setup, which is the main tested skill

### For advanced students:
- Challenge: Derive the arc length of a circle (circumference) using this formula
- Explore: For what functions f(x) does 1 + (f')^2 simplify to a perfect square?
- Investigate: Catenary (y = cosh(x)) - the curve that makes arc length simple
- Extension: Surface area of revolution (similar derivation, different formula)

---

## Common Misconceptions to Address

1. **"Arc length = integral of f(x)"**
   - Address: That gives AREA, not length. Arc length involves sqrt(1 + (f')^2), which accounts for how "steep" the curve is at each point.

2. **"Just integrate |f'(x)|"**
   - Address: Counterexample: for y = x, |f'| = 1, but arc length from 0 to 1 is sqrt(2), not 1. The correct formula is sqrt(1 + (f')^2), not just |f'|.

3. **"All arc length integrals can be evaluated exactly"**
   - Address: Most cannot! Even simple functions like y = x^2 and y = sin(x) lead to integrals with no elementary antiderivative. Calculator skills are essential.

4. **"The formula has a typo - why square and then take square root?"**
   - Address: The sqrt of a sum of squares comes from the Pythagorean theorem. It's NOT (sqrt(dx))^2 + (sqrt(dy))^2; it's sqrt(dx^2 + dy^2).

5. **"Arc length can be less than horizontal distance"**
   - Address: Impossible! By Pythagorean theorem, sqrt(dx^2 + dy^2) >= sqrt(dx^2) = |dx|. A curve can never be shorter than the straight-line path.

6. **"Use dy/dx even when curve is given as x = g(y)"**
   - Address: If x = g(y), use the dy form: integral of sqrt(1 + (g')^2) dy. Match the derivative to the integration variable.

---

## Assessment Notes

- Focus on correct formula setup - this is the primary AP skill
- Watch for students forgetting to square f'(x) or forgetting the sqrt
- The "perfect square" recognition skill (Example 1) separates fluent students from struggling ones
- Note who can handle both dx and dy formulations
- Exit ticket tests basic setup; most students should get this correct
- Common errors: using f instead of f', forgetting the "+1", wrong limits

---

## Connections

**Prior knowledge:**
- Pythagorean theorem (geometry)
- Derivative computation (Unit 2)
- Definite integral evaluation (Unit 6)
- Numerical integration (calculator skills)

**Future connections:**
- Parametric arc length (Unit 9): L = integral of sqrt((dx/dt)^2 + (dy/dt)^2) dt
- Polar arc length (Unit 9): Similar formula with r and dr/d(theta)
- Vector-valued function arc length (Unit 9)
- Surface area of revolution (optional extension)

---

## Rule of Four Emphasis

**Graphical:** Visualize the curve with polygonal approximations refining toward the actual length. Show the Pythagorean triangle on a zoomed-in portion.

**Numerical:** Compute arc length numerically when exact evaluation isn't possible. Compare arc length to horizontal distance.

**Analytical:** Derive the formula from Pythagorean theorem. Set up and (when possible) evaluate arc length integrals.

**Verbal:** "The arc length is computed by breaking the curve into infinitely many tiny pieces. Each piece is approximately a straight line segment whose length, by the Pythagorean theorem, is sqrt(dx^2 + dy^2). Integrating these infinitesimal lengths gives the total arc length."

---

## Calculator Tips

For arc length problems requiring numerical evaluation:
- On TI calculators: fnInt(sqrt(1 + (derivative)^2), X, a, b)
- On Desmos: Define f(x), then compute integral of sqrt(1 + (f'(x))^2) from a to b
- Round to 3 decimal places unless otherwise specified
- Always verify: arc length should be >= |b - a| (the horizontal distance)

---

## Historical Note

The arc length problem motivated much of the early development of calculus. Finding the length of curves like the parabola and ellipse was a major challenge in the 17th century. The ellipse arc length integral is called an "elliptic integral" and led to a whole branch of mathematics!
