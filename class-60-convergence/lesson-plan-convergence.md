# Lesson Plan: Absolute and Conditional Convergence

## Class 60 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This session introduces the crucial distinction between absolute and conditional convergence. Students will learn that a series converges absolutely if the series of absolute values converges, and converges conditionally if it converges but the absolute value series diverges. The Riemann Rearrangement Theorem motivates why this distinction matters: conditionally convergent series can be rearranged to converge to any value, while absolutely convergent series are stable under rearrangement.

**CED Topic:** 10.9 - Determining Absolute or Conditional Convergence

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define absolute convergence and conditional convergence
2. Classify series into three categories: divergent, conditionally convergent, or absolutely convergent
3. Apply a systematic algorithm: test $\sum |a_n|$ first, then $\sum a_n$ if needed
4. Identify which convergence tests establish absolute convergence
5. Explain why absolute convergence implies convergence

---

## Materials Needed

- Presentation slides with D3 visualizations (classification flowchart, partial sum comparison)
- Graphing calculators
- Student devices for Desmos exploration
- Convergence test reference chart (complete version)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Recall:** We proved $\sum \frac{(-1)^n}{n}$ converges (alternating harmonic series, AST).

**Question:** What about $\sum \left|\frac{(-1)^n}{n}\right| = \sum \frac{1}{n}$?

This is the harmonic series—it DIVERGES!

The alternating harmonic series converges, but "just barely"—it only works because of the cancellation between positive and negative terms.

**Today's Goal:** Distinguish between "strong" and "weak" convergence.

### Definitions and Hierarchy (10 min)

**Absolute Convergence**

A series $\sum a_n$ converges absolutely if $\sum |a_n|$ converges.

**Key Theorem:** If $\sum |a_n|$ converges, then $\sum a_n$ converges.

Intuition: Taking absolute values can only make convergence "harder." If it converges even with all positive terms, it definitely converges with the original signs.

**Conditional Convergence**

A series $\sum a_n$ converges conditionally if:
1. $\sum a_n$ converges
2. $\sum |a_n|$ diverges

The series converges "only because of cancellation" between positive and negative terms.

**The Three Categories**

| Category | $\sum a_n$ | $\sum |a_n|$ |
|----------|------------|--------------|
| Divergent | Diverges | — |
| Conditionally Convergent | Converges | Diverges |
| Absolutely Convergent | Converges | Converges |

**Hierarchy Visualization**

Draw nested sets:
- Absolutely Convergent ⊂ Convergent ⊂ All Series
- Every absolutely convergent series is convergent
- Some convergent series are not absolutely convergent (conditional)

**Important Note:** A series with all positive terms cannot be conditionally convergent (if all $a_n \geq 0$, then $|a_n| = a_n$, so both series are the same).

### The Classification Algorithm (8 min)

**Systematic Procedure**

1. **Test $\sum |a_n|$ first** using any appropriate test (p-series, comparison, ratio, etc.)

2. **If $\sum |a_n|$ converges:** DONE — $\sum a_n$ converges ABSOLUTELY

3. **If $\sum |a_n|$ diverges:** Test $\sum a_n$ directly (often using AST for alternating series)

4. **If $\sum a_n$ converges:** $\sum a_n$ converges CONDITIONALLY

5. **If $\sum a_n$ diverges:** $\sum a_n$ DIVERGES

**Which Tests Give Which Result?**

| Test | Result When Applicable |
|------|------------------------|
| Ratio test ($L < 1$) | Absolute convergence |
| Root test ($L < 1$) | Absolute convergence |
| Direct/Limit comparison on $|a_n|$ | Absolute convergence |
| Integral test on $|a_n|$ | Absolute convergence |
| Alternating series test | Convergence (must check absolute separately) |

**Key Insight:** Ratio test and comparison on absolute values directly give absolute convergence. AST only proves convergence—you must separately test the absolute series.

### Worked Examples (15 min)

**Example 1: Absolutely Convergent**

Classify: $\sum \frac{(-1)^n}{n^2}$

- Test $\sum |a_n| = \sum \frac{1}{n^2}$
- This is a p-series with $p = 2 > 1$ → **Converges**
- Since $\sum |a_n|$ converges, $\sum a_n$ converges **ABSOLUTELY** ✓

**Example 2: Conditionally Convergent**

Classify: $\sum \frac{(-1)^n}{n}$

- Test $\sum |a_n| = \sum \frac{1}{n}$ (harmonic series) → **Diverges**
- Test $\sum a_n$: Alternating series with $b_n = 1/n$
  - Decreasing ✓, $\lim(1/n) = 0$ ✓
  - By AST, $\sum a_n$ **converges**
- $\sum |a_n|$ diverges but $\sum a_n$ converges → **CONDITIONALLY convergent** ✓

**Example 3: Divergent**

Classify: $\sum (-1)^n \cdot \frac{n}{n+1}$

- Test for convergence: $\lim |a_n| = \lim \frac{n}{n+1} = 1 \neq 0$
- By nth term test, $\sum a_n$ **DIVERGES** ✓
- (No need to test $\sum |a_n|$—already know it diverges)

**Example 4: Using Ratio Test**

Classify: $\sum \frac{(-1)^n \cdot n}{3^n}$

- Ratio test: $\left|\frac{a_{n+1}}{a_n}\right| = \frac{(n+1)/3^{n+1}}{n/3^n} = \frac{n+1}{3n}$
- $L = \lim \frac{n+1}{3n} = \frac{1}{3} < 1$
- Ratio test gives $L < 1$ → converges **ABSOLUTELY** ✓
- (Ratio test directly establishes absolute convergence)

**Example 5: Conditionally Convergent Variant**

Classify: $\sum \frac{(-1)^n}{\sqrt{n}}$

