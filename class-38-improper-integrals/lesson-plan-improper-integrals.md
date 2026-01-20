# Lesson Plan: Improper Integrals (BC)

## Class 38 | Unit 6: Integration and Accumulation of Change

---

## Overview

This BC-only session extends the definite integral to handle infinite bounds and discontinuous integrands. Students will learn to define improper integrals as limits of proper integrals, determine convergence or divergence, and evaluate improper integrals using limit techniques. The p-integral test provides a key tool for analyzing convergence. This class completes Unit 6.

**CED Topic:** 6.13 - Evaluating Improper Integrals (BC Only)

---

## Learning Objectives

By the end of this class, students will be able to:

1. Identify improper integrals (Type 1: infinite bounds, Type 2: discontinuous integrands)
2. Define improper integrals using proper limit notation
3. Determine whether improper integrals converge (finite limit) or diverge (limit DNE or infinite)
4. Apply the p-integral test: $\int_1^\infty \frac{1}{x^p}\,dx$ converges iff $p > 1$
5. Evaluate improper integrals by computing limits

---

## Prior Knowledge Required

- Partial fractions (Class 37)
- FTC Part 2 for evaluating definite integrals
- Limit evaluation, including limits at infinity
- Recognizing vertical asymptotes (discontinuities)

---

## Materials Needed

- Presentation slides with improper integral visualizations
- D3 visualization showing area accumulating toward infinity
- Graphing calculators
- Improper integral practice worksheet

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A Surprising Question**

Present: "What is the area under $y = \frac{1}{x^2}$ from $x = 1$ to infinity?"

Initial reaction: "That's infinite - the region goes on forever!"

**The surprise:** Let's check.

$$\int_1^b \frac{1}{x^2}\,dx = \left[-\frac{1}{x}\right]_1^b = -\frac{1}{b} + 1$$

As $b \to \infty$: $-\frac{1}{b} + 1 \to 0 + 1 = 1$

**The area is exactly 1!** An infinite region can have finite area.

**3Blue1Brown insight:**
> "An improper integral isn't a different kind of integral - it's a limit of proper integrals."

### Type 1: Infinite Limits of Integration (15 min)

**What Makes an Integral "Improper"?**

A definite integral is improper if:
- One or both bounds are infinite (Type 1), OR
- The integrand has a discontinuity in the interval (Type 2)

**Type 1 Definitions:**

$$\int_a^\infty f(x)\,dx = \lim_{b \to \infty} \int_a^b f(x)\,dx$$

$$\int_{-\infty}^b f(x)\,dx = \lim_{a \to -\infty} \int_a^b f(x)\,dx$$

$$\int_{-\infty}^\infty f(x)\,dx = \lim_{a \to -\infty} \int_a^c f(x)\,dx + \lim_{b \to \infty} \int_c^b f(x)\,dx$$

**Critical:** For doubly-infinite integrals, both limits must be taken INDEPENDENTLY. Do NOT use $\lim_{b \to \infty} \int_{-b}^b$ (symmetric limits).

**Convergence vs. Divergence:**
- If the limit exists and is finite: the integral **converges**
- If the limit is infinite or DNE: the integral **diverges**

**Example 1:** Convergent
$$\int_1^\infty \frac{1}{x^2}\,dx = \lim_{b \to \infty} \left[-\frac{1}{x}\right]_1^b = \lim_{b \to \infty}\left(-\frac{1}{b} + 1\right) = 0 + 1 = 1$$

**Converges to 1.**

**Example 2:** Divergent
$$\int_1^\infty \frac{1}{x}\,dx = \lim_{b \to \infty} [\ln x]_1^b = \lim_{b \to \infty}(\ln b - 0) = \infty$$

**Diverges.**

**Visualization:** Show shaded regions extending toward infinity:
- For $1/x^2$: area stabilizes around 1
- For $1/x$: area grows without bound

### The p-Integral Test (5 min)

**Key Theorem:**

$$\int_1^\infty \frac{1}{x^p}\,dx \text{ converges if and only if } p > 1$$

