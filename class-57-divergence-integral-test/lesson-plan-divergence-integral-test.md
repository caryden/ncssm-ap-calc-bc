# Lesson Plan: The Divergence Test and Integral Test

## Class 57 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This session introduces the first two general convergence tests: the nth term test for divergence (a quick filter) and the integral test (connecting series to calculus). Students will understand that the divergence test only proves divergence and that the integral test bridges discrete sums with continuous integrals. The harmonic series is rigorously proven divergent using the integral test, reinforcing that terms going to zero is necessary but not sufficient for convergence.

**CED Topics:** 10.3 - The nth Term Test for Divergence; 10.4 - Integral Test for Convergence

---

## Learning Objectives

By the end of this class, students will be able to:

1. Apply the nth term test to identify divergent series
2. Recognize that the nth term test is inconclusive when the limit equals zero
3. State and verify the conditions required for the integral test
4. Apply the integral test to determine series convergence or divergence
5. Prove that the harmonic series diverges using the integral test

---

## Materials Needed

- Presentation slides with D3 visualizations (integral test rectangle diagrams)
- Graphing calculators for improper integral evaluation
- Student devices for Desmos exploration
- Convergence test reference chart (begin building)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Warm-up Problem**

Calculate: $\lim_{n \to \infty} \frac{n}{n+1}$

Answer: The limit is 1.

**Question:** Does the series $\sum \frac{n}{n+1}$ converge?

Intuition: Each term is close to 1, so we're essentially adding $1 + 1 + 1 + \cdots$

**Today's Goal:** Formalize this intuition and develop more powerful tests.

### The Divergence Test (10 min)

**Statement (nth Term Test for Divergence)**

If $\lim_{n \to \infty} a_n \neq 0$, then $\sum a_n$ diverges.

**Contrapositive Form**

If $\sum a_n$ converges, then $\lim_{n \to \infty} a_n = 0$.

**Intuition:** If terms don't shrink to zero, adding infinitely many of them cannot yield a finite sum.

**Critical Warning (Emphasize with visual)**

If $\lim_{n \to \infty} a_n = 0$, the test is INCONCLUSIVE.

We CANNOT conclude convergence!

**Examples:**

1. $\sum \frac{n}{2n+1}$: $\lim = 1/2 \neq 0 \Rightarrow$ **Diverges**

2. $\sum \frac{n+1}{n^2}$: $\lim = 0 \Rightarrow$ **Inconclusive** (need other tests)

3. $\sum \cos(1/n)$: $\lim = \cos(0) = 1 \neq 0 \Rightarrow$ **Diverges**

4. $\sum \frac{1}{\sqrt{n}}$: $\lim = 0 \Rightarrow$ **Inconclusive**

5. $\sum \frac{1}{n}$ (harmonic): $\lim = 0 \Rightarrow$ **Inconclusive** (we know it diverges!)

**When to Use:** Always try first! Quick filter before harder tests.

### Transition: The Need for More Tests (3 min)

The divergence test only catches "obvious" divergence—when terms don't shrink.

But many series have $a_n \to 0$ yet still diverge (harmonic series).

We need tools to distinguish convergent from divergent among the "$a_n \to 0$" cases.

**Idea:** Use calculus (integrals) to analyze discrete sums.

### The Integral Test (15 min)

**Setup**

Let $f(x)$ be a function that is:
1. Continuous on $[1, \infty)$
2. Positive on $[1, \infty)$
3. Decreasing on $[1, \infty)$

Let $a_n = f(n)$.

**The Integral Test**

Under these conditions, $\sum_{n=1}^{\infty} a_n$ and $\int_1^{\infty} f(x)\,dx$ either both converge or both diverge.

**Visual Justification (with D3 visualization)**

Draw $f(x)$ as a decreasing, continuous, positive function.

Draw rectangles of height $f(n)$ and width 1:
- **Right rectangles:** Area = $f(2) + f(3) + \cdots \leq \int_1^{\infty} f(x)\,dx$
- **Left rectangles:** Area = $f(1) + f(2) + \cdots \geq \int_1^{\infty} f(x)\,dx$

This gives bounds: $\int_1^{\infty} f(x)\,dx \leq \sum_{n=1}^{\infty} f(n) \leq f(1) + \int_1^{\infty} f(x)\,dx$

Since they bound each other, they share convergence behavior.

**Important Note:** The integral test tells us CONVERGENCE or DIVERGENCE, but the integral value usually does NOT equal the series sum.

**Application Procedure:**
1. Write $a_n = f(n)$ for appropriate continuous function $f$
2. Verify: continuous? positive? decreasing?
3. Evaluate $\int_1^{\infty} f(x)\,dx$ (improper integral)
4. Conclude: integral converges $\Rightarrow$ series converges; integral diverges $\Rightarrow$ series diverges

### Worked Examples (12 min)

**Example 1: The Harmonic Series (The Classic)**

Show: $\sum \frac{1}{n}$ diverges.

- Let $f(x) = 1/x$
- Continuous on $[1, \infty)$ ✓
- Positive on $[1, \infty)$ ✓
- Decreasing: $f'(x) = -1/x^2 < 0$ ✓

Evaluate the integral:
$$\int_1^{\infty} \frac{1}{x}\,dx = \lim_{b \to \infty} [\ln x]_1^b = \lim_{b \to \infty} (\ln b - \ln 1) = \lim_{b \to \infty} \ln b = \infty$$

