# Presentation Spec: Geometric Series

## Class 56 | Unit 10: Infinite Sequences and Series
## CED Topic 10.2

---

## Overview

This presentation develops the complete theory of geometric series, the first family of series where students can determine both convergence and the exact sum. Key visualizations include an interactive geometric series explorer with adjustable ratio, the classic square subdivision proof, and demonstrations of convergence vs divergence based on the ratio value.

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "Geometric Series"
  - Subtitle: "Finding Exact Sums of Infinite Series"
  - Meta: "Class 56 | CED 10.2 | NCSSM"

### Slide 1: The Repeating Decimal Mystery
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "$0.333\ldots = \frac{3}{10} + \frac{3}{100} + \frac{3}{1000} + \cdots$"
  - Secondary: "We know this equals $\frac{1}{3}$, but how do we *prove* it?"
- **Notes:** Hook students with a familiar concept they'll soon be able to explain rigorously

### Slide 2: Today's Goal
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Today we develop a formula for summing series like this *exactly*"
  - Secondary: "Geometric series: the first family where we can find both convergence AND the sum"

### Slide 3: Geometric Sequences Review
- **Type:** `slide-two-part`
- **Section:** Geometric Sequences
- **Content:**
  - Primary: "A geometric sequence has each term as a constant multiple of the previous"
  - Math: $a_{n+1} = r \cdot a_n$
  - Secondary: "The constant $r$ is called the **common ratio**"
  - Caption: "$r = a_{n+1}/a_n$ for any consecutive terms"

### Slide 4: Geometric Sequence Examples
- **Type:** `slide-list`
- **Section:** Geometric Sequences
- **Content:**
  - Title: "Identify the Common Ratio"
  - List items:
    - "$2, 6, 18, 54, \ldots$ has $r = 3$"
    - "$1, \frac{1}{2}, \frac{1}{4}, \frac{1}{8}, \ldots$ has $r = \frac{1}{2}$"
    - "$1, -1, 1, -1, \ldots$ has $r = -1$"
    - "$5, -10, 20, -40, \ldots$ has $r = -2$"
  - Caption: "General term: $a_n = a \cdot r^{n-1}$ (starting at $n=1$)"

### Slide 5: The Finite Sum Problem
- **Type:** `slide-statement`
- **Section:** Derivation
- **Content:**
  - Statement: "How do we sum a finite geometric series?"
  - Math: $S_n = a + ar + ar^2 + \cdots + ar^{n-1}$
  - Secondary: "There's a clever algebraic trick..."

### Slide 6: The Multiply-by-r Trick
- **Type:** `slide-visual`
- **Section:** Derivation
- **Content:**
  - Title: "Deriving the Finite Sum Formula"
  - Step-by-step derivation:
    - $S_n = a + ar + ar^2 + \cdots + ar^{n-1}$
    - $rS_n = ar + ar^2 + ar^3 + \cdots + ar^n$
    - $S_n - rS_n = a - ar^n$
  - Caption: "Most terms cancel!"

### Slide 7: The Finite Geometric Sum Formula
- **Type:** `slide-visual`
- **Section:** Derivation
- **Content:**
  - Title: "Finite Geometric Sum Formula"
  - Derivation continued:
    - $S_n(1-r) = a(1-r^n)$
  - Formula box with gold border:
    - $S_n = \frac{a(1-r^n)}{1-r}$ when $r \neq 1$
  - Caption: "$a$ = first term, $r$ = ratio, $n$ = number of terms"

### Slide 8: Finite Sum Example
- **Type:** `slide-example`
- **Section:** Derivation
- **Content:**
  - Title: "Example: Finite Geometric Sum"
  - Problem: "Find $2 + 6 + 18 + 54 + 162$"
  - Solution:
    - "$a = 2$, $r = 3$, $n = 5$ terms"
    - $S_5 = \frac{2(1-3^5)}{1-3} = \frac{2(1-243)}{-2} = \frac{2(-242)}{-2} = 242$

### Slide 9: What About Infinite Sums?
- **Type:** `slide-statement`
- **Section:** Infinite Series
- **Content:**
  - Statement: "What happens as $n \to \infty$?"
  - Math: $S = \lim_{n \to \infty} S_n = \lim_{n \to \infty} \frac{a(1-r^n)}{1-r}$
  - Secondary: "Everything depends on what $r^n$ does..."

### Slide 10: The Key Question: What Does $r^n$ Do?
- **Type:** `slide-visual`
- **Section:** Infinite Series
- **Content:**
  - Title: "Behavior of $r^n$ as $n \to \infty$"
  - **D3 Visualization:** Plot $r^n$ for various values of $r$
  - Cases shown:
    - $|r| < 1$: $r^n \to 0$ (decays)
    - $|r| > 1$: $r^n \to \pm\infty$ (grows)
    - $r = 1$: $r^n = 1$ always
    - $r = -1$: oscillates
- **Visualization Details:**
  - Slider for $r$ from -2 to 2
  - Plot $r^n$ for $n = 0, 1, 2, \ldots, 20$
  - Highlight convergent case $|r| < 1$

