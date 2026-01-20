# Lesson Plan: Alternating Series Test and Ratio Test

## Class 59 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This session introduces two powerful convergence tests: the alternating series test (for series with sign changes) and the ratio test (ideal for series with factorials and exponentials). Students will learn that alternating series converge when terms decrease to zero, and that the ratio test determines convergence by examining the limiting ratio of consecutive terms. The alternating harmonic series demonstrates that sign alternation can convert divergence into convergence.

**CED Topics:** 10.7 - Alternating Series Test for Convergence; 10.8 - Ratio Test for Convergence

---

## Learning Objectives

By the end of this class, students will be able to:

1. Identify alternating series and extract the positive term sequence $b_n$
2. Verify both conditions of the alternating series test (decreasing and limit zero)
3. Apply the alternating series error bound $|S - S_n| \leq b_{n+1}$
4. Compute the limit ratio $L = \lim |a_{n+1}/a_n|$ for the ratio test
5. Determine convergence, divergence, or inconclusiveness based on the ratio test result

---

## Materials Needed

- Presentation slides with D3 visualizations (oscillating partial sums)
- Graphing calculators
- Student devices for Desmos exploration
- Convergence test reference chart (continuing to build)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Display:** $1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \frac{1}{5} - \cdots$

**Question:** Does this series converge?

Recall: $1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \cdots$ (harmonic) DIVERGES.

But this alternating version... converges to $\ln 2$!

**Today's Goal:** Understand why alternating helps, and learn another powerful test.

### Alternating Series Test (18 min)

**Definition**

An alternating series has terms that alternate in sign:
$$\sum_{n=1}^{\infty} (-1)^n b_n \quad \text{or} \quad \sum_{n=1}^{\infty} (-1)^{n+1} b_n$$
where $b_n > 0$ for all $n$.

**The Alternating Series Test (AST)**

If:
1. $b_{n+1} \leq b_n$ for all $n$ (decreasing)
2. $\lim_{n \to \infty} b_n = 0$

Then $\sum (-1)^n b_n$ converges.

**Visual Justification (with D3 animation)**

Plot partial sums on a number line:
- $S_1 = b_1$ (start positive)
- $S_2 = b_1 - b_2 < S_1$ (drop below)
- $S_3 = S_2 + b_3 > S_2$ but $< S_1$ (rise, but not as high)
- $S_4 = S_3 - b_4 < S_3$ but $> S_2$ (drop, but not as low)

The partial sums oscillate, each swing smaller than the last.
Since $b_n \to 0$, the oscillations shrink to zero, converging to some limit $S$.

**Worked Examples**

**Example 1: Alternating Harmonic Series**
$$\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots$$

- $b_n = 1/n > 0$ ✓
- Decreasing: $1/(n+1) < 1/n$ ✓
- $\lim(1/n) = 0$ ✓

By AST, the series **converges**. (It equals $\ln 2 \approx 0.693$)

**Example 2:**
$$\sum_{n=1}^{\infty} (-1)^n \cdot \frac{n}{n^2+1}$$

- $b_n = n/(n^2+1)$
- Decreasing? Check: $b'(x) = \frac{(x^2+1) - x(2x)}{(x^2+1)^2} = \frac{1-x^2}{(x^2+1)^2} < 0$ for $x > 1$ ✓
- $\lim \frac{n}{n^2+1} = 0$ ✓

By AST, **converges** ✓

**Example 3: Test Fails**
$$\sum_{n=1}^{\infty} (-1)^n \cdot \frac{n}{n+1}$$

- $b_n = n/(n+1)$
- $\lim \frac{n}{n+1} = 1 \neq 0$ ✗

AST does not apply! (Series actually diverges by nth term test)

**Error Bound (Important for AP)**

For an alternating series satisfying AST:
$$|S - S_n| \leq b_{n+1}$$

The error after $n$ terms is at most the absolute value of the next term.

**Example:** Approximate $\ln 2 = \sum \frac{(-1)^{n+1}}{n}$ with error $< 0.01$.

Need $b_{n+1} = 1/(n+1) < 0.01$, so $n+1 > 100$, meaning $n \geq 100$.

Using $S_{100}$ gives accuracy within 0.01.

### Ratio Test (15 min)

**The Test**

Let $L = \lim_{n \to \infty} \left|\frac{a_{n+1}}{a_n}\right|$

- If $L < 1$: series converges absolutely
- If $L > 1$ (or $L = \infty$): series diverges
- If $L = 1$: test is **inconclusive**

**Intuition:** If consecutive term ratios approach $r$, the series eventually behaves like a geometric series with ratio $r$. Geometric series converge when $|r| < 1$.

**Best Applications:**
- Series with factorials ($n!$)
- Series with exponentials ($a^n$)
- Series with products of both

**Worked Examples**

**Example 1: Factorial in Numerator**
$$\sum \frac{n!}{3^n}$$

- $a_n = n!/3^n$
- $a_{n+1} = (n+1)!/3^{n+1}$
- $\left|\frac{a_{n+1}}{a_n}\right| = \frac{(n+1)!}{3^{n+1}} \cdot \frac{3^n}{n!} = \frac{n+1}{3}$
- $L = \lim \frac{n+1}{3} = \infty$