**Why?**
- If $p > 1$: $\int_1^b x^{-p}\,dx = \frac{x^{1-p}}{1-p}\Big|_1^b = \frac{b^{1-p}}{1-p} - \frac{1}{1-p}$. As $b \to \infty$, $b^{1-p} \to 0$, so converges.
- If $p = 1$: $\int_1^b \frac{1}{x}\,dx = \ln b \to \infty$. Diverges.
- If $p < 1$: $b^{1-p} \to \infty$ as $b \to \infty$. Diverges.

**The boundary:** $p = 1$ is the critical case. Just barely diverges!

**Examples:**
- $\int_1^\infty \frac{1}{x^{1.01}}\,dx$ converges (p = 1.01 > 1)
- $\int_1^\infty \frac{1}{x^{0.99}}\,dx$ diverges (p = 0.99 < 1)

### Type 2: Discontinuous Integrands (10 min)

**What if the integrand "blows up" within the interval?**

$$\int_0^1 \frac{1}{\sqrt{x}}\,dx$$

At $x = 0$: $\frac{1}{\sqrt{0}}$ is undefined - there's a vertical asymptote!

**Definition for discontinuity at endpoint a:**
$$\int_a^b f(x)\,dx = \lim_{c \to a^+} \int_c^b f(x)\,dx$$

**Example 3:** Type 2 - Convergent
$$\int_0^1 \frac{1}{\sqrt{x}}\,dx = \lim_{c \to 0^+} \int_c^1 x^{-1/2}\,dx = \lim_{c \to 0^+} [2x^{1/2}]_c^1$$
$$= \lim_{c \to 0^+}(2 - 2\sqrt{c}) = 2 - 0 = 2$$

**Converges to 2.**

**Example 4:** Type 2 - Divergent
$$\int_0^1 \frac{1}{x}\,dx = \lim_{c \to 0^+} [\ln x]_c^1 = \lim_{c \to 0^+}(0 - \ln c) = \infty$$

**Diverges.**

**Interior Discontinuity:**

If $f$ has a discontinuity at $c \in (a, b)$:
$$\int_a^b f(x)\,dx = \int_a^c f(x)\,dx + \int_c^b f(x)\,dx$$

Both pieces must be evaluated as improper integrals. If EITHER diverges, the whole integral diverges.

**Example 5:** Hidden Type 2
$$\int_{-1}^1 \frac{1}{x^2}\,dx$$

**Warning:** The integrand has a discontinuity at $x = 0$!

This is NOT simply $\left[-\frac{1}{x}\right]_{-1}^1 = -1 - 1 = -2$

Must split: $\int_{-1}^0 \frac{1}{x^2}\,dx + \int_0^1 \frac{1}{x^2}\,dx$

Both pieces diverge, so the integral **diverges**.

### Practice Problems (10 min)

**Problem 1:** Evaluate $\int_0^\infty e^{-x}\,dx$

$$= \lim_{b \to \infty} [-e^{-x}]_0^b = \lim_{b \to \infty}(-e^{-b} + 1) = 0 + 1 = 1$$

**Converges to 1.**

**Problem 2:** Evaluate $\int_{-\infty}^0 e^x\,dx$

$$= \lim_{a \to -\infty} [e^x]_a^0 = \lim_{a \to -\infty}(1 - e^a) = 1 - 0 = 1$$

**Converges to 1.**

**Problem 3:** Determine convergence of $\int_1^\infty \frac{1}{x^2 + 1}\,dx$

Since $\frac{1}{x^2 + 1} < \frac{1}{x^2}$ for $x \geq 1$, and $\int_1^\infty \frac{1}{x^2}\,dx$ converges...

By comparison, $\int_1^\infty \frac{1}{x^2 + 1}\,dx$ **converges**.

(Full evaluation: $[\arctan x]_1^\infty = \frac{\pi}{2} - \frac{\pi}{4} = \frac{\pi}{4}$)

### Closing (5 min)

**Unit 6 Summary:**

We've built a complete theory of integration:
1. **Riemann sums** approximate area
2. **Definite integrals** are limits of Riemann sums
3. **FTC** connects integration to antiderivatives
4. **Techniques:** u-sub, IBP, partial fractions
5. **Improper integrals** extend to infinite domains

**Exit Ticket:**

Determine if $\int_1^\infty \frac{1}{\sqrt{x}}\,dx$ converges or diverges. Show your work using limit notation.

