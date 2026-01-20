# Presentation Spec: Partial Fractions (BC)

## Class 37 | Unit 6: Integration and Accumulation of Change
## CED Topic 6.12 (BC Only)

---

## Overview

This BC-only presentation teaches partial fraction decomposition as a technique for integrating rational functions. Students learn to decompose fractions with linear factors (distinct and repeated), find unknown constants using strategic substitution or coefficient matching, and integrate the resulting simple fractions. The AP BC exam tests linear factors only.

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
  - Title: "Partial Fractions"
  - Subtitle: "Un-Adding Fractions to Integrate"
  - Meta: "Class 37 | CED 6.12 | NCSSM"

### Slide 1: The Rational Function Problem
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "How Do We Integrate This?"
  - Problem: $\int \frac{2x+3}{x^2+3x+2}\,dx$
  - Analysis:
    - "U-sub doesn't work (numerator isn't derivative of denominator)"
    - "Integration by parts doesn't fit"
    - "What should we do?"

### Slide 2: The Key Insight
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "What If We Could Simplify?"
  - Observation: Watch what happens when we add fractions:
  - $\frac{1}{x+1} + \frac{1}{x+2} = \frac{(x+2)+(x+1)}{(x+1)(x+2)} = \frac{2x+3}{x^2+3x+2}$
  - "That's our integrand! Can we reverse this process?"

### Slide 3: Un-Adding Fractions
- **Type:** `slide-statement`
- **Section:** The Concept
- **Content:**
  - Statement: "Partial fractions reverses fraction addition: we break a complex fraction into simpler pieces"
  - Secondary: "Each simple piece is easy to integrate!"

### Slide 4: Why It Helps
- **Type:** `slide-comparison`
- **Section:** The Concept
- **Content:**
  - Title: "Compare the Integrals"
  - Column 1: Original
    - $\int \frac{2x+3}{x^2+3x+2}\,dx$
    - "Not obvious"
  - Column 2: Decomposed
    - $\int \frac{1}{x+1}\,dx + \int \frac{1}{x+2}\,dx$
    - $= \ln|x+1| + \ln|x+2| + C$
    - "Easy!"

### Slide 5: Key Integration Result
- **Type:** `slide-visual`
- **Section:** The Concept
- **Content:**
  - Title: "The Building Block"
  - Gold-bordered box:
    - $$\int \frac{A}{x-a}\,dx = A\ln|x-a| + C$$
  - "Every partial fraction term integrates to a logarithm"

### Slide 6: Prerequisites
- **Type:** `slide-list`
- **Section:** Setup
- **Content:**
  - Title: "Before Decomposing"
  - Requirements:
    1. "Must be PROPER: degree(numerator) < degree(denominator)"
       - "If not, do polynomial long division first"
    2. "Denominator must be FACTORED completely"
       - "Into linear factors"
  - "AP BC focuses on linear factors only"

### Slide 7: Decomposition Templates - Distinct Factors
- **Type:** `slide-visual`
- **Section:** Templates
- **Content:**
  - Title: "Distinct Linear Factors"
  - Template:
  - $\frac{P(x)}{(x-a)(x-b)} = \frac{A}{x-a} + \frac{B}{x-b}$
  - Example:
  - $\frac{2x+3}{(x+1)(x+2)} = \frac{A}{x+1} + \frac{B}{x+2}$
  - "One term per distinct factor"

### Slide 8: Decomposition Templates - Repeated Factors
- **Type:** `slide-visual`
- **Section:** Templates
- **Content:**
  - Title: "Repeated Linear Factors"
  - For $(x-a)^2$:
  - $\frac{P(x)}{(x-a)^2} = \frac{A}{x-a} + \frac{B}{(x-a)^2}$
  - For $(x-a)^3$:
  - $\frac{P(x)}{(x-a)^3} = \frac{A}{x-a} + \frac{B}{(x-a)^2} + \frac{C}{(x-a)^3}$
  - Key: "Factor $(x-a)^n$ needs n terms with powers 1 through n"

### Slide 9: Mixed Example Template
- **Type:** `slide-visual`
- **Section:** Templates
- **Content:**
  - Title: "Mixed Factors"
  - For $(x-a)(x-b)^2$:
  - $\frac{P(x)}{(x-a)(x-b)^2} = \frac{A}{x-a} + \frac{B}{x-b} + \frac{C}{(x-b)^2}$
  - "Distinct factor: one term. Repeated factor: multiple terms."

