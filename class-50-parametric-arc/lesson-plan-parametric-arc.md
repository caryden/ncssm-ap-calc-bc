# Lesson Plan: Parametric Arc Length

## Class 50 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)

---

## Overview

This session derives and applies the arc length formula for parametric curves. Building on yesterday's parametric derivatives, students will see how the Pythagorean theorem on infinitesimal displacements leads to the integral formula. The physics interpretation - arc length as the integral of speed - provides powerful intuition for this fundamental calculation.

**CED Topic:** 9.3 - Arc Lengths of Curves Given by Parametric Equations

---

## Learning Objectives

By the end of this class, students will be able to:

1. Derive the parametric arc length formula from the Pythagorean theorem
2. Interpret the integrand sqrt((dx/dt)^2 + (dy/dt)^2) as speed
3. Set up arc length integrals for parametric curves with appropriate bounds
4. Evaluate arc length integrals for curves with elementary antiderivatives
5. Use technology to approximate arc length when analytical methods fail
6. Connect arc length to total distance traveled along a path

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators with numerical integration
- Student devices for Desmos exploration
- Arc length formula reference card (optional)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A Practical Question**

> "A roller coaster follows the path x = t - sin(t), y = 1 - cos(t) for one loop. How much track do we need?"

This isn't about displacement (straight line from start to end) - we need the actual length of the curved path.

**Challenge:** The curve isn't y = f(x), so our Cartesian arc length formula doesn't directly apply.

**Preview:** The Pythagorean theorem will save us!

### Review: Cartesian Arc Length (5 min)

**The Familiar Formula (from Unit 8):**

For y = f(x) from x = a to x = b:
$$L = \int_a^b \sqrt{1 + \left(\frac{dy}{dx}\right)^2}\, dx$$

**Derivation Reminder:**
- Small piece of curve: ds = sqrt(dx^2 + dy^2)
- Factor out dx: ds = sqrt(1 + (dy/dx)^2) dx
- Integrate to get total length

**Limitation:** Requires y as a function of x. Can't handle:
- Vertical tangents (dy/dx undefined)
- Curves that double back
- Circles and other non-function curves

**What We Need:** A formula that works for ANY parametric curve!

### Deriving the Parametric Arc Length Formula (15 min)

**The Setup:**
- Curve given by x = f(t), y = g(t) for t in [a, b]
- Goal: Find the total length of the curve

**The Infinitesimal Approach:**

1. Consider a tiny change in parameter: dt
2. This produces position changes:
   - dx = (dx/dt) dt
   - dy = (dy/dt) dt

3. By the Pythagorean theorem, the infinitesimal arc length is:
$$ds = \sqrt{dx^2 + dy^2}$$

**The Key Algebraic Step:**
$$ds = \sqrt{\left(\frac{dx}{dt}\right)^2 dt^2 + \left(\frac{dy}{dt}\right)^2 dt^2}$$
$$ds = \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2}\, dt$$

**The Formula:**
$$L = \int_a^b \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2}\, dt$$

**Physics Interpretation:**
- sqrt((dx/dt)^2 + (dy/dt)^2) = SPEED
- The integrand is how fast the point is moving at time t
- Arc length = integral of speed = total distance traveled
- This connects to "distance = rate times time" in infinitesimal form

**Visual Reinforcement:** Show animation of:
- Curve approximated by line segments
- As number of segments increases, approximation improves
- Sum of segment lengths approaches the integral

### Example 1: Circle - Verify the Formula (5 min)

**Problem:** Find the circumference of a circle of radius r.

**Parametrization:** x = r cos(t), y = r sin(t), t in [0, 2pi]

**Derivatives:**
- dx/dt = -r sin(t)
- dy/dt = r cos(t)

**Sum of squares:**
- (dx/dt)^2 + (dy/dt)^2 = r^2 sin^2(t) + r^2 cos^2(t) = r^2

**Integrand:**
- sqrt(r^2) = r (constant speed!)

**Arc length:**
$$L = \int_0^{2\pi} r\, dt = r \cdot t \Big|_0^{2\pi} = 2\pi r$$

**Success!** We derived the circumference formula.

**Observation:** Moving at constant speed r around the circle.

### Example 2: Cycloid - A Classic Curve (10 min)

**Problem:** Find the length of one arch of a cycloid.

**Parametrization:** x = t - sin(t), y = 1 - cos(t), t in [0, 2pi]

(This is the path traced by a point on a rolling wheel of radius 1.)

**Derivatives:**
- dx/dt = 1 - cos(t)
- dy/dt = sin(t)

**Sum of squares:**
$$\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2 = (1 - \cos t)^2 + \sin^2 t$$
$$= 1 - 2\cos t + \cos^2 t + \sin^2 t$$
$$= 2 - 2\cos t = 2(1 - \cos t)$$

**Apply trig identity:** 1 - cos(t) = 2sin^2(t/2)

**Integrand:**
$$\sqrt{2 \cdot 2\sin^2(t/2)} = \sqrt{4\sin^2(t/2)} = 2|\sin(t/2)|$$

For t in [0, 2pi], sin(t/2) >= 0, so |sin(t/2)| = sin(t/2).

**Arc length:**
$$L = \int_0^{2\pi} 2\sin(t/2)\, dt$$