(Answer: $p = 1/2 < 1$, so diverges. Or compute: $\lim_{b \to \infty} [2\sqrt{x}]_1^b = \lim_{b \to \infty}(2\sqrt{b} - 2) = \infty$)

**Next Unit:** Unit 7 - Differential Equations

---

## Differentiation Strategies

### For students who need more support:
- Always write out the limit definition before evaluating
- Practice identifying the type (1 or 2) and where the issue is
- Start with simple exponential decay integrals before p-integrals
- Use visual area accumulation to build intuition
- Create a flowchart: Is bound infinite? Is there a discontinuity?

### For advanced students:
- Explore the comparison test for improper integrals
- Challenge: $\int_0^\infty \frac{\sin x}{x}\,dx$ (converges but not absolutely)
- Investigate: Gabriel's Horn paradox (finite volume, infinite surface area)
- Prove: If $\int_1^\infty f(x)\,dx$ converges, must $\lim_{x \to \infty} f(x) = 0$? (No! Counterexample exists)

---

## Common Misconceptions to Address

1. **"Infinite interval means infinite area"**
   - Address: Counterexample: $\int_1^\infty \frac{1}{x^2}\,dx = 1$. If the function decreases fast enough, total area is finite.

2. **"Just substitute infinity directly"**
   - Address: Must use proper limit notation. Write $\lim_{b \to \infty}$, not $\infty$ substituted directly. This matters for rigor and avoiding errors.

3. **"$\int_{-\infty}^\infty = \lim_{b \to \infty} \int_{-b}^b$"**
   - Address: WRONG! Must split and take independent limits. Example: $\int_{-\infty}^\infty x\,dx$ appears to be 0 with symmetric limits, but is actually divergent.

4. **"Forget about discontinuities"**
   - Address: $\int_{-1}^1 \frac{1}{x}\,dx$ is NOT $[\ln|x|]_{-1}^1$. There's a discontinuity at 0! Must check for Type 2 issues.

5. **"Convergent means positive"**
   - Address: Convergent means the limit exists and is finite. The value can be positive, negative, or zero.

---

## Assessment Notes

- Check for proper limit notation throughout
- Verify students check for discontinuities in the interval
- Monitor application of p-test
- Exit ticket tests both procedure and understanding

---

## Connections

**Prior knowledge:**
- FTC for evaluation (Class 33)
- Limits at infinity (Unit 1)
- All integration techniques (Classes 34-37)
- Recognizing vertical asymptotes

**Future connections:**
- Convergence of series (Unit 10)
- Integral test for series (Unit 10)
- Probability distributions (applications)
- Laplace transforms (beyond AP)

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Shaded region extending to infinity, area stabilizing or growing |
| **Numerical** | Sequence of areas approaching a limit |
| **Analytical** | $\int_a^\infty f(x)\,dx = \lim_{b \to \infty} \int_a^b f(x)\,dx$ |
| **Verbal** | "The integral converges to 1" or "The integral diverges" |

---

## Improper Integrals Summary

**Type 1: Infinite Bounds**

$$\int_a^\infty f(x)\,dx = \lim_{b \to \infty} \int_a^b f(x)\,dx$$

$$\int_{-\infty}^b f(x)\,dx = \lim_{a \to -\infty} \int_a^b f(x)\,dx$$

$$\int_{-\infty}^\infty f(x)\,dx = \int_{-\infty}^c f(x)\,dx + \int_c^\infty f(x)\,dx \text{ (both limits independent)}$$

**Type 2: Discontinuous Integrand**

If discontinuity at $a$: $\int_a^b f(x)\,dx = \lim_{c \to a^+} \int_c^b f(x)\,dx$

If discontinuity at $b$: $\int_a^b f(x)\,dx = \lim_{c \to b^-} \int_a^c f(x)\,dx$

If discontinuity at interior $c$: Split and evaluate both pieces

**The p-Integral Test:**

$$\int_1^\infty \frac{1}{x^p}\,dx \begin{cases} \text{converges} & \text{if } p > 1 \\ \text{diverges} & \text{if } p \leq 1 \end{cases}$$

**Convergence:**
- Limit exists and is finite → **converges**
- Limit is infinite or DNE → **diverges**
