# Presentation Spec: Alternating Series Test and Ratio Test

## Class 59 | Unit 10: Infinite Sequences and Series
## CED Topics 10.7, 10.8

---

## Overview

This presentation introduces two powerful convergence tests: the alternating series test (for series with sign changes) and the ratio test (ideal for series with factorials and exponentials). Key visualizations include an oscillating partial sums animator showing how alternating series converge, and a ratio progression display showing how the limiting ratio determines convergence.

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "Alternating Series and the Ratio Test"
  - Subtitle: "Two More Powerful Tools"
  - Meta: "Class 59 | CED 10.7, 10.8 | NCSSM"

### Slide 1: Opening Hook
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "$1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \frac{1}{5} - \cdots$"
  - Secondary: "Does this converge?"
- **Notes:** The alternating harmonic series—students know the harmonic series diverges, but what about this?

### Slide 2: The Surprise
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "We know $1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \cdots$ **DIVERGES**"
  - Secondary: "But the alternating version **CONVERGES** to $\ln 2$!"
  - Question: "Why does alternating help?"

### Slide 3: Alternating Series Definition
- **Type:** `slide-two-part`
- **Section:** Alternating Series Test
- **Content:**
  - Primary: "An **alternating series** has terms that alternate in sign"
  - Math: $\sum_{n=1}^{\infty} (-1)^n b_n \quad \text{or} \quad \sum_{n=1}^{\infty} (-1)^{n+1} b_n$
  - Secondary: "where $b_n > 0$ for all $n$"
  - Caption: "Pattern: positive, negative, positive, negative, ..."

### Slide 4: The Alternating Series Test
- **Type:** `slide-visual`
- **Section:** Alternating Series Test
- **Content:**
  - Title: "The Alternating Series Test (AST)"
  - Theorem box with gold border:
    - "If:
      1. $b_{n+1} \leq b_n$ for all $n$ (decreasing)
      2. $\lim_{n \to \infty} b_n = 0$"
    - "Then $\sum (-1)^n b_n$ **converges**"
  - Warning: "**Both conditions required!**"

### Slide 5: Visual Justification
- **Type:** `slide-visual`
- **Section:** Alternating Series Test
- **Content:**
  - Title: "Why Alternating Series Converge"
  - **D3 Visualization:** Oscillating partial sums on number line
  - Animation sequence:
    - $S_1 = b_1$ (positive, move right)
    - $S_2 = b_1 - b_2 < S_1$ (drop left)
    - $S_3 = S_2 + b_3 > S_2$ but $< S_1$ (rise, but not as high)
    - $S_4 = S_3 - b_4 < S_3$ but $> S_2$ (drop, but not as low)
  - Result: "Partial sums oscillate with decreasing amplitude → converge"
- **Visualization Details:**
  - Number line from 0 to 1.5
  - Animate points bouncing left and right
  - Show convergence region shrinking
  - Display limit S in the middle

### Slide 6: Oscillating Partial Sums Explorer
- **Type:** `slide-visual`
- **Section:** Alternating Series Test
- **Content:**
  - Title: "Interactive: Oscillating Partial Sums"
  - **D3 Visualization:** Alternating series explorer
  - Features:
    - Plot partial sums $S_n$ vs $n$
    - Show oscillation above and below limit
    - Display current $S_n$ and target $S$
    - Slider for number of terms
- **Visualization Details:**
  - Plot points connected by lines
  - Oscillation dampens toward horizontal asymptote
  - Show limit value S = ln(2) for alternating harmonic

### Slide 7: Example 1 - Alternating Harmonic Series
- **Type:** `slide-example`
- **Section:** Alternating Series Test
- **Content:**
  - Title: "Example 1: Alternating Harmonic Series"
  - Series: $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots$
  - Verification:
    - "$b_n = 1/n > 0$ ✓"
    - "Decreasing: $\frac{1}{n+1} < \frac{1}{n}$ ✓"
    - "$\lim(1/n) = 0$ ✓"
  - Conclusion: "By AST, **converges** (to $\ln 2 \approx 0.693$)"

