# Presentation Spec: Fundamental Theorem of Calculus Part 2

## Class 33 | Unit 6: Integration and Accumulation of Change
## CED Topic 6.7

---

## Overview

This presentation delivers the computational power of the Fundamental Theorem. Students learn that definite integrals can be evaluated by finding any antiderivative and computing F(b) - F(a), eliminating the need for Riemann sum limits. The net change interpretation connects this theorem to real-world rate problems. Visualizations emphasize that area under f equals height difference on F.

**Theme Color:** `#d4a028` (Unit 6 Gold)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 6: Integration and Accumulation of Change"
  - Title: "The Fundamental Theorem of Calculus"
  - Subtitle: "Part 2: Evaluating Definite Integrals"
  - Meta: "Class 33 | CED 6.7 | NCSSM"

### Slide 1: Recall FTC Part 1
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Yesterday's Discovery"
  - Display: $$\frac{d}{dx}\left[\int_a^x f(t)\,dt\right] = f(x)$$
  - Interpretation: "The accumulation function $F(x) = \int_a^x f(t)\,dt$ is an antiderivative of f"
  - Question: "How does this help us EVALUATE integrals?"

### Slide 2: The Computational Problem
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Computing definite integrals using limits of Riemann sums is tedious"
  - Secondary: "There must be an easier way..."

### Slide 3: The Key Observation
- **Type:** `slide-visual`
- **Section:** Deriving FTC Part 2
- **Content:**
  - Title: "A Crucial Observation"
  - From FTC Part 1: $F(x) = \int_a^x f(t)\,dt$ satisfies $F'(x) = f(x)$
  - Two facts:
    - "$F(a) = \int_a^a f(t)\,dt = 0$ (area from a to a is zero)"
    - "$F(b) = \int_a^b f(t)\,dt$ (this IS the integral we want!)"
  - "So... $\int_a^b f(t)\,dt = F(b) - F(a)$ when $F(a) = 0$"

### Slide 4: Any Antiderivative Works
- **Type:** `slide-visual`
- **Section:** Deriving FTC Part 2
- **Content:**
  - Title: "But What About Other Antiderivatives?"
  - If G is any antiderivative of f, then $G(x) = F(x) + C$
  - Calculation:
    - "$G(b) - G(a) = [F(b) + C] - [F(a) + C]$"
    - "$= F(b) - F(a)$"
    - "$= \int_a^b f(t)\,dt$"
  - Key insight: "The constants cancel! ANY antiderivative works!"

### Slide 5: The Fundamental Theorem Part 2
- **Type:** `slide-visual`
- **Section:** The Theorem
- **Content:**
  - Title: "The Fundamental Theorem of Calculus, Part 2"
  - Gold-bordered definition box:
    - $$\int_a^b f(x)\,dx = F(b) - F(a) \text{ where } F' = f$$
  - In words: "To evaluate a definite integral, find ANY antiderivative, then subtract: upper bound value minus lower bound value"

### Slide 6: The Power of This Result
- **Type:** `slide-statement`
- **Section:** The Theorem
- **Content:**
  - Statement: "3Blue1Brown: 'The fundamental theorem turns an incredibly difficult problem - adding up infinitely many infinitesimally small quantities - into a simple subtraction problem.'"
- **Notes:** This is why calculus is so powerful

### Slide 7: Evaluation Bar Notation
- **Type:** `slide-visual`
- **Section:** Notation
- **Content:**
  - Title: "Evaluation Notation"
  - Three equivalent notations:
    - $F(x)\Big|_a^b$
    - $[F(x)]_a^b$
    - $\left.F(x)\right|_{x=a}^{x=b}$
  - All mean: "F(b) - F(a)"
  - "Evaluate F at b, subtract F at a"

### Slide 8: The Evaluation Process
- **Type:** `slide-list`
- **Section:** Procedure
- **Content:**
  - Title: "Step-by-Step Procedure"
  - Steps:
    1. "Find an antiderivative F(x) such that F'(x) = f(x)"
    2. "Write $F(x)\big|_a^b$"
    3. "Substitute: $F(b) - F(a)$"
    4. "Compute the result"
  - Important: "No +C needed! (It cancels in the subtraction)"

