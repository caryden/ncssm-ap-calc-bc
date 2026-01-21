# Presentation Spec: Absolute and Conditional Convergence

## Class 60 | Unit 10: Infinite Sequences and Series
## CED Topic 10.9

---

## Overview

This presentation introduces the crucial distinction between absolute and conditional convergence. Students will learn that absolute convergence (when the series of absolute values converges) is "stronger" than conditional convergence (converges only because of cancellation). Key visualizations include a classification flowchart, side-by-side partial sum comparison, and a demonstration of the surprising Riemann Rearrangement Theorem.

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "Absolute and Conditional Convergence"
  - Subtitle: "Strong vs Weak Convergence"
  - Meta: "Class 60 | CED 10.9 | NCSSM"

### Slide 1: Opening Hook
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "We proved $\sum \frac{(-1)^n}{n}$ converges (alternating harmonic)"
  - Question: "What about $\sum \left|\frac{(-1)^n}{n}\right| = \sum \frac{1}{n}$?"
- **Notes:** Students should realize the absolute value series is the harmonic series

### Slide 2: The Contrast
- **Type:** `slide-comparison`
- **Section:** Opening
- **Content:**
  - Title: "A Tale of Two Series"
  - Column 1: $\sum \frac{(-1)^n}{n}$
    - "Converges (to $\ln 2$)"
    - "AST applies"
  - Column 2: $\sum \frac{1}{n}$
    - "Diverges!"
    - "Harmonic series"
  - Bottom: "The original converges only because of cancellation between positive and negative terms"

### Slide 3: Absolute Convergence Definition
- **Type:** `slide-visual`
- **Section:** Definitions
- **Content:**
  - Title: "Absolute Convergence"
  - Definition box with gold border:
    - "A series $\sum a_n$ **converges absolutely** if $\sum |a_n|$ converges"
  - Interpretation: "The series converges even when all terms are made positive"

### Slide 4: Key Theorem
- **Type:** `slide-visual`
- **Section:** Definitions
- **Content:**
  - Title: "Absolute Convergence Implies Convergence"
  - Theorem box with gold border:
    - "If $\sum |a_n|$ converges, then $\sum a_n$ converges"
  - Intuition: "Taking absolute values can only make convergence 'harder.' If it converges with all positive terms, it definitely converges with the original signs."

### Slide 5: Conditional Convergence Definition
- **Type:** `slide-visual`
- **Section:** Definitions
- **Content:**
  - Title: "Conditional Convergence"
  - Definition box:
    - "A series $\sum a_n$ **converges conditionally** if:"
    - "1. $\sum a_n$ converges"
    - "2. $\sum |a_n|$ diverges"
  - Interpretation: "The series converges only because of cancellation between positive and negative terms"

### Slide 6: The Three Categories
- **Type:** `slide-visual`
- **Section:** Definitions
- **Content:**
  - Title: "Three Types of Series"
  - Table:
    - | Category | $\sum a_n$ | $\sum |a_n|$ |
    - | **Divergent** | Diverges | — |
    - | **Conditionally Convergent** | Converges | Diverges |
    - | **Absolutely Convergent** | Converges | Converges |

### Slide 7: Hierarchy Visualization
- **Type:** `slide-visual`
- **Section:** Definitions
- **Content:**
  - Title: "The Convergence Hierarchy"
  - **D3 Visualization:** Venn diagram / nested sets
  - Show: Absolutely Convergent ⊂ Convergent ⊂ All Series
  - Caption: "Absolute convergence is the strongest property"
- **Visualization Details:**
  - Three concentric regions
  - Innermost: Absolutely Convergent (green)
  - Middle: Conditionally Convergent (yellow)
  - Outer: Divergent (red)

### Slide 8: Important Observation
- **Type:** `slide-statement`
- **Section:** Definitions
- **Content:**
  - Statement: "A series with all positive terms cannot be conditionally convergent"
  - Secondary: "If $a_n \geq 0$ for all $n$, then $|a_n| = a_n$, so both series are identical"
  - Conclusion: "Conditional convergence only occurs when terms alternate in sign"

### Slide 9: Classification Algorithm
- **Type:** `slide-visual`
- **Section:** Classification
- **Content:**
  - Title: "Classification Procedure"
  - Flowchart:
    - "Start: Test $\sum |a_n|$"
    - "→ If $\sum |a_n|$ converges: **ABSOLUTELY CONVERGENT** (done)"
    - "→ If $\sum |a_n|$ diverges: Test $\sum a_n$"
    - "   → If $\sum a_n$ converges: **CONDITIONALLY CONVERGENT**"
    - "   → If $\sum a_n$ diverges: **DIVERGENT**"

### Slide 10: Interactive Classification Flowchart
- **Type:** `slide-visual`
- **Section:** Classification
- **Content:**
  - Title: "Classification Flowchart"
  - **D3 Visualization:** Interactive decision tree
  - Users follow the algorithm with their series
