# Presentation Spec: Improper Integrals (BC)

## Class 38 | Unit 6: Integration and Accumulation of Change
## CED Topic 6.13 (BC Only)

---

## Overview

This BC-only presentation extends definite integrals to handle infinite bounds and discontinuous integrands. Students learn to define improper integrals as limits of proper integrals, determine convergence or divergence, and apply the p-integral test. Visualizations demonstrate the surprising result that infinite regions can have finite area. This class completes Unit 6.

**Theme Color:** `#d4a028` (Unit 6 Gold)

**BC-Only Indicator:** This topic appears only on the AP Calculus BC exam.

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 6: Integration and Accumulation of Change"
  - BC indicator badge: "BC Only"
  - Title: "Improper Integrals"
  - Subtitle: "Integrating to Infinity and Beyond"
  - Meta: "Class 38 | CED 6.13 | NCSSM"

### Slide 1: A Surprising Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "What is the area under $y = \frac{1}{x^2}$ from $x = 1$ to infinity?"
  - Secondary: "The region goes on forever... surely the area is infinite?"
- **Notes:** Build suspense

### Slide 2: Let's Check
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Computing the Area"
  - $\int_1^b \frac{1}{x^2}\,dx = \left[-\frac{1}{x}\right]_1^b = -\frac{1}{b} + 1$
  - As $b \to \infty$: $-\frac{1}{b} + 1 \to 0 + 1 = 1$
  - Conclusion in large text: "THE AREA IS EXACTLY 1!"
  - **D3 Visualization:** Shaded region with area approaching 1

### Slide 3: The Key Insight
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "3Blue1Brown: 'An improper integral isn't a different kind of integral - it's a limit of proper integrals.'"
  - Secondary: "We can't integrate TO infinity, but we can ask what happens AS the bound APPROACHES infinity"

### Slide 4: What Makes an Integral "Improper"?
- **Type:** `slide-comparison`
- **Section:** Definitions
- **Content:**
  - Title: "Two Types of Improper Integrals"
  - Column 1: Type 1 - Infinite Bounds
    - "One or both limits of integration are infinite"
    - Example: $\int_1^\infty \frac{1}{x^2}\,dx$
  - Column 2: Type 2 - Discontinuous Integrand
    - "The function has a discontinuity in the interval"
    - Example: $\int_0^1 \frac{1}{\sqrt{x}}\,dx$

### Slide 5: Type 1 - Infinite Upper Bound
- **Type:** `slide-visual`
- **Section:** Type 1
- **Content:**
  - Title: "Type 1: Infinite Upper Bound"
  - Definition box:
    - $$\int_a^\infty f(x)\,dx = \lim_{b \to \infty} \int_a^b f(x)\,dx$$
  - "Replace the infinity with a variable, then take a limit"
  - If the limit exists and is finite: CONVERGES
  - If the limit is infinite or DNE: DIVERGES

### Slide 6: Type 1 - Infinite Lower Bound
- **Type:** `slide-visual`
- **Section:** Type 1
- **Content:**
  - Title: "Type 1: Infinite Lower Bound"
  - Definition:
    - $$\int_{-\infty}^b f(x)\,dx = \lim_{a \to -\infty} \int_a^b f(x)\,dx$$

### Slide 7: Type 1 - Both Bounds Infinite
- **Type:** `slide-visual`
- **Section:** Type 1
- **Content:**
  - Title: "Type 1: Both Bounds Infinite"
  - Definition:
    - $$\int_{-\infty}^\infty f(x)\,dx = \lim_{a \to -\infty} \int_a^c f(x)\,dx + \lim_{b \to \infty} \int_c^b f(x)\,dx$$
  - Warning box: "BOTH limits must be taken INDEPENDENTLY!"
  - "Do NOT use $\lim_{b \to \infty} \int_{-b}^b$ (symmetric limits)"
- **Notes:** Common AP trap