### Slide 10: Finding Constants - Method 1
- **Type:** `slide-visual`
- **Section:** Finding Constants
- **Content:**
  - Title: "Method 1: Strategic Substitution"
  - Process:
    1. "Multiply both sides by the common denominator"
    2. "Substitute x-values that make factors zero"
    3. "Each substitution gives one constant directly"
  - "Fast and efficient for most cases"

### Slide 11: Example 1 - Distinct Factors
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 1: $\int \frac{1}{x^2-1}\,dx$"
  - Step 1: Factor: $x^2 - 1 = (x-1)(x+1)$
  - Step 2: Decompose: $\frac{1}{(x-1)(x+1)} = \frac{A}{x-1} + \frac{B}{x+1}$
  - Step 3: Clear denominators: $1 = A(x+1) + B(x-1)$

### Slide 12: Example 1 - Finding Constants
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 1 Continued"
  - From: $1 = A(x+1) + B(x-1)$
  - Substitute $x = 1$: $1 = A(2) + B(0) \Rightarrow A = \frac{1}{2}$
  - Substitute $x = -1$: $1 = A(0) + B(-2) \Rightarrow B = -\frac{1}{2}$
  - Decomposition: $\frac{1}{x^2-1} = \frac{1/2}{x-1} - \frac{1/2}{x+1}$

### Slide 13: Example 1 - Integration
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 1 Completed"
  - $\int \frac{1}{x^2-1}\,dx = \int \frac{1/2}{x-1}\,dx - \int \frac{1/2}{x+1}\,dx$
  - $= \frac{1}{2}\ln|x-1| - \frac{1}{2}\ln|x+1| + C$
  - Can simplify: $= \frac{1}{2}\ln\left|\frac{x-1}{x+1}\right| + C$

### Slide 14: Example 2 - Three Factors
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 2: $\int \frac{5x-4}{(x-2)(x+1)}\,dx$"
  - Decomposition: $\frac{5x-4}{(x-2)(x+1)} = \frac{A}{x-2} + \frac{B}{x+1}$
  - Clear: $5x - 4 = A(x+1) + B(x-2)$
  - $x = 2$: $6 = 3A \Rightarrow A = 2$
  - $x = -1$: $-9 = -3B \Rightarrow B = 3$
  - Integrate: $2\ln|x-2| + 3\ln|x+1| + C$

### Slide 15: Example 3 - Repeated Factor
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 3: $\int \frac{x+3}{x^2(x+1)}\,dx$"
  - Setup: $\frac{x+3}{x^2(x+1)} = \frac{A}{x} + \frac{B}{x^2} + \frac{C}{x+1}$
  - Note: "$x^2$ is repeated, so we need both $\frac{A}{x}$ and $\frac{B}{x^2}$"

### Slide 16: Example 3 - Finding Constants
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 3 Continued"
  - Clear: $x + 3 = Ax(x+1) + B(x+1) + Cx^2$
  - $x = 0$: $3 = B(1) \Rightarrow B = 3$
  - $x = -1$: $2 = C(1) \Rightarrow C = 2$
  - Match $x^2$ coefficients: $0 = A + C \Rightarrow A = -2$

### Slide 17: Example 3 - Integration
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 3 Completed"
  - $\int \left(\frac{-2}{x} + \frac{3}{x^2} + \frac{2}{x+1}\right)\,dx$
  - $= -2\ln|x| - \frac{3}{x} + 2\ln|x+1| + C$
  - Note: $\int \frac{3}{x^2}\,dx = -\frac{3}{x} + C$ (power rule)

### Slide 18: Handling Improper Fractions
- **Type:** `slide-visual`
- **Section:** Improper Case
- **Content:**
  - Title: "What If It's Improper?"
  - If degree(numerator) >= degree(denominator):
  - "Do long division FIRST!"
  - Result: "quotient + proper fraction"
  - Then decompose the proper part

### Slide 19: Example 4 - Improper
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Example 4: $\int \frac{x^2+1}{x^2-1}\,dx$"
  - Check: degree(num) = 2 = degree(denom). Improper!
  - Long division: $\frac{x^2+1}{x^2-1} = 1 + \frac{2}{x^2-1}$
  - Integrate: $\int 1\,dx + \int \frac{2}{x^2-1}\,dx$
  - $= x + \ln|x-1| - \ln|x+1| + C$

