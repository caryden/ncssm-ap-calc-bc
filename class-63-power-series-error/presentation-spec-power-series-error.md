# Presentation Spec: Power Series and Error Bounds

## Class 63 | Unit 10: Infinite Sequences and Series
## CED Topics 10.10, 10.12, 10.13

---

## Overview

This capstone session for Unit 10 addresses three interconnected topics: power series convergence (radius and interval), the alternating series error bound, and the Lagrange error bound. Students will learn to determine where a power series converges, how to bound approximation error, and how to determine the number of terms needed for a specified accuracy.

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "Power Series and Error Bounds"
  - Subtitle: "Where Series Converge and How Accurate They Are"
  - Meta: "Class 63 | CED 10.10, 10.12, 10.13 | NCSSM"

### Slide 1: Opening Questions
- **Type:** `slide-list`
- **Section:** Opening
- **Content:**
  - Title: "Two Key Questions"
  - Questions:
    1. "For what values of $x$ does a series converge?"
    2. "If we use a partial sum, how accurate is it?"
  - Goal: "Today we answer both questions precisely"

### Slide 2: Power Series Definition
- **Type:** `slide-two-part`
- **Section:** Power Series
- **Content:**
  - Primary: "A **power series** centered at $a$ has the form:"
  - Math: $\sum_{n=0}^{\infty} c_n(x-a)^n = c_0 + c_1(x-a) + c_2(x-a)^2 + \cdots$
  - Secondary: "The coefficients $c_n$ are constants; $x$ is the variable"
  - Caption: "Taylor series are power series with $c_n = f^{(n)}(a)/n!$"

### Slide 3: Three Convergence Possibilities
- **Type:** `slide-list`
- **Section:** Power Series
- **Content:**
  - Title: "Three Possibilities"
  - Cases:
    1. "Converges **only at $x = a$** (radius $R = 0$)"
    2. "Converges **for all $x$** (radius $R = \infty$)"
    3. "Converges for $|x-a| < R$, diverges for $|x-a| > R$"
  - Caption: "The number $R$ is called the **radius of convergence**"

### Slide 4: Visualizing Convergence
- **Type:** `slide-visual`
- **Section:** Power Series
- **Content:**
  - Title: "Interval of Convergence"
  - **D3 Visualization:** Number line showing convergence interval
  - Show: $(a-R, a+R)$ with endpoints marked
  - Caption: "Inside: converges. Outside: diverges. Endpoints: must check separately"
- **Visualization Details:**
  - Number line centered at $a$
  - Green region for $(a-R, a+R)$
  - Red regions for $x < a-R$ and $x > a+R$
  - Endpoints highlighted with question marks

### Slide 5: Finding R with Ratio Test
- **Type:** `slide-visual`
- **Section:** Power Series
- **Content:**
  - Title: "Finding R Using the Ratio Test"
  - Procedure:
    - "For $\sum c_n(x-a)^n$, compute:"
    - $L = \lim_{n \to \infty} \left|\frac{c_{n+1}(x-a)^{n+1}}{c_n(x-a)^n}\right| = |x-a| \cdot \lim_{n \to \infty}\left|\frac{c_{n+1}}{c_n}\right|$
    - "Converges when $L < 1$, i.e., $|x-a| < R$ where $R = \frac{1}{\lim|c_{n+1}/c_n|}$"

### Slide 6: Example 1 - R = $\infty$
- **Type:** `slide-example`
- **Section:** Power Series
- **Content:**
  - Title: "Example 1: $\sum \frac{x^n}{n!}$"
  - Solution:
    - "$\left|\frac{a_{n+1}}{a_n}\right| = \frac{|x|^{n+1}/(n+1)!}{|x|^n/n!} = \frac{|x|}{n+1}$"
    - "$L = \lim \frac{|x|}{n+1} = 0$ for any $x$"
    - "$L < 1$ for ALL $x$"
  - Result: "$R = \infty$. Series converges for all $x$"