- **Visualization Details:**
  - Clickable nodes in flowchart
  - Highlight current path
  - Display conclusion at endpoint

### Slide 11: Which Tests Give What
- **Type:** `slide-visual`
- **Section:** Classification
- **Content:**
  - Title: "Which Tests Give Which Result"
  - Table:
    - | Test | Result When Applicable |
    - | Ratio test ($L < 1$) | Absolute convergence |
    - | Root test ($L < 1$) | Absolute convergence |
    - | Comparison on $|a_n|$ | Absolute convergence |
    - | Integral test on $|a_n|$ | Absolute convergence |
    - | Alternating Series Test | Convergence (must check absolute separately) |

### Slide 12: Example 1 - Absolutely Convergent
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 1: Absolutely Convergent"
  - Classify: $\sum \frac{(-1)^n}{n^2}$
  - Solution:
    - "Test $\sum |a_n| = \sum \frac{1}{n^2}$"
    - "p-series with $p = 2 > 1$ → **Converges**"
    - "Since $\sum |a_n|$ converges, $\sum a_n$ converges **ABSOLUTELY** ✓"

### Slide 13: Example 2 - Conditionally Convergent
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 2: Conditionally Convergent"
  - Classify: $\sum \frac{(-1)^n}{n}$
  - Solution:
    - "Test $\sum |a_n| = \sum \frac{1}{n}$ (harmonic) → **Diverges**"
    - "Test $\sum a_n$: AST with $b_n = 1/n$
      - Decreasing ✓, $\lim = 0$ ✓
      - $\sum a_n$ **converges**"
    - "$\sum |a_n|$ diverges but $\sum a_n$ converges → **CONDITIONALLY** ✓"

### Slide 14: Example 3 - Divergent
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 3: Divergent"
  - Classify: $\sum (-1)^n \cdot \frac{n}{n+1}$
  - Solution:
    - "Test for convergence: $\lim |a_n| = \lim \frac{n}{n+1} = 1 \neq 0$"
    - "By nth term test, $\sum a_n$ **DIVERGES** ✓"
    - "(No need to test $\sum |a_n|$—already know it diverges)"

### Slide 15: Example 4 - Using Ratio Test
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 4: Using Ratio Test"
  - Classify: $\sum \frac{(-1)^n \cdot n}{3^n}$
  - Solution:
    - "Ratio test: $\left|\frac{a_{n+1}}{a_n}\right| = \frac{(n+1)/3^{n+1}}{n/3^n} = \frac{n+1}{3n}$"
    - "$L = \lim \frac{n+1}{3n} = \frac{1}{3} < 1$"
    - "Ratio test with $L < 1$ gives **absolute convergence** ✓"

### Slide 16: Example 5 - Conditional Variant
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 5"
  - Classify: $\sum \frac{(-1)^n}{\sqrt{n}}$
  - Solution:
    - "Test $\sum |a_n| = \sum \frac{1}{\sqrt{n}} = \sum \frac{1}{n^{1/2}}$"
    - "p-series with $p = 1/2 < 1$ → **Diverges**"
    - "Test $\sum a_n$: AST applies ($1/\sqrt{n}$ decreasing, $\lim = 0$) → **Converges**"
    - "**CONDITIONALLY convergent** ✓"

### Slide 17: Partial Sum Comparison
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Comparing $\sum a_n$ and $\sum |a_n|$"
  - **D3 Visualization:** Side-by-side partial sums
  - Top: Partial sums of $\sum (-1)^n/n$ (converges)
  - Bottom: Partial sums of $\sum 1/n$ (diverges)
  - Highlight: Same terms, very different behavior
- **Visualization Details:**
  - Dual plot with shared x-axis
  - Top: oscillating convergence to ln(2)
  - Bottom: monotonic divergence

### Slide 18: Why It Matters - Rearrangement
- **Type:** `slide-statement`
- **Section:** Rearrangement
- **Content:**
  - Statement: "Why does the distinction matter?"
  - Secondary: "Absolutely convergent series can be rearranged freely. Conditionally convergent series cannot!"

### Slide 19: The Riemann Rearrangement Theorem
- **Type:** `slide-visual`
- **Section:** Rearrangement
- **Content:**
  - Title: "The Riemann Rearrangement Theorem"
  - Theorem box:
    - "If $\sum a_n$ converges **conditionally**, then for ANY real number $S$, there exists a rearrangement of the terms that converges to $S$"
    - "You can even rearrange to diverge to $\pm\infty$!"
  - Impact: "Same terms, any sum you want!"

