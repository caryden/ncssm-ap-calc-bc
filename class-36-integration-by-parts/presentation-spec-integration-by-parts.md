# Presentation Spec: Integration by Parts (BC)

## Class 36 | Unit 6: Integration and Accumulation of Change
## CED Topic 6.11 (BC Only)

---

## Overview

This BC-only presentation introduces integration by parts as the "product rule in reverse." Students learn to select u and dv strategically using the LIATE guideline, apply the formula systematically, and handle cases requiring multiple applications or algebraic solving for cyclic integrals. The tabular method provides efficiency for repeated applications.

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
  - Title: "Integration by Parts"
  - Subtitle: "The Product Rule in Reverse"
  - Meta: "Class 36 | CED 6.11 | NCSSM"

### Slide 1: A Product We Can't Substitute
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Substitution Doesn't Work Here"
  - Problem: $\int x e^x\,dx$
  - Analysis:
    - "If $u = x$, then $du = dx$, but $e^x\,dx$ is not just $du$"
    - "If $u = e^x$, then $du = e^x\,dx$, but we can't eliminate the x"
  - "Neither substitution simplifies this integral"

### Slide 2: The Product Rule Connection
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "U-substitution is the chain rule backwards. What's the product rule backwards?"
  - Secondary: "3Blue1Brown: 'Just as u-substitution is the chain rule backwards, integration by parts is the product rule backwards.'"

### Slide 3: Deriving the Formula
- **Type:** `slide-visual`
- **Section:** Derivation
- **Content:**
  - Title: "From Product Rule to Integration by Parts"
  - Product rule: $\frac{d}{dx}[uv] = u\frac{dv}{dx} + v\frac{du}{dx}$
  - Multiply by dx: $d(uv) = u\,dv + v\,du$
  - Rearrange: $u\,dv = d(uv) - v\,du$
  - Integrate both sides...

### Slide 4: The Integration by Parts Formula
- **Type:** `slide-visual`
- **Section:** The Formula
- **Content:**
  - Title: "Integration by Parts"
  - Gold-bordered formula box:
    - $$\int u\,dv = uv - \int v\,du$$
  - Caption: "We trade one integral for another - hopefully easier!"

### Slide 5: Understanding the Trade
- **Type:** `slide-statement`
- **Section:** The Formula
- **Content:**
  - Statement: "The whole point is to replace an integral we can't do with one we can"
  - Secondary: "Success means the new integral $\int v\,du$ is simpler than the original $\int u\,dv$"

### Slide 6: Choosing u and dv
- **Type:** `slide-two-part`
- **Section:** LIATE
- **Content:**
  - Title: "What Do We Choose?"
  - Primary: "You choose u (what to differentiate) and dv (what to integrate)"
  - Secondary: "Then you COMPUTE du (by differentiating u) and v (by integrating dv)"
  - Warning: "You pick u and dv, NOT u and v directly!"

### Slide 7: The LIATE Guideline
- **Type:** `slide-visual`
- **Section:** LIATE
- **Content:**
  - Title: "LIATE: A Guideline for Choosing u"
  - Priority list (highest to lowest):
    - **L**ogarithmic: $\ln x$, $\log x$
    - **I**nverse Trigonometric: $\arctan x$, $\arcsin x$
    - **A**lgebraic: $x$, $x^2$, polynomials
    - **T**rigonometric: $\sin x$, $\cos x$
    - **E**xponential: $e^x$, $2^x$
  - "Choose u from highest priority present; rest goes to dv"

### Slide 8: Why LIATE?
- **Type:** `slide-list`
- **Section:** LIATE
- **Content:**
  - Title: "The Logic Behind LIATE"
  - Reasoning:
    - "L and I: become simpler when differentiated (good for u)"
    - "A: polynomials reduce degree when differentiated"
    - "T and E: stay manageable when integrated (good for dv)"
  - Note: "LIATE is a GUIDELINE, not a rule. The goal is making $\int v\,du$ easier"

### Slide 9: The IBP Setup Box
- **Type:** `slide-visual`
- **Section:** Procedure
- **Content:**
  - Title: "Standard Setup"
  - Layout box:
    ```
    u = ___       dv = ___
    du = ___      v = ___
    ```
  - "Fill in all four boxes before applying the formula"
  - "This prevents errors and keeps work organized"

