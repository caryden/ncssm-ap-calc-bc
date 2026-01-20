# Presentation Spec: Definition of the Derivative

## Class 9 | Unit 2: Differentiation Fundamentals
## CED Topic 2.1

---

## Overview

This presentation introduces the formal definition of the derivative using the limit of the difference quotient. Key visualizations include interactive secant-to-tangent animations and derivative calculation walkthroughs.

**Theme Color:** `#7c3aed` (Unit 2 Purple)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 2: Differentiation Fundamentals"
  - Title: "The Derivative"
  - Subtitle: "The Mathematics of Instantaneous Change"
  - Meta: "Class 9 | CED 2.1 | NCSSM"

### Slide 1: The Big Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "How do we find the *exact* slope of a curve at a single point?"
- **Notes:** Emphasize "exact" - this connects to limits giving us precise answers

### Slide 2: Recall - The Secant Line
- **Type:** `slide-visual`
- **Section:** From Secant to Tangent
- **Content:**
  - Title: "The Secant Line"
  - **D3 Visualization:** Interactive curve with two points, secant line drawn between them
  - Caption: "The secant line connects two points on a curve"
- **Visualization Details:**
  - Show curve f(x) = x^2
  - Two draggable points A and B
  - Secant line drawn through both
  - Display slope calculation

### Slide 3: The Difference Quotient
- **Type:** `slide-visual`
- **Section:** From Secant to Tangent
- **Content:**
  - Title: "The Difference Quotient"
  - Math display: $$\frac{f(x+h) - f(x)}{h}$$
  - Labeled diagram showing:
    - Point at (x, f(x))
    - Point at (x+h, f(x+h))
    - Horizontal distance h
    - Vertical distance f(x+h) - f(x)
  - Caption: "This formula gives the slope of the secant line"

### Slide 4: What If h Gets Smaller?
- **Type:** `slide-visual`
- **Section:** From Secant to Tangent
- **Content:**
  - Title: "As h Approaches Zero..."
  - **D3 Visualization:** Interactive slider controlling h value
    - Curve with fixed point x
    - Moving point at x+h
    - Secant line updating in real-time
    - Slope display updating
  - Slider: h from -2 to 2
  - Caption: "Watch the secant line approach the tangent line"
- **Visualization Details:**
  - Function: f(x) = x^2, fixed point at x = 1
  - As h approaches 0, show secant approaching tangent
  - Display current slope value
  - Highlight when |h| < 0.1 (approaching limit)

### Slide 5: The Tangent Line Emerges
- **Type:** `slide-statement`
- **Section:** From Secant to Tangent
- **Content:**
  - Statement: "As the second point approaches the first, the secant line becomes the *tangent* line."
- **Notes:** Key geometric insight

### Slide 6: The Definition of the Derivative
- **Type:** `slide-visual`
- **Section:** The Definition
- **Content:**
  - Title: "The Derivative at a Point"
  - Definition box with gold border:
    - Label: "Definition"
    - Math: $$f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$$
  - Below: "Read as: 'f prime of a'"
  - Caption: "The derivative is the limit of the difference quotient as h approaches 0"

### Slide 7: Breaking Down the Definition
- **Type:** `slide-visual`
- **Section:** The Definition
- **Content:**
  - Title: "Understanding Each Part"
  - Annotated formula with arrows pointing to each component:
    - $f'(a)$ -> "The derivative of f at a"
    - $\lim_{h \to 0}$ -> "As h approaches 0"
    - $f(a+h) - f(a)$ -> "Change in output"
    - $h$ -> "Change in input"
  - Color-coded elements

### Slide 8: The General Derivative Function
- **Type:** `slide-visual`
- **Section:** The Definition
- **Content:**
  - Title: "The Derivative Function"
  - Definition box:
    - Math: $$f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$$
  - Note: "Using x instead of a gives us a formula that works for any input"
  - Caption: "This defines f'(x) as a new function"

### Slide 9: Alternative Definition
- **Type:** `slide-visual`
- **Section:** The Definition
- **Content:**
  - Title: "Alternative Form"
  - Math display: $$f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a}$$
  - Explanation: "Instead of x and x+h, we use a and x (where x approaches a)"
  - Caption: "Both forms are equivalent - use whichever is more convenient"

### Slide 10: Two Interpretations
- **Type:** `slide-comparison`
- **Section:** The Definition
- **Content:**
  - Title: "What the Derivative Means"
  - Column 1: Geometric Interpretation
    - Header: "Slope of Tangent Line"
    - "f'(a) is the slope of the line tangent to the graph at x = a"
    - Small graph showing tangent line
  - Column 2: Physical Interpretation
    - Header: "Instantaneous Rate of Change"
    - "f'(a) is the instantaneous rate of change of f at x = a"
    - Example: "If f = position, then f' = velocity"

### Slide 11: Notation Matters
- **Type:** `slide-list`
- **Section:** The Definition
- **Content:**
  - Title: "Derivative Notations"
  - List items:
    - $f'(x)$ - "f prime of x" (Lagrange)
    - $\frac{dy}{dx}$ - "dy dx" (Leibniz)
    - $\frac{d}{dx}[f(x)]$ - "d dx of f(x)" (Operator)
    - $y'$ - "y prime"
  - Caption: "All mean the same thing - know them all for the AP exam"

