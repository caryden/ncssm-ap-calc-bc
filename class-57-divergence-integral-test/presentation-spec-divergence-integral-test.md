# Presentation Spec: The Divergence Test and Integral Test

## Class 57 | Unit 10: Infinite Sequences and Series
## CED Topics 10.3, 10.4

---

## Overview

This presentation introduces two fundamental convergence tests: the nth term test for divergence (a quick filter) and the integral test (connecting series to calculus). Key visualizations include an interactive integral test demonstrator showing the relationship between rectangular sums and areas under curves, plus a definitive proof that the harmonic series diverges.

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "Convergence Tests"
  - Subtitle: "The Divergence Test and Integral Test"
  - Meta: "Class 57 | CED 10.3, 10.4 | NCSSM"

### Slide 1: Warm-Up
- **Type:** `slide-exercise`
- **Section:** Opening
- **Content:**
  - Title: "Warm-Up"
  - Problem: "Calculate $\lim_{n \to \infty} \frac{n}{n+1}$"
  - Follow-up: "Does $\sum \frac{n}{n+1}$ converge?"
- **Notes:** Students should find limit = 1, then realize each term is close to 1

### Slide 2: The Intuition
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "If each term is close to 1, then we're adding approximately $1 + 1 + 1 + \cdots$"
  - Secondary: "This cannot give a finite sum!"
- **Notes:** Motivate the divergence test with intuition

### Slide 3: The Divergence Test
- **Type:** `slide-visual`
- **Section:** Divergence Test
- **Content:**
  - Title: "The nth Term Test for Divergence"
  - Theorem box with gold border:
    - "If $\lim_{n \to \infty} a_n \neq 0$, then $\sum a_n$ **DIVERGES**"
  - Equivalent form:
    - "Contrapositive: If $\sum a_n$ converges, then $\lim_{n \to \infty} a_n = 0$"

### Slide 4: Critical Warning
- **Type:** `slide-statement`
- **Section:** Divergence Test
- **Content:**
  - Statement: "If $\lim_{n \to \infty} a_n = 0$, the test is **INCONCLUSIVE**"
  - Warning box (highlighted): "We **CANNOT** conclude convergence!"
  - Secondary: "$a_n \to 0$ is **necessary** but **NOT sufficient** for convergence"
- **Notes:** This is the most dangerous misconception in series—emphasize heavily

### Slide 5: Divergence Test Visual
- **Type:** `slide-visual`
- **Section:** Divergence Test
- **Content:**
  - Title: "Why the Divergence Test Works"
  - **D3 Visualization:** Show terms not approaching zero
  - Concept: If $a_n \to L \neq 0$, terms eventually stay near $L$
  - Adding infinitely many numbers near $L$ gives $\pm\infty$
- **Visualization Details:**
  - Plot $a_n$ terms with horizontal line at $L$
  - Show partial sums growing without bound

### Slide 6: Divergence Test Examples
- **Type:** `slide-list`
- **Section:** Divergence Test
- **Content:**
  - Title: "Divergence Test Examples"
  - List items:
    - "$\sum \frac{n}{2n+1}$: $\lim = \frac{1}{2} \neq 0 \Rightarrow$ **Diverges**"
    - "$\sum \cos\left(\frac{1}{n}\right)$: $\lim = \cos(0) = 1 \neq 0 \Rightarrow$ **Diverges**"
    - "$\sum \frac{n+1}{n^2}$: $\lim = 0 \Rightarrow$ **Inconclusive**"
    - "$\sum \frac{1}{\sqrt{n}}$: $\lim = 0 \Rightarrow$ **Inconclusive**"

### Slide 7: The Harmonic Series Reminder
- **Type:** `slide-statement`
- **Section:** Divergence Test
- **Content:**
  - Statement: "The harmonic series $\sum \frac{1}{n}$ has $\lim \frac{1}{n} = 0$"
  - Secondary: "Yet it **DIVERGES**!"
  - Conclusion: "nth term test gives no information when limit equals 0"

