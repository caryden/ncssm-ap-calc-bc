# Presentation Specification: Differentiating Inverse Functions

## Metadata
- **Class:** 16
- **Title:** Differentiating Inverse Functions
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **CED Topic:** 3.3
- **Duration:** ~18 slides
- **Theme Color:** `#8b5cf6` (Unit 3 Violet)

---

## Slide Outline

### Slide 0: Title Slide
- **Type:** `slide-title`
- Unit Badge: "Unit 3: Advanced Differentiation"
- Title: "Differentiating Inverse Functions"
- Subtitle: "When the Roles Are Reversed"
- Meta: "Class 16 | March 3, 2026 | CED 3.3"

### Slide 1: Warm-Up
- **Type:** `slide-exercise`
- Problem: f(x) = x^3 + 2x - 1. Find f(1) and f'(1).
- Follow-up: If f(1) = 2, what is f^(-1)(2)?

### Slide 2: Inverse Functions Review
- **Type:** `slide-visual`
- **D3 Visualization:** f(x) and f^(-1)(x) reflected across y = x
- Key points highlighted showing (a, b) on f corresponds to (b, a) on f^(-1)

### Slide 3: Graphical Insight
- **Type:** `slide-visual`
- **D3 Visualization:** Tangent lines on f and f^(-1) at corresponding points
- Shows slopes are reciprocals (accounting for the reflection)

### Slide 4: The Big Question
- **Type:** `slide-statement`
- Statement: "If we know f'(x), can we find (f^(-1))'(x) without finding f^(-1) explicitly?"

### Slide 5: Derivation Setup
- **Type:** `slide-visual`
- Start with f(f^(-1)(x)) = x
- Let y = f^(-1)(x), so f(y) = x

### Slide 6: Applying Implicit Differentiation
- **Type:** `slide-example`
- Differentiate f(y) = x with respect to x
- Chain rule: f'(y) · (dy/dx) = 1
- Solve: dy/dx = 1/f'(y)

### Slide 7: The Formula
- **Type:** `slide-statement`
- Main formula: (f^(-1))'(a) = 1/f'(f^(-1)(a))
- Verbal: "1 over the derivative of f at the corresponding point"

### Slide 8: Example 1
- **Type:** `slide-example`
- f(x) = x^3 + 2x - 1, find (f^(-1))'(2)
- Step-by-step solution

### Slide 9: Example 2
- **Type:** `slide-example`
- f(x) = x^5 + x + 1, find (f^(-1))'(3)

### Slide 10: Table-Based Example
- **Type:** `slide-visual`
- Given table with f(x) and f'(x) values
- Find (f^(-1))'(5)

### Slide 11: Visualization
- **Type:** `slide-visual`
- **D3 Visualization:** Interactive showing f, f^(-1), and tangent lines
- Demonstrates derivative relationship

### Slide 12: Common Mistakes
- **Type:** `slide-list`
- Wrong evaluation point
- Confusing inverse with reciprocal
- Forgetting to find f^(-1)(a) first

### Slide 13: Practice Problems
- **Type:** `slide-exercise`
- 3-4 practice problems

### Slide 14: Solutions
- **Type:** `slide-list`
- Solutions to practice

### Slide 15: Exit Ticket
- **Type:** `slide-exercise`
- f(x) = x^5 + 3x - 2, f(1) = 2. Find (f^(-1))'(2).

### Slide 16: Coming Up
- **Type:** `slide-statement`
- Tomorrow: Inverse Trigonometric Derivatives

---

## D3 Visualizations

### 1. Function and Inverse Reflection (Slide 2)
- Plot f(x) and f^(-1)(x)
- Line y = x for reference
- Animated points showing correspondence

### 2. Tangent Line Relationship (Slide 3, 11)
- f and f^(-1) plotted
- Tangent lines at corresponding points
- Slope values displayed
- Interactive: drag point on f to see corresponding tangent on f^(-1)