$L > 1$, so series **diverges** ✓

**Example 2: Factorial in Denominator**
$$\sum \frac{3^n}{n!}$$

- $\left|\frac{a_{n+1}}{a_n}\right| = \frac{3^{n+1}}{(n+1)!} \cdot \frac{n!}{3^n} = \frac{3}{n+1}$
- $L = \lim \frac{3}{n+1} = 0$

$L < 1$, so series **converges** ✓

**Example 3: L = 1 (Inconclusive)**
$$\sum \frac{1}{n^2}$$

- $\left|\frac{a_{n+1}}{a_n}\right| = \frac{n^2}{(n+1)^2}$
- $L = \lim \frac{n^2}{(n+1)^2} = 1$

$L = 1$: **inconclusive**. (We know it converges by p-series test, $p = 2 > 1$)

**Example 4: With Alternating Sign**
$$\sum \frac{(-1)^n \cdot n^2}{2^n}$$

- $\left|\frac{a_{n+1}}{a_n}\right| = \frac{(n+1)^2}{2^{n+1}} \cdot \frac{2^n}{n^2} = \frac{(n+1)^2}{2n^2}$
- $L = \lim \frac{(n+1)^2}{2n^2} = \frac{1}{2}$

$L < 1$, so series **converges absolutely** ✓

### Closing (7 min)

**Test Summary**

| Test | When to Use | Conditions/Result |
|------|-------------|-------------------|
| Alternating Series | $(-1)^n$ factor | $b_n$ decreasing, $\lim b_n = 0$ → Converges |
| Ratio Test | Factorials, exponentials | $L < 1$: converges; $L > 1$: diverges; $L = 1$: inconclusive |

**Decision Guidance:**
- See $(-1)^n$? → Try Alternating Series Test
- See $n!$ or $a^n$? → Try Ratio Test
- Ratio test gives $L = 1$? → Use a different test

**When Both Apply:**
For alternating series with factorials, ratio test often determines absolute convergence, which is stronger.

**Exit Ticket:**
1. Does $\sum \frac{(-1)^n}{\sqrt{n}}$ converge? Show both AST conditions.
2. Use ratio test: Does $\sum \frac{2^n \cdot n!}{n^n}$ converge?
3. Why can't we use the ratio test for $\sum 1/n^3$?

---

## Differentiation Strategies

### For students who need more support:
- Provide a visual number line for tracking alternating partial sums
- Create a template for ratio test: write $a_n$, write $a_{n+1}$, form ratio, simplify, take limit
- Practice recognizing alternating structure in various notations
- Focus on factorial simplification before applying to series

### For advanced students:
- Explore: Root test as an alternative to ratio test
- Challenge: Find the sum of $\sum \frac{(-1)^n}{(2n+1)}$ (relates to $\pi/4$)
- Prove: Why does the ratio test give $L = 1$ for all p-series?
- Research: Stirling's approximation and its use with factorial series

---

## Common Misconceptions to Address

1. **"Decreasing terms alone means convergent"**
   - Address: BOTH conditions needed for AST. Counter-example: $b_n = 1 + 1/n$ is decreasing, but $\lim = 1 \neq 0$.

2. **"All alternating series converge"**
   - Address: $\sum (-1)^n \cdot n/(n+1)$ alternates but diverges because $\lim b_n = 1 \neq 0$.

3. **"Ratio test works for all series"**
   - Address: For p-series $\sum 1/n^p$, ratio test always gives $L = 1$ (inconclusive). Ratio test has blind spots.

4. **"L = 1 means borderline convergence"**
   - Address: $L = 1$ means NO INFORMATION. $\sum 1/n$ (diverges) and $\sum 1/n^2$ (converges) both have $L = 1$.

5. **"Forgetting absolute value in ratio test"**
   - Address: Always use $|a_{n+1}/a_n|$. For alternating series, this removes the sign.

---

## Assessment Notes

- Verify students check BOTH conditions for alternating series test
- Watch for algebraic errors in factorial simplification
- Ensure students recognize when ratio test is inconclusive and need another test
- Check that error bound applications use $b_{n+1}$ (next term), not $b_n$

---

## Connections

**Prior knowledge:**
- nth term test (Class 57)—if $b_n \not\to 0$, series diverges
- Geometric series (Class 56)—ratio test compares to geometric behavior
- Comparison tests (Class 58)—alternative when ratio test is inconclusive

**Future connections:**
- Absolute vs conditional convergence (Class 60)
- Taylor series often alternate (Classes 61-62)
- Alternating series error bound crucial for approximation (Class 63)
- Ratio test determines radius of convergence (Class 63)

---

## AP Exam Notes

**Alternating Series on AP:**
- Free response: "Determine if converges, justify with AST"
- Must show BOTH conditions explicitly
- Error bound frequently tested: "Find n so error < ε"

**Ratio Test on AP:**
- Show the ratio computation clearly
- State the limit value
- Conclude: "Since $L < 1$, the series converges by the ratio test"
- If $L = 1$, explicitly state "inconclusive" and use another test

**Common Scoring Errors:**
- Not verifying $b_n$ is decreasing
- Computing ratio but not taking the limit
- Concluding convergence when $L = 1$
