# Presentation Spec: U-Substitution

## Class 35 | Unit 6: Integration and Accumulation of Change
## CED Topic 6.9

---

## Overview

This presentation introduces u-substitution as the "chain rule in reverse." Students learn to recognize composite function structures in integrands, perform complete substitution including converting dx to du, and handle both indefinite and definite integrals. The emphasis is on pattern recognition and the complete substitution process including back-substitution.

**Theme Color:** `#d4a028` (Unit 6 Gold)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 6: Integration and Accumulation of Change"
  - Title: "U-Substitution"
  - Subtitle: "The Chain Rule in Reverse"
  - Meta: "Class 35 | CED 6.9 | NCSSM"

### Slide 1: A Problem We Can't Solve Directly
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "This Doesn't Match Our Rules"
  - Problem: $\int 2x \cdot \cos(x^2)\,dx$
  - Analysis:
    - "Not just cos(x)"
    - "Not a simple product we can separate"
    - "What should we do?"

### Slide 2: The Key Observation
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Wait - This Looks Familiar!"
  - Observation: "If we differentiated $\sin(x^2)$..."
  - Calculation: $\frac{d}{dx}[\sin(x^2)] = \cos(x^2) \cdot 2x$
  - "That's exactly our integrand!"
  - Result: $\int 2x \cdot \cos(x^2)\,dx = \sin(x^2) + C$

### Slide 3: Recognizing the Chain Rule
- **Type:** `slide-statement`
- **Section:** The Concept
- **Content:**
  - Statement: "U-substitution is the chain rule running backwards"
  - Secondary: "3Blue1Brown: 'We're recognizing that a complex-looking integral has a composition structure that the chain rule would create.'"

### Slide 4: The Chain Rule Connection
- **Type:** `slide-visual`
- **Section:** The Concept
- **Content:**
  - Title: "From Chain Rule to Substitution"
  - Chain rule: $\frac{d}{dx}[F(g(x))] = F'(g(x)) \cdot g'(x) = f(g(x)) \cdot g'(x)$
  - Reversing: $$\int f(g(x)) \cdot g'(x)\,dx = F(g(x)) + C$$
  - "If the derivative of the inner function appears as a factor, we can integrate!"

### Slide 5: The Substitution Idea
- **Type:** `slide-visual`
- **Section:** The Method
- **Content:**
  - Title: "The Substitution"
  - Let $u = g(x)$ (the inner function)
  - Then $du = g'(x)\,dx$
  - Transform: $\int f(g(x)) \cdot g'(x)\,dx \to \int f(u)\,du$
  - "The complex integral becomes a simple one!"

### Slide 6: The U-Substitution Procedure
- **Type:** `slide-list`
- **Section:** The Method
- **Content:**
  - Title: "Step-by-Step Procedure"
  - Steps:
    1. "Identify u (the 'inside' function)"
    2. "Compute du = u'(x) dx"
    3. "Solve for dx or a product in terms of du"
    4. "Substitute: replace ALL x-expressions with u-expressions"
    5. "Integrate in terms of u"
    6. "Back-substitute: replace u with g(x)"
    7. "Check by differentiating"

### Slide 7: Choosing u
- **Type:** `slide-list`
- **Section:** Choosing u
- **Content:**
  - Title: "How to Choose u"
  - Guidelines:
    - "Look for a function whose derivative ALSO appears"
    - "Choose the 'inside' of a composition"
    - "Choose the more complicated factor"
    - "Goal: make the integral SIMPLER after substitution"
- **Notes:** These are guidelines, not strict rules

### Slide 8: Example 1 - Basic
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 1: Basic U-Substitution"
  - Problem: $\int (2x+1)^5\,dx$
  - Setup:
    - "Let $u = 2x + 1$"
    - "$du = 2\,dx$, so $dx = \frac{du}{2}$"
  - Solution:
    - "$\int u^5 \cdot \frac{du}{2} = \frac{1}{2} \cdot \frac{u^6}{6} + C = \frac{(2x+1)^6}{12} + C$"
  - Verify: $\frac{d}{dx}\left[\frac{(2x+1)^6}{12}\right] = \frac{6(2x+1)^5 \cdot 2}{12} = (2x+1)^5$ (checkmark)

### Slide 9: Adjusting for Missing Constants
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "When du Doesn't Match Exactly"
  - Problem: $\int x\sqrt{x^2+4}\,dx$
  - Issue: "If $u = x^2 + 4$, then $du = 2x\,dx$"
  - "But we only have $x\,dx$, not $2x\,dx$"
  - Solution: "$x\,dx = \frac{1}{2}du$"
  - "Factor out the constant adjustment"

