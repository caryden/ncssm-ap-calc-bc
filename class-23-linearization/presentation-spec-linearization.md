# Presentation Spec: Linearization and L'Hospital's Rule

## Class 23 | Unit 4: Contextual Applications of Differentiation
## CED Topics 4.6 and 4.7

---

## Overview

This presentation covers two powerful applications of derivatives: local linear approximation (linearization) for estimating function values, and L'Hospital's Rule for evaluating limits with indeterminate forms. Students understand that differentiable functions appear linear when zoomed in sufficiently, and learn to apply L'Hospital's Rule correctly by first verifying the indeterminate form.

**Theme Color:** `#059669` (Unit 4 Emerald)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 4: Contextual Applications of Differentiation"
  - Title: "Linearization and L'Hospital's Rule"
  - Subtitle: "Approximation and Limits"
  - Meta: "Class 23 | CED 4.6-4.7 | NCSSM"

### Slide 1: The Challenge
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "Estimate √4.1 without a calculator"
  - Secondary: "We know √4 = 2 exactly. Can we use that to estimate √4.1?"
  - Hint: "What if we used the tangent line?"

### Slide 2: The Key Insight
- **Type:** `slide-visual`
- **Section:** Opening Hook
- **Content:**
  - Title: "Zooming In on a Curve"
  - **D3 Visualization:** Zoom animation
    - Start with curve f(x) = √x
    - Progressively zoom into point (4, 2)
    - Curve becomes indistinguishable from tangent line
  - Caption: "When zoomed in sufficiently, every smooth curve looks like a line"

### Slide 3: Local Linearity
- **Type:** `slide-two-part`
- **Section:** Linearization
- **Content:**
  - Title: "Local Linearity"
  - Primary: "Near any point, a differentiable function is approximately linear"
  - Secondary: "The tangent line at that point gives the best linear approximation"
  - Caption: "This is why the tangent line is so powerful!"

### Slide 4: The Linearization Formula
- **Type:** `slide-visual`
- **Section:** Linearization
- **Content:**
  - Title: "The Linearization Formula"
  - Definition box (highlighted):
    - $$L(x) = f(a) + f'(a)(x - a)$$
  - Interpretation:
    - "This is the equation of the tangent line at x = a"
    - "For x near a: f(x) ≈ L(x)"
  - Caption: "L(x) is called the linearization of f at x = a"

### Slide 5: Why It Works
- **Type:** `slide-list`
- **Section:** Linearization
- **Content:**
  - Title: "Why the Tangent Line is Best"
  - Two key properties:
    - "L(a) = f(a) — matches the function VALUE at a"
    - "L'(a) = f'(a) — matches the function SLOPE at a"
  - Conclusion: "No other line through (a, f(a)) has both properties!"

### Slide 6: Linearization Explorer
- **Type:** `slide-visual`
- **Section:** Linearization
- **Content:**
  - Title: "Visualizing Linearization"
  - **D3 Visualization:** Interactive linearization display
    - Function f(x) and tangent line L(x) at adjustable point a
    - Slider to move point a
    - Error region shaded between f and L
    - Display: "Error at x = [value]: |f(x) - L(x)| = [value]"
  - Observation: "Error is smallest near a, grows farther away"

### Slide 7: Example 1 - Square Root
- **Type:** `slide-example`
- **Section:** Linearization Examples
- **Content:**
  - Title: "Example: Estimate √4.1"
  - Step 1: Choose f(x) and a
    - f(x) = √x, choose a = 4 (where we know f(a) = 2)
  - Step 2: Compute f(a) and f'(a)
    - f(4) = 2
    - f'(x) = 1/(2√x), so f'(4) = 1/4
  - Step 3: Write linearization
    - $$L(x) = 2 + \frac{1}{4}(x - 4)$$

### Slide 8: Example 1 - Complete
- **Type:** `slide-example`
- **Section:** Linearization Examples
- **Content:**
  - Title: "Example: Estimate √4.1 (Complete)"
  - Linearization: $L(x) = 2 + \frac{1}{4}(x - 4)$
  - Estimate:
    - $$L(4.1) = 2 + \frac{1}{4}(0.1) = 2 + 0.025 = 2.025$$
  - Verification: Calculator gives √4.1 ≈ 2.0248...
  - Result box: "Excellent approximation! Error < 0.0002"