### Slide 10: Example 1 - Basic IBP
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 1: $\int xe^x\,dx$"
  - LIATE: "x is Algebraic, e^x is Exponential. A > E, so u = x"
  - Setup box:
    - $u = x$, $dv = e^x\,dx$
    - $du = dx$, $v = e^x$
  - Apply: $\int xe^x\,dx = xe^x - \int e^x\,dx = xe^x - e^x + C$
  - Verify: $\frac{d}{dx}[xe^x - e^x] = e^x + xe^x - e^x = xe^x$ (checkmark)

### Slide 11: Example 2 - Logarithm
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 2: $\int \ln x\,dx$"
  - Rewrite: $\int 1 \cdot \ln x\,dx$
  - LIATE: "ln x is Logarithmic (highest), 1 is Algebraic"
  - Setup box:
    - $u = \ln x$, $dv = dx$
    - $du = \frac{1}{x}dx$, $v = x$
  - Apply: $\int \ln x\,dx = x\ln x - \int x \cdot \frac{1}{x}\,dx = x\ln x - x + C$

### Slide 12: Example 3 - Multiple Applications
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 3: $\int x^2\cos x\,dx$ (Two Applications)"
  - First IBP: $u = x^2$, $dv = \cos x\,dx$
  - $= x^2\sin x - \int 2x\sin x\,dx$
  - Second IBP on remaining: $u = 2x$, $dv = \sin x\,dx$
  - $= x^2\sin x - [-2x\cos x - \int -2\cos x\,dx]$
  - $= x^2\sin x + 2x\cos x - 2\sin x + C$

### Slide 13: Multiple Applications Note
- **Type:** `slide-statement`
- **Section:** Examples
- **Content:**
  - Statement: "Some integrals need IBP applied more than once"
  - Secondary: "Polynomial x trig or polynomial x exponential often needs IBP until the polynomial disappears"

### Slide 14: Example 4 - Cyclic Integral
- **Type:** `slide-example`
- **Section:** Cyclic
- **Content:**
  - Title: "Example 4: Cyclic - $\int e^x\cos x\,dx$"
  - First IBP: $u = e^x$, $dv = \cos x\,dx$
  - $= e^x\sin x - \int e^x\sin x\,dx$
  - Second IBP: $u = e^x$, $dv = \sin x\,dx$
  - $= e^x\sin x - [-e^x\cos x - \int -e^x\cos x\,dx]$
  - $= e^x\sin x + e^x\cos x - \int e^x\cos x\,dx$

### Slide 15: Solving the Cyclic Integral
- **Type:** `slide-visual`
- **Section:** Cyclic
- **Content:**
  - Title: "Solving Algebraically"
  - "We got back to the original integral!"
  - Let $I = \int e^x\cos x\,dx$
  - Equation: $I = e^x\sin x + e^x\cos x - I$
  - Solve: $2I = e^x(\sin x + \cos x)$
  - Result: $I = \frac{e^x(\sin x + \cos x)}{2} + C$
- **Notes:** This technique is key for AP success

### Slide 16: The Tabular Method
- **Type:** `slide-visual`
- **Section:** Tabular
- **Content:**
  - Title: "The Tabular (DI) Method"
  - For repeated IBP (polynomial x exp/trig), use a table:
  - Example: $\int x^3e^x\,dx$
  - Table:
    | D (derivatives of u) | I (integrals of dv) | Sign |
    |---------------------|---------------------|------|
    | $x^3$ | $e^x$ | + |
    | $3x^2$ | $e^x$ | - |
    | $6x$ | $e^x$ | + |
    | $6$ | $e^x$ | - |
    | $0$ | $e^x$ | + |

### Slide 17: Tabular Method Result
- **Type:** `slide-visual`
- **Section:** Tabular
- **Content:**
  - Title: "Reading the Table"
  - "Draw diagonal arrows, multiply, use alternating signs"
  - Result: $x^3e^x - 3x^2e^x + 6xe^x - 6e^x + C$
  - "Much faster than writing out multiple IBP applications!"

### Slide 18: When to Use Each Method
- **Type:** `slide-comparison`
- **Section:** Summary of Methods
- **Content:**
  - Title: "Choosing Your Approach"
  - Column 1: Standard IBP
    - "One or two applications"
    - "Non-polynomial factors"
    - "When you want to show all steps"
  - Column 2: Tabular Method
    - "Polynomial x exp or trig"
    - "Many applications needed"
    - "Efficient for computation"
  - Column 3: Algebraic Solving
    - "Cyclic integrals"
    - "Returns to original"
    - "e^x x trig patterns"

