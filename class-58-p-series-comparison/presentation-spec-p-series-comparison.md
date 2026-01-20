# Presentation Spec: p-Series and Comparison Tests

## Class 58 | Unit 10: Infinite Sequences and Series
## CED Topics 10.5, 10.6

---

## Overview

This presentation establishes p-series as the fundamental benchmarks for series comparison and introduces both the direct comparison test and limit comparison test. Key visualizations include a p-series explorer showing the critical threshold at $p = 1$, and an interactive comparison demonstrator showing how knowing one series determines another.

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "p-Series and Comparison Tests"
  - Subtitle: "Benchmark Series and Comparison Strategies"
  - Meta: "Class 58 | CED 10.5, 10.6 | NCSSM"

### Slide 1: Warm-Up
- **Type:** `slide-exercise`
- **Section:** Opening
- **Content:**
  - Title: "Quick Review"
  - Problems:
    - "What did the integral test tell us about $\sum 1/n$?"
    - "What did it tell us about $\sum 1/n^2$?"
- **Notes:** Connect to previous lesson and preview today's generalization

### Slide 2: Warm-Up Solution
- **Type:** `slide-list`
- **Section:** Opening
- **Content:**
  - Title: "Review"
  - List:
    - "$\sum 1/n$: Integral = $\ln x \to \infty$ → **Diverges**"
    - "$\sum 1/n^2$: Integral = $-1/x \to 1$ → **Converges**"
  - Transition: "Today we generalize: What about $\sum 1/n^p$ for any $p$?"

### Slide 3: The p-Series Definition
- **Type:** `slide-two-part`
- **Section:** p-Series
- **Content:**
  - Primary: "A **p-series** has the form:"
  - Math: $\sum_{n=1}^{\infty} \frac{1}{n^p} = 1 + \frac{1}{2^p} + \frac{1}{3^p} + \frac{1}{4^p} + \cdots$
  - Secondary: "where $p$ is a positive constant"

### Slide 4: The p-Series Test
- **Type:** `slide-visual`
- **Section:** p-Series
- **Content:**
  - Title: "The p-Series Test"
  - Theorem box with gold border:
    - $\sum_{n=1}^{\infty} \frac{1}{n^p}$ **converges** if $p > 1$
    - $\sum_{n=1}^{\infty} \frac{1}{n^p}$ **diverges** if $p \leq 1$
  - Caption: "The critical threshold is at $p = 1$"

### Slide 5: Proof via Integral Test
- **Type:** `slide-visual`
- **Section:** p-Series
- **Content:**
  - Title: "Proof (via Integral Test)"
  - For $f(x) = 1/x^p$, continuous, positive, decreasing on $[1, \infty)$:
  - Cases:
    - "If $p \neq 1$: $\int_1^{\infty} x^{-p}\,dx = \frac{x^{1-p}}{1-p}\Big|_1^{\infty}$"
    - "If $p > 1$: exponent $1-p < 0$, so $x^{1-p} \to 0$ → **Converges**"
    - "If $p < 1$: exponent $1-p > 0$, so $x^{1-p} \to \infty$ → **Diverges**"
    - "If $p = 1$: $\int_1^{\infty} 1/x\,dx = \ln x \to \infty$ → **Diverges**"

### Slide 6: p-Series Explorer
- **Type:** `slide-visual`
- **Section:** p-Series
- **Content:**
  - Title: "Interactive: p-Series Behavior"
  - **D3 Visualization:** p-series explorer with adjustable p
  - Features:
    - Slider for $p$ from 0.5 to 3
    - Show partial sums $S_N$ for current $p$
    - Highlight threshold at $p = 1$
    - Display convergence/divergence status
- **Visualization Details:**
  - Plot partial sums vs N
  - When $p > 1$: show asymptote approaching sum
  - When $p \leq 1$: show unbounded growth
  - Emphasize $p = 1$ case (harmonic series)