### Slide 9: Example 2 - Sine
- **Type:** `slide-example`
- **Section:** Linearization Examples
- **Content:**
  - Title: "Example: Estimate sin(0.1)"
  - f(x) = sin(x), choose a = 0
  - f(0) = 0, f'(0) = cos(0) = 1
  - Linearization: $L(x) = 0 + 1(x - 0) = x$
  - Estimate: sin(0.1) ≈ L(0.1) = 0.1
  - Check: Calculator gives sin(0.1) ≈ 0.0998...
  - Key insight box: "Near 0, sin(x) ≈ x"

### Slide 10: Example 3 - Exponential
- **Type:** `slide-example`
- **Section:** Linearization Examples
- **Content:**
  - Title: "Example: Estimate e^0.1"
  - f(x) = eˣ, choose a = 0
  - f(0) = 1, f'(0) = 1
  - Linearization: $L(x) = 1 + 1(x - 0) = 1 + x$
  - Estimate: e^0.1 ≈ L(0.1) = 1.1
  - Check: Calculator gives e^0.1 ≈ 1.1052...
  - Key insight box: "Near 0, eˣ ≈ 1 + x"

### Slide 11: Choosing a Wisely
- **Type:** `slide-list`
- **Section:** Linearization Strategy
- **Content:**
  - Title: "How to Choose a"
  - Guidelines:
    - "Choose a where f(a) is known EXACTLY (no calculator needed)"
    - "Choose a close to the value you want to estimate"
    - "Common choices: 0, π/6, π/4, π/3, π/2, perfect squares, etc."
  - Examples:
    - "For √4.1: use a = 4 (√4 = 2)"
    - "For sin(0.1): use a = 0 (sin(0) = 0)"
    - "For √10: use a = 9 (√9 = 3)"

### Slide 12: Transition to L'Hospital
- **Type:** `slide-statement`
- **Section:** Transition
- **Content:**
  - Statement: "Now for a different problem: What is $\lim_{x \to 0} \frac{\sin x}{x}$?"
  - Secondary: "Direct substitution gives 0/0 — an indeterminate form"
  - Question: "How do we evaluate limits when substitution doesn't work?"

### Slide 13: Indeterminate Forms
- **Type:** `slide-two-part`
- **Section:** L'Hospital's Rule
- **Content:**
  - Title: "Indeterminate Forms"
  - Primary: "Forms where the limit cannot be determined by substitution alone"
  - The two main forms:
    - "0/0 — both numerator and denominator approach 0"
    - "∞/∞ — both approach infinity"
  - Note: "These are called 'indeterminate' because the actual limit could be anything"

### Slide 14: L'Hospital's Rule
- **Type:** `slide-visual`
- **Section:** L'Hospital's Rule
- **Content:**
  - Title: "L'Hospital's Rule"
  - Rule box (highlighted):
    - "If $\lim_{x \to a} \frac{f(x)}{g(x)}$ gives the form $\frac{0}{0}$ or $\frac{\infty}{\infty}$, then:"
    - $$\lim_{x \to a} \frac{f(x)}{g(x)} = \lim_{x \to a} \frac{f'(x)}{g'(x)}$$
    - "(provided the limit on the right exists)"
  - Caption: "Differentiate top and bottom SEPARATELY"

### Slide 15: Critical Points
- **Type:** `slide-list`
- **Section:** L'Hospital's Rule
- **Content:**
  - Title: "Using L'Hospital's Rule Correctly"
  - Critical points (numbered):
    - "ONLY for 0/0 or ∞/∞ — verify the form first!"
    - "Differentiate SEPARATELY — this is NOT the quotient rule!"
    - "May need multiple applications — check if still indeterminate"
    - "Stop when limit is determinate"

