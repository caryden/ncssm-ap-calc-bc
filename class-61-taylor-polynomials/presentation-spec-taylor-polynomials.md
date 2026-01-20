# Presentation Spec: Taylor Polynomials

## Class 61 | Unit 10: Infinite Sequences and Series
## CED Topic 10.11

---

## Overview

This presentation introduces Taylor polynomials as polynomial approximations to functions. Students will understand that a Taylor polynomial matches a function and its first $n$ derivatives at a center point, leading to increasingly accurate local approximations. Key visualizations include an interactive Taylor polynomial grapher showing progressive approximation, and demonstrations of why factorials appear in the coefficients.

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "Taylor Polynomials"
  - Subtitle: "Approximating Functions with Polynomials"
  - Meta: "Class 61 | CED 10.11 | NCSSM"

### Slide 1: Opening Challenge
- **Type:** `slide-exercise`
- **Section:** Opening
- **Content:**
  - Title: "Challenge"
  - Problem: "Calculate $\cos(0.1)$ without a calculator"
  - Pause: "This is hard! Cosine is a transcendental function—no finite algebraic formula."
- **Notes:** Build motivation for polynomial approximation

### Slide 2: The Big Idea
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Polynomials are easy—they only require $+$, $-$, $\times$"
  - Secondary: "What if we could approximate $\cos(x)$ with a polynomial?"
  - Goal: "Find the polynomial that best approximates a function near a point"

### Slide 3: Why Polynomials?
- **Type:** `slide-list`
- **Section:** Motivation
- **Content:**
  - Title: "Why Polynomial Approximations?"
  - List:
    - "Transcendental functions ($\cos$, $e^x$, $\ln$) can't be computed exactly"
    - "Polynomials only need addition, subtraction, multiplication"
    - "Easy to evaluate, differentiate, integrate"
    - "Calculators and computers use polynomial approximations!"

### Slide 4: The Strategy
- **Type:** `slide-statement`
- **Section:** Motivation
- **Content:**
  - Statement: "Strategy: Match the function and its derivatives at a point"
  - Math: "Make $P_n(a) = f(a)$, $P_n'(a) = f'(a)$, $P_n''(a) = f''(a)$, ..."
  - Caption: "The more derivatives we match, the better the approximation near $x = a$"

### Slide 5: Degree 0 - Match the Value
- **Type:** `slide-visual`
- **Section:** Building Taylor
- **Content:**
  - Title: "Degree 0: Match the Value"
  - Goal: "$P_0(a) = f(a)$"
  - Solution: "$P_0(x) = f(a)$ — a constant function"
  - **D3 Visualization:** Show $f(x)$ and horizontal line at $f(a)$
  - Caption: "Matches value, but ignores all slope/curvature information"
- **Visualization Details:**
  - Plot $f(x) = \cos(x)$ and $P_0(x) = 1$
  - Show they agree at $x = 0$ only

### Slide 6: Degree 1 - Match Value and Slope
- **Type:** `slide-visual`
- **Section:** Building Taylor
- **Content:**
  - Title: "Degree 1: Match Value and Slope"
  - Goals: "$P_1(a) = f(a)$ and $P_1'(a) = f'(a)$"
  - Solution: "$P_1(x) = f(a) + f'(a)(x-a)$"
  - Recognition: "This is the **tangent line** (linearization from Unit 4)!"
  - **D3 Visualization:** Show $f(x)$ and tangent line
- **Visualization Details:**
  - Plot $f(x) = \cos(x)$ and tangent at $x = 0$
  - $P_1(x) = 1 + 0 \cdot x = 1$ (horizontal because $\cos'(0) = 0$)

### Slide 7: Degree 2 - Match Curvature
- **Type:** `slide-visual`
- **Section:** Building Taylor
- **Content:**
  - Title: "Degree 2: Add Curvature"
  - Goals: Match $f, f', f''$ at $a$
  - Try: "$P_2(x) = f(a) + f'(a)(x-a) + c(x-a)^2$"
  - Differentiate twice: "$P_2''(x) = 2c$"
  - Match: "$2c = f''(a)$, so $c = f''(a)/2$"
  - Result: "$P_2(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2}(x-a)^2$"

### Slide 8: Why the Factorial?
- **Type:** `slide-visual`
- **Section:** Building Taylor
- **Content:**
  - Title: "Why Factorials Appear"
  - Derivation:
    - "For $(x-a)^n$ with coefficient $c_n$:"
    - "Differentiating $n$ times gives $n! \cdot c_n$"
    - "We want this to equal $f^{(n)}(a)$"
    - "So $c_n = f^{(n)}(a)/n!$"
  - Key insight: "The $n!$ comes from differentiating $(x-a)^n$ repeatedly"

### Slide 9: The Taylor Polynomial Formula
- **Type:** `slide-visual`
- **Section:** Formula
- **Content:**
  - Title: "The Taylor Polynomial Formula"
  - Formula box with gold border:
    - $P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$
    - $= f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \cdots + \frac{f^{(n)}(a)}{n!}(x-a)^n$

### Slide 10: Maclaurin Polynomials
- **Type:** `slide-two-part`
- **Section:** Formula
- **Content:**
  - Primary: "A **Maclaurin polynomial** is a Taylor polynomial centered at $a = 0$"
  - Math: $P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(0)}{k!}x^k$
  - Secondary: "Maclaurin = Taylor with $a = 0$"
  - Caption: "Same concept, just a special case with simpler notation"

