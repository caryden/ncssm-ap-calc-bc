# Lesson Plan: Geometric Series

## Class 56 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This session develops the complete theory of geometric series—the first family of series for which students can determine both convergence and the exact sum. Students will derive the finite sum formula, establish the convergence condition $|r| < 1$, and apply the infinite sum formula $S = a/(1-r)$. Geometric series serve as benchmarks for comparison tests in later classes and appear throughout applications including repeating decimals and physics problems.

**CED Topic:** 10.2 - Working with Geometric Series

---

## Learning Objectives

By the end of this class, students will be able to:

1. Identify a geometric series and determine its first term $a$ and common ratio $r$
2. Derive and apply the finite geometric sum formula $S_n = a(1-r^n)/(1-r)$
3. State the convergence condition for infinite geometric series ($|r| < 1$)
4. Calculate the sum of a convergent infinite geometric series using $S = a/(1-r)$
5. Determine divergence when $|r| \geq 1$ and explain why the formula fails

---

## Materials Needed

- Presentation slides with D3 visualizations (square subdivision animation)
- Graphing calculators
- Student devices for Desmos exploration
- Geometric series reference card (optional)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Repeating Decimal Mystery**

Write: $0.333\ldots = \frac{3}{10} + \frac{3}{100} + \frac{3}{1000} + \cdots$

Ask: "We know this equals $1/3$, but how do we PROVE it mathematically?"

**Today's Goal:** Develop a formula for summing this type of series exactly.

### Geometric Sequences Review (5 min)

**Definition**

A geometric sequence has each term as a constant multiple of the previous:
$$a_{n+1} = r \cdot a_n$$

The general term is $a_n = a \cdot r^{n-1}$ (starting at $n=1$) or $a_n = a \cdot r^n$ (starting at $n=0$).

The constant $r$ is the common ratio: $r = a_{n+1}/a_n$.

**Quick Examples:**
- $2, 6, 18, 54, \ldots$ has $r = 3$
- $1, 1/2, 1/4, 1/8, \ldots$ has $r = 1/2$
- $1, -1, 1, -1, \ldots$ has $r = -1$
- $5, -10, 20, -40, \ldots$ has $r = -2$

### Finite Geometric Sum Formula (10 min)

**Derivation (The Multiply-by-r Trick)**

Let $S_n = a + ar + ar^2 + \cdots + ar^{n-1}$

Multiply both sides by $r$:
$$rS_n = ar + ar^2 + ar^3 + \cdots + ar^n$$

Subtract:
$$S_n - rS_n = a - ar^n$$
$$S_n(1-r) = a(1-r^n)$$
$$S_n = \frac{a(1-r^n)}{1-r} \quad \text{when } r \neq 1$$

**Why This Works:** The "multiply and subtract" trick exploits the self-similar structure—most terms cancel, leaving only the first and a "leftover" from the last.

**Example:** Find $2 + 6 + 18 + 54 + 162$
- $a = 2$, $r = 3$, $n = 5$ terms
- $S_5 = 2(1-3^5)/(1-3) = 2(1-243)/(-2) = 2(-242)/(-2) = 242$

### Infinite Geometric Series (12 min)

**The Key Question**

What happens as $n \to \infty$?

$$S = \lim_{n \to \infty} S_n = \lim_{n \to \infty} \frac{a(1-r^n)}{1-r}$$

**Convergence Analysis:**

The behavior depends on $r^n$ as $n \to \infty$:
- If $|r| < 1$: $r^n \to 0$, so $S = a(1-0)/(1-r) = a/(1-r)$
- If $|r| > 1$: $r^n \to \pm\infty$, series diverges
- If $r = 1$: $S_n = na \to \pm\infty$, series diverges
- If $r = -1$: $S_n$ oscillates between $a$ and $0$, series diverges

**The Geometric Series Theorem**

$$\sum_{n=0}^{\infty} ar^n = \frac{a}{1-r} \quad \text{if } |r| < 1$$

The series diverges if $|r| \geq 1$.

**Visual Proof: Square Subdivision**

Show D3 animation: Start with unit square. Shade half (1/2), then half the remainder (1/4), then half again (1/8), etc.
- Total shaded area: $1/2 + 1/4 + 1/8 + \cdots$
- Approaches filling the entire square: sum = 1
- Formula check: $a = 1/2$, $r = 1/2$, $S = (1/2)/(1 - 1/2) = 1$ ✓

### Worked Examples (12 min)

**Example 1: Basic Computation**

Find: $\sum_{n=0}^{\infty} (1/2)^n$
- $a = 1$ (when $n=0$, term is $(1/2)^0 = 1$)
- $r = 1/2$, and $|r| = 1/2 < 1$ ✓
- $S = 1/(1 - 1/2) = 1/(1/2) = 2$

**Example 2: Different First Term**

Find: $\sum_{n=0}^{\infty} 3 \cdot (1/4)^n$
- $a = 3$, $r = 1/4$, $|r| < 1$ ✓
- $S = 3/(1 - 1/4) = 3/(3/4) = 4$

**Example 3: Negative Ratio**

Find: $\sum_{n=0}^{\infty} (-1/3)^n$
- $a = 1$, $r = -1/3$, $|r| = 1/3 < 1$ ✓
- $S = 1/(1 - (-1/3)) = 1/(4/3) = 3/4$

