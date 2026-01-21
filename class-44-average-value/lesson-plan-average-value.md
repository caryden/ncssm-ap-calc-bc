# Lesson Plan: Average Value and Accumulation Functions

## Class 44 | Unit 8: Applications of Integration

---

## Overview

This session introduces two powerful applications of definite integrals: finding the average value of a function over an interval and using accumulation functions to model real-world contexts. Students will discover that the average value formula emerges naturally from extending the discrete average concept to continuous functions, and that accumulation functions provide a dynamic way to track running totals that connects directly to the Fundamental Theorem of Calculus.

**CED Topics:** 8.1 - Finding the Average Value of a Function on an Interval; 8.3 - Using Accumulation Functions and Definite Integrals in Applied Contexts

---

## Learning Objectives

By the end of this class, students will be able to:

1. Calculate the average value of a continuous function over a closed interval using the formula f_avg = (1/(b-a)) * integral from a to b of f(x)dx
2. Interpret the average value geometrically as the height of a rectangle with equal area to the region under the curve
3. State and apply the Mean Value Theorem for Integrals
4. Define and evaluate accumulation functions F(x) = integral from a to x of f(t)dt
5. Apply the Fundamental Theorem of Calculus to find derivatives of accumulation functions
6. Interpret accumulation functions in applied contexts with appropriate units

---

## Materials Needed

- Presentation slides with D3 visualizations (equal-area rectangle, accumulation graph)
- Graphing calculators
- Student devices for Desmos exploration
- Handout with application problems (velocity/distance, marginal cost/total cost, rate/total)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Motivating Scenario:**
Present the problem: "A car's velocity varies according to v(t) = 60 - 10sin(t) mph over a 2-hour trip. What was the average velocity?"

Students may guess 60 mph (the constant term), but point out that the oscillating term affects the answer. Connect to the familiar discrete average formula: (y1 + y2 + ... + yn)/n. Ask: "How do we average infinitely many values?"

**Today's Goal:** Develop a calculus formula for continuous averages and explore functions that track running totals.

### From Discrete to Continuous Average (10 min)

**Building the Formula:**

1. **Discrete case:** Average of {y1, y2, ..., yn} = (sum of yi) / n

2. **Transition to continuous:**
   - Sample at n points evenly spaced on [a, b]
   - Average approximately equals [f(x1) + f(x2) + ... + f(xn)] / n
   - Each subinterval has width delta x = (b-a)/n, so n = (b-a)/delta x

3. **Take the limit:**
   - Average = lim(n to infinity) [f(x1) + ... + f(xn)] * (delta x / (b-a))
   - = (1/(b-a)) * lim(n to infinity) sum of f(xi) * delta x
   - = (1/(b-a)) * integral from a to b of f(x)dx

**The Formula:**
$$f_{avg} = \frac{1}{b-a} \int_a^b f(x)\,dx$$

**Verbal interpretation:** The integral gives total accumulation; dividing by the interval length gives the average rate.

### Geometric Interpretation (8 min)

**The Equal-Area Rectangle:**

*Visualization:* Show f(x) = x^2 on [0, 3].
- Calculate: integral = 9, interval length = 3, f_avg = 3
- Draw horizontal line at y = 3
- Observe: The rectangle with height 3 and width 3 has area 9 (same as under the curve!)
- The "excess" area above the line equals the "deficit" below

**Mean Value Theorem for Integrals:**
If f is continuous on [a, b], there exists c in [a, b] such that f(c) = f_avg.

*Application:* For f(x) = x^2 on [0, 3], where does f(c) = 3?
- Solve c^2 = 3 to get c = sqrt(3) approximately equal to 1.73, which is in [0, 3]
- The function actually achieves its average value at some point!

**Worked Example:**
Find the average value of f(x) = sin(x) on [0, pi].
- f_avg = (1/pi) * integral from 0 to pi of sin(x)dx
- = (1/pi) * [-cos(x)] from 0 to pi
- = (1/pi) * [-(-1) - (-1)] = 2/pi approximately equal to 0.637

*Interpretation:* If you replaced the sine curve with a horizontal line at height 2/pi, you'd get the same total area.

### Accumulation Functions (12 min)

**Definition:**
$$F(x) = \int_a^x f(t)\,dt$$

This tells us: "How much has accumulated from starting point a to current point x?"

**Connection to FTC:**
If F(x) = integral from a to x of f(t)dt, then F'(x) = f(x).
The rate of accumulation equals the integrand.

**Example 1: Distance from Velocity**

Given velocity v(t) = 3t^2 (m/s):
- Distance traveled from t = 0 to t = x: D(x) = integral from 0 to x of 3t^2 dt = t^3 |_0^x = x^3
- D(2) = 8 meters: after 2 seconds, 8 meters traveled
- D'(x) = 3x^2 = v(x): rate of distance accumulation = velocity

**Example 2: Total Cost from Marginal Cost**

Given marginal cost C'(x) = 10 + 0.1x (dollars per item):
- Total variable cost for producing x items: C(x) = integral from 0 to x of (10 + 0.1t)dt = 10x + 0.05x^2
- C(100) = $1500: variable cost for 100 items
- Verify: C'(x) = 10 + 0.1x (matches the marginal cost)

**Example 3: FTC with Composed Functions**

If F(x) = integral from 2 to x^3 of sqrt(1 + t^2) dt, find F'(x).