- Test $\sum |a_n| = \sum \frac{1}{\sqrt{n}} = \sum \frac{1}{n^{1/2}}$
- p-series with $p = 1/2 < 1$ → **Diverges**
- Test $\sum a_n$: AST with $b_n = 1/\sqrt{n}$
  - Decreasing ✓, $\lim = 0$ ✓ → $\sum a_n$ **converges**
- **CONDITIONALLY convergent** ✓

**Practice Classification (Quick)**

| Series | $\sum |a_n|$ | $\sum a_n$ | Classification |
|--------|--------------|------------|----------------|
| $\sum (-1)^n/n^3$ | Converges (p=3) | — | Absolute |
| $\sum (-1)^n \ln(n)/n$ | Diverges | Converges (AST) | Conditional |
| $\sum \cos(n\pi)/n^{0.9}$ | Diverges (p=0.9) | Converges (AST) | Conditional |
| $\sum (-1)^n \cdot 2^n/n!$ | Converges (ratio) | — | Absolute |

### Why It Matters: Rearrangement Theorem (5 min)

**The Riemann Rearrangement Theorem**

If $\sum a_n$ converges conditionally, then for ANY real number $S$, there exists a rearrangement of the terms that converges to $S$. You can even rearrange to diverge to $\pm\infty$!

**Demonstration**

Standard alternating harmonic: $1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots = \ln 2 \approx 0.693$

Rearrangement (two positive, one negative):
$1 + \frac{1}{3} - \frac{1}{2} + \frac{1}{5} + \frac{1}{7} - \frac{1}{4} + \cdots = \frac{3}{2}\ln 2 \approx 1.04$

Same terms, different sum!

**Implications:**
- Absolutely convergent: Rearrangement doesn't change the sum (stable)
- Conditionally convergent: Rearrangement can change the sum (fragile)

This is why absolute convergence is "stronger"—the series is stable under reordering.

### Closing (7 min)

**Summary Table**

| To Determine | Action |
|--------------|--------|
| Absolute convergence | Test $\sum |a_n|$ for convergence |
| Conditional convergence | $\sum |a_n|$ diverges AND $\sum a_n$ converges |
| Which test to use | Ratio test → absolute; AST → check separately |

**Classification Flowchart**

```
Start: Does Σ|aₙ| converge?
  ├─ YES → ABSOLUTELY CONVERGENT
  └─ NO → Does Σaₙ converge?
            ├─ YES → CONDITIONALLY CONVERGENT
            └─ NO → DIVERGENT
```

**Exit Ticket:**
1. Define absolute and conditional convergence in your own words.
2. Classify $\sum \frac{(-1)^n}{n+5}$ with justification.
3. Why does absolute convergence "imply" convergence? Explain intuitively.

---

## Differentiation Strategies

### For students who need more support:
- Provide a filled-in flowchart for classification
- Focus on the algorithm: always test $\sum |a_n|$ FIRST
- Use color coding: green for absolute, yellow for conditional, red for divergent
- Practice with series that have clear p-series structure

### For advanced students:
- Prove: If $\sum a_n$ converges absolutely, any rearrangement converges to the same sum
- Explore: Construct a rearrangement of the alternating harmonic series converging to a specific value
- Research: Riemann's proof of the rearrangement theorem
- Challenge: Can a series of positive terms ever be conditionally convergent?

---

## Common Misconceptions to Address

1. **"Absolute and conditional are the same"**
   - Address: Absolute is STRONGER. Use the hierarchy diagram. Absolute → Convergent, but Conditional → NOT Absolute.

2. **"All alternating series are conditional"**
   - Address: $\sum (-1)^n/2^n$ converges absolutely (geometric). Alternating doesn't automatically mean conditional.

3. **"Conditional means 'might converge'"**
   - Address: Conditional convergence IS convergence. "Conditional" describes HOW it converges (depending on cancellation).

4. **"Test $\sum a_n$ first"**
   - Address: WRONG order. Always test $\sum |a_n|$ first. If it converges, you're done.

5. **"Positive series can be conditional"**
   - Address: Impossible. If all $a_n > 0$, then $|a_n| = a_n$, so the series and its absolute value series are identical.

---

## Assessment Notes

- Check that students test $\sum |a_n|$ FIRST in the algorithm
- Verify complete justification: must address both $\sum |a_n|$ and (if needed) $\sum a_n$
- Watch for confusion between "converges" and "converges absolutely"
- Note understanding of why ratio test gives absolute convergence

---

## Connections

**Prior knowledge:**
- All previous convergence tests (Classes 55-59)
- Alternating series test (Class 59)
- Ratio test (Class 59)

**Future connections:**
- Taylor series convergence types (Classes 61-62)
- Absolute convergence allows term-by-term operations (Class 62)
- Power series convergence inside interval is absolute (Class 63)

---

## AP Exam Notes

**Standard Question Format:**

"Determine whether the series converges absolutely, converges conditionally, or diverges. Justify your answer."

**Required Elements for Full Credit:**
1. Test $\sum |a_n|$ with explicit work
2. State result: converges or diverges
3. If $\sum |a_n|$ diverges: test $\sum a_n$ with appropriate method
4. State final classification with complete justification

**Example Complete Response:**

"Test absolute convergence: $\sum |(-1)^n/\sqrt{n}| = \sum 1/\sqrt{n}$. This is a p-series with $p = 1/2 < 1$, so it diverges.

Test the original series: $\sum (-1)^n/\sqrt{n}$ is alternating with $b_n = 1/\sqrt{n}$. Since $b_n$ is decreasing and $\lim b_n = 0$, the series converges by the Alternating Series Test.

Since $\sum a_n$ converges but $\sum |a_n|$ diverges, the series converges conditionally."