### Slide 8: When to Use Divergence Test
- **Type:** `slide-list`
- **Section:** Divergence Test
- **Content:**
  - Title: "When to Use the Divergence Test"
  - List items:
    - "**Always try first!** It's a quick filter"
    - "If limit $\neq 0$: Done! Series diverges"
    - "If limit $= 0$: Inconclusive—need other tests"
  - Caption: "Think of it as a 'quick check' before harder tests"

### Slide 9: Transition
- **Type:** `slide-statement`
- **Section:** Transition
- **Content:**
  - Statement: "The divergence test only catches 'obvious' divergence"
  - Secondary: "For series where $a_n \to 0$, we need more powerful tools"
  - Preview: "**Idea:** Use integrals to analyze sums"

### Slide 10: Connecting Sums and Integrals
- **Type:** `slide-visual`
- **Section:** Integral Test
- **Content:**
  - Title: "Sums as Rectangular Areas"
  - **D3 Visualization:** Function $f(x) = 1/x$ with rectangles
  - Show: Rectangles of height $f(n)$ and width 1
  - Connection: Sum $\sum f(n)$ ≈ Area under curve
- **Visualization Details:**
  - Draw $f(x) = 1/x$ from $x = 1$ to $x = 10$
  - Draw rectangles at $x = 1, 2, 3, \ldots$
  - Highlight relationship between sum and integral

### Slide 11: Integral Test Setup
- **Type:** `slide-visual`
- **Section:** Integral Test
- **Content:**
  - Title: "Integral Test: The Setup"
  - Conditions (must verify all three):
    1. "$f(x)$ is **continuous** on $[1, \infty)$"
    2. "$f(x)$ is **positive** on $[1, \infty)$"
    3. "$f(x)$ is **decreasing** on $[1, \infty)$"
  - Connection: "Let $a_n = f(n)$"

### Slide 12: The Integral Test
- **Type:** `slide-visual`
- **Section:** Integral Test
- **Content:**
  - Title: "The Integral Test"
  - Theorem box with gold border:
    - "If $f$ is continuous, positive, and decreasing on $[1, \infty)$ with $a_n = f(n)$, then:"
    - "$\sum_{n=1}^{\infty} a_n$ and $\int_1^{\infty} f(x)\,dx$"
    - "**either both converge or both diverge**"

### Slide 13: Visual Justification
- **Type:** `slide-visual`
- **Section:** Integral Test
- **Content:**
  - Title: "Why the Integral Test Works"
  - **D3 Visualization:** Interactive integral test demonstrator
  - Show two views:
    - Left rectangles: $\sum_{n=1}^{\infty} f(n) \geq \int_1^{\infty} f(x)\,dx$
    - Right rectangles: $\sum_{n=2}^{\infty} f(n) \leq \int_1^{\infty} f(x)\,dx$
  - Conclusion: Sum and integral bound each other
- **Visualization Details:**
  - Toggle between left and right rectangles
  - Shade integral area
  - Show inequalities dynamically

### Slide 14: Important Note
- **Type:** `slide-statement`
- **Section:** Integral Test
- **Content:**
  - Statement: "The integral test tells us **convergence or divergence**"
  - Secondary: "The integral value usually does **NOT** equal the series sum!"
  - Example: "$\int_1^{\infty} \frac{1}{x^2}\,dx = 1$, but $\sum \frac{1}{n^2} = \frac{\pi^2}{6} \approx 1.645$"

### Slide 15: Application Procedure
- **Type:** `slide-list`
- **Section:** Integral Test
- **Content:**
  - Title: "Applying the Integral Test"
  - Steps:
    1. "Write $a_n = f(n)$ for appropriate continuous $f$"
    2. "Verify: continuous? positive? decreasing?"
    3. "Evaluate $\int_1^{\infty} f(x)\,dx$ (improper integral)"
    4. "Conclude: integral converges $\Rightarrow$ series converges"

