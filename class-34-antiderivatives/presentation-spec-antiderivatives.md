# Presentation Spec: Antiderivatives and Basic Integration Rules

## Class 34 | Unit 6: Integration and Accumulation of Change
## CED Topic 6.8

---

## Overview

This presentation develops the toolkit of basic antiderivative rules by reversing derivative rules. Students understand that indefinite integrals represent families of functions differing by a constant, master the power rule for integration, and learn antiderivatives for exponential and trigonometric functions. The +C requirement is emphasized throughout as essential, not optional. Visualizations show the "family of curves" interpretation.

**Theme Color:** `#d4a028` (Unit 6 Gold)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 6: Integration and Accumulation of Change"
  - Title: "Antiderivatives"
  - Subtitle: "Building the Integration Toolkit"
  - Meta: "Class 34 | CED 6.8 | NCSSM"

### Slide 1: The Reverse Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "I tell you that F'(x) = 2x. What is F(x)?"
  - Secondary: "This is the antiderivative question: given f, find F such that F' = f"
- **Notes:** Lead students to discover x^2, then probe for other possibilities

### Slide 2: Multiple Answers
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "But Wait... There's More Than One Answer!"
  - List of valid antiderivatives:
    - F(x) = x^2 works (derivative is 2x)
    - F(x) = x^2 + 1 also works (derivative is 2x)
    - F(x) = x^2 - 5 also works (derivative is 2x)
    - F(x) = x^2 + 100 also works
  - Question: "What do all these have in common?"

### Slide 3: The Family of Antiderivatives
- **Type:** `slide-visual`
- **Section:** The +C
- **Content:**
  - Title: "A Family of Curves"
  - **D3 Visualization:** Multiple parabolas y = x^2 + C for various C values
    - Show C = -2, -1, 0, 1, 2
    - All curves are vertical translations
  - Caption: "All these curves have the same derivative: 2x"

### Slide 4: Why Multiple Antiderivatives?
- **Type:** `slide-visual`
- **Section:** The +C
- **Content:**
  - Title: "The Mathematical Reason"
  - Statement: "If F is an antiderivative of f, then so is F(x) + C for any constant C"
  - Proof: "$\frac{d}{dx}[F(x) + C] = F'(x) + 0 = f(x)$"
  - Caption: "Adding a constant doesn't change the derivative!"

### Slide 5: The Indefinite Integral
- **Type:** `slide-visual`
- **Section:** Indefinite Integral
- **Content:**
  - Title: "The Indefinite Integral"
  - Definition box:
    - $$\int f(x)\,dx = F(x) + C$$
    - "where F'(x) = f(x)"
  - This notation represents the FAMILY of all antiderivatives
  - C is called the "constant of integration"

### Slide 6: Definite vs. Indefinite
- **Type:** `slide-comparison`
- **Section:** Indefinite Integral
- **Content:**
  - Title: "Two Types of Integrals"
  - Column 1: Definite Integral
    - $\int_a^b f(x)\,dx$
    - Has bounds
    - Result is a NUMBER
    - No +C (it cancels)
  - Column 2: Indefinite Integral
    - $\int f(x)\,dx$
    - No bounds
    - Result is a FUNCTION (family)
    - MUST include +C

### Slide 7: Why "Indefinite"?
- **Type:** `slide-statement`
- **Section:** Indefinite Integral
- **Content:**
  - Statement: "The +C means the answer is not completely determined"
  - Secondary: "Without an initial condition, we can't pin down which specific antiderivative we want"
- **Notes:** Initial conditions come in differential equations

### Slide 8: The Power Rule for Integration
- **Type:** `slide-visual`
- **Section:** Power Rule
- **Content:**
  - Title: "Reversing the Power Rule"
  - Derivative power rule: $\frac{d}{dx}[x^n] = nx^{n-1}$
  - Question: "What function has derivative $x^n$?"
  - Working backward:
    - "If $\frac{d}{dx}[x^{n+1}] = (n+1)x^n$"
    - "Then $\frac{d}{dx}\left[\frac{x^{n+1}}{n+1}\right] = x^n$"

### Slide 9: Power Rule Formula
- **Type:** `slide-visual`
- **Section:** Power Rule
- **Content:**
  - Title: "Integration Power Rule"
  - Gold-bordered box:
    - $$\int x^n\,dx = \frac{x^{n+1}}{n+1} + C \quad \text{for } n \neq -1$$
  - In words: "Add 1 to the exponent, divide by the new exponent, add C"
- **Notes:** Emphasize n not equal to -1