### Slide 11: The Convergence Condition
- **Type:** `slide-visual`
- **Section:** Infinite Series
- **Content:**
  - Title: "When Does the Infinite Series Converge?"
  - Analysis:
    - "If $|r| < 1$: $r^n \to 0$, so $S = \frac{a(1-0)}{1-r} = \frac{a}{1-r}$"
    - "If $|r| > 1$: $r^n \to \pm\infty$, series diverges"
    - "If $r = 1$: $S_n = na \to \pm\infty$, series diverges"
    - "If $r = -1$: $S_n$ oscillates, series diverges"
  - Key condition: $|r| < 1$

### Slide 12: The Geometric Series Theorem
- **Type:** `slide-visual`
- **Section:** Infinite Series
- **Content:**
  - Title: "The Geometric Series Theorem"
  - Theorem box with gold border:
    - $\sum_{n=0}^{\infty} ar^n = \frac{a}{1-r}$ if $|r| < 1$
    - The series **diverges** if $|r| \geq 1$
  - Caption: "First term $a$, common ratio $r$"

### Slide 13: Visual Proof - Square Subdivision
- **Type:** `slide-visual`
- **Section:** Infinite Series
- **Content:**
  - Title: "Visual Proof: $\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \cdots = 1$"
  - **D3 Visualization:** Animated square subdivision
  - Show unit square being filled:
    - Step 1: Shade half (1/2)
    - Step 2: Shade quarter of original (1/4)
    - Step 3: Shade eighth (1/8)
    - Continue...
  - Running total approaching 1
- **Visualization Details:**
  - Unit square with animated subdivision
  - Display partial sum at each step
  - Show formula verification: $a = 1/2$, $r = 1/2$, $S = (1/2)/(1-1/2) = 1$

### Slide 14: Interactive Geometric Series Explorer
- **Type:** `slide-visual`
- **Section:** Exploration
- **Content:**
  - Title: "Explore: Geometric Series"
  - **D3 Visualization:** Interactive series explorer
  - Features:
    - Sliders for first term $a$ and ratio $r$
    - Display partial sums $S_1, S_2, S_3, \ldots$
    - Graph of partial sums vs $n$
    - Show convergence/divergence behavior
- **Visualization Details:**
  - $a$ slider: 0.5 to 5
  - $r$ slider: -1.5 to 1.5
  - When $|r| < 1$: show asymptote at $S = a/(1-r)$
  - When $|r| \geq 1$: show divergence

### Slide 15: Example 1 - Basic
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 1: Basic Computation"
  - Problem: Find $\sum_{n=0}^{\infty} \left(\frac{1}{2}\right)^n$
  - Solution:
    - "$a = 1$ (when $n=0$, term is $(1/2)^0 = 1$)"
    - "$r = 1/2$, and $|r| = 1/2 < 1$ ✓"
    - "$S = \frac{1}{1 - 1/2} = \frac{1}{1/2} = 2$"

### Slide 16: Example 2 - Different First Term
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 2: Different First Term"
  - Problem: Find $\sum_{n=0}^{\infty} 3 \cdot \left(\frac{1}{4}\right)^n$
  - Solution:
    - "$a = 3$, $r = 1/4$, $|r| < 1$ ✓"
    - "$S = \frac{3}{1 - 1/4} = \frac{3}{3/4} = 4$"

### Slide 17: Example 3 - Negative Ratio
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 3: Negative Ratio"
  - Problem: Find $\sum_{n=0}^{\infty} \left(-\frac{1}{3}\right)^n$
  - Solution:
    - "$a = 1$, $r = -1/3$, $|r| = 1/3 < 1$ ✓"
    - "$S = \frac{1}{1 - (-1/3)} = \frac{1}{4/3} = \frac{3}{4}$"
  - Note: "Negative ratios work—we need $|r| < 1$, not $0 < r < 1$"

### Slide 18: Example 4 - Starting at n=1
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 4: Series Starting at $n=1$"
  - Problem: Find $\sum_{n=1}^{\infty} \left(\frac{2}{5}\right)^n$
  - Solution:
    - "First term (when $n=1$): $(2/5)^1 = 2/5$"
    - "So $a = 2/5$, $r = 2/5$, $|r| < 1$ ✓"
    - "$S = \frac{2/5}{1 - 2/5} = \frac{2/5}{3/5} = \frac{2}{3}$"
  - Alternative: "$\sum_{n=1}^{\infty} r^n = \frac{r}{1-r}$ when $|r| < 1$"

### Slide 19: Example 5 - Disguised Geometric
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 5: Recognizing Disguised Series"
  - Problem: Find $\sum_{n=0}^{\infty} \frac{2^n}{5^n}$
  - Solution:
    - "Rewrite: $\sum \frac{2^n}{5^n} = \sum \left(\frac{2}{5}\right)^n$"
    - "$a = 1$, $r = 2/5$, $|r| < 1$ ✓"
    - "$S = \frac{1}{1 - 2/5} = \frac{1}{3/5} = \frac{5}{3}$"

