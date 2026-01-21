# Research: The Divergence Test and Integral Test

## Overview

This document summarizes research on how expert educators teach the divergence test (nth term test for divergence) and the integral test for series convergence. It informs the lesson plan and presentation spec for Class 57 (CED Topics 10.3: The nth Term Test for Divergence, 10.4: Integral Test for Convergence).

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Series Convergence Concepts

**Sources:**
- [3blue1brown.com/topics/calculus](https://www.3blue1brown.com/topics/calculus)
- [3blue1brown.com/lessons/taylor-series](https://www.3blue1brown.com/lessons/taylor-series)

**Core Pedagogical Strategy:**

Grant Sanderson approaches convergence tests through intuitive reasoning before formal statements. The integral test exemplifies this: "If terms behave like f(n) for a function f, we can use calculus tools to analyze the sum."

**Key Teaching Moves:**

1. **The divergence test as a sanity check** - If terms don't shrink to zero, adding them can't produce a finite sum
2. **Connecting discrete to continuous** - The integral test exploits the relationship between sums and integrals
3. **Visual comparison** - Rectangles under/over a curve show why Σf(n) and ∫f(x)dx have related behavior
4. **The harmonic series as touchstone** - Return to this example repeatedly as the boundary case

**The Key Insight:**

> "The integral test says: if you can draw rectangles of height a_n whose areas compare nicely to the area under a continuous decreasing function, then the behaviors match."

### Khan Academy: Convergence Tests

**Source:** [Khan Academy - Integral Test](https://www.khanacademy.org/math/ap-calculus-bc/bc-series-new/bc-10-4/v/integral-test-intuition)

**Teaching Method Structure:**

Khan Academy presents convergence tests systematically:
1. **Divergence test** - Quick first check, only proves divergence
2. **Integral test setup** - Requirements: continuous, positive, decreasing
3. **Visual justification** - Rectangle diagrams showing sum-integral relationship
4. **Application procedure** - Evaluate the improper integral

**Key Teaching Points:**

1. **Divergence test limitations:** Only proves divergence, NEVER convergence
2. **Integral test requirements:** Function must be continuous, positive, and decreasing on [1, ∞)
3. **The integral approximates the sum:** They converge/diverge together (but usually to different values)

**Pedagogical Sequence:**
- State divergence test, give examples
- Transition: "How do we prove convergence?"
- Set up integral test with visual
- Practice applying integral test

### Professor Leonard: Convergence Tests

**Source:** [Professor Leonard - Calculus 2](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

Professor Leonard emphasizes careful conditions and systematic application:

**Divergence Test:**
- "If lim(n→∞) a_n ≠ 0, the series Σa_n diverges"
- "If lim(n→∞) a_n = 0, the test is INCONCLUSIVE"
- Always do this test first — it's a quick filter

**Integral Test Framework:**
1. Let a_n = f(n) where f is continuous, positive, and decreasing on [1, ∞)
2. Then Σa_n and ∫₁^∞ f(x)dx either both converge or both diverge
3. The integral doesn't give the sum — just tells us about convergence

**Verification Steps:**
1. Check f(x) is continuous on [1, ∞)
2. Check f(x) > 0 on [1, ∞)
3. Check f(x) is decreasing (f'(x) < 0) on [1, ∞) — or at least eventually decreasing
4. Evaluate the improper integral

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Terms not approaching zero** | Plot a_n showing non-zero limit | Visualizes why divergence test works |
| **Left vs right rectangles** | Rectangles above vs below the curve | Shows bounds on the sum |
| **Integral as area** | Shaded area under f(x) from 1 to ∞ | Connects continuous and discrete |
| **Staircase vs smooth curve** | Step function vs continuous f(x) | Shows relationship between sum and integral |
| **Harmonic series visualization** | 1 + 1/2 + 1/3 + ... with ln(x) comparison | Classic integral test application |
| **p-series family** | f(x) = 1/x^p for various p | Sets up next lesson, shows threshold at p=1 |
| **Convergence/divergence flowchart** | Decision tree for which test to use | Organizes the testing procedure |

### Recommended D3 Visualization

**Integral Test Visualizer:**
1. Display function f(x) = 1/x (or user-selected function)
2. Show rectangles of width 1 at x = 1, 2, 3, ...
3. Height of each rectangle = f(n) = a_n
4. Toggle between left rectangles (upper bound) and right rectangles (lower bound)
5. Shade the integral area ∫₁^N f(x)dx
6. Display: "Sum S_N = [value]" and "Integral I_N = [value]"
7. Show inequalities: I_N ≤ S_N ≤ a_1 + I_N (for decreasing f)

**Divergence Test Demo:**
1. Display series terms a_n vs n
2. Show horizontal line at y = L (the limit)
3. Animate: "If a_n → L ≠ 0, terms keep adding approximately L"
4. Show S_N growing without bound when L ≠ 0
5. Counter-example: a_n = 1/n → 0, but still diverges (preview harmonic)

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"a_n → 0 means the series converges"** | The most pervasive error in series. Students interpret the divergence test backwards. | The divergence test ONLY proves divergence. If a_n → 0, the test tells us NOTHING. The harmonic series is the essential counterexample. |
| **"The integral gives the sum"** | Confusing convergence with equality. | Emphasize: ∫₁^∞ f(x)dx and Σf(n) converge/diverge together, but generally to DIFFERENT values. Integral is a tool, not the answer. |
| **"Decreasing means always going down"** | Applying integral test when f(x) isn't monotonic. | Check f'(x) < 0, or note f must be eventually decreasing. A few non-decreasing terms at the start don't matter. |
| **"Can use integral test for any series"** | Not checking continuity/positive/decreasing conditions. | List conditions explicitly each time. Some series (like alternating) violate "positive" condition. |
| **"Integral from 0 to ∞"** | Using wrong bounds. | Series Σa_n from n=1 corresponds to integral from 1 to ∞. Match the starting index! |
| **"The harmonic series converges slowly"** | Misunderstanding unbounded growth. | Harmonic series DIVERGES — partial sums grow without bound, just very slowly. After 10^43 terms, still divergent. |

### Integral Test Computational Errors

| Error | Example | Correction |
|-------|---------|------------|
| **Improper integral technique wrong** | ∫₁^∞ 1/x dx = [ln x]₁^∞ = "∞ - 0" = ∞ | Must write lim(b→∞) [ln b - ln 1] = lim(b→∞) ln b = ∞ (diverges) |
| **Forgetting the limit** | Writing ∫₁^∞ 1/x² dx = [-1/x]₁^∞ = -1/∞ + 1 = 1 | Should be lim(b→∞) [-1/b + 1] = 0 + 1 = 1 (converges) |
| **Not checking conditions** | Applying integral test to Σ((-1)^n/n) | f(x) = (-1)^x/x is not positive! Can't use integral test |

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 57 lesson should:

### Opening (5 min)
- Warm-up: What does lim(n→∞) n/(n+1) equal?
- Question: "Does Σ n/(n+1) converge?"
- Quick intuition: Each term is close to 1, so we're adding approximately 1 + 1 + 1 + ...
- Preview: The divergence test formalizes this intuition

### The Divergence Test (10 min)

**Statement:**
- If lim(n→∞) a_n ≠ 0, then Σa_n diverges

**Contrapositive Form:**
- If Σa_n converges, then lim(n→∞) a_n = 0

**Critical Warning (with emphasis):**
- If lim(n→∞) a_n = 0, the test is INCONCLUSIVE
- We CANNOT conclude convergence!
- Example: Σ(1/n) has lim(1/n) = 0, but DIVERGES

**Examples:**
1. Σ n/(2n+1): lim = 1/2 ≠ 0 → Diverges
2. Σ (n+1)/(n²): lim = 0 → Test inconclusive (need other tests)
3. Σ cos(1/n): lim = cos(0) = 1 ≠ 0 → Diverges
4. Σ 1/√n: lim = 0 → Test inconclusive

**When to Use:**
- Always check first! Quick filter before harder tests
- If it works, you're done (divergent)
- If inconclusive, move to other tests

### Transition: Need for More Tests (3 min)
- Divergence test only catches "obvious" divergence
- Many series have terms going to 0 but still diverge (harmonic)
- We need tools to distinguish convergent from divergent among "terms → 0" cases
- Idea: Use calculus (integrals) to analyze discrete sums

### The Integral Test (15 min)

**Setup:**
- Let f(x) be continuous, positive, and decreasing on [1, ∞)
- Let a_n = f(n)

**The Test:**
- Σa_n and ∫₁^∞ f(x)dx either both converge or both diverge

**Visual Justification (with D3 visualization):**
1. Draw f(x) decreasing, continuous, positive
2. Draw rectangles of height f(n) and width 1
3. Right rectangles: area = Σf(n) from n=2 to ∞ ≤ ∫₁^∞ f(x)dx
4. Left rectangles: area = Σf(n) from n=1 to ∞ ≥ ∫₁^∞ f(x)dx
5. So: ∫₁^∞ f(x)dx ≤ Σf(n) ≤ f(1) + ∫₁^∞ f(x)dx
6. They're bounded by each other → same convergence behavior

**Application Procedure:**
1. Write a_n = f(n) for appropriate continuous f
2. Verify: continuous? positive? decreasing? on [1, ∞)
3. Evaluate ∫₁^∞ f(x)dx using improper integral techniques
4. Conclude: integral converges → series converges; integral diverges → series diverges

### Worked Examples (10 min)

**Example 1: Harmonic Series (The Classic)**
- Σ(1/n): f(x) = 1/x
- Continuous ✓, Positive ✓, Decreasing (f' = -1/x² < 0) ✓
- ∫₁^∞ (1/x)dx = lim(b→∞) [ln x]₁^b = lim(b→∞) (ln b - 0) = ∞
- Integral diverges → Series diverges

**Example 2: Σ(1/n²)**
- f(x) = 1/x²
- Continuous ✓, Positive ✓, Decreasing ✓
- ∫₁^∞ (1/x²)dx = lim(b→∞) [-1/x]₁^b = lim(b→∞) (-1/b + 1) = 1
- Integral converges → Series converges
- Note: Σ(1/n²) = π²/6 ≈ 1.645 ≠ 1 (integral doesn't give sum!)

**Example 3: Σ(1/(n² + 1))**
- f(x) = 1/(x² + 1)
- Continuous ✓, Positive ✓, Decreasing (for x ≥ 0) ✓
- ∫₁^∞ 1/(x²+1) dx = lim(b→∞) [arctan x]₁^b = π/2 - π/4 = π/4
- Integral converges → Series converges

**Example 4: Σ(n·e^(-n))**
- f(x) = xe^(-x)
- Check decreasing: f'(x) = e^(-x) - xe^(-x) = e^(-x)(1-x) < 0 for x > 1 ✓
- ∫₁^∞ xe^(-x)dx = ... = 2e^(-1) (using integration by parts)
- Integral converges → Series converges

### Closing (7 min)

**Summary Table:**
| Test | What It Tests | Result |
|------|---------------|--------|
| Divergence Test | lim a_n ≠ 0? | Diverges (if ≠ 0); Inconclusive (if = 0) |
| Integral Test | ∫f(x)dx | Converges/Diverges together |

**Testing Strategy:**
1. Always try divergence test first (quick!)
2. If inconclusive, check if integral test applies
3. Integral test works best for "nice" functions (1/n^p, 1/(n ln n), etc.)

**Exit Ticket:**
1. Does Σ(2n/(3n+1)) converge or diverge? Which test?
2. Use integral test to determine if Σ(1/(n(ln n)²)) converges.
3. True or False: If lim a_n = 0, then Σa_n converges.

### Key Principles Throughout

1. **Divergence test is limited:** Only proves divergence, never convergence
2. **The harmonic series is the key example:** a_n → 0 but Σa_n = ∞
3. **Integral test requires conditions:** Check continuous, positive, decreasing
4. **Integral and sum have same behavior, not same value:** Don't confuse convergence with equality
5. **Build the testing framework:** This is the start of our "toolkit" for series

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **10.3:** The nth Term Test for Divergence
- **10.4:** Integral Test for Convergence

### Learning Objectives
- LO 10.3.A: Determine whether a series diverges using the nth term test.
- LO 10.4.A: Determine whether a series converges or diverges using the integral test.

### Essential Knowledge (from CED)
- EK 10.3A1: If lim(n→∞) a_n ≠ 0, then Σa_n diverges
- EK 10.3A2: If lim(n→∞) a_n = 0, the nth term test is inconclusive
- EK 10.4A1: The integral test: if f is continuous, positive, and decreasing on [k, ∞) with a_n = f(n), then Σa_n and ∫_k^∞ f(x)dx both converge or both diverge

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (applying tests correctly)
- **MP 2:** Connecting Representations (discrete sums and continuous integrals)
- **MP 3:** Justification (explaining why each test applies or doesn't)
- **MP 4:** Communication (stating conditions and conclusions precisely)

### AP Exam Connection
- Multiple choice: Quick identification of divergent series by nth term test
- Free response: Justify convergence/divergence with proper test citation
- Common errors tested:
  - Claiming convergence because a_n → 0
  - Not verifying integral test conditions
  - Wrong improper integral evaluation

### Important Note
Students must state which test they're using and verify conditions on the AP exam. Simply writing "by integral test, converges" without showing the integral is insufficient.

---

## Sources

### Primary Sources
- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Khan Academy: Integral Test](https://www.khanacademy.org/math/ap-calculus-bc/bc-series-new/bc-10-4)
- [Professor Leonard: Calculus 2](https://www.youtube.com/@ProfessorLeonard)

### Teaching Resources
- [Paul's Online Math Notes: Integral Test](https://tutorial.math.lamar.edu/Classes/CalcII/IntegralTest.aspx)
- [Paul's Online Math Notes: Divergence Test](https://tutorial.math.lamar.edu/Classes/CalcII/DivergenceTest.aspx)
- [MIT OpenCourseWare: Infinite Series](https://ocw.mit.edu/courses/18-01-single-variable-calculus-fall-2006/)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)

### Research on Student Understanding
- [PRIMUS: Student Difficulties with Convergence Tests](https://www.tandfonline.com/doi/abs/10.1080/10511970.2013.879970)
- [MAA: Teaching Infinite Series](https://www.maa.org/programs/faculty-and-departments/curriculum-department-guidelines-recommendations/cupm/teaching-infinite-series)