### Slide 8: Example 2
- **Type:** `slide-example`
- **Section:** Alternating Series Test
- **Content:**
  - Title: "Example 2"
  - Series: $\sum_{n=1}^{\infty} (-1)^n \cdot \frac{n}{n^2+1}$
  - Verification:
    - "$b_n = \frac{n}{n^2+1}$"
    - "Decreasing? $b'(x) = \frac{(x^2+1) - x(2x)}{(x^2+1)^2} = \frac{1-x^2}{(x^2+1)^2} < 0$ for $x > 1$ ✓"
    - "$\lim \frac{n}{n^2+1} = 0$ ✓"
  - Conclusion: "**Converges** ✓"

### Slide 9: Example 3 - Test Fails
- **Type:** `slide-example`
- **Section:** Alternating Series Test
- **Content:**
  - Title: "Example 3: When AST Doesn't Apply"
  - Series: $\sum_{n=1}^{\infty} (-1)^n \cdot \frac{n}{n+1}$
  - Verification:
    - "$b_n = \frac{n}{n+1}$"
    - "$\lim \frac{n}{n+1} = 1 \neq 0$ ✗"
  - Conclusion: "AST does not apply! (Actually diverges by nth term test)"

### Slide 10: The Error Bound
- **Type:** `slide-visual`
- **Section:** Alternating Series Test
- **Content:**
  - Title: "Alternating Series Error Bound"
  - Theorem box:
    - "For an alternating series satisfying AST:"
    - $|S - S_n| \leq b_{n+1}$
  - Caption: "The error after $n$ terms is at most the next term!"
- **Notes:** This is crucial for AP exam and numerical approximation

### Slide 11: Error Bound Example
- **Type:** `slide-example`
- **Section:** Alternating Series Test
- **Content:**
  - Title: "Error Bound Application"
  - Problem: "Approximate $\ln 2 = \sum \frac{(-1)^{n+1}}{n}$ with error $< 0.01$"
  - Solution:
    - "Need $b_{n+1} = \frac{1}{n+1} < 0.01$"
    - "So $n+1 > 100$, meaning $n \geq 100$"
    - "Use $S_{100}$ for accuracy within 0.01"

### Slide 12: Transition to Ratio Test
- **Type:** `slide-statement`
- **Section:** Ratio Test
- **Content:**
  - Statement: "What about series with factorials?"
  - Example: $\sum \frac{n!}{3^n}$ or $\sum \frac{3^n}{n!}$
  - Secondary: "Comparison tests are awkward with factorials. We need a new tool."

### Slide 13: The Ratio Test
- **Type:** `slide-visual`
- **Section:** Ratio Test
- **Content:**
  - Title: "The Ratio Test"
  - Theorem box with gold border:
    - "Let $L = \lim_{n \to \infty} \left|\frac{a_{n+1}}{a_n}\right|$"
    - "If $L < 1$: series **converges absolutely**"
    - "If $L > 1$ (or $L = \infty$): series **diverges**"
    - "If $L = 1$: test is **INCONCLUSIVE**"

### Slide 14: Ratio Test Intuition
- **Type:** `slide-statement`
- **Section:** Ratio Test
- **Content:**
  - Statement: "If consecutive term ratios approach $r$, the series eventually behaves like a geometric series with ratio $r$"
  - Secondary: "Geometric series converge when $|r| < 1$"
  - Caption: "The ratio test compares to geometric behavior"

### Slide 15: Ratio Test Visual
- **Type:** `slide-visual`
- **Section:** Ratio Test
- **Content:**
  - Title: "Visualizing the Ratio Test"
  - **D3 Visualization:** Ratio progression plot
  - Features:
    - Plot $|a_{n+1}/a_n|$ vs $n$
    - Show horizontal asymptote at $L$
    - Color zones: green ($L < 1$), red ($L > 1$), yellow ($L = 1$)
