# Presentation Spec: Taylor and Maclaurin Series

## Class 62 | Unit 10: Infinite Sequences and Series
## CED Topic 10.14

---

## Overview

This presentation extends Taylor polynomials to infinite Taylor series and establishes the essential Maclaurin series that students must memorize. Students will learn that a Taylor series represents a function as an infinite polynomial (when it converges), and master techniques for deriving new series from known ones using substitution, differentiation, and integration.

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "Taylor and Maclaurin Series"
  - Subtitle: "From Polynomials to Infinite Series"
  - Meta: "Class 62 | CED 10.14 | NCSSM"

### Slide 1: Opening Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Taylor polynomial $P_n(x)$ approximates $f(x)$"
  - Question: "What happens if we let $n \to \infty$?"
  - Preview: "The Taylor series—an infinite polynomial that might **equal** $f(x)$"

### Slide 2: From Polynomial to Series
- **Type:** `slide-visual`
- **Section:** Transition
- **Content:**
  - Title: "The Transition to Infinity"
  - Taylor polynomial: $P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$
  - Taylor series: $\sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n$
  - Caption: "Same formula, but the sum goes to infinity"

### Slide 3: The Convergence Questions
- **Type:** `slide-list`
- **Section:** Transition
- **Content:**
  - Title: "Two Important Questions"
  - Questions:
    1. "Does the series converge for a given $x$?"
    2. "If it converges, does it converge to $f(x)$?"
  - Note: "These are **separate** questions!"
  - Good news: "For 'nice' functions ($e^x$, $\sin$, $\cos$, polynomials), the answer is YES within the interval of convergence"

### Slide 4: Taylor's Theorem Intuition
- **Type:** `slide-statement`
- **Section:** Transition
- **Content:**
  - Statement: "If $f$ is infinitely differentiable and the remainder $R_n(x) \to 0$ as $n \to \infty$, then:"
  - Math: $f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n$
  - Caption: "The function **equals** its Taylor series!"

### Slide 5: The Essential Series
- **Type:** `slide-statement`
- **Section:** Essential Series
- **Content:**
  - Statement: "Students must **memorize** these series"
  - Secondary: "They appear on the AP formula sheet, but you need to **use** them fluently"
  - Note: "These are the building blocks for all series manipulations"

### Slide 6: Series 1 - $e^x$
- **Type:** `slide-visual`
- **Section:** Essential Series
- **Content:**
  - Title: "$e^x$ (Maclaurin)"
  - Formula box with gold border:
    - $e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots$
  - Converges for: all $x \in (-\infty, \infty)$
  - Key: "All derivatives of $e^x$ equal $e^x$, and $e^0 = 1$"