### Slide 8: Example 1 - Convergent
- **Type:** `slide-example`
- **Section:** Type 1 Examples
- **Content:**
  - Title: "Example 1: Convergent"
  - Problem: $\int_1^\infty \frac{1}{x^2}\,dx$
  - Solution:
    - "$= \lim_{b \to \infty} \int_1^b x^{-2}\,dx$"
    - "$= \lim_{b \to \infty} \left[-x^{-1}\right]_1^b$"
    - "$= \lim_{b \to \infty} \left(-\frac{1}{b} + 1\right) = 0 + 1 = 1$"
  - Conclusion: "CONVERGES to 1"

### Slide 9: Example 2 - Divergent
- **Type:** `slide-example`
- **Section:** Type 1 Examples
- **Content:**
  - Title: "Example 2: Divergent"
  - Problem: $\int_1^\infty \frac{1}{x}\,dx$
  - Solution:
    - "$= \lim_{b \to \infty} \int_1^b \frac{1}{x}\,dx$"
    - "$= \lim_{b \to \infty} [\ln x]_1^b$"
    - "$= \lim_{b \to \infty} (\ln b - 0) = \infty$"
  - Conclusion: "DIVERGES"

### Slide 10: Visual Comparison
- **Type:** `slide-visual`
- **Section:** Type 1 Examples
- **Content:**
  - Title: "Why the Difference?"
  - **D3 Visualization:** Side-by-side graphs
    - Left: $y = 1/x^2$ with shaded area converging
    - Right: $y = 1/x$ with shaded area growing unbounded
  - Caption: "$1/x^2$ decreases fast enough; $1/x$ doesn't"

### Slide 11: The p-Integral Test
- **Type:** `slide-visual`
- **Section:** p-Test
- **Content:**
  - Title: "The p-Integral Test"
  - Gold-bordered theorem box:
    - $$\int_1^\infty \frac{1}{x^p}\,dx \text{ converges if } p > 1, \text{ diverges if } p \leq 1$$
  - The boundary case: p = 1 diverges (just barely!)
  - "This is the most important convergence test for improper integrals"

### Slide 12: p-Test Visualization
- **Type:** `slide-visual`
- **Section:** p-Test
- **Content:**
  - Title: "Visualizing the p-Test"
  - **D3 Visualization:** Multiple curves $1/x^p$ for p = 0.5, 1, 1.5, 2
  - Slider to adjust p
  - Display: "p = [value], integral converges/diverges"
  - Show critical threshold at p = 1

### Slide 13: Type 2 - Discontinuity at Endpoint
- **Type:** `slide-visual`
- **Section:** Type 2
- **Content:**
  - Title: "Type 2: Discontinuity at Endpoint"
  - If f has discontinuity at a:
    - $$\int_a^b f(x)\,dx = \lim_{c \to a^+} \int_c^b f(x)\,dx$$
  - If f has discontinuity at b:
    - $$\int_a^b f(x)\,dx = \lim_{c \to b^-} \int_a^c f(x)\,dx$$

### Slide 14: Example 3 - Type 2 Convergent
- **Type:** `slide-example`
- **Section:** Type 2 Examples
- **Content:**
  - Title: "Example 3: Type 2 - Convergent"
  - Problem: $\int_0^1 \frac{1}{\sqrt{x}}\,dx$
  - Note: "Discontinuity at $x = 0$ (vertical asymptote)"
  - Solution:
    - "$= \lim_{c \to 0^+} \int_c^1 x^{-1/2}\,dx$"
    - "$= \lim_{c \to 0^+} [2x^{1/2}]_c^1$"
    - "$= \lim_{c \to 0^+} (2 - 2\sqrt{c}) = 2 - 0 = 2$"
  - Conclusion: "CONVERGES to 2"

### Slide 15: Example 4 - Type 2 Divergent
- **Type:** `slide-example`
- **Section:** Type 2 Examples
- **Content:**
  - Title: "Example 4: Type 2 - Divergent"
  - Problem: $\int_0^1 \frac{1}{x}\,dx$
  - Solution:
    - "$= \lim_{c \to 0^+} \int_c^1 \frac{1}{x}\,dx$"
    - "$= \lim_{c \to 0^+} [\ln x]_c^1$"
    - "$= \lim_{c \to 0^+} (0 - \ln c) = \infty$"
  - Conclusion: "DIVERGES"