### Slide 11: Example 1 - $e^x$ at $a = 0$
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 1: $e^x$ (Maclaurin)"
  - Function: $f(x) = e^x$
  - Derivatives: $f^{(n)}(x) = e^x$ for all $n$
  - At $x = 0$: $f^{(n)}(0) = e^0 = 1$ for all $n$
  - Result: $P_n(x) = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots + \frac{x^n}{n!}$

### Slide 12: Approximating $e^{0.1}$
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Application: Approximate $e^{0.1}$"
  - Using $P_4(x)$:
    - $P_4(0.1) = 1 + 0.1 + \frac{0.01}{2} + \frac{0.001}{6} + \frac{0.0001}{24}$
    - $= 1 + 0.1 + 0.005 + 0.000167 + 0.0000042$
    - $\approx 1.1052$
  - Check: "Calculator gives $e^{0.1} \approx 1.10517$ ✓"

### Slide 13: Example 2 - $\cos(x)$ at $a = 0$
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 2: $\cos(x)$ (Maclaurin)"
  - Derivative table:
    - | $n$ | $f^{(n)}(x)$ | $f^{(n)}(0)$ |
    - | 0 | $\cos x$ | 1 |
    - | 1 | $-\sin x$ | 0 |
    - | 2 | $-\cos x$ | -1 |
    - | 3 | $\sin x$ | 0 |
    - | 4 | $\cos x$ | 1 |
  - Pattern: $1, 0, -1, 0, 1, 0, -1, 0, \ldots$
  - Result: $P_6(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!}$
  - Note: "Only even powers (cosine is an even function!)"

### Slide 14: Approximating $\cos(0.5)$
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Application: Approximate $\cos(0.5)$"
  - Using $P_4(x) = 1 - \frac{x^2}{2} + \frac{x^4}{24}$:
    - $P_4(0.5) = 1 - \frac{0.25}{2} + \frac{0.0625}{24}$
    - $= 1 - 0.125 + 0.0026$
    - $\approx 0.8776$
  - Check: "Calculator gives $\cos(0.5) \approx 0.8776$ ✓"

### Slide 15: Example 3 - $\ln(x)$ at $a = 1$
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 3: $\ln(x)$ centered at $a = 1$"
  - Derivative table:
    - | $n$ | $f^{(n)}(x)$ | $f^{(n)}(1)$ |
    - | 0 | $\ln x$ | 0 |
    - | 1 | $1/x$ | 1 |
    - | 2 | $-1/x^2$ | -1 |
    - | 3 | $2/x^3$ | 2 |
    - | 4 | $-6/x^4$ | -6 |
  - Result: $P_4(x) = (x-1) - \frac{(x-1)^2}{2} + \frac{(x-1)^3}{3} - \frac{(x-1)^4}{4}$
  - Note: "Center at $a = 1$ because $\ln(0)$ is undefined"

### Slide 16: Example 4 - $\sin(x)$ at $a = 0$
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 4: $\sin(x)$ (Maclaurin)"
  - Derivatives at 0: $0, 1, 0, -1, 0, 1, 0, -1, \ldots$
  - Result: $P_7(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!}$
  - Note: "Only odd powers (sine is an odd function!)"

### Slide 17: Interactive Taylor Polynomial Grapher
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Interactive: Taylor Polynomial Approximation"
  - **D3 Visualization:** Taylor polynomial grapher
  - Features:
    - Select function: $e^x$, $\sin(x)$, $\cos(x)$, $\ln(x)$
    - Adjust center $a$
    - Slider for degree $n$
    - Show function and $P_n(x)$ overlaid