### Slide 7: Example 2 - R = 0
- **Type:** `slide-example`
- **Section:** Power Series
- **Content:**
  - Title: "Example 2: $\sum n! \cdot x^n$"
  - Solution:
    - "$\left|\frac{a_{n+1}}{a_n}\right| = (n+1)|x|$"
    - "$L = \lim (n+1)|x| = \infty$ for any $x \neq 0$"
    - "$L < 1$ only when $x = 0$"
  - Result: "$R = 0$. Converges only at $x = 0$"

### Slide 8: Example 3 - Finite R
- **Type:** `slide-example`
- **Section:** Power Series
- **Content:**
  - Title: "Example 3: $\sum \frac{x^n}{n}$"
  - Solution:
    - "$\left|\frac{a_{n+1}}{a_n}\right| = |x| \cdot \frac{n}{n+1}$"
    - "$L = |x| \cdot 1 = |x|$"
    - "$L < 1$ when $|x| < 1$"
  - Result: "$R = 1$. Now test endpoints..."

### Slide 9: Endpoint Testing
- **Type:** `slide-visual`
- **Section:** Power Series
- **Content:**
  - Title: "Endpoint Testing (Critical!)"
  - Warning: "Ratio test is **inconclusive** at $x = a \pm R$"
  - For $\sum \frac{x^n}{n}$ with $R = 1$:
    - "At $x = 1$: $\sum \frac{1}{n}$ = harmonic → **Diverges**"
    - "At $x = -1$: $\sum \frac{(-1)^n}{n}$ = alt. harmonic → **Converges**"
  - Interval of Convergence: $[-1, 1)$

### Slide 10: Interval Notation
- **Type:** `slide-list`
- **Section:** Power Series
- **Content:**
  - Title: "Writing the Interval of Convergence"
  - Steps:
    1. "Find $R$ using ratio test"
    2. "Write interval as $(a-R, a+R)$"
    3. "Test each endpoint separately"
    4. "Use brackets [ ] for convergent endpoints, parentheses ( ) for divergent"
  - Example: "$\sum \frac{x^n}{n}$: $R = 1$, interval $[-1, 1)$"

### Slide 11: Transition to Error Bounds
- **Type:** `slide-statement`
- **Section:** Error Bounds
- **Content:**
  - Statement: "Now we know **where** series converge"
  - Question: "When we truncate to a partial sum, how accurate is it?"
  - Preview: "Two bounds: Alternating series bound and Lagrange bound"

### Slide 12: Alternating Series Error Bound
- **Type:** `slide-visual`
- **Section:** Error Bounds
- **Content:**
  - Title: "Alternating Series Error Bound"
  - Theorem box with gold border:
    - "For an alternating series $\sum (-1)^n b_n$ satisfying AST:"
    - $|S - S_n| \leq b_{n+1}$
  - Interpretation: "Error after $n$ terms is at most the next term!"

### Slide 13: Why Alternating Bound Works
- **Type:** `slide-visual`
- **Section:** Error Bounds
- **Content:**
  - Title: "Visual Justification"
  - **D3 Visualization:** Oscillating partial sums with error band
  - Show: $S_n$ oscillating around $S$
  - Each step overshoots by less than term size
  - Error shrinks with each term
- **Visualization Details:**
  - Plot partial sums on number line
  - Show error bar $|S - S_n|$ bounded by $b_{n+1}$

### Slide 14: Alternating Error Example
- **Type:** `slide-example`
- **Section:** Error Bounds
- **Content:**
  - Title: "Example: Approximate $\ln 2$"
  - Series: $\ln 2 = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots$
  - Problem: "Find $\ln 2$ within 0.01"
  - Solution:
    - "Need $b_{n+1} = \frac{1}{n+1} < 0.01$"
    - "So $n+1 > 100$, meaning $n \geq 100$"
    - "Use $S_{100}$ for error $< 0.01$"

