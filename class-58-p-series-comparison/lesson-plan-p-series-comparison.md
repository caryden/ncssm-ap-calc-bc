# Lesson Plan: p-Series and Comparison Tests

## Class 58 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This session establishes p-series as the fundamental benchmarks for series comparison and introduces both the direct comparison test and limit comparison test. Students will learn that $\sum 1/n^p$ converges if and only if $p > 1$, with the harmonic series ($p = 1$) as the critical boundary case. The comparison tests leverage known series to determine the behavior of new series, forming a powerful analytical framework.

**CED Topics:** 10.5 - Harmonic Series and p-Series; 10.6 - Comparison Tests for Convergence

---

## Learning Objectives

By the end of this class, students will be able to:

1. State the p-series convergence theorem: $\sum 1/n^p$ converges iff $p > 1$
2. Classify any p-series as convergent or divergent based on the value of $p$
3. Apply the direct comparison test by establishing term-by-term inequalities
4. Apply the limit comparison test by computing the limit of term ratios
5. Choose an appropriate comparison series based on dominant term behavior

---

## Materials Needed

- Presentation slides with D3 visualizations (p-series explorer)
- Graphing calculators
- Student devices for Desmos partial sum exploration
- Convergence test reference chart (continuing to build)

---

## Class Structure (50 minutes)

### Opening (3 min)

**Quick Review**

What did the integral test tell us about $\sum 1/n$ and $\sum 1/n^2$?
- $\sum 1/n$: diverges (integral = $\ln x \to \infty$)
- $\sum 1/n^2$: converges (integral = 1)

**Today's Goal:** Generalize to all $\sum 1/n^p$ and learn to compare series to these benchmarks.

### p-Series: The Complete Picture (12 min)

**Definition**

A p-series has the form:
$$\sum_{n=1}^{\infty} \frac{1}{n^p} = 1 + \frac{1}{2^p} + \frac{1}{3^p} + \frac{1}{4^p} + \cdots$$

**The p-Series Test**

$$\sum_{n=1}^{\infty} \frac{1}{n^p} \text{ converges if and only if } p > 1$$

**Proof Sketch (via Integral Test)**

For $p > 0$, $f(x) = 1/x^p$ is continuous, positive, and decreasing on $[1, \infty)$.

$$\int_1^{\infty} \frac{1}{x^p}\,dx = \begin{cases} \frac{x^{1-p}}{1-p}\Big|_1^{\infty} & \text{if } p \neq 1 \\ \ln x \Big|_1^{\infty} & \text{if } p = 1 \end{cases}$$

- If $p > 1$: exponent $1-p < 0$, so $x^{1-p} \to 0$ as $x \to \infty$ → Converges
- If $p < 1$: exponent $1-p > 0$, so $x^{1-p} \to \infty$ as $x \to \infty$ → Diverges
- If $p = 1$: $\ln x \to \infty$ → Diverges

**Key Examples Table**

| Series | p-value | Behavior |
|--------|---------|----------|
| $\sum 1/n^3$ | $p = 3$ | Converges |
| $\sum 1/n^2$ | $p = 2$ | Converges (to $\pi^2/6$) |
| $\sum 1/n^{1.001}$ | $p = 1.001$ | Converges (barely!) |
| $\sum 1/n$ | $p = 1$ | Diverges (harmonic) |
| $\sum 1/n^{0.999}$ | $p = 0.999$ | Diverges |
| $\sum 1/\sqrt{n} = \sum 1/n^{1/2}$ | $p = 1/2$ | Diverges |

**The Threshold at p = 1 is Critical**

The harmonic series is the boundary—converges for anything greater, diverges for anything less or equal.

Mnemonic: "Greater than 1 for greater success"

### Direct Comparison Test (10 min)

**The Test**

Suppose $0 \leq a_n \leq b_n$ for all $n$ (or for $n \geq N$).

