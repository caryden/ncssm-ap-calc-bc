# Presentation Spec: The Product Rule

## Class 13 | Unit 2: Differentiation Fundamentals
## CED Topic 2.7

---

## Overview

This presentation introduces the product rule for differentiating products of functions. Key visualizations demonstrate why d/dx[fg] ≠ f'g' and provide geometric intuition through the "changing rectangle" analogy.

**Theme Color:** `#7c3aed` (Unit 2 Purple)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 2: Differentiation Fundamentals"
  - Title: "The Product Rule"
  - Subtitle: "Differentiating Products of Functions"
  - Meta: "Class 13 | CED 2.7 | NCSSM"

### Slide 1: The Natural Guess
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "What About Products?"
  - "We know: d/dx[f + g] = f' + g'"
  - "So maybe: d/dx[f · g] = f' · g'?"
  - Question mark graphic

### Slide 2: The Counterexample
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Let's Test It!"
  - Let f(x) = x and g(x) = x
  - "Actual: d/dx[x·x] = d/dx[x²] = 2x"
  - "Naive guess: f'·g' = 1·1 = 1"
  - Caption: "2x ≠ 1, so our guess is WRONG!"

### Slide 3: Something's Missing
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "The derivative of a product is NOT the product of derivatives!"
  - Secondary: "We need a new rule..."

### Slide 4: The Product Rule
- **Type:** `slide-visual`
- **Section:** The Rule
- **Content:**
  - Title: "The Product Rule"
  - Formula box:
    $$\frac{d}{dx}[f(x) \cdot g(x)] = f'(x) \cdot g(x) + f(x) \cdot g'(x)$$
  - Memory aid: "f prime g + f g prime"

### Slide 5: Memory Trick
- **Type:** `slide-visual`
- **Section:** The Rule
- **Content:**
  - Title: "How to Remember"
  - Visual breakdown:
    - First × (derivative of Second)
    - PLUS
    - Second × (derivative of First)
  - Alternate: "Leave first, d-second, plus leave second, d-first"

### Slide 6: Geometric Intuition
- **Type:** `slide-visual`
- **Section:** The Rule
- **Content:**
  - Title: "Why Does It Work?"
  - D3 visualization: Rectangle with changing sides
  - Area = f(x) · g(x)
  - As x changes, both f and g change
  - Caption: "Both dimensions contribute to the rate of area change"

### Slide 7: Verify Our Example
- **Type:** `slide-visual`
- **Section:** Verification
- **Content:**
  - Title: "Testing with f(x) = x, g(x) = x"
  - f' = 1, g' = 1
  - d/dx[x·x] = (1)(x) + (x)(1) = x + x = 2x ✓
  - Caption: "It works!"

### Slide 8: Example 1 - Two Polynomials
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "Example 1"
  - h(x) = (3x²)(x³ + 1)
  - Step-by-step:
    - f = 3x², f' = 6x
    - g = x³ + 1, g' = 3x²
    - h' = (6x)(x³ + 1) + (3x²)(3x²)
    - h' = 6x⁴ + 6x + 9x⁴ = 15x⁴ + 6x

### Slide 9: Verification by Expansion
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "Check: Expand First"
  - h(x) = 3x⁵ + 3x²
  - h'(x) = 15x⁴ + 6x ✓
  - Caption: "Same answer! (But expansion isn't always possible)"

### Slide 10: Example 2 - With Radicals
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "Example 2"
  - h(x) = (x² + 1)√x
  - Step-by-step:
    - f = x² + 1, f' = 2x
    - g = x^(1/2), g' = (1/2)x^(-1/2)
    - h' = (2x)(√x) + (x² + 1) · (1/(2√x))

### Slide 11: Example 3 - With e^x (Preview)
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "Example 3 (Preview)"
  - h(x) = x² e^x
  - Note: "d/dx[e^x] = e^x (we'll prove this soon!)"
  - h' = (2x)(e^x) + (x²)(e^x) = e^x(2x + x²)

### Slide 12: When to Use Product Rule?
- **Type:** `slide-comparison`
- **Section:** Strategy
- **Content:**
  - Title: "When to Use Product Rule?"
  - Column 1: "Use Product Rule"
    - Transcendental functions (e^x, sin x, ln x)
    - Complex factors
    - Can't easily expand
  - Column 2: "Just Expand"
    - Simple polynomials
    - Quick expansion
    - Easier calculation

### Slide 13: Interactive Example
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Visualizing f·g and (f·g)'"
  - D3 visualization:
    - Show f(x), g(x), and their product
    - Show tangent line to product
    - Display f'g + fg' calculation

### Slide 14: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice: Find the Derivative"
  - h(x) = (x² + 3)(x³ - 2)
  - Time: "2 minutes"

### Slide 15: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice: Two Methods"
  - h(x) = x√x
  - "Try both: product rule AND rewriting as x^(3/2)"
  - Time: "2 minutes"

### Slide 16: Practice Problem 3
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice: Find the Derivative"
  - h(x) = (2x + 1)(3x² - x)
  - Time: "2 minutes"

### Slide 17: Solutions
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Problem 1: 5x⁴ + 9x² - 4x
  - Problem 2: (3/2)√x (both methods)
  - Problem 3: 18x² + 2x - 1

### Slide 18: Common Mistake
- **Type:** `slide-visual`
- **Section:** Warnings
- **Content:**
  - Title: "COMMON MISTAKE"
  - Wrong: d/dx[fg] = f' · g'
  - Right: d/dx[fg] = f' · g + f · g'
  - Visual showing the error crossed out

### Slide 19: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "d/dx[fg] ≠ f'g' (This is wrong!)"
    - "Product rule: (fg)' = f'g + fg'"
    - "Remember: first d-second + second d-first"
    - "Choose wisely: sometimes expansion is easier"

### Slide 20: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "Find d/dx[(x³ - 1)(x² + 4)] using the product rule"

### Slide 21: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: The Quotient Rule"
  - Secondary: "What about d/dx[f/g]?"

---

## D3 Visualization Specifications

### Visualization 1: Changing Rectangle (Slide 6)

```javascript
// Animated rectangle showing geometric intuition
// Sides: f(x) and g(x) that change with x
// Show how area change = f'g + fg' through visual decomposition
// Break area change into: vertical strip (fg') + horizontal strip (f'g)
```

### Visualization 2: Product Function (Slide 13)

```javascript
// Three-panel display:
// Top-left: f(x) = x
// Top-right: g(x) = x + 1
// Bottom: Product f(x)·g(x) with tangent line
// Show slope = f'g + fg' dynamically as x changes
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-2-diff-fund: #7c3aed` for accents
- Polling-based visualization triggering
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