### Slide 15: Alternating Error Example 2
- **Type:** `slide-example`
- **Section:** Error Bounds
- **Content:**
  - Title: "Example: Approximate $\cos(1)$"
  - Series: $\cos(1) = 1 - \frac{1}{2!} + \frac{1}{4!} - \frac{1}{6!} + \cdots$
  - Problem: "Find $\cos(1)$ within 0.0001"
  - Solution:
    - "Terms: $1, 0.5, 0.0417, 0.00139, 0.0000248...$"
    - "$b_5 = 1/8! \approx 0.0000248 < 0.0001$ ✓"
    - "Use 5 terms (through $1/8!$)"

### Slide 16: Lagrange Error Bound
- **Type:** `slide-visual`
- **Section:** Error Bounds
- **Content:**
  - Title: "Lagrange Error Bound"
  - Theorem box with gold border:
    - "For Taylor polynomial $P_n(x)$ of $f$ centered at $a$:"
    - $|R_n(x)| = |f(x) - P_n(x)| \leq \frac{M \cdot |x-a|^{n+1}}{(n+1)!}$
    - "where $M = \max|f^{(n+1)}(t)|$ for $t$ between $a$ and $x$"

### Slide 17: When to Use Lagrange
- **Type:** `slide-list`
- **Section:** Error Bounds
- **Content:**
  - Title: "When to Use Lagrange Bound"
  - Use cases:
    - "Non-alternating series"
    - "When alternating bound doesn't apply"
    - "When you need guaranteed accuracy for any Taylor polynomial"
  - Challenge: "Must find $M$ = max of $|f^{(n+1)}|$ on interval"

### Slide 18: Lagrange Example 1
- **Type:** `slide-example`
- **Section:** Error Bounds
- **Content:**
  - Title: "Example: Error in $e^x$ Approximation"
  - Problem: "Bound error when approximating $e^{0.5}$ with $P_4(x)$"
  - Solution:
    - "$f(x) = e^x$, so $f^{(5)}(x) = e^x$"
    - "For $t \in [0, 0.5]$: max of $e^t$ is at $t = 0.5$"
    - "$M = e^{0.5} \approx 1.65$ (or use $M = 2$)"
    - "$|R_4(0.5)| \leq \frac{2 \cdot (0.5)^5}{5!} = \frac{2 \cdot 0.03125}{120} \approx 0.00052$"

### Slide 19: Lagrange Example 2
- **Type:** `slide-example`
- **Section:** Error Bounds
- **Content:**
  - Title: "Example: How Many Terms for $\sin(1)$?"
  - Problem: "How many terms of Maclaurin series for $\sin(1)$ within 0.0001?"
  - Solution:
    - "$f(x) = \sin(x)$; all derivatives bounded by 1"
    - "$M = 1$ works for any $n$"
    - "Need: $\frac{1 \cdot 1^{n+1}}{(n+1)!} < 0.0001$"
    - "$(n+1)! > 10000$; $8! = 40320 > 10000$ ✓"
    - "So $n+1 = 8$, meaning $n = 7$: use $P_7(x)$"

### Slide 20: Comparing the Bounds
- **Type:** `slide-visual`
- **Section:** Error Bounds
- **Content:**
  - Title: "Comparing Error Bounds"
  - Table:
    - | Bound | When to Use | Formula |
    - | Alternating | Series alternates, AST applies | $|S - S_n| \leq b_{n+1}$ |
    - | Lagrange | General case | $|R_n| \leq M|x-a|^{n+1}/(n+1)!$ |
  - Note: "Alternating bound is usually simpler and tighter when applicable"

### Slide 21: Integration Application
- **Type:** `slide-example`
- **Section:** Applications
- **Content:**
  - Title: "Application: $\int_0^1 e^{-x^2}\,dx$"
  - Problem: "Approximate within 0.001"
  - Solution:
    - "Series: $e^{-x^2} = 1 - x^2 + \frac{x^4}{2!} - \frac{x^6}{3!} + \cdots$"
    - "Integrate: $\int_0^1 e^{-x^2}\,dx = 1 - \frac{1}{3} + \frac{1}{10} - \frac{1}{42} + \cdots$"
    - "Alternating! Need term $< 0.001$"
    - "Term at $n=5$: $\frac{1}{11 \cdot 120} \approx 0.00076 < 0.001$ ✓"
    - "Sum: $\approx 0.747$"