Apply chain rule: F'(x) = sqrt(1 + (x^3)^2) * 3x^2 = 3x^2 * sqrt(1 + x^6)

### Guided Practice (10 min)

**Problem 1: Average Value**
Temperature varies as T(t) = 70 + 20sin(pi*t/12) degrees over 24 hours.
Find the average temperature.

Solution:
- T_avg = (1/24) * integral from 0 to 24 of [70 + 20sin(pi*t/12)]dt
- = (1/24) * [70t - (240/pi)cos(pi*t/12)] from 0 to 24
- = (1/24) * [1680 - (240/pi)(1) - (0 - 240/pi)]
- = (1/24) * 1680 = 70 degrees

*Interpretation:* The average temperature is 70 degrees (the oscillation averages out!)

**Problem 2: Accumulation Function**
Water flows into a tank at rate r(t) = 4 - t gallons per minute.
- Write an accumulation function for total water added from t = 0 to t = x
- When is the tank filling fastest? When does it stop filling?

Solution:
- W(x) = integral from 0 to x of (4-t)dt = 4x - x^2/2
- Tank fills fastest when r(t) is maximum: at t = 0 (rate = 4 gal/min)
- Stops filling when r(t) = 0: at t = 4 minutes

**Problem 3: FTC Application (AP Style)**
If F(x) = integral from 1 to x^2 of cos(t^3) dt, find F'(2).

Solution:
- F'(x) = cos((x^2)^3) * 2x = 2x*cos(x^6)
- F'(2) = 4*cos(64)

### Closing (5 min)

**Summary:**
- Average value: f_avg = (1/(b-a)) * integral from a to b of f(x)dx
- Geometric meaning: Height of equal-area rectangle
- Accumulation function: F(x) = integral from a to x of f(t)dt tracks running total
- FTC connection: F'(x) = f(x) (rate of accumulation = integrand)

**Exit Ticket:**
Find the average value of f(x) = x^3 on [0, 2].
(Answer: f_avg = (1/2) * [x^4/4] from 0 to 2 = (1/2)(4) = 2)

**Preview:** Tomorrow we use integrals to find areas between curves - a generalization of area under a single curve.

---

## Differentiation Strategies

### For students who need more support:
- Provide the average value formula on a reference card
- Start with linear functions where the average is simply (f(a) + f(b))/2 as a checkpoint
- Use physical contexts (average speed, average temperature) to build intuition
- Break accumulation function problems into steps: find the antiderivative first, then apply bounds

### For advanced students:
- Challenge: Prove that for a linear function f(x) = mx + b, the calculus formula gives the same result as (f(a) + f(b))/2
- Explore: For what functions does f_avg = (f(a) + f(b))/2? (Answer: only linear)
- Investigate: How does the average value of sin(nx) on [0, 2pi] depend on n?
- Extension: If F(x) = integral from g(x) to h(x) of f(t)dt, what is F'(x)?

---

## Common Misconceptions to Address

1. **"Average = (f(a) + f(b))/2"**
   - Address: This only works for LINEAR functions. Show counterexample with f(x) = x^2 on [0, 2]: calculus gives 4/3, but (0+4)/2 = 2.

2. **"Average value equals the integral"**
   - Address: The integral gives TOTAL accumulation. Must divide by interval length. Units help: integral of velocity is distance, but average velocity is still velocity.

3. **"Accumulation function is just the antiderivative"**
   - Address: F(x) = integral from a to x is a SPECIFIC antiderivative with F(a) = 0. General antiderivatives differ by a constant.

4. **"F'(x) = f(x) always, no chain rule needed"**
   - Address: If the upper limit is g(x) instead of just x, chain rule applies: d/dx[integral from a to g(x) of f(t)dt] = f(g(x)) * g'(x).

5. **"Average value must be positive"**
   - Address: If f(x) is mostly negative on [a, b], the average value is negative. This makes sense: "on average, below zero."

---

## Assessment Notes

- Monitor student understanding during the discrete-to-continuous derivation (check for recognition of Riemann sum structure)
- The equal-area rectangle visualization often produces "aha" moments; note who engages
- Accumulation function problems reveal whether students truly understand FTC
- Exit ticket assesses basic average value calculation; collect and review
- Common error: forgetting to divide by (b-a); watch for this in practice problems

---

## Connections

**Prior knowledge:**
- Definite integral evaluation (Unit 6)
- Fundamental Theorem of Calculus (Unit 6)
- Chain rule (Unit 2)
- Riemann sums as approximations (Unit 6)

**Future connections:**
- Area between curves (Class 45) - average value of difference functions
- Volumes of revolution (Class 47) - average cross-sectional area
- Parametric arc length (Unit 9) - accumulation of infinitesimal lengths
- Logistic growth and differential equations (Unit 7) - accumulation in population models
- AP Exam free response - average value appears frequently in context problems

---

## Notation Notes

**Units awareness:**
- If f(t) has units of [quantity/time] and t has units of [time]
- Then integral from a to b of f(t)dt has units of [quantity]
- And f_avg = integral/(b-a) has units of [quantity/time] (same as f)

**Example:** If v(t) is in mph and t is in hours:
- integral of v dt is in miles (total distance)
- v_avg is in mph (average velocity)

This unit analysis helps verify formulas and interpretations.