### Slide 19: Common Mistakes
- **Type:** `slide-list`
- **Section:** Warnings
- **Content:**
  - Title: "Avoid These Errors"
  - List:
    - "DON'T choose u and v directly - you choose u and dv"
    - "DON'T forget the MINUS sign: $uv - \int v\,du$"
    - "DON'T stop too early - some integrals need multiple applications"
    - "DON'T give up on cyclic - solve algebraically!"
    - "DON'T choose dv that you can't integrate"

### Slide 20: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice 1"
  - Problem: $\int x\sin x\,dx$
  - Guide: "Identify u and dv using LIATE"
  - Time: "3 minutes"

### Slide 21: Practice 1 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - $u = x$, $dv = \sin x\,dx$
  - $du = dx$, $v = -\cos x$
  - $\int x\sin x\,dx = -x\cos x - \int -\cos x\,dx = -x\cos x + \sin x + C$
  - Verify by differentiation (shown)

### Slide 22: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice 2: Setup Only"
  - Problem: "Set up (don't fully evaluate) IBP for $\int x^2e^{2x}\,dx$"
  - Requirements:
    - "Identify u, dv, du, v"
    - "Write the first application of the formula"
    - "Note how many total applications are needed"

### Slide 23: Practice 2 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - $u = x^2$, $dv = e^{2x}\,dx$
  - $du = 2x\,dx$, $v = \frac{1}{2}e^{2x}$
  - First step: $\frac{x^2e^{2x}}{2} - \int xe^{2x}\,dx$
  - Note: "Needs two total applications (polynomial degree 2)"

### Slide 24: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Integration by parts: $\int u\,dv = uv - \int v\,du$"
    - "LIATE helps choose u: Logs, Inverse trig, Algebraic, Trig, Exp"
    - "Choose u and dv, then COMPUTE du and v"
    - "Some integrals need multiple applications"
    - "Cyclic integrals: solve algebraically when you return to the original"

### Slide 25: Common IBP Integrals
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Common Integrals Using IBP"
  - List:
    - $\int xe^x\,dx = e^x(x-1) + C$
    - $\int x\sin x\,dx = -x\cos x + \sin x + C$
    - $\int x\cos x\,dx = x\sin x + \cos x + C$
    - $\int \ln x\,dx = x\ln x - x + C$
    - $\int e^x\sin x\,dx = \frac{e^x(\sin x - \cos x)}{2} + C$

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Evaluate $\int x\cos(2x)\,dx$"
  - Full solution required with verification

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Partial Fractions (BC)"
  - Secondary: "Breaking rational functions into simpler pieces we can integrate"

---

## D3 Visualization Specifications

### Visualization 1: Product Rule to IBP Derivation

```javascript
// Animated derivation showing transformation
// Features:
// - Start with product rule: d(uv) = u dv + v du
// - Rearrange step by step
// - Integrate both sides
// - Arrive at IBP formula
// - Color-code corresponding parts

// Animation: each step appears sequentially with highlights
```

### Visualization 2: LIATE Priority Diagram

```javascript
// Visual hierarchy for LIATE
// Features:
// - Vertical stack showing priority order
// - L at top, E at bottom
// - Arrow indicating "choose u from highest"
// - Examples of each type listed
// - Hoverable for more examples

// Color scheme:
// - Gradient from high priority (gold) to lower (gray)
```

### Visualization 3: Tabular Method Builder

```javascript
// Interactive tabular method
// Features:
// - Input: polynomial and exp/trig function
// - Build table showing derivatives and integrals
// - Draw diagonal arrows
// - Show sign pattern: +, -, +, -, ...
// - Compute final answer
// - Verify by differentiation

// Example: x^3 * e^x
// Build table row by row with animation
```

### Visualization 4: Cyclic Integral Diagram

```javascript
// Show the cyclic return
// Features:
// - Start with integral I
// - First IBP produces new integral
// - Second IBP returns to I
// - Show algebraic equation: I = ... - I
// - Solve for I
// - Display final answer

// Circular arrow showing the return to original
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- BC-only badge prominent on title slide
- LIATE visual should be memorable and reusable
- Tabular method is optional but efficient for AP timing
- All D3 text minimum 1.25rem
- TOC sections: Opening, Derivation, The Formula, LIATE, Procedure, Examples, Cyclic, Tabular, Practice, Summary