### Slide 16: Interior Discontinuity
- **Type:** `slide-visual`
- **Section:** Type 2
- **Content:**
  - Title: "Interior Discontinuity"
  - If f has discontinuity at c where $a < c < b$:
  - $$\int_a^b f(x)\,dx = \int_a^c f(x)\,dx + \int_c^b f(x)\,dx$$
  - "Split at the discontinuity - evaluate each piece as improper"
  - "If EITHER diverges, the whole integral diverges"

### Slide 17: Hidden Discontinuity Warning
- **Type:** `slide-visual`
- **Section:** Warnings
- **Content:**
  - Title: "Watch for Hidden Discontinuities!"
  - Problem: $\int_{-1}^1 \frac{1}{x^2}\,dx$
  - Warning: "There's a discontinuity at $x = 0$!"
  - Wrong: "$[-1/x]_{-1}^1 = -1 - 1 = -2$"
  - Right: "Must split at 0. Both pieces diverge. Integral DIVERGES."
- **Notes:** Common AP trap

### Slide 18: Example 5 - Exponential
- **Type:** `slide-example`
- **Section:** More Examples
- **Content:**
  - Title: "Example 5: Exponential Decay"
  - Problem: $\int_0^\infty e^{-x}\,dx$
  - Solution:
    - "$= \lim_{b \to \infty} [-e^{-x}]_0^b$"
    - "$= \lim_{b \to \infty} (-e^{-b} + 1) = 0 + 1 = 1$"
  - Conclusion: "CONVERGES to 1"

### Slide 19: Example 6 - Both Directions
- **Type:** `slide-example`
- **Section:** More Examples
- **Content:**
  - Title: "Example 6: $\int_{-\infty}^\infty \frac{1}{1+x^2}\,dx$"
  - Split: $\int_{-\infty}^0 + \int_0^\infty$
  - Each piece:
    - "$\lim_{a \to -\infty} [\arctan x]_a^0 = 0 - (-\frac{\pi}{2}) = \frac{\pi}{2}$"
    - "$\lim_{b \to \infty} [\arctan x]_0^b = \frac{\pi}{2} - 0 = \frac{\pi}{2}$"
  - Total: "$\frac{\pi}{2} + \frac{\pi}{2} = \pi$"

### Slide 20: Convergence vs. Divergence Summary
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Convergence Rules"
  - Key facts:
    - "$\int_1^\infty \frac{1}{x^p}\,dx$: converges if $p > 1$, diverges if $p \leq 1$"
    - "$\int_0^1 \frac{1}{x^p}\,dx$: converges if $p < 1$, diverges if $p \geq 1$"
    - "$\int_0^\infty e^{-x}\,dx$ converges (exponential decay)"
    - "Always check for hidden discontinuities!"

### Slide 21: Area Accumulation Animation
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Watching Area Accumulate"
  - **D3 Visualization:** Interactive area accumulator
    - Function: $1/x^2$ from 1 to b
    - Slider for b (1 to 100+)
    - Display running area value
    - Show convergence to 1

### Slide 22: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice 1"
  - Problem: "Does $\int_1^\infty \frac{1}{\sqrt{x}}\,dx$ converge or diverge?"
  - Hint: "Use the p-test"
  - Time: "1 minute"

### Slide 23: Practice 1 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - $\frac{1}{\sqrt{x}} = x^{-1/2}$, so $p = 1/2 < 1$
  - By p-test: DIVERGES
  - Verification:
    - "$\lim_{b \to \infty} [2\sqrt{x}]_1^b = \lim_{b \to \infty}(2\sqrt{b} - 2) = \infty$"

### Slide 24: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice 2"
  - Problem: "Evaluate $\int_0^4 \frac{1}{\sqrt{4-x}}\,dx$"
  - Hint: "What type is this? Where is the discontinuity?"
  - Time: "3 minutes"

### Slide 25: Practice 2 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Type 2: Discontinuity at $x = 4$ (upper bound)
  - $= \lim_{c \to 4^-} \int_0^c (4-x)^{-1/2}\,dx$
  - $= \lim_{c \to 4^-} [-2(4-x)^{1/2}]_0^c$
  - $= \lim_{c \to 4^-} [-2\sqrt{4-c} + 4] = 0 + 4 = 4$
  - CONVERGES to 4

