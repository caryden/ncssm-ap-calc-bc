# Lesson Plan: Definite Integrals and Notation

## Class 31 | Unit 6: Integration and Accumulation of Change

---

## Overview

This session formalizes the definite integral as the limit of Riemann sums and introduces integral notation. Students will understand that the integral symbol represents "sum," learn to read and write integral notation correctly, and interpret definite integrals as signed area. Properties of definite integrals are introduced to enable algebraic manipulation.

**CED Topic:** 6.3 - Riemann Sums, Summation Notation, and Definite Integral Notation

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define the definite integral as the limit of Riemann sums: $\int_a^b f(x)\,dx = \lim_{n \to \infty} \sum_{i=1}^{n} f(x_i) \Delta x$
2. Identify and explain each component of integral notation: bounds, integrand, and differential
3. Interpret the definite integral as signed (net) area between the curve and x-axis
4. Apply properties of definite integrals (additivity, constant multiple, sum/difference)
5. Evaluate simple definite integrals using geometric area formulas

---

## Prior Knowledge Required

- Riemann sums (left, right, midpoint) from Class 30
- Summation notation
- Limit concept from Unit 1
- Area formulas for basic shapes (triangle, rectangle, semicircle)

---

## Materials Needed

- Presentation slides with integral notation breakdown
- D3 visualization showing Riemann sums approaching integral
- Graphing calculators
- Area-geometry worksheet

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Recall from Yesterday**

Quick review question:
> What happens to our Riemann sum approximation as we use more and more rectangles?

**Student response:** The approximation gets better - it approaches the "true" area.

**Today's question:** How do we write the exact area mathematically? We need new notation for "infinitely many infinitely thin rectangles."

### From Riemann Sum to Definite Integral (12 min)

**The Limiting Process**

Start with the Riemann sum: $\sum_{i=1}^{n} f(x_i) \Delta x$

As $n \to \infty$:
- $\Delta x = \frac{b-a}{n} \to 0$
- The number of rectangles becomes infinite
- Each rectangle becomes infinitely thin

**The Definite Integral**

$$\int_a^b f(x)\,dx = \lim_{n \to \infty} \sum_{i=1}^{n} f(x_i) \Delta x$$

**Component-by-Component Analysis:**

| Symbol | Meaning | Origin |
|--------|---------|--------|
| $\int$ | "Sum" (elongated S) | Represents the summation Σ in the limit |
| $a$ | Lower bound | Where we start summing |
| $b$ | Upper bound | Where we stop summing |
| $f(x)$ | Integrand | The function being integrated (height) |
| $dx$ | Differential | Infinitesimal width, replacing Δx |

**Key insight from 3Blue1Brown:**
> "∫ₐᵇ f(x)dx means: chop [a,b] into tiny pieces of width dx, multiply each f(x) by that tiny width, and add them all up."

**Visualization:** Show animation of Σ notation morphing into ∫ notation as n → ∞.

### Interpreting the Definite Integral (10 min)

**Geometric Meaning: Signed Area**

For $f(x) \geq 0$ on $[a,b]$: $\int_a^b f(x)\,dx$ = area under the curve above the x-axis

**But what about negative function values?**

When $f(x) < 0$: The "area" contributes negatively.

$$\int_a^b f(x)\,dx = \text{(Area above x-axis)} - \text{(Area below x-axis)}$$

This is called **signed area** or **net area**.

**Interactive Visualization:**
- Show $f(x) = x$ on $[-1, 2]$
- Shade positive region (above x-axis) in blue
- Shade negative region (below x-axis) in red
- Calculate: $\int_{-1}^2 x\,dx = \frac{1}{2}(2)(2) - \frac{1}{2}(1)(1) = 2 - 0.5 = 1.5$

**Physical Interpretation:**

If $f(t)$ = velocity, then $\int_a^b f(t)\,dt$ = displacement (not total distance!)
- Positive velocity → moving forward (positive contribution)
- Negative velocity → moving backward (negative contribution)

### Properties of Definite Integrals (10 min)

**Property 1: Additivity over Intervals**
$$\int_a^c f(x)\,dx = \int_a^b f(x)\,dx + \int_b^c f(x)\,dx$$

**Property 2: Constant Multiple**
$$\int_a^b c \cdot f(x)\,dx = c \int_a^b f(x)\,dx$$

**Property 3: Sum/Difference**
$$\int_a^b [f(x) \pm g(x)]\,dx = \int_a^b f(x)\,dx \pm \int_a^b g(x)\,dx$$

**Property 4: Reversed Bounds**
$$\int_a^b f(x)\,dx = -\int_b^a f(x)\,dx$$

**Property 5: Same Bounds**
$$\int_a^a f(x)\,dx = 0$$

