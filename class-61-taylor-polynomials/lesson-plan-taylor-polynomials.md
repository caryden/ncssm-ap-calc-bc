# Lesson Plan: Taylor Polynomials

## Class 61 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This session introduces Taylor polynomials as polynomial approximations to functions. Students will understand that a Taylor polynomial matches a function and its first $n$ derivatives at a center point, leading to increasingly accurate approximations near that point. The factorial coefficients arise naturally from the requirement to match higher derivatives. This lesson bridges the convergence tests of earlier classes with the powerful application of function approximation.

**CED Topic:** 10.11 - Finding Taylor Polynomial Approximations of Functions

---

## Learning Objectives

By the end of this class, students will be able to:

1. Explain why polynomial approximations are useful for transcendental functions
2. Construct Taylor polynomials by matching derivatives at the center point
3. Derive the Taylor polynomial formula including the factorial denominators
4. Compute Taylor polynomials of specified degree for common functions
5. Distinguish between Taylor polynomials (centered at $a$) and Maclaurin polynomials (centered at 0)

---

## Materials Needed

- Presentation slides with D3 visualizations (Taylor polynomial grapher)
- Graphing calculators
- Student devices for Desmos exploration
- Derivative table worksheet

---

## Class Structure (50 minutes)

### Opening Challenge (5 min)

**Problem:** Calculate $\cos(0.1)$ without a calculator.

Pause for thought: This is hard! Cosine is a transcendental function—no finite algebraic formula.

**But polynomials are easy:** They only require addition, subtraction, and multiplication.

**Idea:** What if we could approximate $\cos(x)$ with a polynomial?

**Today's Goal:** Find the polynomial that best approximates a function near a point.

### Motivation: Why Polynomials? (5 min)

**Transcendental Functions Are Hard:**
- $\cos(x)$, $e^x$, $\ln(x)$—can't compute exactly with basic operations
- Calculators and computers use polynomial approximations!

**Polynomials Are Easy:**
- Only need $+$, $-$, $\times$
- Easy to evaluate, differentiate, integrate

**The Goal:**
Find polynomial $P_n(x)$ that approximates $f(x)$ near $x = a$.

Strategy: Make $P_n$ and $f$ agree at $a$, and make their derivatives agree too!

### Building Taylor Polynomials (15 min)

**Degree 0: Match the Value**

Want $P_0(a) = f(a)$.

Solution: $P_0(x) = f(a)$ — a constant function.

This matches the value but ignores all slope and curvature information.

**Degree 1: Match Value and Slope**

Want $P_1(a) = f(a)$ and $P_1'(a) = f'(a)$.

Solution: $P_1(x) = f(a) + f'(a)(x-a)$

This is the tangent line approximation (linearization from Unit 4)!

**Degree 2: Match Value, Slope, and Curvature**

Want $P_2(a) = f(a)$, $P_2'(a) = f'(a)$, $P_2''(a) = f''(a)$.

Try: $P_2(x) = f(a) + f'(a)(x-a) + c(x-a)^2$

Then: $P_2''(x) = 2c$

So: $2c = f''(a)$, meaning $c = f''(a)/2$

Solution: $P_2(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2}(x-a)^2$

**The Pattern: Why Factorials?**

For the term $(x-a)^n$ with coefficient $c_n$:
- Differentiating $n$ times gives $n! \cdot c_n$
- We want this to equal $f^{(n)}(a)$
- So $c_n = f^{(n)}(a)/n!$

**The Taylor Polynomial Formula**

$$P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$$

$$= f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \cdots + \frac{f^{(n)}(a)}{n!}(x-a)^n$$

**Maclaurin Polynomial**

When $a = 0$:
$$P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(0)}{k!}x^k$$

### Worked Examples (15 min)

**Example 1: $e^x$ centered at $a = 0$ (Maclaurin)**

For $f(x) = e^x$: $f^{(n)}(x) = e^x$ for all $n$

At $x = 0$: $f^{(n)}(0) = e^0 = 1$ for all $n$

$$P_n(x) = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots + \frac{x^n}{n!}$$

**Application:** Approximate $e^{0.1}$

$P_4(0.1) = 1 + 0.1 + \frac{0.01}{2} + \frac{0.001}{6} + \frac{0.0001}{24}$
$= 1 + 0.1 + 0.005 + 0.000167 + 0.0000042 \approx 1.1052$

(Calculator gives $e^{0.1} \approx 1.10517...$)

**Example 2: $\cos(x)$ centered at $a = 0$**

Compute derivatives and evaluate at 0:
| $n$ | $f^{(n)}(x)$ | $f^{(n)}(0)$ |
|-----|--------------|--------------|
| 0 | $\cos x$ | 1 |
| 1 | $-\sin x$ | 0 |
| 2 | $-\cos x$ | -1 |
| 3 | $\sin x$ | 0 |
| 4 | $\cos x$ | 1 |

Pattern: $1, 0, -1, 0, 1, 0, -1, 0, \ldots$

$$P_6(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!}$$

Only even powers appear (cosine is an even function)!