### Slide 10: Example 2 - Adjusting Constants
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 2: Constant Adjustment"
  - Problem: $\int x\sqrt{x^2+4}\,dx$
  - Setup:
    - "$u = x^2 + 4$"
    - "$du = 2x\,dx \Rightarrow x\,dx = \frac{du}{2}$"
  - Solution:
    - "$\int \sqrt{u} \cdot \frac{du}{2} = \frac{1}{2} \cdot \frac{u^{3/2}}{3/2} + C = \frac{1}{3}(x^2+4)^{3/2} + C$"

### Slide 11: Example 3 - Exponential
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 3: Exponential Composition"
  - Problem: $\int e^{\sin x} \cos x\,dx$
  - Setup:
    - "$u = \sin x$"
    - "$du = \cos x\,dx$ (this appears exactly!)"
  - Solution:
    - "$\int e^u\,du = e^u + C = e^{\sin x} + C$"
- **Notes:** When du appears exactly, substitution is clean

### Slide 12: Example 4 - Natural Log Pattern
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 4: The 1/u Pattern"
  - Problem: $\int \tan x\,dx = \int \frac{\sin x}{\cos x}\,dx$
  - Setup:
    - "$u = \cos x$"
    - "$du = -\sin x\,dx \Rightarrow \sin x\,dx = -du$"
  - Solution:
    - "$\int \frac{-du}{u} = -\ln|u| + C = -\ln|\cos x| + C = \ln|\sec x| + C$"

### Slide 13: The du Matching Visual
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Visualizing the Substitution"
  - **D3 Visualization:** Show integral with parts highlighted
    - Inner function u = highlighted in one color
    - Its derivative g'(x) highlighted in another
    - Show how they "collapse" into u and du
  - Animation: parts transforming into simpler form

### Slide 14: Definite Integrals - Two Methods
- **Type:** `slide-comparison`
- **Section:** Definite Integrals
- **Content:**
  - Title: "Definite Integrals with U-Sub"
  - Column 1: Method 1 - Change Bounds
    - "When x = a, u = g(a)"
    - "When x = b, u = g(b)"
    - "Integrate entirely in u"
    - "No back-substitution needed"
  - Column 2: Method 2 - Back-Substitute First
    - "Find indefinite integral in x"
    - "Then evaluate at original bounds"
    - "Same result, different path"

### Slide 15: Example 5 - Definite with Bound Change
- **Type:** `slide-example`
- **Section:** Definite Integrals
- **Content:**
  - Title: "Example 5: Changing Bounds"
  - Problem: $\int_0^1 2xe^{x^2}\,dx$
  - Setup:
    - "$u = x^2$, $du = 2x\,dx$"
    - "When $x = 0$: $u = 0$"
    - "When $x = 1$: $u = 1$"
  - Solution:
    - "$\int_0^1 e^u\,du = e^u\Big|_0^1 = e - 1$"

### Slide 16: Example 6 - Definite with Back-Sub
- **Type:** `slide-example`
- **Section:** Definite Integrals
- **Content:**
  - Title: "Example 6: Back-Substitution Method"
  - Problem: $\int_0^2 x(x^2+1)^3\,dx$
  - Setup:
    - "$u = x^2 + 1$, $du = 2x\,dx$, $x\,dx = \frac{du}{2}$"
  - Indefinite: $\frac{1}{2}\int u^3\,du = \frac{u^4}{8} + C = \frac{(x^2+1)^4}{8} + C$
  - Evaluate: $\frac{(5)^4}{8} - \frac{(1)^4}{8} = \frac{625 - 1}{8} = 78$