- If $\sum b_n$ converges, then $\sum a_n$ converges.
- If $\sum a_n$ diverges, then $\sum b_n$ diverges.

**Intuition:**
- A series smaller than a convergent series must converge
- A series larger than a divergent series must diverge

**Example 1: Proving Convergence**

Does $\sum \frac{1}{n^2 + n}$ converge?

- Compare: $\frac{1}{n^2 + n} < \frac{1}{n^2}$ for $n \geq 1$ (since $n^2 + n > n^2$)
- $\sum 1/n^2$ converges (p-series, $p = 2 > 1$)
- By direct comparison, $\sum 1/(n^2 + n)$ **converges** ✓

**Example 2: Proving Divergence**

Does $\sum \frac{1}{\sqrt{n-1}}$ (for $n \geq 2$) diverge?

- Compare: $\frac{1}{\sqrt{n-1}} > \frac{1}{\sqrt{n}}$ for $n \geq 2$ (since $n-1 < n$)
- $\sum 1/\sqrt{n}$ diverges (p-series, $p = 1/2 < 1$)
- By direct comparison, $\sum 1/\sqrt{n-1}$ **diverges** ✓

**When Direct Comparison Works Well:**
- When inequality is obvious from algebra
- When dropping positive terms from denominator makes comparison clear

### Limit Comparison Test (13 min)

**The Test**

Suppose $a_n > 0$ and $b_n > 0$ for all $n$.

Let $L = \lim_{n \to \infty} \frac{a_n}{b_n}$.

If $0 < L < \infty$ (positive and finite), then $\sum a_n$ and $\sum b_n$ either both converge or both diverge.

**Intuition:** If $a_n/b_n \to L$, then for large $n$, $a_n \approx L \cdot b_n$. So $\sum a_n \approx L \cdot \sum b_n$—they have the same behavior.

**When to Use Limit Comparison:**
- When direct inequality is messy to prove
- When dominant term behavior is clear

**Strategy:**
1. Identify dominant behavior of $a_n$ for large $n$
2. Choose $b_n$ with same dominant behavior (usually p-series or geometric)
3. Compute $L = \lim(a_n/b_n)$
4. If $0 < L < \infty$, conclude same behavior as $\sum b_n$

**Example 1:**

Does $\sum \frac{2n^2 + 3n}{n^4 + 5}$ converge?

- Dominant behavior: $\frac{2n^2}{n^4} = \frac{2}{n^2}$ for large $n$
- Choose $b_n = 1/n^2$ (convergent p-series)
- $L = \lim \frac{(2n^2+3n)/(n^4+5)}{1/n^2} = \lim \frac{(2n^2+3n) \cdot n^2}{n^4+5} = \lim \frac{2n^4+3n^3}{n^4+5} = 2$
- Since $0 < 2 < \infty$, $\sum a_n$ **converges** (same as $\sum 1/n^2$)

**Example 2:**

Does $\sum \frac{1}{2^n + 1}$ converge?

- Dominant behavior: $1/2^n$ for large $n$ (geometric)
- Choose $b_n = (1/2)^n$ (convergent geometric)
- $L = \lim \frac{1/(2^n+1)}{1/2^n} = \lim \frac{2^n}{2^n+1} = \lim \frac{1}{1+1/2^n} = 1$
- Since $0 < 1 < \infty$, $\sum a_n$ **converges** ✓

**Example 3:**

Does $\sum \frac{\sqrt{n}}{n^2 - 3}$ converge?

- Dominant behavior: $\frac{n^{1/2}}{n^2} = \frac{1}{n^{3/2}}$
- Choose $b_n = 1/n^{3/2}$ (convergent, $p = 3/2 > 1$)
- $L = \lim \frac{\sqrt{n}/(n^2-3)}{1/n^{3/2}} = \lim \frac{\sqrt{n} \cdot n^{3/2}}{n^2-3} = \lim \frac{n^2}{n^2-3} = 1$
- **Converges** ✓

### Closing (7 min)