**Demonstration:** If $\int_0^5 f(x)\,dx = 7$ and $\int_5^8 f(x)\,dx = 4$, find $\int_0^8 f(x)\,dx$.

Solution: By additivity, $\int_0^8 f(x)\,dx = 7 + 4 = 11$

### Practice with Notation and Geometry (8 min)

**Example 1: Read the Integral**

Write in words: $\int_0^3 (2x+1)\,dx$

"The integral from 0 to 3 of (2x + 1) with respect to x."

**Example 2: Evaluate Using Geometry**

Evaluate $\int_0^3 (2x+1)\,dx$ using area formulas.

The graph of $y = 2x + 1$ from $x = 0$ to $x = 3$ is a trapezoid:
- At $x = 0$: $y = 1$
- At $x = 3$: $y = 7$
- Base = 3

Area of trapezoid = $\frac{1}{2}(b_1 + b_2) \cdot h = \frac{1}{2}(1 + 7)(3) = 12$

So $\int_0^3 (2x+1)\,dx = 12$

**Example 3: Signed Area**

Evaluate $\int_0^{2\pi} \sin(x)\,dx$ using geometry.

- From $0$ to $\pi$: area above x-axis = 2 (half period of sine wave)
- From $\pi$ to $2\pi$: area below x-axis = 2 (negative contribution)
- Net area: $2 - 2 = 0$

**Key insight:** The integral is zero because the positive and negative areas exactly cancel.

### Closing (5 min)

**Exit Ticket:**

Given the graph of $f(x)$ with:
- A triangular region above the x-axis from $x = 0$ to $x = 4$ with area 6
- A triangular region below the x-axis from $x = 4$ to $x = 7$ with area 3

Find $\int_0^7 f(x)\,dx$.

Answer: $6 - 3 = 3$ (signed area)

**Preview:** Tomorrow we discover the Fundamental Theorem of Calculus - the connection between differentiation and integration!

---

## Differentiation Strategies

### For students who need more support:
- Provide a "notation guide" card with all integral components labeled
- Practice reading integrals aloud before computing
- Start geometric evaluation with simple shapes (rectangles, triangles)
- Use color-coding for positive vs. negative regions consistently
- Extra practice converting between summation and integral notation

### For advanced students:
- Explore: What conditions ensure $\int_a^b f(x)\,dx$ exists? (continuity is sufficient)
- Challenge: Prove that the variable of integration is a "dummy variable"
- Investigate: Why does reversing bounds negate the integral?
- Connect to physics: When is displacement equal to total distance?

---

## Common Misconceptions to Address

1. **"The integral gives area, always positive"**
   - Address: Definite integrals give SIGNED area. When f(x) < 0, the area contributes negatively. Use physical examples: displacement can be negative even when area looks positive.

2. **"dx is just notation with no meaning"**
   - Address: dx represents the infinitesimal width of each "slice" - the limiting form of Δx. It tells us which variable we're integrating with respect to, which matters for substitution later.

3. **"Can drop the dx"**
   - Address: Model correct notation consistently. Writing ∫f(x) instead of ∫f(x)dx is incomplete and will cause problems with substitution techniques.

4. **"∫ₐᵇ = ∫ᵦₐ"**
   - Address: Order matters! $\int_a^b f(x)\,dx = -\int_b^a f(x)\,dx$. Think of "direction" - integrating from a to b is the opposite direction of b to a.

5. **"Variable of integration matters"**
   - Address: $\int_0^1 f(x)\,dx = \int_0^1 f(t)\,dt = \int_0^1 f(u)\,du$. The variable is a "dummy" - it gets "integrated out."

---

## Assessment Notes

- Check that students can correctly parse integral notation components
- Monitor signed area calculations - many students initially forget the negative
- Exit ticket assesses geometric interpretation, a key AP skill
- Note confusion between definite and indefinite integrals (preview)

---

## Connections

**Prior knowledge:**
- Riemann sums and approximations (Class 30)
- Limit concept (Unit 1)
- Summation notation
- Geometric area formulas

**Future connections:**
- Fundamental Theorem of Calculus Part 1 (Class 32)
- FTC Part 2 for evaluation (Class 33)
- Net change applications (Unit 8)
- Integral notation for all future integration topics

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Shaded regions, signed area interpretation |
| **Numerical** | Riemann sums converging to integral value |
| **Analytical** | $\int_a^b f(x)\,dx = \lim_{n \to \infty} \sum f(x_i)\Delta x$ |
| **Verbal** | "The integral from a to b of f(x) dx represents the signed area..." |

---

## Notation Reference

**Reading Integrals Aloud:**

$\int_0^5 x^2 \, dx$

"The integral from zero to five of x squared, dx"
or
"The integral of x squared from zero to five"

**Important:** Always include both bounds and the differential when writing definite integrals.