### Slide 9: Visual Connection
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Area = Height Difference"
  - **D3 Visualization:** Dual graph showing:
    - Bottom: f(x) with shaded area from a to b
    - Top: F(x) with points F(a) and F(b) marked
    - Vertical segment from F(a) to F(b) labeled as "F(b) - F(a)"
  - Caption: "The area under f equals the vertical change in F"

### Slide 10: Example 1 - Linear
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 1: Linear Function"
  - Problem: $\int_0^3 2x\,dx$
  - Solution:
    - "Antiderivative: $F(x) = x^2$"
    - "$= x^2\Big|_0^3 = 3^2 - 0^2 = 9 - 0 = 9$"
  - Verification: "Area of triangle = $\frac{1}{2}(3)(6) = 9$ (check mark)"

### Slide 11: Example 2 - Power Rule
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 2: Using Power Rule"
  - Problem: $\int_1^4 \sqrt{x}\,dx$
  - Solution:
    - "$= \int_1^4 x^{1/2}\,dx$"
    - "Antiderivative: $\frac{x^{3/2}}{3/2} = \frac{2}{3}x^{3/2}$"
    - "$= \frac{2}{3}x^{3/2}\Big|_1^4 = \frac{2}{3}(8) - \frac{2}{3}(1) = \frac{16}{3} - \frac{2}{3} = \frac{14}{3}$"

### Slide 12: Example 3 - Trigonometric
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 3: Trigonometric"
  - Problem: $\int_0^\pi \cos(x)\,dx$
  - Solution:
    - "Antiderivative: $\sin(x)$"
    - "$= \sin(x)\Big|_0^\pi = \sin(\pi) - \sin(0) = 0 - 0 = 0$"
  - Explanation: "Positive area (0 to pi/2) cancels negative area (pi/2 to pi)"

### Slide 13: Example 4 - Exponential
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 4: Exponential"
  - Problem: $\int_0^1 e^x\,dx$
  - Solution:
    - "Antiderivative: $e^x$"
    - "$= e^x\Big|_0^1 = e^1 - e^0 = e - 1$"
  - Approximate value: "$\approx 1.718$"

### Slide 14: Example 5 - Natural Log
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 5: Natural Logarithm"
  - Problem: $\int_1^e \frac{1}{x}\,dx$
  - Solution:
    - "Antiderivative: $\ln|x|$"
    - "$= \ln|x|\Big|_1^e = \ln(e) - \ln(1) = 1 - 0 = 1$"

### Slide 15: Example 6 - Combined
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 6: Polynomial"
  - Problem: $\int_0^2 (3x^2 - 4x + 1)\,dx$
  - Solution:
    - "Antiderivative: $x^3 - 2x^2 + x$"
    - "$= [x^3 - 2x^2 + x]_0^2$"
    - "$= (8 - 8 + 2) - (0 - 0 + 0) = 2$"

### Slide 16: Why No +C?
- **Type:** `slide-visual`
- **Section:** Common Questions
- **Content:**
  - Title: "Why Don't We Need +C?"
  - Visual proof:
    - "$[F(x) + C]_a^b$"
    - "$= (F(b) + C) - (F(a) + C)$"
    - "$= F(b) + C - F(a) - C$"
    - "$= F(b) - F(a)$"
  - Conclusion: "The constants cancel! So we omit +C for definite integrals"

### Slide 17: Common Errors
- **Type:** `slide-list`
- **Section:** Common Questions
- **Content:**
  - Title: "Avoid These Mistakes"
  - List:
    - "DON'T write +C for definite integrals (it cancels)"
    - "DON'T compute F(b-a) - evaluate F at b AND a separately, then subtract"
    - "DO remember: upper minus lower (F(b) - F(a))"
    - "DO check sign - negative results are possible!"

### Slide 18: Net Change Interpretation
- **Type:** `slide-visual`
- **Section:** Net Change
- **Content:**
  - Title: "The Net Change Theorem"
  - Statement: "If $f = F'$, then:"
  - $$\int_a^b f(x)\,dx = F(b) - F(a) = \text{net change in } F \text{ from } a \text{ to } b$$
  - In words: "The integral of a rate of change equals the total change"