### Slide 20: Example 6 - Divergent
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 6: Divergent Series"
  - Problem: Analyze $\sum_{n=0}^{\infty} \left(\frac{5}{4}\right)^n$
  - Solution:
    - "$r = 5/4$, $|r| = 5/4 > 1$"
    - "Series **DIVERGES**—no sum exists!"
  - Warning: "Cannot apply the formula when $|r| \geq 1$"

### Slide 21: Application - Repeating Decimals
- **Type:** `slide-visual`
- **Section:** Applications
- **Content:**
  - Title: "Application: Repeating Decimals"
  - Problem: Show that $0.777\ldots = \frac{7}{9}$
  - Solution:
    - "$0.777\ldots = \frac{7}{10} + \frac{7}{100} + \frac{7}{1000} + \cdots$"
    - "$a = 7/10$, $r = 1/10$"
    - "$S = \frac{7/10}{1 - 1/10} = \frac{7/10}{9/10} = \frac{7}{9}$ ✓"

### Slide 22: Common Mistakes
- **Type:** `slide-list`
- **Section:** Cautions
- **Content:**
  - Title: "Common Mistakes to Avoid"
  - List items:
    - "**Wrong first term:** $a$ is the FIRST TERM, not the coefficient. Check when $n=$ starting value."
    - "**Forgetting absolute value:** Condition is $|r| < 1$, not $r < 1$."
    - "**Using formula when $|r| \geq 1$:** Always verify $|r| < 1$ BEFORE applying formula."
    - "**Index confusion:** $\sum_{n=0}^{\infty} r^n$ vs $\sum_{n=1}^{\infty} r^n$ have different first terms!"

### Slide 23: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problems:
    1. "Find the sum: $4 + 2 + 1 + \frac{1}{2} + \frac{1}{4} + \cdots$"
    2. "For what values of $x$ does $\sum_{n=0}^{\infty} x^n$ converge? What is the sum?"
  - Time: "3 minutes"

### Slide 24: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - List items:
    1. "$a = 4$, $r = 1/2$, $|r| < 1$ ✓. $S = \frac{4}{1-1/2} = \frac{4}{1/2} = 8$"
    2. "Converges when $|x| < 1$, i.e., $-1 < x < 1$. Sum = $\frac{1}{1-x}$"

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Geometric series: $\sum ar^n$ has constant ratio between terms"
    - "Converges **if and only if** $|r| < 1$"
    - "Sum formula: $S = \frac{a}{1-r}$ where $a$ is the **first term**"
    - "**Always verify** $|r| < 1$ before using the formula"
    - "Geometric series are benchmarks for comparison tests"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "Find the sum: $\sum_{n=0}^{\infty} \frac{3^n}{4^n}$"
    2. "Explain why $1 + 2 + 4 + 8 + \cdots$ does not have a sum."
    3. "Convert $0.\overline{45}$ to a fraction using geometric series."

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: The Divergence Test and Integral Test"
  - Secondary: "Building our toolkit for determining when series converge"

---

## D3 Visualization Specifications

### Visualization 1: Behavior of $r^n$ (Slide 10)

```javascript
// Interactive visualization showing r^n for various r values
// Features:
// - Slider for r from -2 to 2
// - Plot r^n for n = 0, 1, 2, ..., 20
// - Color code: green when |r| < 1, red when |r| >= 1
// - Show limit behavior (0, infinity, or oscillating)

// Color scheme:
// - Convergent (|r| < 1): var(--color-integral) #22c55e
// - Divergent (|r| >= 1): var(--color-derivative) #f97316

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Square Subdivision (Slide 13)

```javascript
// Animated proof that 1/2 + 1/4 + 1/8 + ... = 1
// Features:
// - Unit square canvas
// - Step-by-step animation:
//   - Shade half (1/2 of square)
//   - Shade half of remaining (1/4 of original)
//   - Continue pattern
// - Display running sum
// - Show formula verification
// - Play/pause controls

// Color scheme:
// - Each step: progressively lighter shades of indigo
// - Unshaded: light gray (#f3f4f6)
// - Running sum display: var(--theme-color)
```

### Visualization 3: Interactive Geometric Series Explorer (Slide 14)

```javascript
// Full interactive exploration of geometric series
// Features:
// - Slider for first term a (range 0.5 to 5)
// - Slider for ratio r (range -1.5 to 1.5)
// - Display terms: a, ar, ar², ar³, ...
// - Show partial sums S_1, S_2, S_3, ...
// - Graph: partial sums vs n
// - When |r| < 1: show horizontal asymptote at S = a/(1-r)
// - When |r| >= 1: show divergence behavior
// - Display convergence status: "Converges to [value]" or "Diverges"

// Color scheme:
// - Terms: var(--theme-color) #4f46e5
// - Partial sums: var(--color-integral) #22c55e
// - Asymptote: var(--color-tangent) #fbbf24
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Emphasize the $|r| < 1$ condition—this is the key takeaway
- The square subdivision visual proof is iconic and should be smooth
- Connect geometric series to future comparison tests—these are benchmarks
