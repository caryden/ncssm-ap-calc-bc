# Presentation Spec: Basic Differentiation Rules

## Class 12 | Unit 2: Differentiation Fundamentals
## CED Topics 2.5, 2.6

---

## Overview

This presentation introduces the fundamental differentiation rules: constant rule, power rule, constant multiple rule, and sum/difference rules. Key visualizations demonstrate why these rules work geometrically and how they dramatically simplify derivative calculations.

**Theme Color:** `#7c3aed` (Unit 2 Purple)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 2: Differentiation Fundamentals"
  - Title: "Basic Differentiation Rules"
  - Subtitle: "Shortcuts That Replace Limits"
  - Meta: "Class 12 | CED 2.5, 2.6 | NCSSM"

### Slide 1: The Problem with Limits
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "The Old Way"
  - Show: "Find d/dx[x^5] using the limit definition"
  - Expansion of (x+h)^5 - x^5
  - Caption: "There must be a better way..."

### Slide 2: The Pattern Emerges
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Do You See the Pattern?"
  - Table showing:
    - f(x) = x^2 → f'(x) = 2x
    - f(x) = x^3 → f'(x) = 3x^2
    - f(x) = x^4 → f'(x) = 4x^3
    - f(x) = x^5 → f'(x) = ?
  - Caption: "Multiply by the exponent, reduce the exponent by 1"

### Slide 3: Rule 1 - Constant Rule
- **Type:** `slide-visual`
- **Section:** Constant Rule
- **Content:**
  - Title: "Rule 1: The Constant Rule"
  - Formula box: $$\frac{d}{dx}[c] = 0$$
  - D3 visualization: Horizontal line with tangent lines (all horizontal)
  - Caption: "A horizontal line has zero slope everywhere"

### Slide 4: Constant Rule Examples
- **Type:** `slide-list`
- **Section:** Constant Rule
- **Content:**
  - Title: "Constant Rule Examples"
  - List:
    - d/dx[7] = 0
    - d/dx[π] = 0
    - d/dx[-42] = 0
    - d/dx[√2] = 0

### Slide 5: Rule 2 - Power Rule
- **Type:** `slide-visual`
- **Section:** Power Rule
- **Content:**
  - Title: "Rule 2: The Power Rule"
  - Formula box: $$\frac{d}{dx}[x^n] = nx^{n-1}$$
  - "Works for ANY real number n"
  - Caption: "Bring down the exponent, reduce by 1"

### Slide 6: Power Rule Visualization
- **Type:** `slide-visual`
- **Section:** Power Rule
- **Content:**
  - Title: "Seeing the Power Rule"
  - D3 visualization:
    - Show f(x) = x^3 and f'(x) = 3x^2 side by side
    - Animated tangent line on f showing slope matches f'(x) value

### Slide 7: Power Rule - Integer Examples
- **Type:** `slide-visual`
- **Section:** Power Rule
- **Content:**
  - Title: "Power Rule: Positive Integers"
  - Examples:
    - d/dx[x^2] = 2x
    - d/dx[x^3] = 3x^2
    - d/dx[x^7] = 7x^6
    - d/dx[x^100] = 100x^99

### Slide 8: Power Rule - Special Case
- **Type:** `slide-statement`
- **Section:** Power Rule
- **Content:**
  - Statement: "When n = 1: d/dx[x] = 1·x^0 = 1"
  - Secondary: "The slope of y = x is always 1"

### Slide 9: Power Rule - Negative Exponents
- **Type:** `slide-visual`
- **Section:** Power Rule
- **Content:**
  - Title: "Power Rule: Negative Exponents"
  - Examples:
    - d/dx[x^(-1)] = -x^(-2) = -1/x^2
    - d/dx[x^(-3)] = -3x^(-4) = -3/x^4
  - Note: "Rewrite 1/x^n as x^(-n) first"

### Slide 10: Power Rule - Fractional Exponents
- **Type:** `slide-visual`
- **Section:** Power Rule
- **Content:**
  - Title: "Power Rule: Fractional Exponents"
  - Examples:
    - d/dx[x^(1/2)] = (1/2)x^(-1/2) = 1/(2√x)
    - d/dx[x^(2/3)] = (2/3)x^(-1/3)
  - Note: "Rewrite √x as x^(1/2) first"

### Slide 11: Radical Rewriting
- **Type:** `slide-visual`
- **Section:** Power Rule
- **Content:**
  - Title: "Radicals to Exponents"
  - Conversion table:
    - √x = x^(1/2)
    - ³√x = x^(1/3)
    - √(x^3) = x^(3/2)
    - 1/√x = x^(-1/2)