**Comparison Test Summary**

| Test | What You Need | Conclusion |
|------|---------------|------------|
| Direct Comparison | $0 \leq a_n \leq b_n$ | If $\sum b_n$ converges → $\sum a_n$ converges |
| Direct Comparison | $0 \leq b_n \leq a_n$ | If $\sum b_n$ diverges → $\sum a_n$ diverges |
| Limit Comparison | $L = \lim(a_n/b_n)$, $0 < L < \infty$ | Same behavior as $\sum b_n$ |

**Strategy:**
1. Identify dominant behavior of $a_n$ for large $n$
2. Choose comparison series $b_n$ (p-series or geometric)
3. Try limit comparison first (usually easier)
4. Use direct comparison if inequality is obvious

**Exit Ticket:**
1. Does $\sum 1/n^{2/3}$ converge or diverge? Why?
2. Use comparison to determine: Does $\sum \frac{1}{3n^2+2}$ converge?
3. Use limit comparison: Does $\sum \frac{n^2}{n^4+1}$ converge?

---

## Differentiation Strategies

### For students who need more support:
- Create a visual "domination diagram" showing smaller series below larger
- Focus on recognizing dominant terms before formal comparison
- Provide worked examples with step-by-step templates
- Practice identifying p-values: "What p-series does this look like?"

### For advanced students:
- Prove: The sum of two convergent series converges (linearity)
- Explore: What happens when $L = 0$ or $L = \infty$ in limit comparison?
- Challenge: Find the exact sum of $\sum 1/[n(n+1)]$ (partial fractions/telescoping)
- Research: Euler's solution to the Basel problem ($\sum 1/n^2 = \pi^2/6$)

---

## Common Misconceptions to Address

1. **"p ≥ 1 means convergence"**
   - Address: The threshold is $p > 1$ (strictly greater). $p = 1$ is the harmonic series, which DIVERGES.

2. **"Comparison to smaller convergent series proves convergence"**
   - Address: If $a_n \geq b_n$ and $\sum b_n$ converges, we learn NOTHING about $\sum a_n$. Direction matters!

3. **"L = 0 or L = ∞ works for limit comparison"**
   - Address: These edge cases make limit comparison inconclusive. Must use other methods.

4. **"Any simpler series works for comparison"**
   - Address: Choose $b_n$ with the SAME dominant term. For $(2n+1)/(n^3+n)$, compare to $2n/n^3 = 2/n^2$, not just $1/n$.

5. **"Comparison proves the sums are equal"**
   - Address: Comparison only determines convergence/divergence, not the actual sum values.

---

## Assessment Notes

- Check that students correctly apply the p-series threshold ($p > 1$)
- Monitor for direction errors in direct comparison
- Ensure limit comparison computations include the full ratio
- Verify students explicitly state the comparison series and its behavior

---

## Connections

**Prior knowledge:**
- Integral test (Class 57)—p-series proof relies on it
- Geometric series (Class 56)—another benchmark family
- Limit evaluation techniques

**Future connections:**
- Ratio test compares to geometric behavior (Class 59)
- Absolute convergence uses comparison on $|a_n|$ (Class 60)
- Taylor series terms often look like p-series or factorials (Classes 61-62)
- Error bounds use comparison arguments (Class 63)

---

## AP Exam Notes

**Scoring Requirements:**

On AP free response, full credit requires:
1. Identify the comparison series explicitly
2. State which test (direct or limit comparison)
3. Show the inequality (direct) or limit calculation (limit comparison)
4. State the known convergence/divergence of comparison series
5. State the conclusion with justification

**Example of Complete Response:**

"Compare to $\sum 1/n^2$. Since $(n^2+1) > n^2$, we have $\frac{1}{n^2+1} < \frac{1}{n^2}$. Since $\sum 1/n^2$ converges (p-series with $p = 2 > 1$), by the direct comparison test, $\sum \frac{1}{n^2+1}$ converges."