### Slide 10: Power Rule Examples
- **Type:** `slide-example`
- **Section:** Power Rule
- **Content:**
  - Title: "Power Rule Examples"
  - Example 1: $\int x^4\,dx = \frac{x^5}{5} + C$
    - Check: $\frac{d}{dx}\left[\frac{x^5}{5}\right] = x^4$ (checkmark)
  - Example 2: $\int x^{-2}\,dx = \frac{x^{-1}}{-1} + C = -\frac{1}{x} + C$
  - Example 3: $\int \sqrt{x}\,dx = \int x^{1/2}\,dx = \frac{x^{3/2}}{3/2} + C = \frac{2}{3}x^{3/2} + C$

### Slide 11: More Power Rule Examples
- **Type:** `slide-example`
- **Section:** Power Rule
- **Content:**
  - Title: "Fractional and Negative Exponents"
  - Example 4: $\int \frac{1}{\sqrt{x}}\,dx = \int x^{-1/2}\,dx = \frac{x^{1/2}}{1/2} + C = 2\sqrt{x} + C$
  - Example 5: $\int x^{-3}\,dx = \frac{x^{-2}}{-2} + C = -\frac{1}{2x^2} + C$
  - Always verify by differentiating!

### Slide 12: The Special Case n = -1
- **Type:** `slide-visual`
- **Section:** Special Cases
- **Content:**
  - Title: "What About n = -1?"
  - Problem: $\int x^{-1}\,dx = \int \frac{1}{x}\,dx = ?$
  - The formula gives: $\frac{x^0}{0} = \frac{1}{0}$ - UNDEFINED!
  - Special rule needed:
    - $$\int \frac{1}{x}\,dx = \ln|x| + C$$

### Slide 13: Why Absolute Value?
- **Type:** `slide-two-part`
- **Section:** Special Cases
- **Content:**
  - Title: "Why ln|x|, Not Just ln(x)?"
  - Primary: "The domain of 1/x includes negative numbers"
  - Secondary: "ln|x| handles both positive and negative x"
  - Note: "$\frac{d}{dx}[\ln|x|] = \frac{1}{x}$ for all $x \neq 0$"

### Slide 14: Properties of Indefinite Integrals
- **Type:** `slide-list`
- **Section:** Properties
- **Content:**
  - Title: "Integration Properties"
  - Property 1: Constant Multiple
    - $\int c \cdot f(x)\,dx = c \int f(x)\,dx$
  - Property 2: Sum/Difference
    - $\int [f(x) \pm g(x)]\,dx = \int f(x)\,dx \pm \int g(x)\,dx$
  - Warning: "Integration does NOT distribute over products!"
    - $\int f(x) \cdot g(x)\,dx \neq \int f(x)\,dx \cdot \int g(x)\,dx$

### Slide 15: Exponential Functions
- **Type:** `slide-visual`
- **Section:** Exponential and Trig
- **Content:**
  - Title: "Exponential Antiderivatives"
  - Box: $$\int e^x\,dx = e^x + C$$
  - Check: $\frac{d}{dx}[e^x] = e^x$ (checkmark)
  - General: $\int a^x\,dx = \frac{a^x}{\ln a} + C$ (for $a > 0, a \neq 1$)

### Slide 16: Trigonometric Functions
- **Type:** `slide-visual`
- **Section:** Exponential and Trig
- **Content:**
  - Title: "Trigonometric Antiderivatives"
  - Table:
    | Integral | Result | Because derivative of... |
    |----------|--------|-------------------------|
    | $\int \cos x\,dx$ | $\sin x + C$ | $\sin x$ is $\cos x$ |
    | $\int \sin x\,dx$ | $-\cos x + C$ | $-\cos x$ is $\sin x$ |
    | $\int \sec^2 x\,dx$ | $\tan x + C$ | $\tan x$ is $\sec^2 x$ |
    | $\int \csc^2 x\,dx$ | $-\cot x + C$ | $-\cot x$ is $\csc^2 x$ |

### Slide 17: More Trigonometric Antiderivatives
- **Type:** `slide-visual`
- **Section:** Exponential and Trig
- **Content:**
  - Title: "More Trig Integrals"
  - Table continued:
    | Integral | Result |
    |----------|--------|
    | $\int \sec x \tan x\,dx$ | $\sec x + C$ |
    | $\int \csc x \cot x\,dx$ | $-\csc x + C$ |
  - Mnemonic: "Co-functions get negatives"