**Application:** $\cos(0.5) \approx 1 - \frac{0.25}{2} + \frac{0.0625}{24} \approx 0.8776$

**Example 3: $\ln(x)$ centered at $a = 1$**

| $n$ | $f^{(n)}(x)$ | $f^{(n)}(1)$ |
|-----|--------------|--------------|
| 0 | $\ln x$ | 0 |
| 1 | $1/x$ | 1 |
| 2 | $-1/x^2$ | -1 |
| 3 | $2/x^3$ | 2 |
| 4 | $-6/x^4$ | -6 |

$$P_4(x) = (x-1) - \frac{(x-1)^2}{2} + \frac{(x-1)^3}{3} - \frac{(x-1)^4}{4}$$

Note: Center at $a = 1$ because $\ln(0)$ is undefined.

**Example 4: $\sin(x)$ centered at $a = 0$**

Derivatives at 0: $0, 1, 0, -1, 0, 1, 0, -1, \ldots$

$$P_7(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!}$$

Only odd powers appear (sine is an odd function)!

### Visualization and Approximation Quality (5 min)

**Interactive D3 Visualization:**

Show $f(x) = \cos(x)$ with Taylor polynomials $P_0, P_2, P_4, P_6, P_8$ overlaid.

Observations:
- Higher degree = better fit near $x = 0$
- Approximation quality degrades as $|x|$ increases
- Even degree-8 starts to deviate significantly by $x = 4$

**Key Insight:** Taylor polynomials are LOCAL approximations—best near the center.

### Closing (5 min)

**Summary:**
- Taylor polynomial: matches $f$ and its first $n$ derivatives at $a$
- Formula: $P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$
- Maclaurin: Taylor centered at $a = 0$
- Factorials arise from the need to match higher derivatives
- Approximation is best near the center point

**Exit Ticket:**
1. Write the degree-3 Maclaurin polynomial for $f(x) = e^x$.
2. Find $P_2(x)$ for $f(x) = \sqrt{x}$ centered at $a = 4$.
3. Explain why the factorial $n!$ appears in the denominator of the $n$th term.

---

## Differentiation Strategies

### For students who need more support:
- Provide a derivative table template to organize calculations
- Focus on $e^x$ first (all derivatives are the same)
- Use visual comparison of function and polynomial graphs
- Practice the pattern recognition before computing full polynomials

### For advanced students:
- Derive the error term form (Lagrange remainder) conceptually
- Explore: Taylor polynomial for $\arctan(x)$ at $a = 0$
- Challenge: Why do $\sin(x)$ and $\cos(x)$ only have odd/even powers?
- Research: How calculators actually compute trigonometric functions

---

## Common Misconceptions to Address

1. **"Taylor polynomial equals the function"**
   - Address: The polynomial APPROXIMATES $f(x)$. For any finite $n$, there's error except at $x = a$. Only as $n \to \infty$ (Taylor series) might we get equality.

2. **"Higher degree is always better everywhere"**
   - Address: Higher degree improves accuracy NEAR the center. Far from $a$, even high-degree polynomials can diverge wildly from $f$.

3. **"Factorial comes from nowhere"**
   - Address: Derive explicitly. Differentiating $(x-a)^n$ n times gives $n!$, so we need $1/n!$ to make $P^{(n)}(a) = f^{(n)}(a)$.

4. **"Maclaurin and Taylor are different things"**
   - Address: Maclaurin = Taylor at $a = 0$. Same concept, just a special case.

5. **"Forgetting $(x-a)$ form"**
   - Address: Taylor polynomial uses powers of $(x-a)$, not $x$. For $\ln(x)$ at $a = 1$, terms are $(x-1)^k$, not $x^k$.

---

## Assessment Notes

- Verify students correctly compute and organize derivatives
- Check factorial usage—common errors include forgetting factorials or using wrong values
- Monitor sign tracking, especially for $\sin$ and $\cos$
- Ensure students distinguish Taylor (general $a$) from Maclaurin ($a = 0$)

---

## Connections

**Prior knowledge:**
- Linearization/tangent line approximation (Unit 4)—this is the $n = 1$ Taylor polynomial
- Derivative computation (Units 2-3)
- Series convergence concepts (Classes 55-60)

**Future connections:**
- Taylor series: $n \to \infty$ (Class 62)
- Error bounds (Class 63)
- Power series representation (Class 63)
- Applications in physics, engineering, numerical methods

---

## AP Exam Notes

**Common Question Formats:**

1. "Write the first four nonzero terms of the Taylor series for $f(x)$ about $x = a$"
   - Organize derivatives in a table
   - Compute coefficients carefully
   - Write in standard form

2. "Use the Taylor polynomial to approximate $f(c)$ for some value $c$"
   - Construct polynomial
   - Substitute and compute

3. "Given derivatives at a point, construct the Taylor polynomial"
   - Apply formula directly
   - No calculus needed—just substitution

**Calculator Notes:**
- Usually non-calculator section
- Organize work in tables for clarity
- Double-check factorial values