- **Visualization Details:**
  - Plot function in one color
  - Plot polynomial in another color
  - Show how polynomial "hugs" function near center
  - Display formula for current polynomial

### Slide 18: Progressive Approximation
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Progressive Approximation"
  - **D3 Visualization:** Animated progression
  - Show: $P_0$, $P_1$, $P_2$, $P_4$, $P_6$, $P_8$ for $\cos(x)$
  - Observation: "Higher degree = better fit near center"
- **Visualization Details:**
  - Step through polynomial degrees
  - Each step shows better approximation near $x = 0$
  - Emphasize: approximation degrades far from center

### Slide 19: Approximation Quality
- **Type:** `slide-visual`
- **Section:** Insights
- **Content:**
  - Title: "Where Approximations Are Good"
  - Key observations:
    - "**Near $x = a$:** Very accurate"
    - "**Far from $x = a$:** Can be wildly off"
    - "Higher degree helps near center, may not help far away"
  - Caption: "Taylor polynomials are **local** approximations"

### Slide 20: Common Mistakes
- **Type:** `slide-list`
- **Section:** Cautions
- **Content:**
  - Title: "Common Mistakes"
  - List:
    - "**Forgetting $(x-a)$ form:** Terms are powers of $(x-a)$, not $x$ (unless $a = 0$)"
    - "**Factorial errors:** Denominator is $k!$ for the $k$th term"
    - "**Derivative errors:** Carefully track signs (especially for $\sin$, $\cos$)"
    - "**Thinking polynomial equals function:** It's an approximation!"

### Slide 21: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice"
  - Problems:
    1. "Write the degree-3 Maclaurin polynomial for $f(x) = e^x$"
    2. "Find $P_2(x)$ for $f(x) = \sqrt{x}$ centered at $a = 4$"
    3. "Why does the factorial $n!$ appear in the denominator?"
  - Time: "4 minutes"

### Slide 22: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Answers:
    1. "$P_3(x) = 1 + x + \frac{x^2}{2} + \frac{x^3}{6}$"
    2. "$f(4) = 2$, $f'(4) = 1/4$, $f''(4) = -1/32$. So $P_2(x) = 2 + \frac{1}{4}(x-4) - \frac{1}{64}(x-4)^2$"
    3. "When we differentiate $(x-a)^n$ $n$ times, we get $n!$. The factorial cancels this to give $f^{(n)}(a)$."

### Slide 23: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Taylor polynomial: matches $f$ and its first $n$ derivatives at $a$"
    - "Formula: $P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$"
    - "Maclaurin: Taylor centered at $a = 0$"
    - "Factorials arise from differentiating $(x-a)^n$"
    - "Approximation is best **near the center**"

### Slide 24: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "Write the degree-4 Maclaurin polynomial for $\cos(x)$."
    2. "What is the coefficient of $(x-1)^3$ in the Taylor polynomial for $\ln(x)$ at $a = 1$?"
    3. "If a Taylor polynomial has degree 5, how many derivatives at $a$ does it match?"

### Slide 25: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Taylor and Maclaurin Series"
  - Secondary: "What happens when we let $n \to \infty$?"

---

## D3 Visualization Specifications

### Visualization 1: Taylor Polynomial Grapher (Slides 5-6, 17)

```javascript
// Interactive Taylor polynomial approximation explorer
// Features:
// - Select function from dropdown: e^x, sin(x), cos(x), ln(x)
// - Slider for center point a (for ln(x), default a = 1)
// - Slider for degree n (0 to 10)
// - Plot function f(x) and Taylor polynomial P_n(x)
// - Show how polynomial approximates function
// - Display formula for current polynomial
// - Mark center point

// Color scheme:
// - Function f(x): var(--color-function) #60a5fa
// - Polynomial P_n(x): var(--theme-color) #4f46e5
// - Center point: var(--color-tangent) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Progressive Approximation (Slide 18)

```javascript
// Animation showing successive Taylor polynomial improvements
// Features:
// - Function: cos(x)
// - Step through degrees: 0, 2, 4, 6, 8
// - Show each polynomial overlaid on cos(x)
// - Animate transition between degrees
// - Highlight improvement near x = 0
// - Show degradation far from center

// Color scheme:
// - cos(x): var(--color-function) #60a5fa
// - Polynomials: var(--theme-color) #4f46e5 (varying opacity)
// - Improvement region: var(--color-integral) #22c55e
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Factorial explanation is important—students often wonder where it comes from
- Emphasize LOCAL approximation—Taylor polynomials are not good far from center
- Connect to linearization (Unit 4) as the $n = 1$ case
- Prepare students for the transition to infinite series in next class