### Slide 26: Unit 6 Completion
- **Type:** `slide-statement`
- **Section:** Summary
- **Content:**
  - Statement: "Congratulations! You've completed Unit 6: Integration and Accumulation of Change"
  - Secondary: "From Riemann sums to improper integrals - a complete journey through integration"

### Slide 27: Unit 6 Summary
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Unit 6 Journey"
  - List:
    - "Riemann sums approximate area"
    - "Definite integral = limit of Riemann sums"
    - "FTC connects derivatives and integrals"
    - "Antiderivatives: power rule, exp, trig"
    - "Techniques: u-sub, IBP (BC), partial fractions (BC)"
    - "Improper integrals: limits of proper integrals (BC)"

### Slide 28: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Improper Integrals: Key Points"
  - List:
    - "Type 1: infinite bounds. Type 2: discontinuous integrand"
    - "Always write as a LIMIT of proper integrals"
    - "Converges = finite limit. Diverges = infinite or DNE"
    - "p-test: $\int_1^\infty x^{-p}$ converges iff $p > 1$"
    - "Check for hidden discontinuities in the interval"
    - "For $\int_{-\infty}^\infty$: take limits independently!"

### Slide 29: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Determine if $\int_2^\infty \frac{1}{x^3}\,dx$ converges or diverges. If it converges, find its value."
  - Show proper limit notation

### Slide 30: Looking Ahead
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next Unit: Differential Equations"
  - Secondary: "Using integration to solve equations involving derivatives"

---

## D3 Visualization Specifications

### Visualization 1: Area Approaching Limit (Slide 2, 21)

```javascript
// Interactive area accumulator
// Features:
// - Graph of 1/x^2 from x = 1 to x = b
// - Shaded region under curve
// - Slider to adjust b (1 to 100+)
// - Display: "Area from 1 to b = [value]"
// - Show convergence: as b increases, area approaches 1
// - Color intensifies as approaching limit

// Key insight visualization:
// - Area sequence: b=2: 0.5, b=5: 0.8, b=10: 0.9, b=100: 0.99
// - Asymptotic approach to 1

// Color scheme:
// - Curve: #60a5fa
// - Shaded area: #d4a028 with transparency
// - Limit indicator: dashed line at y = 1
```

### Visualization 2: Convergent vs Divergent Comparison (Slide 10)

```javascript
// Side-by-side comparison
// Features:
// - Left panel: 1/x^2 with area converging
// - Right panel: 1/x with area diverging
// - Synchronized b-slider for both
// - Display areas for each
// - Left shows approach to 1
// - Right shows unbounded growth

// Color coding:
// - Convergent: green tint
// - Divergent: red tint
```

### Visualization 3: p-Test Explorer (Slide 12)

```javascript
// Interactive p-value explorer
// Features:
// - Graph of 1/x^p from x = 1 to large value
// - Slider to adjust p (0.1 to 3)
// - Display: "p = [value]"
// - Show convergence status
// - Mark p = 1 as critical boundary
// - Animation showing behavior change at p = 1

// Visual feedback:
// - p > 1: green "CONVERGES" with area stabilizing
// - p <= 1: red "DIVERGES" with area growing
```

### Visualization 4: Type 2 Approach (Slides 14, 15)

```javascript
// Discontinuity approach visualization
// Features:
// - Graph with vertical asymptote at endpoint
// - Show region from c to b (avoiding discontinuity)
// - Slider to move c toward asymptote
// - Display area as c approaches asymptote
// - Show convergence or divergence

// Example: 1/sqrt(x) from 0 to 1
// c approaches 0 from right
// Area approaches 2 (converges)
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- BC-only badge prominent on title slide
- Unit completion celebration on summary slides
- p-test visualization is key for building intuition
- Emphasize proper limit notation throughout
- All D3 text minimum 1.25rem
- TOC sections: Opening, Definitions, Type 1, Type 2, p-Test, Warnings, Examples, Practice, Summary