### Slide 7: Key p-Series Examples
- **Type:** `slide-list`
- **Section:** p-Series
- **Content:**
  - Title: "Key p-Series to Know"
  - Table format:
    - | Series | p-value | Behavior |
    - | $\sum 1/n^3$ | $p = 3 > 1$ | Converges |
    - | $\sum 1/n^2$ | $p = 2 > 1$ | Converges (to $\pi^2/6$) |
    - | $\sum 1/n^{1.001}$ | $p = 1.001 > 1$ | Converges (barely!) |
    - | $\sum 1/n$ | $p = 1$ | **Diverges** (harmonic) |
    - | $\sum 1/n^{0.999}$ | $p = 0.999 < 1$ | Diverges |
    - | $\sum 1/\sqrt{n}$ | $p = 0.5 < 1$ | Diverges |

### Slide 8: The Threshold at p = 1
- **Type:** `slide-statement`
- **Section:** p-Series
- **Content:**
  - Statement: "The harmonic series ($p = 1$) is the critical boundary"
  - Secondary: "Converges for $p > 1$, diverges for $p \leq 1$"
  - Mnemonic: "'Greater than 1 for greater success'"

### Slide 9: Why p-Series Matter
- **Type:** `slide-statement`
- **Section:** Transition
- **Content:**
  - Statement: "p-Series are **benchmark series**"
  - Secondary: "We compare unknown series to these known ones"
  - Preview: "If a series is 'smaller' than a convergent p-series, it must converge"

### Slide 10: The Comparison Philosophy
- **Type:** `slide-visual`
- **Section:** Direct Comparison
- **Content:**
  - Title: "The Comparison Principle"
  - Visual diagram:
    - "Smaller than something finite → finite"
    - "Larger than something infinite → infinite"
  - Caption: "We compare to known series (p-series, geometric) to determine unknown series"

### Slide 11: Direct Comparison Test
- **Type:** `slide-visual`
- **Section:** Direct Comparison
- **Content:**
  - Title: "The Direct Comparison Test"
  - Theorem box with gold border:
    - "Suppose $0 \leq a_n \leq b_n$ for all $n$ (or for $n \geq N$)"
    - "If $\sum b_n$ converges, then $\sum a_n$ converges"
    - "If $\sum a_n$ diverges, then $\sum b_n$ diverges"
  - Intuition: "Smaller than convergent → converges; Larger than divergent → diverges"

### Slide 12: Direct Comparison Visual
- **Type:** `slide-visual`
- **Section:** Direct Comparison
- **Content:**
  - Title: "Visualizing Direct Comparison"
  - **D3 Visualization:** Two series stacked
  - Show: $a_n \leq b_n$ as bar heights
  - If $\sum b_n$ converges (total area finite), then $\sum a_n$ must too
- **Visualization Details:**
  - Side-by-side bar charts of $a_n$ and $b_n$
  - $a_n$ bars contained within $b_n$ bars
  - Display partial sums for both

### Slide 13: Direct Comparison Example 1
- **Type:** `slide-example`
- **Section:** Direct Comparison
- **Content:**
  - Title: "Example 1: Proving Convergence"
  - Problem: "Does $\sum \frac{1}{n^2 + n}$ converge?"
  - Solution:
    - "Compare: $\frac{1}{n^2 + n} < \frac{1}{n^2}$ (since $n^2 + n > n^2$)"
    - "$\sum 1/n^2$ converges (p-series, $p = 2 > 1$)"
    - "By direct comparison, $\sum 1/(n^2 + n)$ **converges** ✓"

### Slide 14: Direct Comparison Example 2
- **Type:** `slide-example`
- **Section:** Direct Comparison
- **Content:**
  - Title: "Example 2: Proving Divergence"
  - Problem: "Does $\sum \frac{1}{\sqrt{n-1}}$ (for $n \geq 2$) diverge?"
  - Solution:
    - "Compare: $\frac{1}{\sqrt{n-1}} > \frac{1}{\sqrt{n}}$ (since $n-1 < n$)"
    - "$\sum 1/\sqrt{n}$ diverges (p-series, $p = 1/2 < 1$)"
    - "By direct comparison, $\sum 1/\sqrt{n-1}$ **diverges** ✓"

### Slide 15: Direct Comparison Pitfalls
- **Type:** `slide-list`
- **Section:** Direct Comparison
- **Content:**
  - Title: "Direct Comparison Pitfalls"
  - Warning items:
    - "**Wrong direction:** $a_n \geq b_n$ and $\sum b_n$ converges tells us NOTHING"
    - "**Wrong direction:** $a_n \leq b_n$ and $\sum b_n$ diverges tells us NOTHING"
  - Summary:
    - "For convergence: need $a_n \leq$ (smaller) convergent series"
    - "For divergence: need $a_n \geq$ (larger) divergent series"