**Integration:** Let u = t/2, du = dt/2
$$L = 4\int_0^{\pi} \sin(u)\, du = 4[-\cos(u)]_0^{\pi} = 4[-(-1) - (-1)] = 4(2) = 8$$

**Result:** One arch of a cycloid (for a wheel of radius 1) has length **8**.

**Observation:** This is exactly 4 times the diameter - a remarkable fact!

### Example 3: Calculator-Required Arc Length (5 min)

**Problem:** Find the arc length of x = t^2, y = t^3, from t = 0 to t = 2.

**Derivatives:**
- dx/dt = 2t
- dy/dt = 3t^2

**Integrand:**
$$\sqrt{4t^2 + 9t^4} = \sqrt{t^2(4 + 9t^2)} = t\sqrt{4 + 9t^2}$$

(for t >= 0)

**Integral:**
$$L = \int_0^2 t\sqrt{4 + 9t^2}\, dt$$

**Analytical approach:** Substitution u = 4 + 9t^2 works!
- du = 18t dt, so t dt = du/18
- When t = 0, u = 4; when t = 2, u = 40
- L = (1/18) integral of sqrt(u) du from 4 to 40
- L = (1/18)(2/3)u^(3/2) from 4 to 40
- L = (1/27)[40^(3/2) - 4^(3/2)]
- L = (1/27)[40*sqrt(40) - 8] = (1/27)[80*sqrt(10) - 8]

**Calculator verification:** L approximately 9.073

**Key Point:** Many arc length integrals require numerical methods. On the AP exam, you may be asked to "set up but not evaluate" such integrals.

### Closing (5 min)

**Summary:**
- Arc length formula comes from Pythagorean theorem on infinitesimals
- Formula: L = integral of sqrt((dx/dt)^2 + (dy/dt)^2) dt
- Physics interpretation: Arc length = integral of speed
- Bounds are t-values (parameter bounds), not x or y values
- Many integrals require calculator/numerical methods

**Exit Ticket:**
Set up (don't evaluate) the arc length integral for x = e^t, y = e^(-t), from t = 0 to t = 1.

Answer: L = integral from 0 to 1 of sqrt(e^(2t) + e^(-2t)) dt

**Preview:** Tomorrow we package x(t) and y(t) together using vectors: r(t) = <x(t), y(t)>. This unified notation connects calculus to physics elegantly.

---

## Differentiation Strategies

### For students who need more support:
- Emphasize the Pythagorean theorem connection - draw the dx, dy, ds triangle
- Use the "speed" interpretation: arc length = integral of how fast you're going
- Provide step-by-step templates for setting up integrals
- Start with curves where the integral simplifies nicely (circles)
- Use graphing calculators to visualize parametric curves

### For advanced students:
- Challenge: Find arc length of x = cos^3(t), y = sin^3(t) (astroid)
- Explore: Why does the cycloid have length 8? What's special about rolling?
- Investigate: Arc length parametrization (parametrize by s instead of t)
- Research: Curves of constant speed vs. variable speed

---

## Common Misconceptions to Address

1. **"Arc length = integral of dy/dx"**
   - Address: Slope tells direction, not length. Length uses Pythagorean theorem on components. Show the ds triangle.

2. **"Just use L = integral of sqrt(1 + (dy/dx)^2) dx"**
   - Address: That formula requires y as a function of x. Parametric formula is more general and handles any curve.

3. **"The formula is too complicated to remember"**
   - Address: It's just Pythagorean theorem! ds^2 = dx^2 + dy^2, so ds = sqrt((dx/dt)^2 + (dy/dt)^2) dt.

4. **"Any t interval works"**
   - Address: The interval must trace the desired portion of the curve exactly once. Curves can retrace themselves.

5. **"Arc length depends on the parametrization"**
   - Address: Arc length is a geometric property - same curve gives same length regardless of how it's parametrized (though the integral may look different).

---

## Assessment Notes

- Monitor understanding during the derivation - can students explain the Pythagorean theorem step?
- Watch for proper squaring and square rooting of derivatives
- Check that students identify correct bounds from the problem context
- Exit ticket reveals if students can translate problem to integral form
- Note comfort level with calculator vs. analytical integration

---

## Connections

**Prior knowledge:**
- Pythagorean theorem
- Parametric derivatives (Class 49)
- Integration techniques (Unit 6)
- Cartesian arc length (Unit 8)

**Future connections:**
- Speed in vector-valued functions (Class 51)
- Distance traveled in motion problems (Class 52)
- Arc length in polar coordinates (derivable but rarely tested)
- AP FRQ problems involving arc length

---

## Notation Notes

**Common notations:**
- ds = infinitesimal arc length element
- |v(t)| = speed = sqrt((dx/dt)^2 + (dy/dt)^2)
- L = total arc length

**Important distinctions:**
- Arc length (total path length) vs. displacement (straight-line distance)
- Speed (scalar, always positive) vs. velocity (vector, has direction)
- Parameter bounds (t values) vs. coordinate bounds (x or y values)

**AP Exam Notes:**
- Must know the formula and be able to set up integrals
- Calculator-active questions often ask for numerical arc length
- "Set up but do not evaluate" is common for complex integrands