### Slide 18: Integration Rules Summary
- **Type:** `slide-list`
- **Section:** Summary Table
- **Content:**
  - Title: "Integration Rules at a Glance"
  - Compact table of all rules:
    - Power: $\int x^n\,dx = \frac{x^{n+1}}{n+1} + C$ $(n \neq -1)$
    - Special: $\int \frac{1}{x}\,dx = \ln|x| + C$
    - Exponential: $\int e^x\,dx = e^x + C$
    - Trig: $\int \cos x\,dx = \sin x + C$, etc.

### Slide 19: Always Verify
- **Type:** `slide-statement`
- **Section:** Verification
- **Content:**
  - Statement: "ALWAYS check your antiderivative by differentiating!"
  - Secondary: "If the derivative of your answer equals the original integrand, you're correct"
- **Notes:** Build the habit of verification

### Slide 20: Worked Example 1
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Example: Polynomial"
  - Problem: $\int (3x^2 - 4x + 5)\,dx$
  - Solution: $= 3 \cdot \frac{x^3}{3} - 4 \cdot \frac{x^2}{2} + 5x + C = x^3 - 2x^2 + 5x + C$
  - Verify: $\frac{d}{dx}[x^3 - 2x^2 + 5x + C] = 3x^2 - 4x + 5$ (checkmark)

### Slide 21: Worked Example 2
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Example: Mixed Functions"
  - Problem: $\int (2e^x + 3\cos x)\,dx$
  - Solution: $= 2e^x + 3\sin x + C$
  - Verify: $\frac{d}{dx}[2e^x + 3\sin x] = 2e^x + 3\cos x$ (checkmark)

### Slide 22: Worked Example 3
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Example: Rewrite First"
  - Problem: $\int \left(\frac{4}{x} - \frac{1}{x^2}\right)\,dx$
  - Rewrite: $= \int (4x^{-1} - x^{-2})\,dx$
  - Solution: $= 4\ln|x| - \frac{x^{-1}}{-1} + C = 4\ln|x| + \frac{1}{x} + C$

### Slide 23: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem: $\int (x^3 - 2\sin x + 1)\,dx$
  - Time: "2 minutes"
  - Reminder: "Don't forget +C!"

### Slide 24: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - $\int (x^3 - 2\sin x + 1)\,dx = \frac{x^4}{4} + 2\cos x + x + C$
  - Note: "The integral of $-2\sin x$ is $-2(-\cos x) = 2\cos x$"

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Indefinite integral = family of antiderivatives (include +C!)"
    - "Power rule: add 1 to exponent, divide by new exponent"
    - "Special case: $\int \frac{1}{x}\,dx = \ln|x| + C$"
    - "Verify by differentiating your answer"
    - "Properties let us integrate term by term"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Evaluate $\int (x^4 - 3x^2 + 2x - 7)\,dx$"
  - Reminder: "Show your work and verify!"

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: U-Substitution"
  - Secondary: "What to do when the basic rules don't directly apply"

---

## D3 Visualization Specifications

### Visualization 1: Family of Antiderivatives (Slide 3)

```javascript
// Multiple curves showing antiderivative family
// Features:
// - Graph y = x^2 + C for C = -2, -1, 0, 1, 2
// - All curves are parallel parabolas (vertical shifts)
// - Slider to adjust C continuously
// - Display: "All these have derivative 2x"
// - Optional: show tangent line at same x-value has same slope on all curves

// Color scheme:
// - Different shades of theme color for different C values
// - Or use a gradient
// - Label each curve with its C value

// Key insight:
// - At any x, draw tangent lines on all curves
// - All tangent lines are parallel (same slope = 2x)
```

### Visualization 2: Power Rule Derivation

```javascript
// Show the "reverse" process
// Features:
// - Start with x^n
// - Show question mark: "What function has this derivative?"
// - Animation: work backward through power rule
// - Arrive at x^(n+1)/(n+1)
// - Verify by differentiating forward

// Step-by-step reveal with animations
```

### Visualization 3: +C Importance

```javascript
// Show why +C matters
// Features:
// - Graph of f(x) = 2x
// - Ask: "Which parabola is THE antiderivative?"
// - Show multiple parabolas, all valid
// - Without additional info, can't determine C
// - Add initial condition (e.g., passes through (1, 3))
// - Now unique curve can be identified

// Purpose: Motivate why +C is essential
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- Consistently emphasize +C throughout - deduct in practice for missing it
- Family of curves visualization central to conceptual understanding
- Build from derivatives students know to their antiderivatives
- All D3 text minimum 1.25rem
- TOC sections: Opening, The +C, Indefinite Integral, Power Rule, Special Cases, Properties, Exponential and Trig, Practice, Summary
