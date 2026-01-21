# Research: Alternating Series Test and Ratio Test

## Overview

This document summarizes research on how expert educators teach the alternating series test and the ratio test for convergence. It informs the lesson plan and presentation spec for Class 59 (CED Topics 10.7: Alternating Series Test for Convergence, 10.8: Ratio Test for Convergence).

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Series with Patterns

**Sources:**
- [3blue1brown.com/topics/calculus](https://www.3blue1brown.com/topics/calculus)
- [3blue1brown.com/lessons/taylor-series](https://www.3blue1brown.com/lessons/taylor-series)

**Core Pedagogical Strategy:**

Grant Sanderson approaches alternating series through the lens of "oscillating convergence" — the partial sums bounce back and forth, gradually zeroing in on the limit. For the ratio test, he emphasizes the geometric series comparison: if consecutive term ratios approach r, the series behaves like a geometric series with that ratio.

**Key Teaching Moves:**

1. **Alternating series visualization** - Show partial sums oscillating and dampening
2. **The "bracket" argument** - Partial sums are alternately above and below the limit
3. **Ratio test as "eventual geometric series"** - If a_{n+1}/a_n → r, the tail behaves geometrically
4. **Critical boundary at r = 1** - Neither geometric convergence nor divergence dominates

**The Key Insight:**

> "The alternating series test works because the oscillations get smaller and smaller, trapping the sum in an ever-shrinking interval."

> "The ratio test asks: does this series eventually behave like a geometric series?"

### Khan Academy: Alternating and Ratio Tests

**Source:** [Khan Academy - Alternating Series](https://www.khanacademy.org/math/ap-calculus-bc/bc-series-new/bc-10-7/v/alternating-series-test)

**Teaching Method Structure:**

Khan Academy presents these tests with careful attention to conditions:

**Alternating Series:**
1. Define alternating series: Σ(-1)^n b_n or Σ(-1)^(n+1) b_n with b_n > 0
2. State conditions: b_n decreasing AND lim b_n = 0
3. Visualize convergence with number line
4. Error bound: |S - S_n| ≤ b_{n+1}

**Ratio Test:**
1. Compute L = lim|a_{n+1}/a_n|
2. If L < 1: converges absolutely
3. If L > 1 or L = ∞: diverges
4. If L = 1: test is inconclusive

**Key Teaching Points:**

1. **Both conditions needed:** For alternating series, check BOTH decreasing AND limit = 0
2. **Absolute value in ratio:** Use |a_{n+1}/a_n| to handle negative terms
3. **L = 1 is trouble:** Ratio test fails at the boundary
4. **Factorials love the ratio test:** n! terms simplify beautifully

### Professor Leonard: Test Mastery

**Source:** [Professor Leonard - Calculus 2](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

Professor Leonard emphasizes systematic checking of conditions:

**Alternating Series Framework:**
1. Recognize the alternating pattern: (-1)^n or (-1)^(n+1) factor
2. Identify b_n (the positive part)
3. Check: Is {b_n} eventually decreasing? (Show b_{n+1} < b_n or b_n' < 0)
4. Check: Does lim(n→∞) b_n = 0?
5. If BOTH yes: series converges

**Ratio Test Framework:**
1. Write out a_n and a_{n+1}
2. Compute |a_{n+1}/a_n| and simplify
3. Take lim(n→∞) of the result to get L
4. Apply criteria: L < 1 converges, L > 1 diverges, L = 1 inconclusive

**Best Applications:**
- Alternating: Series with explicit (-1)^n factor
- Ratio: Series with factorials, exponentials, or products

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Oscillating partial sums** | S_n bouncing above and below limit | Shows convergence through dampening |
| **Number line hops** | +b_1, then -b_2, then +b_3, ... | Visualizes the alternation |
| **Error bound visualization** | Shaded region showing |S - S_n| ≤ b_{n+1} | Makes error bound concrete |
| **Ratio progression** | Show a_{n+1}/a_n for increasing n | See it approaching L |
| **Geometric comparison** | Side-by-side with geometric series of ratio L | Justifies ratio test |
| **L threshold diagram** | Number line with L < 1 green, L > 1 red, L = 1 yellow | Organizes outcomes |
| **Term magnitude decay** | Bar chart of |a_n| showing decay rate | Shows why ratio < 1 implies convergence |

### Recommended D3 Visualization

**Alternating Series Explorer:**
1. Display series Σ(-1)^n b_n with adjustable b_n formula
2. Plot partial sums S_1, S_2, S_3, ... on number line
3. Show oscillation: S_1 (above), S_2 (below), S_3 (above), ...
4. Display convergence zone shrinking
5. Show limit S with error bound |S - S_n| ≤ b_{n+1}
6. Toggle to verify conditions: b_n decreasing? lim b_n = 0?

**Ratio Test Visualizer:**
1. Input series a_n
2. Display ratio sequence |a_{n+1}/a_n| for n = 1, 2, 3, ...
3. Plot ratios vs n
4. Show horizontal asymptote at L = lim
5. Color code: green zone (L < 1), red zone (L > 1), yellow at L = 1
6. Display conclusion based on L value

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Decreasing terms means convergent"** | Forgetting the lim b_n = 0 condition. | Counter-example: b_n = 1 + 1/n is decreasing but lim = 1 ≠ 0, so Σ(-1)^n(1+1/n) diverges. BOTH conditions required. |
| **"All alternating series converge"** | Overgeneralizing the test. | Σ(-1)^n(n/(n+1)) alternates but diverges (lim ≠ 0). The test has conditions! |
| **"Ratio test works for all series"** | Not recognizing when L = 1. | For Σ1/n² (converges) and Σ1/n (diverges), both have L = 1. Ratio test gives NO information here. |
| **"L = 1 means borderline convergence"** | Thinking L = 1 is a special convergent case. | L = 1 is INCONCLUSIVE. Could be either. Must use other tests. |
| **"Forgetting absolute value in ratio"** | Computing a_{n+1}/a_n without | | for alternating series. | The ratio test uses |a_{n+1}/a_n| because we're comparing magnitudes. |
| **"Ratio test for p-series"** | Trying to use ratio test on Σ1/n^p. | This always gives L = 1 (inconclusive). p-series need the p-series test or integral test. |

### Alternating Series Errors

| Error | Example | Correction |
|-------|---------|------------|
| **Not verifying decreasing** | Assuming b_n = n/(n²+1) is decreasing | Must show: b_{n+1} < b_n or compute b'(x) and show < 0 for large x |
| **Wrong series form** | Applying test to series not in alternating form | Must have explicit (-1)^n or (-1)^(n+1) factor |
| **Forgetting lim condition** | Only checking decreasing | BOTH conditions needed: decreasing AND lim b_n = 0 |

### Ratio Test Errors

| Error | Example | Correction |
|-------|---------|------------|
| **Algebra errors with factorials** | (n+1)!/n! = n+1, but students often err | Practice: (n+1)! = (n+1)·n!, so ratio = n+1 |
| **Wrong limit computation** | Not simplifying before taking limit | Simplify ratio first, then take limit |
| **Applying when L = 1** | "L = 1 so it converges by ratio test" | L = 1 is INCONCLUSIVE — need different test |

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 59 lesson should:

### Opening (5 min)
- Display: 1 - 1/2 + 1/3 - 1/4 + 1/5 - ...
- Question: Does this converge? (It's the alternating harmonic series!)
- Compare: We know 1 + 1/2 + 1/3 + ... diverges. Does alternating help?
- Preview: The alternating series test and ratio test

### Alternating Series Test (18 min)

**Definition:**
- An alternating series has the form Σ(-1)^n b_n or Σ(-1)^(n+1) b_n where b_n > 0
- Terms alternate in sign: positive, negative, positive, negative, ...

**The Alternating Series Test:**
If:
1. b_{n+1} ≤ b_n for all n (decreasing)
2. lim(n→∞) b_n = 0

Then Σ(-1)^n b_n converges.

**Visual Justification (with D3):**
1. Plot partial sums on number line
2. S_1 = b_1 (positive)
3. S_2 = b_1 - b_2 < S_1 (drop below)
4. S_3 = S_2 + b_3 > S_2 (rise, but less than S_1)
5. Continue: oscillating, dampening
6. Since b_n → 0, oscillations shrink to zero
7. Partial sums converge to some S

**Worked Examples:**

**Example 1: Alternating Harmonic Series**
- Σ(-1)^(n+1)/n = 1 - 1/2 + 1/3 - 1/4 + ...
- b_n = 1/n > 0 ✓
- Decreasing: 1/(n+1) < 1/n ✓
- lim(1/n) = 0 ✓
- Converges! (In fact, = ln 2)

**Example 2:**
- Σ(-1)^n · n/(n²+1)
- b_n = n/(n²+1)
- Decreasing? Check: b'(x) = (x²+1 - 2x²)/(x²+1)² = (1-x²)/(x²+1)² < 0 for x > 1 ✓
- lim(n/(n²+1)) = 0 ✓
- Converges ✓

**Example 3: Test Failure**
- Σ(-1)^n · n/(n+1)
- b_n = n/(n+1)
- lim(n/(n+1)) = 1 ≠ 0 ✗
- Test does not apply! (Also diverges by nth term test)

**Error Bound:**
- |S - S_n| ≤ b_{n+1}
- The error after n terms is at most the next term
- This is incredibly useful for approximation!

### Ratio Test (15 min)

**The Test:**
- Let L = lim(n→∞) |a_{n+1}/a_n|
- If L < 1: series converges absolutely
- If L > 1 (or L = ∞): series diverges
- If L = 1: test is inconclusive

**Intuition:**
- If the ratio of consecutive terms approaches r, the series eventually behaves like a geometric series with ratio r
- Geometric series converges when |r| < 1

**Best Use Cases:**
- Series with factorials (n!)
- Series with exponentials (a^n)
- Series with products of both

**Worked Examples:**

**Example 1: Factorial**
- Σ(n!/3^n)
- a_n = n!/3^n, a_{n+1} = (n+1)!/3^(n+1)
- |a_{n+1}/a_n| = [(n+1)!/3^(n+1)] · [3^n/n!] = (n+1)/3
- L = lim(n+1)/3 = ∞
- L > 1, so series DIVERGES ✓

**Example 2: Exponential over Factorial**
- Σ(3^n/n!)
- a_n = 3^n/n!
- |a_{n+1}/a_n| = [3^(n+1)/(n+1)!] · [n!/3^n] = 3/(n+1)
- L = lim 3/(n+1) = 0
- L < 1, so series CONVERGES ✓

**Example 3: L = 1 Case**
- Σ(1/n²)
- |a_{n+1}/a_n| = [1/(n+1)²] · [n²/1] = n²/(n+1)²
- L = lim n²/(n+1)² = 1
- L = 1, test INCONCLUSIVE
- (We know it converges by p-series test)

**Example 4: Alternating with Factorial**
- Σ(-1)^n · n²/2^n
- |a_{n+1}/a_n| = [(n+1)²/2^(n+1)] · [2^n/n²] = (n+1)²/(2n²)
- L = lim(n+1)²/(2n²) = 1/2
- L < 1, so series CONVERGES absolutely ✓

### Closing (7 min)

**Test Summary:**
| Test | When to Use | Conclusion |
|------|-------------|------------|
| Alternating Series | (-1)^n factor, b_n decreasing, lim=0 | Converges |
| Ratio Test | Factorials, exponentials | L<1: converges, L>1: diverges, L=1: inconclusive |

**Decision Guidance:**
- See (-1)^n? Try alternating series test
- See n! or a^n? Try ratio test
- Ratio test gives L = 1? Use another test

**Exit Ticket:**
1. Does Σ(-1)^n/√n converge? Which test? Show both conditions.
2. Use ratio test: Does Σ(2^n · n!/n^n) converge?
3. Why can't we use ratio test for Σ1/n³?

### Key Principles Throughout

1. **Conditions matter:** Alternating series test has TWO conditions — check both
2. **Ratio test loves factorials:** a_{n+1}/a_n simplifies beautifully with factorials
3. **L = 1 is a warning:** Means ratio test gives no information
4. **Error bounds are useful:** For alternating series, error ≤ next term
5. **Building the toolkit:** Now we have multiple tests for different situations

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **10.7:** Alternating Series Test for Convergence
- **10.8:** Ratio Test for Convergence

### Learning Objectives
- LO 10.7.A: Determine whether an alternating series converges using the alternating series test.
- LO 10.8.A: Determine whether a series converges or diverges using the ratio test.

### Essential Knowledge (from CED)
- EK 10.7A1: Alternating series test: if b_n is positive, decreasing, and lim b_n = 0, then Σ(-1)^n b_n converges
- EK 10.7A2: If an alternating series converges, |S - S_n| ≤ b_{n+1}
- EK 10.8A1: Ratio test: if L = lim|a_{n+1}/a_n| < 1, converges; if L > 1, diverges; if L = 1, inconclusive

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (applying tests systematically)
- **MP 2:** Connecting Representations (numerical computations and conclusions)
- **MP 3:** Justification (verifying conditions, showing all steps)
- **MP 4:** Communication (proper notation, complete arguments)

### AP Exam Connection
- Multiple choice: Identifying which test applies, quick convergence determination
- Free response: Complete justification with conditions verified
- Common errors tested:
  - Not verifying both alternating series conditions
  - Claiming L = 1 gives convergence
  - Algebra errors in ratio computation

### Error Bound Applications
The alternating series error bound is frequently tested:
- "Approximate Σ(-1)^n/n! to within 0.01 of the exact value"
- Need to find n where b_{n+1} < 0.01

---

## Sources

### Primary Sources
- [3Blue1Brown: Taylor Series](https://www.3blue1brown.com/lessons/taylor-series)
- [Khan Academy: Alternating Series Test](https://www.khanacademy.org/math/ap-calculus-bc/bc-series-new/bc-10-7)
- [Khan Academy: Ratio Test](https://www.khanacademy.org/math/ap-calculus-bc/bc-series-new/bc-10-8)
- [Professor Leonard: Calculus 2](https://www.youtube.com/@ProfessorLeonard)

### Teaching Resources
- [Paul's Online Math Notes: Alternating Series Test](https://tutorial.math.lamar.edu/Classes/CalcII/AlternatingSeries.aspx)
- [Paul's Online Math Notes: Ratio Test](https://tutorial.math.lamar.edu/Classes/CalcII/RatioTest.aspx)
- [MIT OpenCourseWare: Convergence Tests](https://ocw.mit.edu/courses/18-01-single-variable-calculus-fall-2006/)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)

### Error Bound Resources
- [Calculus Made Easy: Alternating Series Error Bound](https://calculusmadeeasy.org/)
- [AP Central: Series FRQ Examples](https://apcentral.collegeboard.org/)