### Slide 7: Series 2 - $\sin(x)$
- **Type:** `slide-visual`
- **Section:** Essential Series
- **Content:**
  - Title: "$\sin(x)$ (Maclaurin)"
  - Formula box with gold border:
    - $\sin(x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \cdots$
  - Converges for: all $x \in (-\infty, \infty)$
  - Key: "Only **odd powers** (sine is an odd function)"

### Slide 8: Series 3 - $\cos(x)$
- **Type:** `slide-visual`
- **Section:** Essential Series
- **Content:**
  - Title: "$\cos(x)$ (Maclaurin)"
  - Formula box with gold border:
    - $\cos(x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \cdots$
  - Converges for: all $x \in (-\infty, \infty)$
  - Key: "Only **even powers** (cosine is an even function)"

### Slide 9: Series 4 - $\frac{1}{1-x}$ (Geometric)
- **Type:** `slide-visual`
- **Section:** Essential Series
- **Content:**
  - Title: "$\frac{1}{1-x}$ (Geometric Series)"
  - Formula box with gold border:
    - $\frac{1}{1-x} = \sum_{n=0}^{\infty} x^n = 1 + x + x^2 + x^3 + \cdots$
  - Converges for: $|x| < 1$ only
  - Key: "This IS the geometric series!"

### Slide 10: Series 5 - $\ln(1+x)$
- **Type:** `slide-visual`
- **Section:** Essential Series
- **Content:**
  - Title: "$\ln(1+x)$ (Maclaurin)"
  - Formula box with gold border:
    - $\ln(1+x) = \sum_{n=1}^{\infty} \frac{(-1)^{n+1} x^n}{n} = x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \cdots$
  - Converges for: $-1 < x \leq 1$
  - Key: "Obtained by integrating $\frac{1}{1+x}$"

### Slide 11: Series 6 - $\arctan(x)$
- **Type:** `slide-visual`
- **Section:** Essential Series
- **Content:**
  - Title: "$\arctan(x)$ (Maclaurin)"
  - Formula box:
    - $\arctan(x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{2n+1} = x - \frac{x^3}{3} + \frac{x^5}{5} - \frac{x^7}{7} + \cdots$
  - Converges for: $-1 \leq x \leq 1$
  - Key: "Obtained by integrating $\frac{1}{1+x^2}$"

### Slide 12: Series Summary Table
- **Type:** `slide-visual`
- **Section:** Essential Series
- **Content:**
  - Title: "Essential Series Summary"
  - Table:
    - | Function | Series | Interval |
    - | $e^x$ | $\sum x^n/n!$ | $(-\infty, \infty)$ |
    - | $\sin(x)$ | $\sum (-1)^n x^{2n+1}/(2n+1)!$ | $(-\infty, \infty)$ |
    - | $\cos(x)$ | $\sum (-1)^n x^{2n}/(2n)!$ | $(-\infty, \infty)$ |
    - | $1/(1-x)$ | $\sum x^n$ | $(-1, 1)$ |
    - | $\ln(1+x)$ | $\sum (-1)^{n+1} x^n/n$ | $(-1, 1]$ |

### Slide 13: Why Manipulate?
- **Type:** `slide-statement`
- **Section:** Manipulation
- **Content:**
  - Statement: "Computing all derivatives can be tedious"
  - Secondary: "It's often **much faster** to start with a known series and modify it"
  - Strategies: "Substitution, Differentiation, Integration, Multiplication"

### Slide 14: Strategy 1 - Substitution
- **Type:** `slide-visual`
- **Section:** Manipulation
- **Content:**
  - Title: "Strategy 1: Substitution"
  - Method: "Replace $x$ with an expression"
  - Example: Find series for $e^{-x^2}$
    - Start: $e^x = \sum \frac{x^n}{n!}$
    - Replace $x$ with $-x^2$:
    - $e^{-x^2} = \sum \frac{(-x^2)^n}{n!} = \sum \frac{(-1)^n x^{2n}}{n!}$
    - $= 1 - x^2 + \frac{x^4}{2!} - \frac{x^6}{3!} + \cdots$

### Slide 15: Strategy 2 - Differentiation
- **Type:** `slide-visual`
- **Section:** Manipulation
- **Content:**
  - Title: "Strategy 2: Differentiation"
  - Method: "Differentiate term by term"
  - Example: Find series for $\frac{1}{(1-x)^2}$
    - Start: $\frac{1}{1-x} = \sum x^n$
    - Differentiate: $\frac{d}{dx}\left[\frac{1}{1-x}\right] = \frac{1}{(1-x)^2}$
    - $\frac{d}{dx}\left[\sum x^n\right] = \sum nx^{n-1}$
    - Result: $\frac{1}{(1-x)^2} = 1 + 2x + 3x^2 + 4x^3 + \cdots$

### Slide 16: Strategy 3 - Integration
- **Type:** `slide-visual`
- **Section:** Manipulation
- **Content:**
  - Title: "Strategy 3: Integration"
  - Method: "Integrate term by term"
  - Example: Derive $\ln(1+x)$ from $\frac{1}{1+x}$
    - $\frac{1}{1+x} = \frac{1}{1-(-x)} = \sum (-x)^n = \sum (-1)^n x^n$
    - Integrate: $\int \sum (-1)^n x^n\,dx = \sum \frac{(-1)^n x^{n+1}}{n+1} + C$
    - At $x = 0$: $\ln(1) = 0$, so $C = 0$
    - Result: $\ln(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \cdots$

### Slide 17: Strategy 4 - Multiplication
- **Type:** `slide-visual`
- **Section:** Manipulation
- **Content:**
  - Title: "Strategy 4: Multiplication"
  - Method: "Multiply series by powers of $x$"
  - Example: Find series for $x \cdot e^x$
    - $x \cdot e^x = x \cdot \sum \frac{x^n}{n!} = \sum \frac{x^{n+1}}{n!}$
    - $= x + x^2 + \frac{x^3}{2!} + \frac{x^4}{3!} + \cdots$

### Slide 18: Worked Example 1
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 1: $x^2 \cos(x)$"
  - Solution:
    - $\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \cdots$
    - $x^2 \cos(x) = x^2 - \frac{x^4}{2!} + \frac{x^6}{4!} - \frac{x^8}{6!} + \cdots$
    - General term: $\sum (-1)^n \frac{x^{2n+2}}{(2n)!}$

### Slide 19: Worked Example 2
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 2: $\frac{1}{1+x^2}$"
  - Solution:
    - Start: $\frac{1}{1-x} = \sum x^n$ for $|x| < 1$
    - Replace $x$ with $-x^2$:
    - $\frac{1}{1+x^2} = \sum (-x^2)^n = \sum (-1)^n x^{2n}$
    - $= 1 - x^2 + x^4 - x^6 + \cdots$
    - Converges for $|-x^2| < 1$, i.e., $|x| < 1$

### Slide 20: Worked Example 3
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 3: $e^{2x}$"
  - Solution:
    - Start: $e^x = \sum \frac{x^n}{n!}$
    - Replace $x$ with $2x$:
    - $e^{2x} = \sum \frac{(2x)^n}{n!} = \sum \frac{2^n x^n}{n!}$
    - $= 1 + 2x + \frac{4x^2}{2!} + \frac{8x^3}{3!} + \cdots$
    - $= 1 + 2x + 2x^2 + \frac{4x^3}{3} + \cdots$

### Slide 21: Worked Example 4
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 4: $\frac{e^x - 1}{x}$"
  - Solution:
    - $e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots$
    - $e^x - 1 = x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots$
    - $\frac{e^x - 1}{x} = 1 + \frac{x}{2!} + \frac{x^2}{3!} + \cdots = \sum \frac{x^n}{(n+1)!}$

### Slide 22: Taylor Series Convergence Visual
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Convergence to the Function"
  - **D3 Visualization:** Partial sums approaching function
  - Show: $S_1, S_5, S_{10}, S_{20}$ overlaid on $e^x$ or $\sin(x)$
  - Caption: "As we add more terms, the series 'hugs' the function more closely"
- **Visualization Details:**
  - Select function from dropdown
  - Show partial sums progressively
  - Highlight interval of convergence

### Slide 23: Interval of Convergence Note
- **Type:** `slide-statement`
- **Section:** Caution
- **Content:**
  - Statement: "Different series have different intervals of convergence"
  - Examples:
    - "$e^x$, $\sin(x)$, $\cos(x)$: Converge for ALL $x$"
    - "$\frac{1}{1-x}$: Only for $|x| < 1$"
  - Caption: "Track the interval when doing substitutions"

### Slide 24: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice"
  - Problems:
    1. "Write the first four nonzero terms of the Maclaurin series for $e^{2x}$"
    2. "Find the Maclaurin series for $x \sin(x)$"
    3. "Use the series for $\frac{1}{1-x}$ to find a series for $\frac{1}{1+x^2}$"
  - Time: "4 minutes"

### Slide 25: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Answers:
    1. "$1 + 2x + 2x^2 + \frac{4x^3}{3} + \cdots$"
    2. "$x \cdot (x - \frac{x^3}{3!} + \frac{x^5}{5!} - \cdots) = x^2 - \frac{x^4}{3!} + \frac{x^6}{5!} - \cdots$"
    3. "Replace $x$ with $-x^2$: $1 - x^2 + x^4 - x^6 + \cdots$"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Taylor series: $n \to \infty$ in Taylor polynomial formula"
    - "Memorize: $e^x$, $\sin(x)$, $\cos(x)$, $\frac{1}{1-x}$, $\ln(1+x)$"
    - "Manipulation is faster than computing derivatives"
    - "Strategies: substitution, differentiation, integration, multiplication"
    - "Track interval of convergence"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "Write the first four nonzero terms of the Maclaurin series for $\sin(2x)$."
    2. "Use differentiation to find the series for $\frac{1}{(1+x)^2}$."
    3. "For what values of $x$ does the series for $\frac{1}{1-x}$ converge?"

### Slide 28: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Power Series and Error Bounds"
  - Secondary: "Finding where series converge and how accurate approximations are"

---

## D3 Visualization Specifications

### Visualization 1: Series Convergence to Function (Slide 22)

```javascript
// Show partial sums of Taylor series approaching the function
// Features:
// - Select function: e^x, sin(x), cos(x)
// - Plot function f(x)
// - Overlay partial sums S_1, S_3, S_5, S_7, ... (adjustable)
// - Show convergence within interval
// - For 1/(1-x), show divergence outside |x| < 1

// Color scheme:
// - Function: var(--color-function) #60a5fa
// - Partial sums: var(--theme-color) #4f46e5 (varying opacity)
// - Convergence zone: var(--color-integral) #22c55e (background)

// Font sizes: minimum 1.25rem for all labels
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Essential series table should be emphasized—students need to memorize these
- Manipulation techniques are key for AP exam efficiency
- Series for $e^x$, $\sin$, $\cos$ converge everywhere; $1/(1-x)$ and $\ln(1+x)$ have limited intervals