Integral diverges $\Rightarrow$ Series diverges.

**This proves the harmonic series diverges!**

**Example 2: $\sum \frac{1}{n^2}$**

- Let $f(x) = 1/x^2$
- Continuous ✓, Positive ✓, Decreasing ✓

$$\int_1^{\infty} \frac{1}{x^2}\,dx = \lim_{b \to \infty} \left[-\frac{1}{x}\right]_1^b = \lim_{b \to \infty} \left(-\frac{1}{b} + 1\right) = 0 + 1 = 1$$

Integral converges $\Rightarrow$ Series converges.

Note: $\sum 1/n^2 = \pi^2/6 \approx 1.645 \neq 1$. The integral doesn't give the sum!

**Example 3: $\sum \frac{1}{n^2 + 1}$**

- Let $f(x) = 1/(x^2 + 1)$
- Continuous ✓, Positive ✓, Decreasing (for $x \geq 0$) ✓

$$\int_1^{\infty} \frac{1}{x^2+1}\,dx = \lim_{b \to \infty} [\arctan x]_1^b = \frac{\pi}{2} - \frac{\pi}{4} = \frac{\pi}{4}$$

Integral converges $\Rightarrow$ Series converges.

**Example 4: $\sum n \cdot e^{-n}$**

- Let $f(x) = xe^{-x}$
- Continuous ✓, Positive (for $x > 0$) ✓
- Decreasing? $f'(x) = e^{-x} - xe^{-x} = e^{-x}(1-x) < 0$ for $x > 1$ ✓

$$\int_1^{\infty} xe^{-x}\,dx = \lim_{b \to \infty} [-xe^{-x} - e^{-x}]_1^b = 0 - (-e^{-1} - e^{-1}) = \frac{2}{e}$$

Integral converges $\Rightarrow$ Series converges.

### Closing (5 min)

**Summary Table**

| Test | What It Tests | Conclusion |
|------|---------------|------------|
| Divergence (nth Term) | $\lim a_n \neq 0$? | Diverges (if $\neq 0$); Inconclusive (if $= 0$) |
| Integral Test | $\int f(x)\,dx$ | Converges/Diverges together |

**Testing Strategy:**
1. Always try divergence test first (quick!)
2. If inconclusive and series looks like $f(n)$ for nice $f$, try integral test
3. Check all three conditions before applying integral test

**Exit Ticket:**
1. Does $\sum \frac{2n}{3n+1}$ converge or diverge? Which test?
2. Use the integral test to determine if $\sum \frac{1}{n(\ln n)^2}$ converges (for $n \geq 2$).
3. True or False: If $\lim_{n \to \infty} a_n = 0$, then $\sum a_n$ converges.

---

## Differentiation Strategies

### For students who need more support:
- Provide a checklist for integral test conditions
- Review improper integral techniques before the lesson
- Focus on recognizing when divergence test applies (limit clearly nonzero)
- Use graphing calculators to visualize the rectangle comparison

### For advanced students:
- Prove: $\sum 1/(n \ln n)$ diverges (integral test with substitution)
- Explore: For what values of $p$ does $\sum 1/n^p$ converge? (This previews p-series)
- Challenge: Find bounds on $\sum_{n=1}^{N} 1/n$ using the integral test inequality
- Research: The Euler-Mascheroni constant and harmonic series asymptotics

---

## Common Misconceptions to Address

1. **"$a_n \to 0$ means the series converges"**
   - Address: This is the most pervasive error. The harmonic series is the essential counterexample. Write "NECESSARY but NOT SUFFICIENT" prominently.

2. **"The integral gives the sum"**
   - Address: The integral test determines convergence behavior only. $\int_1^{\infty} 1/x^2\,dx = 1$, but $\sum 1/n^2 = \pi^2/6 \approx 1.645$.

3. **"Decreasing means strictly decreasing everywhere"**
   - Address: The function must be eventually decreasing. A few non-decreasing terms at the start don't affect convergence.

4. **"Can use integral test for any series"**
   - Address: Must verify all three conditions. Alternating series violate "positive" condition.

5. **"Integral from 0 to infinity"**
   - Address: Match the starting index! $\sum_{n=1}^{\infty}$ corresponds to $\int_1^{\infty}$.

---

## Assessment Notes

- Monitor improper integral technique during examples
- Check that students verify all three integral test conditions
- Ensure students distinguish between "diverges" (conclusion) and "inconclusive" (no conclusion)
- Note common algebra errors in improper integral evaluation

---

## Connections

**Prior knowledge:**
- Sequence and series definitions, partial sums (Class 55)
- Improper integrals (Unit 8)
- Limits at infinity
- Basic derivative rules

**Future connections:**
- p-series theorem uses integral test proof (Class 58)
- Comparison tests compare to series with known behavior (Class 58)
- Building the convergence test "toolkit" (all subsequent classes)
- Integral test gives bounds useful for error analysis

---

## AP Exam Notes

**Justification Requirements:**

On the AP exam, students must:
1. State which test they're using
2. Verify conditions (for integral test)
3. Show the integral evaluation
4. State the conclusion with justification

Simply writing "by integral test, converges" is insufficient—work must be shown.

**Common AP Question Types:**
- Quick divergence test applications (multiple choice)
- Full integral test justification (free response)
- Explain why divergence test is inconclusive