### Slide 16: L'Hospital Example 1
- **Type:** `slide-example`
- **Section:** L'Hospital Examples
- **Content:**
  - Title: "Example: $\lim_{x \to 0} \frac{\sin x}{x}$"
  - Step 1: Check form
    - As x → 0: sin x → 0 and x → 0
    - Form: 0/0 ✓ (L'Hospital applies)
  - Step 2: Apply L'Hospital
    - $$\lim_{x \to 0} \frac{\sin x}{x} = \lim_{x \to 0} \frac{\cos x}{1} = \frac{1}{1} = 1$$
  - Result: The limit is 1

### Slide 17: L'Hospital Example 2
- **Type:** `slide-example`
- **Section:** L'Hospital Examples
- **Content:**
  - Title: "Example: $\lim_{x \to \infty} \frac{\ln x}{x}$"
  - Step 1: Check form
    - As x → ∞: ln x → ∞ and x → ∞
    - Form: ∞/∞ ✓
  - Step 2: Apply L'Hospital
    - $$\lim_{x \to \infty} \frac{\ln x}{x} = \lim_{x \to \infty} \frac{1/x}{1} = \lim_{x \to \infty} \frac{1}{x} = 0$$
  - Interpretation: "ln(x) grows much slower than x"

### Slide 18: L'Hospital Example 3 - Multiple Applications
- **Type:** `slide-example`
- **Section:** L'Hospital Examples
- **Content:**
  - Title: "Example: $\lim_{x \to 0} \frac{e^x - 1 - x}{x^2}$"
  - Step 1: Check form — 0/0 ✓
  - First application:
    - $$\lim_{x \to 0} \frac{e^x - 1}{2x}$$
  - Step 2: Check again — still 0/0!
  - Second application:
    - $$\lim_{x \to 0} \frac{e^x}{2} = \frac{1}{2}$$
  - Result: The limit is 1/2

### Slide 19: When NOT to Use L'Hospital
- **Type:** `slide-visual`
- **Section:** L'Hospital Warnings
- **Content:**
  - Title: "Warning: Check First!"
  - **D3 Visualization:** Decision flowchart
    - "Is the form 0/0 or ∞/∞?" → No → "Just substitute directly!"
    - Yes → "Apply L'Hospital's Rule"
  - Example: $\lim_{x \to 1} \frac{x^2}{x+1}$
    - "As x → 1: we get 1/2 — NOT indeterminate!"
    - "Just substitute: the limit is 1/2"
  - Warning box: "Do NOT apply L'Hospital to determinate forms"

### Slide 20: Other Indeterminate Forms
- **Type:** `slide-list`
- **Section:** Other Forms
- **Content:**
  - Title: "Converting Other Indeterminate Forms"
  - Table:
    - "0 · ∞: Rewrite as f/(1/g) to get 0/0 or ∞/∞"
    - "∞ - ∞: Combine into single fraction"
    - "1^∞, 0^0, ∞^0: Take ln, apply L'Hospital, then exponentiate"
  - Example: $\lim_{x \to 0^+} x \ln x$ (form: 0 · (-∞))
    - Rewrite: $\lim_{x \to 0^+} \frac{\ln x}{1/x}$ (form: -∞/∞)

### Slide 21: Example with 0·∞
- **Type:** `slide-example`
- **Section:** Other Forms
- **Content:**
  - Title: "Example: $\lim_{x \to 0^+} x \ln x$"
  - Form: 0 · (-∞) — not directly L'Hospital
  - Rewrite: $\lim_{x \to 0^+} \frac{\ln x}{1/x}$ (form: -∞/∞ ✓)
  - Apply L'Hospital:
    - $$\lim_{x \to 0^+} \frac{1/x}{-1/x^2} = \lim_{x \to 0^+} \frac{-x^2}{x} = \lim_{x \to 0^+} (-x) = 0$$
  - Result: The limit is 0

### Slide 22: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Linearization"
  - Problem: "Use linearization to estimate cos(0.1)"
  - Hints:
    - "Choose a = 0 (where cos(0) = 1)"
    - "Remember: derivative of cos(x) = -sin(x)"
  - Time: "2 minutes"

### Slide 23: Practice Solution 1
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: cos(0.1)"
  - f(x) = cos(x), a = 0
  - f(0) = 1, f'(0) = -sin(0) = 0
  - Linearization: L(x) = 1 + 0(x - 0) = 1
  - Estimate: cos(0.1) ≈ L(0.1) = 1
  - Check: Calculator gives cos(0.1) ≈ 0.995...
  - Note: "Approximation is close but not great — need quadratic for better accuracy (preview of Taylor series)"

### Slide 24: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: L'Hospital"
  - Evaluate: $\lim_{x \to 0} \frac{e^x - 1}{x}$
  - Steps:
    - "1. Verify the form"
    - "2. Apply L'Hospital"
    - "3. Evaluate the resulting limit"
  - Time: "2 minutes"

### Slide 25: Practice Solution 2
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: $\lim_{x \to 0} \frac{e^x - 1}{x}$"
  - Step 1: Check form — 0/0 ✓
  - Step 2: Apply L'Hospital
    - $$\lim_{x \to 0} \frac{e^x}{1} = \frac{1}{1} = 1$$
  - Result: The limit is 1
  - Connection: "This confirms e^x ≈ 1 + x near x = 0"

### Slide 26: Common Misconceptions
- **Type:** `slide-list`
- **Section:** Misconceptions
- **Content:**
  - Title: "Avoid These Errors"
  - List items:
    - "Linearization IS the function: No! L(x) ≈ f(x) only NEAR a"
    - "Any value of a works equally well: No! Choose where f(a) is known exactly"
    - "L'Hospital works for any limit: No! ONLY for 0/0 or ∞/∞"
    - "Use quotient rule for L'Hospital: No! Differentiate separately"
    - "One application always enough: No! May need multiple rounds"

### Slide 27: Key Takeaways
- **Type:** `slide-comparison`
- **Section:** Summary
- **Content:**
  - Title: "Summary"
  - Column 1: Linearization
    - "L(x) = f(a) + f'(a)(x - a)"
    - "Use to estimate f(x) near a"
    - "Choose a where f(a) is known"
    - "Error grows away from a"
  - Column 2: L'Hospital's Rule
    - "ONLY for 0/0 or ∞/∞"
    - "Differentiate top and bottom separately"
    - "May need multiple applications"
    - "Always verify form first!"

### Slide 28: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Questions:
    - "1. Write the linearization of f(x) = √x at a = 9"
    - "2. Use it to estimate √9.1"

### Slide 29: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Unit 5 Begins: Analytical Applications of Differentiation"
  - Secondary: "The Mean Value Theorem — the theoretical backbone of calculus"

---

## D3 Visualization Specifications

### Visualization 1: Zoom Animation (Slide 2)

```javascript
// Progressive zoom into a curve showing local linearity
// Features:
// - Start with f(x) = √x on wide view
// - Animate zoom into point (4, 2)
// - As zoom increases, curve becomes indistinguishable from tangent line
// - Final view shows both overlapping

// Color scheme:
// - Curve: var(--theme-color) #059669
// - Tangent line: #fbbf24 (gold)

// Animation: Smooth zoom over 3-5 seconds
// Show zoom level indicator
```

### Visualization 2: Linearization Explorer (Slide 6)

```javascript
// Interactive display of function and linearization
// Features:
// - Plot of f(x) and tangent line L(x)
// - Slider to move point a along the curve
// - Tangent line updates as a changes
// - Error band shaded between f and L
// - Display error at selected x value
// - Formula: L(x) = f(a) + f'(a)(x - a) shown

// Color scheme:
// - Function: var(--theme-color) #059669
// - Tangent line: #fbbf24 (gold)
// - Error region: rgba(239, 68, 68, 0.2) (light red)

// Allow user to click on curve to select x, see error
```

### Visualization 3: L'Hospital Decision Flowchart (Slide 19)

```javascript
// Decision tree for applying L'Hospital
// Features:
// - Starting node: "Evaluate limit"
// - Decision: "Is form 0/0 or ∞/∞?"
// - Yes branch → "Apply L'Hospital"
// - No branch → "Substitute directly"
// - After L'Hospital: "Check result — still indeterminate?"
// - Loop back if yes

// Visual: Clean flowchart with arrows
// Possibly interactive: click to highlight path
```

### Visualization 4: Comparison of Approximations (Optional)

```javascript
// Shows multiple approximations at different a values
// Features:
// - Function f(x)
// - Multiple tangent lines at different a values
// - Demonstrates that closer a gives better approximation for target x

// Helps students understand choosing a wisely
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-4-context: #059669` for accents
- Linearization formula and L'Hospital Rule should be visually prominent
- Decision flowchart for L'Hospital is critical for avoiding common errors
- Include Rule of Four: graphical (zoom, tangent lines), numerical (estimates), analytical (formulas), verbal (explanations)
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