### Slide 16: Example 1 - The Harmonic Series
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 1: The Harmonic Series"
  - Problem: "Show that $\sum \frac{1}{n}$ diverges"
  - Solution:
    - "$f(x) = 1/x$"
    - "Continuous ✓, Positive ✓, Decreasing ($f' = -1/x^2 < 0$) ✓"
    - "$\int_1^{\infty} \frac{1}{x}\,dx = \lim_{b \to \infty} [\ln x]_1^b = \lim_{b \to \infty} \ln b = \infty$"
    - "Integral **diverges** $\Rightarrow$ Series **diverges**"

### Slide 17: Harmonic Divergence Visual
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "The Harmonic Series Diverges"
  - **D3 Visualization:** Harmonic series with $\ln(x)$ comparison
  - Show: Rectangles vs integral area
  - Both grow without bound (logarithmically)
- **Visualization Details:**
  - Plot $f(x) = 1/x$ with rectangles
  - Overlay $\ln(x)$ curve
  - Show partial sums and integral values growing

### Slide 18: Example 2 - Convergent Series
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 2: $\sum \frac{1}{n^2}$"
  - Problem: "Determine if $\sum \frac{1}{n^2}$ converges"
  - Solution:
    - "$f(x) = 1/x^2$"
    - "Continuous ✓, Positive ✓, Decreasing ✓"
    - "$\int_1^{\infty} \frac{1}{x^2}\,dx = \lim_{b \to \infty} \left[-\frac{1}{x}\right]_1^b = \lim_{b \to \infty} \left(-\frac{1}{b} + 1\right) = 1$"
    - "Integral **converges** $\Rightarrow$ Series **converges**"
  - Note: "Actual sum is $\pi^2/6 \approx 1.645$, not 1"

### Slide 19: Example 3
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 3: $\sum \frac{1}{n^2 + 1}$"
  - Solution:
    - "$f(x) = 1/(x^2 + 1)$"
    - "Continuous ✓, Positive ✓, Decreasing (for $x \geq 0$) ✓"
    - "$\int_1^{\infty} \frac{1}{x^2+1}\,dx = \lim_{b \to \infty} [\arctan x]_1^b = \frac{\pi}{2} - \frac{\pi}{4} = \frac{\pi}{4}$"
    - "Integral **converges** $\Rightarrow$ Series **converges**"

### Slide 20: Example 4
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 4: $\sum n \cdot e^{-n}$"
  - Solution:
    - "$f(x) = xe^{-x}$"
    - "Continuous ✓, Positive (for $x > 0$) ✓"
    - "Decreasing? $f'(x) = e^{-x} - xe^{-x} = e^{-x}(1-x) < 0$ for $x > 1$ ✓"
    - "$\int_1^{\infty} xe^{-x}\,dx = \frac{2}{e}$ (by parts)"
    - "Integral **converges** $\Rightarrow$ Series **converges**"

### Slide 21: Verifying Decreasing
- **Type:** `slide-list`
- **Section:** Tips
- **Content:**
  - Title: "How to Verify 'Decreasing'"
  - Methods:
    - "Show $f'(x) < 0$ for $x \geq 1$ (or eventually)"
    - "Show $f(n+1) < f(n)$ for all $n$"
    - "Use common sense for obvious cases"
  - Note: "Function only needs to be *eventually* decreasing"

### Slide 22: Summary Table
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "Summary: Two Tests"
  - Table:
    - | Test | What It Tests | Result |
    - | Divergence Test | $\lim a_n \neq 0$? | Diverges (if $\neq 0$); Inconclusive (if $= 0$) |
    - | Integral Test | $\int f(x)\,dx$ | Converges/Diverges together |