- **Visualization Details:**
  - Select different series to explore
  - Show ratio sequence approaching limit
  - Display conclusion based on L value

### Slide 16: When to Use Ratio Test
- **Type:** `slide-list`
- **Section:** Ratio Test
- **Content:**
  - Title: "Best Applications of Ratio Test"
  - List:
    - "Series with **factorials** ($n!$)"
    - "Series with **exponentials** ($a^n$)"
    - "Series with **products of both**"
  - Key: "Ratio test simplifies beautifully when factorials cancel"

### Slide 17: Ratio Test Example 1
- **Type:** `slide-example`
- **Section:** Ratio Test
- **Content:**
  - Title: "Example 1: Factorial in Numerator"
  - Series: $\sum \frac{n!}{3^n}$
  - Solution:
    - "$a_n = n!/3^n$, $a_{n+1} = (n+1)!/3^{n+1}$"
    - "$\left|\frac{a_{n+1}}{a_n}\right| = \frac{(n+1)!}{3^{n+1}} \cdot \frac{3^n}{n!} = \frac{n+1}{3}$"
    - "$L = \lim \frac{n+1}{3} = \infty$"
    - "$L > 1$ → **Diverges** ✓"

### Slide 18: Ratio Test Example 2
- **Type:** `slide-example`
- **Section:** Ratio Test
- **Content:**
  - Title: "Example 2: Factorial in Denominator"
  - Series: $\sum \frac{3^n}{n!}$
  - Solution:
    - "$\left|\frac{a_{n+1}}{a_n}\right| = \frac{3^{n+1}}{(n+1)!} \cdot \frac{n!}{3^n} = \frac{3}{n+1}$"
    - "$L = \lim \frac{3}{n+1} = 0$"
    - "$L < 1$ → **Converges** ✓"
  - Note: "This is related to $e^3$"

### Slide 19: Ratio Test Example 3 - L = 1
- **Type:** `slide-example`
- **Section:** Ratio Test
- **Content:**
  - Title: "Example 3: When L = 1 (Inconclusive)"
  - Series: $\sum \frac{1}{n^2}$
  - Solution:
    - "$\left|\frac{a_{n+1}}{a_n}\right| = \frac{n^2}{(n+1)^2}$"
    - "$L = \lim \frac{n^2}{(n+1)^2} = 1$"
    - "$L = 1$ → **Inconclusive**"
  - Note: "We know this converges by p-series test. Ratio test gives no information."

### Slide 20: Ratio Test Example 4 - Alternating
- **Type:** `slide-example`
- **Section:** Ratio Test
- **Content:**
  - Title: "Example 4: Alternating with Exponential"
  - Series: $\sum \frac{(-1)^n \cdot n^2}{2^n}$
  - Solution:
    - "$\left|\frac{a_{n+1}}{a_n}\right| = \frac{(n+1)^2/2^{n+1}}{n^2/2^n} = \frac{(n+1)^2}{2n^2}$"
    - "$L = \lim \frac{(n+1)^2}{2n^2} = \frac{1}{2}$"
    - "$L < 1$ → **Converges absolutely** ✓"
  - Note: "Absolute value handles the sign"

### Slide 21: L = 1 Warning
- **Type:** `slide-statement`
- **Section:** Ratio Test
- **Content:**
  - Statement: "$L = 1$ means the ratio test gives **NO INFORMATION**"
  - Examples:
    - "$\sum 1/n$: $L = 1$ (diverges)"
    - "$\sum 1/n^2$: $L = 1$ (converges)"
  - Warning: "Cannot conclude anything when $L = 1$—use another test"

