# Presentation Specification: Implicit Differentiation

## Metadata
- **Class:** 15
- **Title:** Implicit Differentiation
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **CED Topic:** 3.2
- **Duration:** ~20 slides
- **Theme Color:** `#8b5cf6` (Unit 3 Violet)

---

## Slide Outline

### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit Badge: "Unit 3: Advanced Differentiation"
  - Title: "Implicit Differentiation"
  - Subtitle: "When y Won't Solve for Itself"
  - Meta: "Class 15 | February 28, 2026 | CED 3.2"

### Slide 1: The Problem
- **Type:** `slide-visual`
- **Content:**
  - Title: "A Circle Problem"
  - **D3 Visualization:** Circle x^2 + y^2 = 25 with point (3, 4) and tangent line
  - Question: "What's the slope of the tangent line at (3, 4)?"

### Slide 2: The Traditional Approach
- **Type:** `slide-list`
- **Content:**
  - Title: "Method 1: Solve for y first"
  - Steps:
    1. Solve: y = sqrt(25 - x^2) (top half only!)
    2. Differentiate: dy/dx = -x/sqrt(25 - x^2)
    3. Evaluate at x = 3: dy/dx = -3/4
  - Problem: This only works for y >= 0

### Slide 3: What About the Bottom Half?
- **Type:** `slide-visual`
- **Content:**
  - **D3 Visualization:** Circle showing both halves, point (3, -4) highlighted
  - Question: "The bottom half needs y = -sqrt(25 - x^2). Is there a unified approach?"

### Slide 4: Explicit vs. Implicit
- **Type:** `slide-comparison`
- **Content:**
  - Title: "Two Types of Function Definitions"
  - Left column (Explicit):
    - y = f(x)
    - y is isolated
    - Examples: y = x^2, y = sin(x)
  - Right column (Implicit):
    - F(x, y) = 0
    - x and y mixed together
    - Examples: x^2 + y^2 = 25, xy = 1

### Slide 5: The Key Insight
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Think of y as a function of x: y = y(x)"
  - Secondary: "When we differentiate any expression containing y, we must use the chain rule"

### Slide 6: The Chain Rule Connection
- **Type:** `slide-visual`
- **Content:**
  - Title: "When Differentiating y Terms"
  - Display:
    - d/dx[y^2] = 2y · (dy/dx)
    - d/dx[sin(y)] = cos(y) · (dy/dx)
    - d/dx[e^y] = e^y · (dy/dx)
  - Note: "Always multiply by dy/dx!"

### Slide 7: The Implicit Differentiation Process
- **Type:** `slide-list`
- **Content:**
  - Title: "The Process"
  - Steps:
    1. Differentiate both sides with respect to x
    2. Apply chain rule to all y terms (multiply by dy/dx)
    3. Collect all dy/dx terms on one side
    4. Factor out dy/dx
    5. Solve for dy/dx

### Slide 8: Example 1 - Circle
- **Type:** `slide-visual`
- **Content:**
  - Title: "Example 1: x^2 + y^2 = 25"
  - Step-by-step solution
  - **D3 Visualization:** Circle with tangent line updating as we derive dy/dx = -x/y

### Slide 9: Example 1 - Verification
- **Type:** `slide-visual`
- **Content:**
  - Title: "Checking Our Answer"
  - At (3, 4): dy/dx = -3/4 (matches!)
  - At (3, -4): dy/dx = -3/-4 = 3/4 (positive slope on bottom half)
  - **D3 Visualization:** Both tangent lines shown

### Slide 10: Example 2 - Product
- **Type:** `slide-example`
- **Content:**
  - Problem: "Find dy/dx if xy + y^3 = 1"
  - Steps showing product rule and chain rule combined
  - Final answer: dy/dx = -y/(x + 3y^2)

### Slide 11: Example 3 - Trig
- **Type:** `slide-example`
- **Content:**
  - Problem: "Find dy/dx if sin(xy) = y"
  - Chain rule on the inside of sin
  - Solution steps

### Slide 12: Interactive: Folium of Descartes
- **Type:** `slide-visual`
- **Content:**
  - Title: "The Folium of Descartes: x^3 + y^3 = 6xy"
  - **D3 Visualization:** Interactive curve with moveable point
  - Shows tangent line and computed slope at each point

### Slide 13: Common Mistakes
- **Type:** `slide-list`
- **Content:**
  - Title: "Watch Out For..."
  - Mistakes:
    1. Forgetting dy/dx when differentiating y terms
    2. Wrong application of product rule
    3. Algebraic errors when solving for dy/dx

### Slide 14: When dy/dx is Undefined
- **Type:** `slide-visual`
- **Content:**
  - Title: "Vertical Tangent Lines"
  - When denominator = 0, dy/dx is undefined
  - **D3 Visualization:** Circle showing vertical tangent at (5, 0) and (-5, 0)

### Slide 15: Practice Problems
- **Type:** `slide-exercise`
- **Content:**
  - Find dy/dx:
    1. x^2 - y^2 = 16
    2. y^2 = x^3
    3. e^y = x + y
    4. x^2 + xy + y^2 = 7, find slope at (2, 1)

### Slide 16: Solutions
- **Type:** `slide-list`
- **Content:**
  - Worked solutions to practice problems

### Slide 17: Applications Preview
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "Where Will We Use This?"
  - Secondary:
    - Related rates problems
    - Inverse function derivatives
    - Analyzing curves in polar/parametric

### Slide 18: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Prompt: "Use implicit differentiation to find dy/dx:"
  - Problem: x^2y + y^2 = 5

### Slide 19: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Tomorrow: Differentiating Inverse Functions"
  - Connection: "Using implicit differentiation to find derivatives of inverse functions"

---

## D3 Visualizations Required

### 1. Circle with Tangent Line (Slides 1, 3, 9)
- **Purpose:** Show tangent line to circle at various points
- **Features:**
  - Circle x^2 + y^2 = 25
  - Moveable point on circle
  - Tangent line updates based on dy/dx = -x/y
  - Display slope value

### 2. Folium of Descartes Interactive (Slide 12)
- **Purpose:** Explore implicit curve and its tangent lines
- **Features:**
  - Plot of x^3 + y^3 = 6xy
  - Moveable point along curve
  - Tangent line at point
  - Slope calculation displayed

### 3. Vertical Tangent Visualization (Slide 14)
- **Purpose:** Show where dy/dx is undefined
- **Features:**
  - Circle with points at (5, 0) and (-5, 0)
  - Vertical tangent lines highlighted
  - Annotation showing denominator = 0

---

## Styling Notes

- Theme color: `--unit-3-diff-adv: #8b5cf6` (Violet)
- Use violet for dy/dx terms
- Use gold (#d4a028) for y terms that need chain rule
- Error examples in red

---

## MathJax Requirements

Key expressions:
- All implicit equations
- Chain rule applications
- Step-by-step solutions