### Slide 16: Transition to Limit Comparison
- **Type:** `slide-statement`
- **Section:** Limit Comparison
- **Content:**
  - Statement: "Sometimes the inequality in direct comparison is hard to establish"
  - Secondary: "The **limit comparison test** offers an alternative approach"
  - Idea: "If $a_n/b_n \to L > 0$, then $a_n \approx L \cdot b_n$ for large $n$"

### Slide 17: Limit Comparison Test
- **Type:** `slide-visual`
- **Section:** Limit Comparison
- **Content:**
  - Title: "The Limit Comparison Test"
  - Theorem box with gold border:
    - "Suppose $a_n > 0$ and $b_n > 0$ for all $n$"
    - "Let $L = \lim_{n \to \infty} \frac{a_n}{b_n}$"
    - "If $0 < L < \infty$ (positive and finite), then:"
    - "$\sum a_n$ and $\sum b_n$ **either both converge or both diverge**"

### Slide 18: Limit Comparison Intuition
- **Type:** `slide-statement`
- **Section:** Limit Comparison
- **Content:**
  - Statement: "If $a_n/b_n \to L$, then for large $n$, $a_n \approx L \cdot b_n$"
  - Secondary: "So $\sum a_n \approx L \cdot \sum b_n$—they have the same behavior"
  - Caption: "The actual value of $L$ doesn't matter—just that it's positive and finite"

### Slide 19: Limit Comparison Strategy
- **Type:** `slide-list`
- **Section:** Limit Comparison
- **Content:**
  - Title: "Limit Comparison Strategy"
  - Steps:
    1. "Identify dominant behavior of $a_n$ for large $n$"
    2. "Choose $b_n$ with same dominant behavior (usually p-series or geometric)"
    3. "Compute $L = \lim(a_n/b_n)$"
    4. "If $0 < L < \infty$: conclude same behavior as $\sum b_n$"
  - Key: "Pick $b_n$ that 'looks like' $a_n$ for large $n$"

### Slide 20: Limit Comparison Example 1
- **Type:** `slide-example`
- **Section:** Limit Comparison
- **Content:**
  - Title: "Example 1"
  - Problem: "Does $\sum \frac{2n^2 + 3n}{n^4 + 5}$ converge?"
  - Solution:
    - "Dominant behavior: $\frac{2n^2}{n^4} = \frac{2}{n^2}$"
    - "Choose $b_n = 1/n^2$ (convergent p-series)"
    - "$L = \lim \frac{(2n^2+3n)/(n^4+5)}{1/n^2} = \lim \frac{(2n^2+3n) \cdot n^2}{n^4+5} = \lim \frac{2n^4+3n^3}{n^4+5} = 2$"
    - "$0 < 2 < \infty$ → $\sum a_n$ **converges** (same as $\sum 1/n^2$)"

### Slide 21: Limit Comparison Example 2
- **Type:** `slide-example`
- **Section:** Limit Comparison
- **Content:**
  - Title: "Example 2"
  - Problem: "Does $\sum \frac{1}{2^n + 1}$ converge?"
  - Solution:
    - "Dominant behavior: $1/2^n$ for large $n$ (geometric)"
    - "Choose $b_n = (1/2)^n$ (convergent geometric)"
    - "$L = \lim \frac{1/(2^n+1)}{1/2^n} = \lim \frac{2^n}{2^n+1} = 1$"
    - "$0 < 1 < \infty$ → **converges** ✓"

### Slide 22: Limit Comparison Example 3
- **Type:** `slide-example`
- **Section:** Limit Comparison
- **Content:**
  - Title: "Example 3"
  - Problem: "Does $\sum \frac{\sqrt{n}}{n^2 - 3}$ converge?"
  - Solution:
    - "Dominant behavior: $\frac{n^{1/2}}{n^2} = \frac{1}{n^{3/2}}$"
    - "Choose $b_n = 1/n^{3/2}$ (convergent, $p = 3/2 > 1$)"
    - "$L = \lim \frac{\sqrt{n}/(n^2-3)}{1/n^{3/2}} = \lim \frac{\sqrt{n} \cdot n^{3/2}}{n^2-3} = \lim \frac{n^2}{n^2-3} = 1$"
    - "**Converges** ✓"