### Slide 22: Summary - Finding Interval
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Finding Interval of Convergence"
  - Steps:
    1. "Apply ratio test to find $R$"
    2. "Write interval $(a-R, a+R)$"
    3. "Test each endpoint separately with appropriate test"
    4. "Write final interval with correct bracket notation"

### Slide 23: Summary - Error Bounds
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Choosing an Error Bound"
  - Decision guide:
    - "Is the series alternating and satisfies AST?"
    - "**YES:** Use alternating bound $|S - S_n| \leq b_{n+1}$"
    - "**NO:** Use Lagrange bound $|R_n| \leq M|x-a|^{n+1}/(n+1)!$"
  - Note: "Error bounds are UPPER bounds—true error usually smaller"

### Slide 24: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice"
  - Problems:
    1. "Find the radius and interval of convergence for $\sum \frac{(x-2)^n}{n^2}$"
    2. "How many terms of $\sum \frac{(-1)^n}{(2n+1)!}$ give $\sin(1)$ within 0.0001?"
    3. "Bound error when approximating $\cos(0.2)$ with $P_4(x)$ using Lagrange"
  - Time: "5 minutes"

### Slide 25: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Answers:
    1. "$R = 1$ (ratio test). At $x=3$: $\sum 1/n^2$ converges. At $x=1$: $\sum 1/n^2$ converges. Interval: $[1, 3]$"
    2. "Terms: $1, -1/6, 1/120, -1/5040, 1/362880...$; $1/5040 < 0.0001$ ✓. Use 4 terms"
    3. "$M = 1$ for $|\cos^{(5)}|$. $|R_4| \leq \frac{1 \cdot (0.2)^5}{5!} = \frac{0.00032}{120} \approx 0.0000027$"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Radius $R$ found via ratio test: $R = 1/\lim|c_{n+1}/c_n|$"
    - "Always test endpoints separately"
    - "Alternating error: $|S - S_n| \leq b_{n+1}$ (simple, tight)"
    - "Lagrange error: $|R_n| \leq M|x-a|^{n+1}/(n+1)!$ (general)"
    - "Choose appropriate bound for the situation"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "Find the interval of convergence for $\sum \frac{x^n}{n!}$."
    2. "State both error bound formulas."
    3. "If approximating $e^1$ with $P_n$, which error bound would you use? Why?"

### Slide 28: Unit 10 Complete
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Congratulations! Unit 10 Complete"
  - Secondary: "You've mastered infinite sequences and series—one of the most powerful tools in mathematics!"
  - Note: "Review all convergence tests before the exam"

---

## D3 Visualization Specifications

### Visualization 1: Interval of Convergence (Slide 4)

```javascript
// Number line showing convergence regions
// Features:
// - Number line with center at a
// - Slider for R (radius)
// - Green region for (a-R, a+R)
// - Red regions outside
// - Endpoints marked with adjustable symbols (open/closed circles)
// - Display interval notation

// Color scheme:
// - Converges: var(--color-integral) #22c55e
// - Diverges: var(--color-derivative) #f97316
// - Endpoints: var(--color-tangent) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Alternating Error Bound (Slide 13)

```javascript
// Oscillating partial sums with error visualization
// Features:
// - Number line showing S_1, S_2, S_3, ... approaching S
// - Error bar showing |S - S_n|
// - Show b_{n+1} as upper bound for error
// - Animate convergence
// - Display: "Error ≤ [b_{n+1}]"

// Color scheme:
// - Partial sums: var(--theme-color) #4f46e5
// - True sum S: var(--color-tangent) #fbbf24
// - Error bound: var(--color-derivative) #f97316
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Endpoint testing is a common AP exam topic—emphasize it
- Finding $M$ for Lagrange bound can be tricky—practice with common functions where it's simple ($\sin$, $\cos$: $M = 1$)
- Alternating series error bound is almost always simpler—prefer it when applicable
- This is the capstone of Unit 10—review all tests