### Slide 19: Net Change Applications
- **Type:** `slide-list`
- **Section:** Net Change
- **Content:**
  - Title: "Rate-to-Total Applications"
  - Table:
    | If f represents... | Then integral represents... |
    |-------------------|---------------------------|
    | Velocity | Displacement |
    | Population growth rate | Population change |
    | Marginal cost | Total cost change |
    | Flow rate | Total volume |
    | Temperature rate | Temperature change |

### Slide 20: Net Change Example
- **Type:** `slide-example`
- **Section:** Net Change
- **Content:**
  - Title: "Application: Flow Rate"
  - Problem: "Water flows into a tank at rate $r(t) = 2t$ gallons/minute. How much water enters from t = 0 to t = 5?"
  - Solution:
    - "$\int_0^5 2t\,dt = t^2\Big|_0^5 = 25 - 0 = 25$ gallons"

### Slide 21: Guided Practice
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice"
  - Problem: Evaluate $\int_1^2 (x^3 - 2\sin x + 1)\,dx$
  - Time: "3 minutes"

### Slide 22: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Antiderivative: $\frac{x^4}{4} + 2\cos x + x$
  - Evaluation:
    - "$= \left[\frac{x^4}{4} + 2\cos x + x\right]_1^2$"
    - "$= \left(\frac{16}{4} + 2\cos 2 + 2\right) - \left(\frac{1}{4} + 2\cos 1 + 1\right)$"
    - "$= (4 + 2\cos 2 + 2) - (0.25 + 2\cos 1 + 1)$"
    - "$= 4.75 + 2\cos 2 - 2\cos 1$"

### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Evaluate $\int_0^4 (2x - 3)\,dx$"
  - Bonus: "If f(x) = 2x - 3 represents velocity in m/s, interpret your answer"

### Slide 24: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "FTC Part 2: $\int_a^b f(x)\,dx = F(b) - F(a)$ where $F' = f$"
    - "Find ANY antiderivative, evaluate at bounds, subtract"
    - "No +C needed - it cancels in the subtraction"
    - "The integral of a rate equals the net change"
    - "Upper minus lower: F(b) - F(a)"

### Slide 25: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Building our antiderivative toolkit"
  - Secondary: "We'll learn systematic rules for finding antiderivatives"

---

## D3 Visualization Specifications

### Visualization 1: Area Equals Height Difference (Slide 9)

```javascript
// Dual graph showing area under f equals change in F
// Features:
// - Bottom panel: f(x) with shaded area from a to b
// - Top panel: F(x) antiderivative curve
// - Mark points F(a) and F(b) on top curve
// - Draw vertical segment connecting them
// - Label: "F(b) - F(a) = [value]"
// - Label area: "[same value]"
// - Highlight that they're equal

// Function: f(x) = x, F(x) = x^2/2 for simplicity
// Or f(x) = cos(x), F(x) = sin(x)

// Animation option:
// - "Transfer" the area from bottom to become height difference on top
// - Morph shaded region into vertical segment

// Color scheme:
// - f curve: #60a5fa
// - F curve: #d4a028
// - Shaded area: gold with transparency
// - Vertical segment: #ef4444 (red accent)
```

### Visualization 2: Why Constants Cancel (Slide 16)

```javascript
// Show two antiderivatives F(x) and F(x) + C
// Features:
// - Graph F(x) and F(x) + C (shifted up by C)
// - Mark F(a), F(b), F(a) + C, F(b) + C
// - Show that vertical difference is the same for both
// - Animate: show subtraction happening
// - Display: "F(b) - F(a) = [value]" and "(F(b)+C) - (F(a)+C) = [same value]"

// Purpose: Visual proof that +C cancels
```

### Visualization 3: Net Change Accumulator

```javascript
// Show rate function and accumulated total
// Features:
// - Rate function f(t) = velocity
// - Shaded area represents accumulated change
// - Counter showing total displacement
// - Compare to F(b) - F(a) value

// Application-focused visualization
// - Show car position changing based on velocity
// - Display displacement accumulating
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- Dual graph visualization key for conceptual understanding
- Emphasize evaluation bar notation consistently
- Model careful arithmetic in examples
- All D3 text minimum 1.25rem
- TOC sections: Opening, Deriving FTC Part 2, The Theorem, Notation, Procedure, Examples, Common Questions, Net Change, Practice, Summary