### Slide 23: Comparison Test Summary
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "Comparison Test Summary"
  - Table:
    - | Test | What You Need | Conclusion |
    - | Direct Comparison | $0 \leq a_n \leq b_n$ | $\sum b_n$ converges → $\sum a_n$ converges |
    - | Direct Comparison | $0 \leq b_n \leq a_n$ | $\sum b_n$ diverges → $\sum a_n$ diverges |
    - | Limit Comparison | $L = \lim(a_n/b_n)$, $0 < L < \infty$ | Same behavior as $\sum b_n$ |

### Slide 24: When to Use Which
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Which Test to Use?"
  - Guidelines:
    - "**Direct Comparison:** When inequality is obvious (dropping terms from denominator)"
    - "**Limit Comparison:** When dominant behavior is clear but inequality is messy"
    - "**Strategy:** Try limit comparison first—usually easier"
  - Note: "Choose $b_n$ (comparison series) as p-series or geometric"

### Slide 25: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice"
  - Problems:
    1. "Does $\sum 1/n^{2/3}$ converge or diverge? Why?"
    2. "Use comparison: Does $\sum \frac{1}{3n^2+2}$ converge?"
    3. "Use limit comparison: Does $\sum \frac{n^2}{n^4+1}$ converge?"
  - Time: "4 minutes"

### Slide 26: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Answers:
    1. "p-series with $p = 2/3 < 1$ → **Diverges**"
    2. "$\frac{1}{3n^2+2} < \frac{1}{3n^2} < \frac{1}{n^2}$, and $\sum 1/n^2$ converges → **Converges**"
    3. "Dominant: $n^2/n^4 = 1/n^2$. Compare to $b_n = 1/n^2$. $L = 1$. **Converges**"

### Slide 27: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "p-series: $\sum 1/n^p$ converges iff $p > 1$"
    - "The threshold $p = 1$ (harmonic) is critical—DIVERGES"
    - "Direct comparison: Compare term-by-term ($\leq$ or $\geq$)"
    - "Limit comparison: Compare limiting ratios ($0 < L < \infty$)"
    - "p-series and geometric series are benchmarks for comparison"

### Slide 28: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "For what values of $p$ does $\sum 1/n^p$ converge?"
    2. "Use direct comparison to determine: Does $\sum \frac{1}{n^2+1}$ converge?"
    3. "Use limit comparison to determine: Does $\sum \frac{3n}{n^3+2n}$ converge?"

### Slide 29: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Alternating Series and the Ratio Test"
  - Secondary: "Handling series with alternating signs and series with factorials"

---

## D3 Visualization Specifications

### Visualization 1: p-Series Explorer (Slide 6)

```javascript
// Interactive p-series behavior exploration
// Features:
// - Slider for p from 0.5 to 3 (step 0.1)
// - Plot partial sums S_N vs N for current p value
// - Highlight critical threshold at p = 1
// - Display: "p = [value]" and "Converges"/"Diverges"
// - When p > 1: show asymptote at known or estimated sum
// - When p <= 1: show unbounded growth

// Color scheme:
// - Convergent (p > 1): var(--color-integral) #22c55e
// - Divergent (p <= 1): var(--color-derivative) #f97316
// - Threshold: var(--color-tangent) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Direct Comparison Visual (Slide 12)

```javascript
// Visualize direct comparison as bar chart
// Features:
// - Two series: a_n and b_n
// - Show bars side by side with a_n ≤ b_n
// - a_n bars contained within b_n bars
// - Display partial sums for both
// - When sum b_n converges, show sum a_n bounded
// - Selectable examples

// Color scheme:
// - a_n bars: var(--theme-color) #4f46e5
// - b_n bars: rgba(79, 70, 229, 0.3) (lighter)
// - Sum display: inherit

// Font sizes: minimum 1.25rem for all labels
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Emphasize $p > 1$ (NOT $p \geq 1$) for convergence—this is a common error
- Comparison tests should be framed as "tools for using what we know"
- Students should understand that comparison only determines convergence/divergence, not actual sum