### Slide 23: Testing Strategy
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Testing Strategy"
  - Steps:
    1. "**Always try divergence test first** (quick!)"
    2. "If inconclusive, check if integral test applies"
    3. "Verify: continuous, positive, decreasing"
    4. "Evaluate the improper integral"
  - Caption: "Integral test works best for 'nice' functions like $1/n^p$, $1/(n \ln n)$"

### Slide 24: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice"
  - Problems:
    1. "Does $\sum \frac{2n}{3n+1}$ converge or diverge? Which test?"
    2. "Use integral test: Does $\sum \frac{1}{n(\ln n)^2}$ converge? (for $n \geq 2$)"
  - Time: "4 minutes"

### Slide 25: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Solutions:
    1. "$\lim \frac{2n}{3n+1} = \frac{2}{3} \neq 0$ $\Rightarrow$ **Diverges** by divergence test"
    2. "$f(x) = 1/(x(\ln x)^2)$, continuous, positive, decreasing on $[2, \infty)$. $\int_2^{\infty} \frac{1}{x(\ln x)^2}\,dx = [-1/\ln x]_2^{\infty} = 1/\ln 2$. **Converges**"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Divergence test: Quick filter, only proves divergence"
    - "$a_n \to 0$ does NOT imply convergence (harmonic series!)"
    - "Integral test: Connects series to improper integrals"
    - "Check all three conditions for integral test"
    - "Integral value $\neq$ series sum"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "True or False: If $\lim_{n \to \infty} a_n = 0$, then $\sum a_n$ converges."
    2. "List the three conditions required for the integral test."
    3. "The integral $\int_1^{\infty} 1/x^2\,dx = 1$. What does this tell us about $\sum 1/n^2$?"

### Slide 28: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: p-Series and Comparison Tests"
  - Secondary: "Expanding our convergence toolkit with benchmark series"

---

## D3 Visualization Specifications

### Visualization 1: Divergence Test Illustration (Slide 5)

```javascript
// Show terms not approaching zero
// Features:
// - Plot a_n = n/(2n+1) or similar
// - Show horizontal asymptote at L = 1/2
// - Display partial sums S_n growing without bound
// - Annotate: "Terms stay near 1/2, so sum → ∞"

// Color scheme:
// - Terms: var(--theme-color) #4f46e5
// - Limit line: var(--color-tangent) #fbbf24
// - Partial sums: var(--color-derivative) #f97316
```

### Visualization 2: Integral Test Demonstrator (Slides 10, 13)

```javascript
// Interactive visualization showing sum-integral relationship
// Features:
// - Plot f(x) = 1/x (or selectable function)
// - Draw rectangles at x = 1, 2, 3, ... with height f(n)
// - Toggle: left rectangles (upper bound) vs right rectangles (lower bound)
// - Shade integral area
// - Display inequalities:
//   - Left: Σf(n) ≥ ∫f(x)dx
//   - Right: Σf(n) ≤ f(1) + ∫f(x)dx
// - Slider for N (number of terms shown)

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Left rectangles: rgba(79, 70, 229, 0.5)
// - Right rectangles: rgba(34, 197, 94, 0.5)
// - Integral area: rgba(251, 191, 36, 0.3)

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 3: Harmonic Series Divergence (Slide 17)

```javascript
// Prove harmonic series diverges via integral test
// Features:
// - Plot f(x) = 1/x with rectangles
// - Show partial sums S_N growing
// - Overlay y = ln(x) curve
// - Animate: as N increases, both grow without bound
// - Display: S_N ≈ ln(N) + γ

// Color scheme:
// - Rectangles: var(--theme-color) #4f46e5
// - ln(x) curve: var(--color-derivative) #f97316
// - Labels: inherit
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- The key misconception ($a_n \to 0 \Rightarrow$ convergence) must be strongly refuted
- Integral test visualization should clearly show the bounding relationship
- Students should review improper integrals if needed before this lesson