### Slide 17: Common Substitution Patterns
- **Type:** `slide-list`
- **Section:** Patterns
- **Content:**
  - Title: "Patterns to Recognize"
  - Table:
    | Pattern | u = | Result |
    |---------|-----|--------|
    | $\int [f(x)]^n f'(x)\,dx$ | $f(x)$ | $\frac{[f(x)]^{n+1}}{n+1} + C$ |
    | $\int e^{f(x)} f'(x)\,dx$ | $f(x)$ | $e^{f(x)} + C$ |
    | $\int \frac{f'(x)}{f(x)}\,dx$ | $f(x)$ | $\ln|f(x)| + C$ |

### Slide 18: More Patterns
- **Type:** `slide-list`
- **Section:** Patterns
- **Content:**
  - Title: "Trigonometric Patterns"
  - Table continued:
    | Pattern | u = | Result |
    |---------|-----|--------|
    | $\int \sin(f(x)) f'(x)\,dx$ | $f(x)$ | $-\cos(f(x)) + C$ |
    | $\int \cos(f(x)) f'(x)\,dx$ | $f(x)$ | $\sin(f(x)) + C$ |
  - Key: "The derivative of the inner function appears as a factor"

### Slide 19: When Substitution Doesn't Work
- **Type:** `slide-statement`
- **Section:** Limitations
- **Content:**
  - Statement: "Not every integral can be solved by substitution"
  - Secondary: "If the derivative of your chosen u doesn't appear (even with constants), try a different approach"
- **Notes:** Preview integration by parts

### Slide 20: Common Mistakes
- **Type:** `slide-list`
- **Section:** Warnings
- **Content:**
  - Title: "Avoid These Errors"
  - List:
    - "DON'T forget to convert dx to du"
    - "DON'T leave u in your final answer (back-substitute!)"
    - "DON'T forget the constant adjustment when du doesn't match exactly"
    - "DON'T mix x's and u's in the same integral"
    - "DO verify by differentiating"

### Slide 21: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice 1"
  - Problem: $\int x^2(x^3-1)^4\,dx$
  - Hint: "What should u be?"
  - Time: "2 minutes"

### Slide 22: Practice 1 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - $u = x^3 - 1$, $du = 3x^2\,dx$, $x^2\,dx = \frac{du}{3}$
  - $\int u^4 \cdot \frac{du}{3} = \frac{1}{3} \cdot \frac{u^5}{5} + C = \frac{(x^3-1)^5}{15} + C$

### Slide 23: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice 2: Definite Integral"
  - Problem: $\int_0^{\pi/2} \cos x \cdot e^{\sin x}\,dx$
  - Time: "3 minutes"

### Slide 24: Practice 2 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - $u = \sin x$, $du = \cos x\,dx$
  - Bounds: $x=0 \Rightarrow u=0$; $x=\pi/2 \Rightarrow u=1$
  - $\int_0^1 e^u\,du = e^u\Big|_0^1 = e - 1$

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "U-substitution reverses the chain rule"
    - "Choose u so that du (or a constant multiple) appears"
    - "ALL x's must become u's before integrating"
    - "ALWAYS back-substitute (replace u with original expression)"
    - "For definite integrals: change bounds OR back-substitute"
    - "Verify by differentiating"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Evaluate $\int_1^2 \frac{x}{x^2+1}\,dx$"
  - Show all steps including choice of u, du, and substitution

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Integration by Parts (BC)"
  - Secondary: "For products that don't fit the substitution pattern"

---

## D3 Visualization Specifications

### Visualization 1: Substitution Transformation (Slide 13)

```javascript
// Animated substitution visualization
// Features:
// - Display original integral with parts highlighted
// - u = g(x) highlighted in blue
// - g'(x)dx highlighted in green
// - Animate transformation:
//   - g(x) morphs to "u"
//   - g'(x)dx collapses to "du"
//   - Remaining f(g(x)) becomes f(u)
// - Show simplified integral emerge

// Example: integral of 2x*cos(x^2) dx
// Highlight x^2 as u
// Highlight 2x dx as du
// Show integral becoming integral of cos(u) du

// Color scheme:
// - u parts: #60a5fa (blue)
// - du parts: #10b981 (green)
// - Result: #d4a028 (theme gold)
```

### Visualization 2: Chain Rule Forward and Reverse

```javascript
// Side-by-side comparison
// Features:
// - Left side: Chain rule forward
//   - d/dx[sin(x^2)] = cos(x^2) * 2x
// - Right side: Chain rule reverse (substitution)
//   - integral of cos(x^2) * 2x dx = sin(x^2) + C
// - Arrows showing the reversal
// - Color-code matching parts

// Purpose: Show substitution IS the chain rule backwards
```

### Visualization 3: Definite Integral Bound Change

```javascript
// Show bound transformation
// Features:
// - Number line for x with bounds a to b
// - Number line for u with bounds g(a) to g(b)
// - Mapping arrows from x-bounds to u-bounds
// - Show area is preserved under transformation

// Example: x from 0 to 1, u = x^2 from 0 to 1
// Or x from 0 to pi/2, u = sin(x) from 0 to 1
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- Substitution transformation animation is key visualization
- Consistent color-coding for u and du throughout
- Emphasize complete substitution (no mixing x and u)
- All D3 text minimum 1.25rem
- TOC sections: Opening, The Concept, The Method, Choosing u, Examples, Definite Integrals, Patterns, Warnings, Practice, Summary