### Slide 12: Example - Setting Up
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "Example: f(x) = x^2"
  - Problem box: "Find f'(x) using the limit definition"
  - Step 1: "Write the difference quotient"
  - Math: $$\frac{f(x+h) - f(x)}{h} = \frac{(x+h)^2 - x^2}{h}$$

### Slide 13: Example - Expanding
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "Example: f(x) = x^2 (continued)"
  - Step 2: "Expand (x+h)^2"
  - Math: $$= \frac{x^2 + 2xh + h^2 - x^2}{h}$$
  - Step 3: "Simplify the numerator"
  - Math: $$= \frac{2xh + h^2}{h}$$

### Slide 14: Example - Simplifying
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "Example: f(x) = x^2 (continued)"
  - Step 4: "Factor out h"
  - Math: $$= \frac{h(2x + h)}{h}$$
  - Step 5: "Cancel h (valid since h is not 0 in the limit)"
  - Math: $$= 2x + h$$

### Slide 15: Example - Taking the Limit
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "Example: f(x) = x^2 (completed)"
  - Step 6: "Take the limit as h approaches 0"
  - Math: $$f'(x) = \lim_{h \to 0}(2x + h) = 2x$$
  - Result box (highlighted): $$f'(x) = 2x$$
  - Caption: "The derivative of x^2 is 2x"

### Slide 16: Verifying Our Answer
- **Type:** `slide-visual`
- **Section:** Worked Example
- **Content:**
  - Title: "Visual Verification"
  - **D3 Visualization:**
    - Graph of f(x) = x^2
    - Tangent line at moveable point
    - Display of slope = 2x at current point
  - Caption: "At x = 1, slope = 2. At x = 2, slope = 4. At x = 3, slope = 6."

### Slide 17: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Linear Function"
  - Prompt: "Find f'(x) for f(x) = 3x + 1 using the limit definition"
  - Hint: "What should the derivative of a linear function be?"
  - Time: "2 minutes"

### Slide 18: Practice Problem 1 Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: f(x) = 3x + 1"
  - Step-by-step:
    - $\frac{(3(x+h) + 1) - (3x + 1)}{h}$
    - $= \frac{3x + 3h + 1 - 3x - 1}{h}$
    - $= \frac{3h}{h} = 3$
  - Result: $f'(x) = 3$
  - Caption: "The derivative of a linear function is its slope!"

### Slide 19: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Challenge: Cubic Function"
  - Prompt: "Find f'(x) for f(x) = x^3 using the limit definition"
  - Hint: "You'll need (a+b)^3 = a^3 + 3a^2b + 3ab^2 + b^3"
  - Time: "4 minutes"

### Slide 20: Practice Problem 2 Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: f(x) = x^3"
  - Compressed steps:
    - $\frac{(x+h)^3 - x^3}{h} = \frac{x^3 + 3x^2h + 3xh^2 + h^3 - x^3}{h}$
    - $= \frac{3x^2h + 3xh^2 + h^3}{h} = 3x^2 + 3xh + h^2$
    - $\lim_{h \to 0}(3x^2 + 3xh + h^2) = 3x^2$
  - Result: $f'(x) = 3x^2$

### Slide 21: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "The derivative is the limit of the difference quotient"
    - "Geometrically: slope of the tangent line"
    - "Physically: instantaneous rate of change"
    - "The limit process lets us find exact values, not approximations"
    - "The algebraic strategy: simplify, cancel h, then take limit"

### Slide 22: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "In your own words, explain what $f'(3) = 7$ means both geometrically and in terms of rates of change."

### Slide 23: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: The derivative as a *function* - what does f'(x) tell us about f(x)?"
  - Secondary: "We'll graph derivatives and explore the relationship between a function and its derivative."

---

## D3 Visualization Specifications

### Visualization 1: Secant to Tangent Explorer (Slides 4, 16)

```javascript
// Interactive visualization showing secant approaching tangent
// Features:
// - Curve: f(x) = x^2 (or other function)
// - Fixed point at x = a (e.g., x = 1)
// - Moveable point at x = a + h
// - Slider controlling h value
// - Real-time slope calculation display
// - Tangent line shown when |h| < threshold

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Secant line: var(--color-secant) #a78bfa
// - Tangent line: var(--color-tangent) #fbbf24
// - Points: var(--color-derivative) #f97316

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Difference Quotient Diagram (Slide 3)

```javascript
// Static or animated diagram showing the geometry
// Features:
// - Curve with two points
// - Labeled horizontal distance h
// - Labeled vertical distance f(x+h) - f(x)
// - Rise/run triangle
// - Formula annotation
```

### Visualization 3: Interactive Derivative Verifier (Slide 16)

```javascript
// Shows f(x) = x^2 with moveable tangent line
// Features:
// - Draggable point along curve
// - Tangent line at that point
// - Display: "At x = [value], slope = [2x value]"
// - Demonstrates that derivative formula 2x is correct
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-2-diff-fund: #7c3aed` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
