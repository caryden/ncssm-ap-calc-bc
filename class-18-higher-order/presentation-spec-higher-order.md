# Presentation Specification: Higher-Order Derivatives & Unit 3 Review

## Metadata
- **Class:** 18
- **Title:** Higher-Order Derivatives & Unit 3 Review
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **CED Topics:** 3.5, 3.6
- **Duration:** ~20 slides
- **Theme Color:** `#8b5cf6` (Unit 3 Violet)

---

## Slide Outline

### Slide 0: Title Slide
- Unit Badge: "Unit 3: Advanced Differentiation"
- Title: "Higher-Order Derivatives"
- Subtitle: "& Selecting Differentiation Procedures"

### Slide 1: Warm-Up
- Find y' and y'' for y = x³ - 2x² + 5x - 1
- What does y'' represent?

### Slide 2: What is a Higher-Order Derivative?
- First derivative = rate of change
- Second derivative = rate of change of the rate of change
- Physical interpretation: position → velocity → acceleration

### Slide 3: Notation Overview
- First: f'(x), y', dy/dx
- Second: f''(x), y'', d²y/dx²
- nth: f⁽ⁿ⁾(x), y⁽ⁿ⁾, dⁿy/dxⁿ

### Slide 4: Visualization - Function and Derivatives
- D3 visualization showing f(x), f'(x), f''(x) simultaneously
- Interactive to see relationship between curves

### Slide 5: Polynomial Example
- f(x) = x⁵ - 3x⁴ + 2x
- Show all derivatives through f⁽⁶⁾(x) = 0

### Slide 6: Trig Function Pattern
- f(x) = sin(x)
- Derivatives cycle: cos, -sin, -cos, sin, ...
- Pattern repeats every 4 derivatives

### Slide 7: Visualization - Sine Derivatives
- D3 showing sin(x) and its derivatives
- Toggle between derivatives to see cycling pattern

### Slide 8: Implicit Second Derivatives
- Find y'' for x² + y² = 25
- Step-by-step process

### Slide 9: Implicit Second Derivative - Step 1
- Find y' first: 2x + 2y·y' = 0
- y' = -x/y

### Slide 10: Implicit Second Derivative - Step 2
- Differentiate y' = -x/y using quotient rule
- y'' = -(y - x·y')/y²

### Slide 11: Implicit Second Derivative - Step 3
- Substitute y' = -x/y
- Simplify to y'' = -25/y³

### Slide 12: Visualization - Circle Second Derivative
- D3 showing circle with tangent and curvature indication
- Show how y'' relates to concavity

### Slide 13: Selecting Differentiation Procedures
- Flowchart approach to choosing the right rule
- Decision tree for derivatives

### Slide 14: Procedure Flowchart
- D3 visualization: interactive flowchart
- Basic → Product → Quotient → Chain → Implicit → Inverse

### Slide 15: Mixed Practice
- d/dx[x²eˣ] - Product rule
- d/dx[(3x+1)⁷] - Chain rule
- d/dx[tan(x²)] - Chain rule
- d/dx[ln(cos x)] - Chain rule
- x²y + y² = 10 - Implicit

### Slide 16: Unit 3 Summary
- Chain Rule: d/dx[f(g(x))] = f'(g(x))·g'(x)
- Implicit: Treat y as function of x
- Inverse: (f⁻¹)'(a) = 1/f'(f⁻¹(a))
- Inverse Trig formulas
- Higher-Order: Apply rules repeatedly

### Slide 17: Practice Problems
- AP-style problems covering all Unit 3 topics

### Slide 18: Solutions
- Worked solutions to practice problems

### Slide 19: Exit Ticket
- Find y'' for y = e^(2x)
- What rule(s) for d/dx[x·arctan(x)]?

### Slide 20: Looking Ahead
- Unit 4: Contextual Applications of Differentiation
- Motion, related rates, linearization

---

## D3 Visualizations

### 1. Function and Derivatives Graph (Slide 4)
- Three curves: f(x), f'(x), f''(x) on same axes
- Color coded with legend
- Polynomial example: f(x) = x³ - 3x
- Show relationships (zeros of f' at extrema of f, etc.)

### 2. Sine Derivative Cycle (Slide 7)
- Plot of sin(x) and selected derivative
- Dropdown or buttons to switch between sin, cos, -sin, -cos
- Visual demonstration of the 4-cycle pattern

### 3. Circle Second Derivative (Slide 12)
- Circle x² + y² = 25
- Moveable point on circle
- Show tangent line
- Display y' and y'' values at that point
- Indicate concavity direction

### 4. Procedure Flowchart (Slide 14)
- Interactive decision tree
- Hover to highlight paths
- Examples shown for each branch
- Animated flow when selecting procedure

---

## Design Notes

### Typography
- Use consistent notation throughout
- Prime notation for most examples
- Leibniz notation for chain rule discussions

### Color Coding
- f(x): Theme color (#8b5cf6)
- f'(x): Lighter variant (#a78bfa)
- f''(x): Complementary or accent color

### Transitions
- Smooth transitions between derivative views
- Step-by-step reveals for implicit differentiation

---

## Common Student Difficulties

1. **Notation confusion:** d²y/dx² ≠ (dy/dx)²
2. **Implicit y'':** Forgetting to substitute y' expression
3. **Procedure selection:** Choosing chain rule vs. product rule
4. **Pattern recognition:** Not seeing repeating patterns in trig derivatives