**Example 4: Series Starting at n=1**

Find: $\sum_{n=1}^{\infty} (2/5)^n$
- First term (when $n=1$): $(2/5)^1 = 2/5$
- So $a = 2/5$, $r = 2/5$, $|r| < 1$ ✓
- $S = (2/5)/(1 - 2/5) = (2/5)/(3/5) = 2/3$

Alternative: $\sum_{n=1}^{\infty} r^n = r/(1-r)$ when $|r| < 1$

**Example 5: Recognizing Disguised Geometric Series**

Find: $\sum_{n=0}^{\infty} \frac{2^n}{5^n}$
- Rewrite: $\sum (2/5)^n$
- $a = 1$, $r = 2/5$, $|r| < 1$ ✓
- $S = 1/(1 - 2/5) = 5/3$

**Example 6: Divergent Series**

Analyze: $\sum_{n=0}^{\infty} (5/4)^n$
- $r = 5/4$, $|r| = 5/4 > 1$
- Series DIVERGES—no sum exists
- Cannot apply the formula!

### Applications (4 min)

**Repeating Decimals**

$0.777\ldots = \frac{7}{10} + \frac{7}{100} + \frac{7}{1000} + \cdots$
- $a = 7/10$, $r = 1/10$
- $S = (7/10)/(1 - 1/10) = (7/10)/(9/10) = 7/9$ ✓

**Preview: Bouncing Ball**

A ball dropped from 10 m bounces to 80% of its previous height.
- Total distance = down + up + down + up + ...
- This involves a geometric series!

### Closing (2 min)

**Summary**
- Geometric series: $\sum ar^n$ has constant ratio between terms
- Convergence: if and only if $|r| < 1$
- Sum formula: $S = a/(1-r)$ where $a$ is the first term
- ALWAYS verify $|r| < 1$ before applying the formula

**Exit Ticket:**
1. Find the sum: $4 + 2 + 1 + 1/2 + 1/4 + \cdots$
2. For what values of $x$ does $\sum_{n=0}^{\infty} x^n$ converge? What is the sum?
3. Explain why $1 + 2 + 4 + 8 + \cdots$ does not have a sum.

---

## Differentiation Strategies

### For students who need more support:
- Provide a step-by-step template: (1) Find $a$, (2) Find $r$, (3) Check $|r| < 1$, (4) Apply formula
- Use the square-cutting visualization repeatedly with different ratios
- Focus on series starting at $n=0$ before introducing $n=1$ variations
- Pair practice: one student identifies $a$ and $r$, partner checks and computes

### For advanced students:
- Derive: What is the sum of $\sum_{n=1}^{\infty} n \cdot r^n$? (Differentiate the geometric series)
- Explore: Find the sum of $1 + 2(1/2) + 3(1/4) + 4(1/8) + \cdots$
- Challenge: Convert $0.\overline{142857}$ to a fraction using geometric series
- Research: Where do geometric series appear in finance (present value, annuities)?

---

## Common Misconceptions to Address

1. **"First term is always 1"**
   - Address: Students memorize $S = 1/(1-r)$ without the $a$. Emphasize $S = a/(1-r)$ where $a$ is the FIRST TERM of the series. Show examples where $a \neq 1$.

2. **"The ratio must be positive"**
   - Address: The condition is $|r| < 1$, not $0 < r < 1$. Series with $r = -1/2$ converges: $1 - 1/2 + 1/4 - 1/8 + \cdots = 2/3$.

3. **"Starting index doesn't matter"**
   - Address: The first TERM changes! $\sum_{n=0}^{\infty} r^n$ has first term 1, giving $1/(1-r)$. $\sum_{n=1}^{\infty} r^n$ has first term $r$, giving $r/(1-r)$.

4. **"Series with large early terms must diverge"**
   - Address: $1000 + 100 + 10 + 1 + 0.1 + \cdots$ converges because $r = 0.1 < 1$. Initial magnitude doesn't determine convergence—the ratio does.

5. **"Can use formula even when |r| ≥ 1"**
   - Address: Computing $2 + 4 + 8 + \cdots = 2/(1-2) = -2$ is WRONG. Must verify $|r| < 1$ FIRST.

---

## Assessment Notes

- Check that students correctly identify $a$ as the first TERM, not the coefficient
- Watch for sign errors when $r$ is negative
- Ensure students always verify $|r| < 1$ before applying the formula
- Monitor for index confusion (starting at $n=0$ vs $n=1$)

---

## Connections

**Prior knowledge:**
- Sequence and series definitions (Class 55)
- Limit evaluation as $n \to \infty$
- Properties of exponents

**Future connections:**
- Comparison tests use geometric series as benchmarks (Class 58)
- Ratio test compares series to geometric behavior (Class 59)
- Taylor series often have geometric structure or are modified geometric series (Classes 61-62)
- Power series convergence relates to geometric series (Class 63)
- Many applications in physics, finance, and probability

---

## Calculator Notes

- This is typically a non-calculator topic on the AP exam
- Students should compute sums by hand using the formula
- Calculators can verify by computing large partial sums:
  - Example: $S_{20}$ for $\sum (1/2)^n$ should be very close to 2
- Encourage estimation before computation to check reasonableness
