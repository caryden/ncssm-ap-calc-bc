# Presentation Specification: The Chain Rule

## Metadata
- **Class:** 14
- **Title:** The Chain Rule
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **CED Topic:** 3.1
- **Duration:** ~20 slides
- **Theme Color:** `#8b5cf6` (Unit 3 Violet)

---

## Slide Outline

### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit Badge: "Unit 3: Advanced Differentiation"
  - Title: "The Chain Rule"
  - Subtitle: "Derivatives of Composite Functions"
  - Meta: "Class 14 | February 27, 2026 | CED 3.1"

### Slide 1: Warm-Up Challenge
- **Type:** `slide-exercise`
- **Content:**
  - Prompt: "Find the derivative of f(x) = (x^2 + 1)^5 by expanding"
  - Note: "This is possible but tedious..."
  - Timer suggestion: 2 minutes

### Slide 2: The Problem
- **Type:** `slide-statement`
- **Content:**
  - Statement: "What if there's a better way to differentiate composite functions?"

### Slide 3: Composite Functions Review
- **Type:** `slide-visual`
- **Content:**
  - Title: "Composite Functions: f(g(x))"
  - **D3 Visualization:** Chain diagram showing input x flowing through g, then through f to output y
  - Labels: x -> [g] -> g(x) -> [f] -> f(g(x))

### Slide 4: Identifying Inner and Outer
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "Every composite has an outer and inner function"
  - Secondary: "h(x) = sin(x^2)"
  - Visual breakdown: Outer = sin(u), Inner = u = x^2

### Slide 5: Practice Identification
- **Type:** `slide-visual`
- **Content:**
  - Title: "Identify the Inner and Outer Functions"
  - Three examples with interactive reveal:
    1. h(x) = (3x + 1)^4
    2. h(x) = e^(cos x)
    3. h(x) = sqrt(ln x)

### Slide 6: The Chain Rule Statement
- **Type:** `slide-statement`
- **Content:**
  - Main equation: d/dx[f(g(x))] = f'(g(x)) · g'(x)
  - Styled with highlight on f'(g(x)) and g'(x)

### Slide 7: Chain Rule in Leibniz Notation
- **Type:** `slide-visual`
- **Content:**
  - Title: "Leibniz Notation"
  - Display: dy/dx = (dy/du) · (du/dx)
  - **D3 Visualization:** Animated chain showing "rates multiply"
  - Note: "The du's appear to 'cancel' (they don't really, but it's a useful mnemonic)"

### Slide 8: The Intuition
- **Type:** `slide-visual`
- **Content:**
  - Title: "Why Does the Chain Rule Work?"
  - **D3 Visualization:** Interactive rate multiplier
    - If y changes 3x as fast as u
    - And u changes 2x as fast as x
    - Then y changes 6x as fast as x
  - Sliders for adjusting rates

### Slide 9: The Verbal Rule
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Derivative of the outer (keeping inner unchanged) times derivative of the inner"
  - Color coding: outer in violet, inner in gold

### Slide 10: Example 1 - Power of Linear
- **Type:** `slide-example`
- **Content:**
  - Problem: "Find f'(x) if f(x) = (x^2 + 1)^5"
  - Step 1: Identify - Outer: u^5, Inner: u = x^2 + 1
  - Step 2: Outer derivative: 5u^4 = 5(x^2 + 1)^4
  - Step 3: Inner derivative: 2x
  - Step 4: Multiply: f'(x) = 5(x^2 + 1)^4 · 2x = 10x(x^2 + 1)^4

### Slide 11: Example 2 - Trig Composition
- **Type:** `slide-example`
- **Content:**
  - Problem: "Find f'(x) if f(x) = sin(3x)"
  - Solution steps with color coding

### Slide 12: Example 3 - Exponential
- **Type:** `slide-example`
- **Content:**
  - Problem: "Find f'(x) if f(x) = e^(x^2)"
  - Solution steps

### Slide 13: Example 4 - Logarithm
- **Type:** `slide-example`
- **Content:**
  - Problem: "Find f'(x) if f(x) = ln(cos x)"
  - Solution showing simplification to -tan x

### Slide 14: Visualization - Chain Rule in Action
- **Type:** `slide-visual`
- **Content:**
  - Title: "Visualizing the Chain Rule"
  - **D3 Visualization:** Interactive graph showing:
    - f(x) = sin(2x) and its derivative
    - Toggle between showing composition steps
    - Tangent line that updates

### Slide 15: Common Mistakes
- **Type:** `slide-list`
- **Content:**
  - Title: "Watch Out For..."
  - List items:
    1. Forgetting the inner derivative: d/dx[sin(x^2)] ≠ cos(x^2)
    2. Wrong order: derivative of inner, not inner of derivative
    3. Sign errors with negative inner functions

### Slide 16: Practice Problems
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Your Turn"
  - Problems:
    1. g(x) = (5x - 2)^7
    2. h(x) = cos(x^3)
    3. f(x) = sqrt(4x + 1)
    4. y = tan(2x)
    5. f(x) = e^(-x)
  - Timer: 5 minutes

### Slide 17: Solutions
- **Type:** `slide-list`
- **Content:**
  - Title: "Solutions"
  - Answers with brief work shown

### Slide 18: Extended Examples
- **Type:** `slide-visual`
- **Content:**
  - Title: "Combining with Other Rules"
  - Example: y = x^2 · sin(3x) (product + chain)
  - Example: y = cos(x)/e^x (quotient + chain)

### Slide 19: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Prompt: "Find f'(x) if f(x) = (sin x)^3"
  - Note: "Use the chain rule!"

### Slide 20: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Tomorrow: More chain rule practice with nested compositions and combined rules"

---

## D3 Visualizations Required

### 1. Composite Function Flow Diagram (Slide 3)
- **Purpose:** Show how input flows through nested functions
- **Features:**
  - Animated flow from x through boxes representing g and f
  - Labels showing intermediate values
  - Color-coded boxes (inner = gold, outer = violet)

### 2. Rate Multiplier Visualization (Slide 8)
- **Purpose:** Build intuition for why rates multiply
- **Features:**
  - Three horizontal tracks showing x, u, y
  - Animated dots moving at different speeds
  - Display showing rate calculations
  - Interactive sliders to adjust rates

### 3. Chain Rule Graph (Slide 14)
- **Purpose:** Show composition and its derivative graphically
- **Features:**
  - Plot of f(x) = sin(kx) with adjustable k
  - Plot of f'(x) = k·cos(kx)
  - Tangent line at moveable point
  - Slider for k value
  - Toggle to show/hide derivative

---

## Styling Notes

- Theme color: `--unit-3-diff-adv: #8b5cf6` (Violet)
- Use violet for outer function highlights
- Use gold for inner function highlights
- Maintain 1.25rem minimum for all labels and math

---

## Interactive Elements

1. **Slide 3:** Click to animate flow through composition
2. **Slide 8:** Sliders to adjust rate values
3. **Slide 14:** Slider for k, moveable point for tangent line

---

## MathJax Requirements

All slides use MathJax for mathematical notation. Key expressions:
- Chain rule formula
- Leibniz notation
- All worked examples
- Practice problems