### Slide 20: Method 2 - Coefficient Matching
- **Type:** `slide-visual`
- **Section:** Coefficient Matching
- **Content:**
  - Title: "Method 2: Coefficient Matching"
  - Alternative approach:
    1. "Clear denominators"
    2. "Expand the right side"
    3. "Match coefficients of like powers of x"
    4. "Solve the resulting system"
  - "More algebraically tedious but always works"

### Slide 21: Verification
- **Type:** `slide-statement`
- **Section:** Verification
- **Content:**
  - Statement: "Always verify your decomposition by recombining the fractions"
  - Secondary: "Or differentiate your final answer to check"

### Slide 22: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice 1"
  - Problem: "Set up the partial fraction decomposition for $\frac{3x}{(x-1)(x+2)^2}$"
  - Note: "Don't solve - just write the correct form"
  - Time: "1 minute"

### Slide 23: Practice 1 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - $\frac{3x}{(x-1)(x+2)^2} = \frac{A}{x-1} + \frac{B}{x+2} + \frac{C}{(x+2)^2}$
  - Key: "$(x+2)^2$ is repeated, so it needs TWO terms"

### Slide 24: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice 2"
  - Problem: "Evaluate $\int \frac{2x+5}{x^2-4}\,dx$"
  - Time: "4 minutes"

### Slide 25: Practice 2 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Factor: $x^2 - 4 = (x-2)(x+2)$
  - Decompose: $\frac{A}{x-2} + \frac{B}{x+2}$
  - $2x + 5 = A(x+2) + B(x-2)$
  - $x = 2$: $9 = 4A$, $A = \frac{9}{4}$
  - $x = -2$: $1 = -4B$, $B = -\frac{1}{4}$
  - Result: $\frac{9}{4}\ln|x-2| - \frac{1}{4}\ln|x+2| + C$

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Partial fractions breaks rational functions into simpler pieces"
    - "Factor the denominator completely first"
    - "Distinct factor: one term. Repeated factor $(x-a)^n$: n terms"
    - "Find constants by strategic substitution or coefficient matching"
    - "Each term integrates to a logarithm (or power)"

### Slide 27: Summary of Forms
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Decomposition Quick Reference"
  - Table:
    | Denominator | Decomposition |
    |-------------|---------------|
    | $(x-a)(x-b)$ | $\frac{A}{x-a} + \frac{B}{x-b}$ |
    | $(x-a)^2$ | $\frac{A}{x-a} + \frac{B}{(x-a)^2}$ |
    | $(x-a)(x-b)^2$ | $\frac{A}{x-a} + \frac{B}{x-b} + \frac{C}{(x-b)^2}$ |

### Slide 28: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Set up AND find constants for $\frac{x-1}{(x+1)(x-3)}$"

### Slide 29: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Improper Integrals (BC)"
  - Secondary: "What happens when we integrate to infinity?"

---

## D3 Visualization Specifications

### Visualization 1: Fraction Addition/Reversal

```javascript
// Show forward addition then reversal
// Features:
// - Start with two simple fractions: 1/(x-1) + 1/(x+1)
// - Animate combining them: 2x/(x^2-1)
// - Then show reversal: given combined, find pieces
// - Highlight that this is "un-adding"

// Animation sequence:
// 1. Show two fractions side by side
// 2. Common denominator step
// 3. Add numerators
// 4. Pause
// 5. Arrow showing reversal
// 6. Decomposed form emerges
```

### Visualization 2: Template Gallery

```javascript
// Interactive template reference
// Features:
// - Click on denominator type
// - See corresponding decomposition template
// - Examples provided for each
// - Color-code repeated factors differently

// Templates:
// - Distinct linear
// - Repeated linear (power 2)
// - Repeated linear (power 3)
// - Mixed
```

### Visualization 3: Strategic Substitution Solver

```javascript
// Step-by-step constant finder
// Features:
// - Input: cleared equation with A, B, (C)
// - Show substitution: x = value that zeros a factor
// - Highlight which terms vanish
// - Compute the remaining constant
// - Repeat for each constant

// Interactive: user chooses substitution value
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- BC-only badge prominent on title slide
- Emphasize complete factoring as prerequisite
- Template gallery should be memorable for AP exam
- All D3 text minimum 1.25rem
- TOC sections: Opening, The Concept, Setup, Templates, Finding Constants, Examples, Improper Case, Practice, Summary