### Slide 20: Rearrangement Demonstration
- **Type:** `slide-visual`
- **Section:** Rearrangement
- **Content:**
  - Title: "Rearrangement Example"
  - Standard: $1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots = \ln 2 \approx 0.693$
  - Rearranged (two positive, one negative):
    - $1 + \frac{1}{3} - \frac{1}{2} + \frac{1}{5} + \frac{1}{7} - \frac{1}{4} + \cdots = \frac{3}{2}\ln 2 \approx 1.04$
  - Caption: "Same terms, different sum!"

### Slide 21: Stability Summary
- **Type:** `slide-comparison`
- **Section:** Summary
- **Content:**
  - Title: "Convergence Stability"
  - Column 1: Absolutely Convergent
    - "Rearrangement doesn't change sum"
    - "Can multiply, integrate, differentiate"
    - "**Stable**"
  - Column 2: Conditionally Convergent
    - "Rearrangement CAN change sum"
    - "More delicate operations"
    - "**Fragile**"

### Slide 22: Classification Practice
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Quick Classification"
  - Classify each as Divergent / Conditionally Convergent / Absolutely Convergent:
    1. "$\sum (-1)^n/n^3$"
    2. "$\sum (-1)^n \ln(n)/n$"
    3. "$\sum \cos(n\pi)/n^{0.9}$"
    4. "$\sum (-1)^n \cdot 2^n/n!$"
  - Time: "3 minutes"

### Slide 23: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Answers:
    1. "$\sum 1/n^3$ converges (p-series, $p=3$) → **Absolute**"
    2. "$\sum |\cdot| = \sum \ln(n)/n$ diverges (compare to $\sum 1/n$), but AST applies → **Conditional**"
    3. "$\cos(n\pi) = (-1)^n$, so p-series $p=0.9<1$ diverges, but alternating → **Conditional**"
    4. "Ratio test: $L = 2/(n+1) \to 0 < 1$ → **Absolute**"

### Slide 24: Summary Table
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "Summary"
  - Table:
    - | To Determine | Action |
    - | Absolute convergence | Test $\sum |a_n|$ for convergence |
    - | Conditional convergence | $\sum |a_n|$ diverges AND $\sum a_n$ converges |
    - | Which test | Ratio → absolute; AST → check separately |

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Absolute: $\sum |a_n|$ converges → 'strong' convergence"
    - "Conditional: $\sum a_n$ converges but $\sum |a_n|$ diverges → 'weak' convergence"
    - "Always test $\sum |a_n|$ FIRST in the classification algorithm"
    - "Ratio test gives absolute convergence when $L < 1$"
    - "Conditionally convergent series can be rearranged to any sum!"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "Define absolute and conditional convergence."
    2. "Classify $\sum \frac{(-1)^n}{n+5}$ with justification."
    3. "Why does absolute convergence 'imply' convergence?"

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Taylor Polynomials"
  - Secondary: "Using polynomials to approximate functions"

---

## D3 Visualization Specifications

### Visualization 1: Convergence Hierarchy (Slide 7)

```javascript
// Venn diagram / nested sets showing convergence types
// Features:
// - Three regions: All Series > Convergent > Absolutely Convergent
// - Conditional = Convergent minus Absolutely Convergent
// - Divergent = All minus Convergent
// - Hover to highlight each region
// - Display example series in each region

// Color scheme:
// - Absolutely convergent: var(--color-integral) #22c55e
// - Conditionally convergent: var(--color-tangent) #fbbf24
// - Divergent: var(--color-derivative) #f97316

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Classification Flowchart (Slide 10)

```javascript
// Interactive decision tree for classification
// Features:
// - Start node: "Does Σ|aₙ| converge?"
// - Branch Yes: "ABSOLUTELY CONVERGENT"
// - Branch No: "Does Σaₙ converge?"
// - Branch Yes: "CONDITIONALLY CONVERGENT"
// - Branch No: "DIVERGENT"
// - Clickable nodes
// - Highlight current path

// Color scheme:
// - Decision nodes: var(--theme-color) #4f46e5
// - Outcome nodes: corresponding type color
```

### Visualization 3: Partial Sum Comparison (Slide 17)

```javascript
// Side-by-side comparison of Σaₙ and Σ|aₙ| partial sums
// Features:
// - Two plots vertically stacked
// - Top: Σ(-1)ⁿ/n partial sums (oscillating, converging to ln(2))
// - Bottom: Σ1/n partial sums (monotonic, diverging)
// - Shared x-axis (n from 1 to 50)
// - Annotate convergence/divergence

// Color scheme:
// - Σaₙ: var(--theme-color) #4f46e5
// - Σ|aₙ|: var(--color-derivative) #f97316
// - Limit line: var(--color-tangent) #fbbf24
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- The distinction between absolute and conditional is conceptually subtle—use visuals
- The rearrangement theorem is surprising and memorable—emphasize it
- Students should internalize the algorithm: test $\sum |a_n|$ FIRST