### Slide 22: Test Summary Table
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "Test Summary"
  - Table:
    - | Test | When to Use | Conclusion |
    - | AST | $(-1)^n$ factor | Both conditions → Converges |
    - | Ratio | Factorials, exponentials | $L<1$: converges; $L>1$: diverges; $L=1$: inconclusive |

### Slide 23: Decision Guidance
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Which Test to Use?"
  - Guidelines:
    - "See $(-1)^n$? → Try Alternating Series Test"
    - "See $n!$ or $a^n$? → Try Ratio Test"
    - "Ratio test gives $L = 1$? → Use a different test"
  - Note: "When both apply, ratio test often determines absolute convergence"

### Slide 24: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice"
  - Problems:
    1. "Does $\sum \frac{(-1)^n}{\sqrt{n}}$ converge? Show both AST conditions."
    2. "Use ratio test: Does $\sum \frac{2^n \cdot n!}{n^n}$ converge?"
    3. "Why can't we use ratio test for $\sum 1/n^3$?"
  - Time: "4 minutes"

### Slide 25: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Answers:
    1. "$b_n = 1/\sqrt{n}$: decreasing ✓, $\lim = 0$ ✓. **Converges** by AST"
    2. "$L = \lim \frac{2^{n+1}(n+1)!/(n+1)^{n+1}}{2^n n!/n^n} = \lim \frac{2(n+1) \cdot n^n}{(n+1)^{n+1}} = 2/e < 1$. **Converges**"
    3. "Ratio = $n^3/(n+1)^3 \to 1$. Inconclusive—use p-series test instead"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "AST: Check BOTH conditions (decreasing AND limit = 0)"
    - "AST error bound: $|S - S_n| \leq b_{n+1}$"
    - "Ratio test: $L < 1$ converges, $L > 1$ diverges, $L = 1$ inconclusive"
    - "Ratio test loves factorials—they cancel beautifully"
    - "$L = 1$ is a warning—need another test"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "State the two conditions for the Alternating Series Test."
    2. "For $\sum (-1)^n/n^2$, verify AST applies. Does it converge?"
    3. "Compute $L$ for $\sum n!/2^n$. Does it converge or diverge?"

### Slide 28: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Absolute vs Conditional Convergence"
  - Secondary: "Understanding the difference between 'strong' and 'weak' convergence"

---

## D3 Visualization Specifications

### Visualization 1: Oscillating Partial Sums (Slides 5, 6)

```javascript
// Animation showing alternating series partial sums oscillating
// Features:
// - Number line from 0 to 1.5 (adjustable)
// - Animate partial sums S_n bouncing left/right
// - Show S_1, S_2, S_3, ... approaching limit S
// - Display current value and target
// - Highlight shrinking convergence region
// - Slider to control animation speed or step manually

// Example: Alternating harmonic series converging to ln(2)

// Color scheme:
// - Points: var(--theme-color) #4f46e5
// - Limit: var(--color-tangent) #fbbf24
// - Convergence region: rgba(79, 70, 229, 0.2)

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Ratio Test Progression (Slide 15)

```javascript
// Show ratio |a_{n+1}/a_n| approaching limit L
// Features:
// - Plot ratios for n = 1, 2, 3, ..., 20
// - Show horizontal asymptote at L
// - Color zones:
//   - Green below L = 1 (converges)
//   - Red above L = 1 (diverges)
//   - Yellow at L = 1 (inconclusive)
// - Dropdown to select different series examples
// - Display computed L value and conclusion

// Examples:
// - n!/3^n (L = ∞, diverges)
// - 3^n/n! (L = 0, converges)
// - 1/n^2 (L = 1, inconclusive)

// Color scheme:
// - Converge zone: var(--color-integral) #22c55e
// - Diverge zone: var(--color-derivative) #f97316
// - Inconclusive: var(--color-tangent) #fbbf24
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Emphasize that AST needs BOTH conditions—common error to check only one
- The error bound is important for AP exam—emphasize it
- Ratio test is the tool of choice for factorial series