### Slide 12: Rule 3 - Constant Multiple
- **Type:** `slide-visual`
- **Section:** Constant Multiple
- **Content:**
  - Title: "Rule 3: Constant Multiple Rule"
  - Formula box: $$\frac{d}{dx}[c \cdot f(x)] = c \cdot f'(x)$$
  - Caption: "Constants factor out of derivatives"

### Slide 13: Constant Multiple Examples
- **Type:** `slide-visual`
- **Section:** Constant Multiple
- **Content:**
  - Title: "Constant Multiple Examples"
  - Examples:
    - d/dx[5x^3] = 5 · 3x^2 = 15x^2
    - d/dx[-2x^4] = -2 · 4x^3 = -8x^3
    - d/dx[πx^2] = π · 2x = 2πx

### Slide 14: Rule 4 - Sum and Difference
- **Type:** `slide-visual`
- **Section:** Sum/Difference
- **Content:**
  - Title: "Rule 4: Sum and Difference Rules"
  - Formula box:
    - $$\frac{d}{dx}[f(x) + g(x)] = f'(x) + g'(x)$$
    - $$\frac{d}{dx}[f(x) - g(x)] = f'(x) - g'(x)$$
  - Caption: "Differentiate term by term"

### Slide 15: Sum Rule Visualization
- **Type:** `slide-visual`
- **Section:** Sum/Difference
- **Content:**
  - Title: "Visualizing the Sum Rule"
  - D3 visualization:
    - Show f(x), g(x), and f(x)+g(x)
    - Show how slopes add

### Slide 16: All Rules Together
- **Type:** `slide-visual`
- **Section:** Combined
- **Content:**
  - Title: "Putting It All Together"
  - Rule summary box with all four rules
  - Visual hierarchy showing how they combine

### Slide 17: Combined Example 1
- **Type:** `slide-visual`
- **Section:** Combined
- **Content:**
  - Title: "Example: Polynomial"
  - f(x) = 3x^4 - 5x^2 + 7x - 2
  - Step-by-step:
    - f'(x) = 3(4x^3) - 5(2x) + 7(1) - 0
    - f'(x) = 12x^3 - 10x + 7

### Slide 18: Combined Example 2
- **Type:** `slide-visual`
- **Section:** Combined
- **Content:**
  - Title: "Example: Rewrite First"
  - g(x) = (4x^3 + 2)/x
  - Rewrite: g(x) = 4x^2 + 2x^(-1)
  - g'(x) = 8x - 2x^(-2) = 8x - 2/x^2

### Slide 19: Common Mistake Warning
- **Type:** `slide-statement`
- **Section:** Combined
- **Content:**
  - Statement: "WARNING: The power rule is for x^n, not a^x!"
  - Secondary: "d/dx[2^x] ≠ x·2^(x-1) (We'll learn this later!)"

### Slide 20: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice: Find f'(x)"
  - f(x) = 6x^5 - 4x^3 + 2x - 9
  - Time: "1 minute"

### Slide 21: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice: Find g'(x)"
  - g(x) = √x + 3/x^2
  - Hint: "Rewrite first!"
  - Time: "2 minutes"

### Slide 22: Solutions
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Problem 1: f'(x) = 30x^4 - 12x^2 + 2
  - Problem 2: g(x) = x^(1/2) + 3x^(-2)
    - g'(x) = (1/2)x^(-1/2) - 6x^(-3) = 1/(2√x) - 6/x^3

### Slide 23: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Constant rule: d/dx[c] = 0"
    - "Power rule: d/dx[x^n] = nx^(n-1)"
    - "Constant multiple: d/dx[cf] = c·f'"
    - "Sum/Diff: Differentiate term by term"
    - "Rewrite expressions before differentiating"

### Slide 24: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "Find f'(x) for f(x) = 2x^5 - 3x^2 + 4x - 7"

### Slide 25: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: The Product Rule"
  - Secondary: "Spoiler: d/dx[f·g] ≠ f'·g'"

---

## D3 Visualization Specifications

### Visualization 1: Constant Rule (Slide 3)

```javascript
// Show horizontal line y = c with multiple tangent lines
// All tangent lines are horizontal (slope = 0)
// Animate point moving along line with tangent staying horizontal
```

### Visualization 2: Power Rule Side-by-Side (Slide 6)

```javascript
// Two synchronized graphs
// Left: f(x) = x^3 with draggable point and tangent line
// Right: f'(x) = 3x^2 with corresponding point
// Show that height on right = slope on left
```

### Visualization 3: Sum Rule (Slide 15)

```javascript
// Show f(x) = x^2, g(x) = x, and f(x)+g(x) = x^2 + x
// Animated tangent lines on all three
// Show that slope of sum = sum of slopes
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-2-diff-fund: #7c3aed` for accents
- Polling-based visualization triggering
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
