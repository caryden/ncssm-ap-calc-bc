# Presentation Spec: Separation of Variables

## Class 42 | Unit 7: Differential Equations
## CED Topics 7.6, 7.7

---

## Overview

This presentation introduces separation of variables as a technique for finding exact analytical solutions to certain differential equations. Students learn to recognize separable equations, perform the separation and integration process, and apply initial conditions correctly. This technique transforms a differential equation problem into two standard integration problems, making it accessible with skills from Unit 6.

**Theme Color:** `#ea580c` (Unit 7 Orange)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 7: Differential Equations"
  - Title: "Separation of Variables"
  - Subtitle: "Finding Exact Solutions"
  - Meta: "Class 42 | CED 7.6, 7.7 | NCSSM"

### Slide 1: The Journey So Far
- **Type:** `slide-list`
- **Section:** Opening
- **Content:**
  - Title: "Our Differential Equations Toolkit"
  - List:
    - "Class 39: Writing and verifying differential equations"
    - "Class 40: Visualizing solutions with slope fields"
    - "Class 41: Approximating solutions with Euler's method"
  - Question: "Today's question: When CAN we find an exact formula for the solution?"

### Slide 2: A Special Structure
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Notice Something Special"
  - Equation: $$\frac{dy}{dx} = 2xy$$
  - Analysis:
    - "The right side is a PRODUCT:"
    - "(function of x) × (function of y)"
    - "f(x) = 2x and g(y) = y"
  - Caption: "This structure lets us find an exact solution!"

### Slide 3: What Makes an Equation Separable?
- **Type:** `slide-two-part`
- **Section:** Definition
- **Content:**
  - **Primary:** Definition box with orange border
    - "A first-order differential equation is **separable** if we can write it as:"
    - $$\frac{dy}{dx} = f(x) \cdot g(y)$$
  - **Secondary:**
    - "The key: the right side factors into"
    - "(function of x only) × (function of y only)"

### Slide 4: Examples - Identifying Separable Equations
- **Type:** `slide-visual`
- **Section:** Recognition
- **Content:**
  - Title: "Which Equations Are Separable?"
  - **D3 Visualization:** Interactive checklist
    - | Equation | Separable? | f(x) | g(y) |
    - | dy/dx = x²y³ | ✓ Yes | x² | y³ |
    - | dy/dx = (y+1)/x | ✓ Yes | 1/x | y+1 |
    - | dy/dx = x + y | ✗ No | — | — |
    - | dy/dx = xy + x | ✓ Yes! | x | y+1 |
    - | dy/dx = eˣ sin(y) | ✓ Yes | eˣ | sin(y) |
    - | dy/dx = x² + y² | ✗ No | — | — |
- **Visualization Details:**
  - Highlight the factoring for separable equations
  - Show why non-separable equations can't be factored

### Slide 5: The Key Move - Factoring
- **Type:** `slide-visual`
- **Section:** Recognition
- **Content:**
  - Title: "Sometimes You Need to Factor"
  - Example: $$\frac{dy}{dx} = xy + x$$
  - Steps:
    - "Factor out x: dy/dx = x(y + 1)"
    - "Now we have f(x) = x and g(y) = y + 1"
    - "Separable!"
  - Caption: "Always try factoring before giving up!"

### Slide 6: Practice - Identify Separable Equations
- **Type:** `slide-exercise`
- **Section:** Recognition
- **Content:**
  - Title: "Your Turn: Which Are Separable?"
  - Problems:
    1. "dy/dx = y/x"
    2. "dy/dx = x - y"
    3. "dy/dx = y cos(x)"
    4. "dy/dx = x²y + x²"
  - Time: "2 minutes"

### Slide 7: Practice Solutions
- **Type:** `slide-list`
- **Section:** Recognition
- **Content:**
  - Title: "Solutions"
  - List:
    1. "dy/dx = y/x → Separable: f(x) = 1/x, g(y) = y"
    2. "dy/dx = x - y → NOT separable (cannot factor)"
    3. "dy/dx = y cos(x) → Separable: f(x) = cos(x), g(y) = y"
    4. "dy/dx = x²y + x² = x²(y + 1) → Separable: f(x) = x², g(y) = y+1"

### Slide 8: The Separation Process
- **Type:** `slide-list`
- **Section:** The Method
- **Content:**
  - Title: "Step-by-Step Separation"
  - Numbered list:
    1. "**Check separability:** Write dy/dx = f(x) · g(y)"
    2. "**Separate:** Move all y-terms to left, all x-terms to right"
    3. "**Integrate both sides:** One +C is enough!"
    4. "**Simplify:** Solve for y if possible/required"
  - Important note: "Only ONE constant C is needed - combining two gives one anyway"

### Slide 9: The Separation Step
- **Type:** `slide-visual`
- **Section:** The Method
- **Content:**
  - Title: "Separating the Variables"
  - **D3 Visualization:** Animated separation
    - Starting equation: dy/dx = f(x) · g(y)
    - Rearrange: (1/g(y)) dy = f(x) dx
    - "All y-terms with dy on the left"
    - "All x-terms with dx on the right"
  - Caption: "Now each side involves only one variable!"
- **Visualization Details:**
  - Animate terms moving to opposite sides
  - Color code: y-terms (blue), x-terms (orange)

### Slide 10: Worked Example 1 - dy/dx = x/y
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 1: dy/dx = x/y"
  - **D3 Visualization:** Step-by-step solution
    - Step 1: "Separate: y dy = x dx"
    - Step 2: "Integrate: ∫y dy = ∫x dx + C"
    - Step 3: "Result: y²/2 = x²/2 + C"
    - Step 4: "Simplify: y² - x² = K (where K = 2C)"
  - Result: "y² - x² = K (family of hyperbolas)"

### Slide 11: Visualizing Example 1
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "The Solution Family: Hyperbolas"
  - **D3 Visualization:**
    - Slope field for dy/dx = x/y
    - Overlay family of hyperbolas y² - x² = K for various K
    - Show solutions follow the slope field
  - Caption: "Each value of K gives a different hyperbola"
- **Visualization Details:**
  - Draw multiple hyperbolas (K = -4, -1, 0, 1, 4)
  - Color gradient by K value
  - Background slope field in light gray

### Slide 12: Worked Example 2 - dy/dx = y
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 2: dy/dx = y"
  - Step-by-step:
    - Step 1: "Separate: (1/y) dy = dx"
    - Step 2: "Integrate: ∫(1/y) dy = ∫dx + C"
    - Step 3: "Result: ln|y| = x + C"
    - Step 4: "Solve for y: |y| = e^{x+C} = e^C · e^x = A · e^x"
  - Result: "y = Ae^x (where A = ±e^C)"
  - Caption: "The exponential function is its own derivative!"

### Slide 13: When to Apply Initial Conditions
- **Type:** `slide-statement`
- **Section:** Initial Conditions
- **Content:**
  - Statement: "Apply initial conditions AFTER finding the general solution."
  - Secondary: "Get the formula with C first, THEN substitute the initial values to find C."
- **Notes:** This is a common error - emphasize the order.

### Slide 14: Worked Example 3 - With Initial Condition
- **Type:** `slide-visual`
- **Section:** Initial Conditions
- **Content:**
  - Title: "Example 3: dy/dx = y cos(x), y(0) = 3"
  - **D3 Visualization:** Step-by-step with highlight
    - Step 1: "Separate: (1/y) dy = cos(x) dx"
    - Step 2: "Integrate: ln|y| = sin(x) + C"
    - Step 3: "Solve: |y| = e^{sin(x)+C} = Ae^{sin(x)}"
    - Step 4: "Since y(0) = 3 > 0, take y = Ae^{sin(x)}"
    - Step 5: "Apply initial condition: y(0) = Ae^{sin(0)} = Ae^0 = A = 3"
  - Result: "y = 3e^{sin(x)}"
- **Visualization Details:**
  - Highlight the initial condition application step
  - Show the particular solution on a graph

### Slide 15: Verification
- **Type:** `slide-visual`
- **Section:** Initial Conditions
- **Content:**
  - Title: "Always Verify Your Solution"
  - Verification of y = 3e^{sin(x)}:
    - "Check the equation: dy/dx = y cos(x)"
    - "Left side: dy/dx = 3e^{sin(x)} · cos(x)"
    - "Right side: y · cos(x) = 3e^{sin(x)} · cos(x)"
    - "Match! ✓"
    - "Check initial condition: y(0) = 3e^{sin(0)} = 3e^0 = 3 ✓"
  - Caption: "Verification earns confidence (and AP credit!)"

### Slide 16: The +C Rule
- **Type:** `slide-two-part`
- **Section:** Details
- **Content:**
  - **Primary:**
    - "Why only ONE +C?"
  - **Secondary:**
    - "If we put C on both sides:"
    - "∫f dy + C₁ = ∫g dx + C₂"
    - "Then: ∫f dy = ∫g dx + (C₂ - C₁)"
    - "And C₂ - C₁ is just another constant!"
    - "Save effort: use ONE +C on either side"

### Slide 17: Equilibrium Solutions Warning
- **Type:** `slide-visual`
- **Section:** Details
- **Content:**
  - Title: "Don't Lose Solutions!"
  - **D3 Visualization:** Slope field for dy/dx = y(1 - y)
  - Warning:
    - "When we divide by g(y), we assume g(y) ≠ 0"
    - "But if g(y₀) = 0, then y = y₀ is a constant solution!"
  - Example:
    - "For dy/dx = y(1 - y):"
    - "Equilibria at y = 0 and y = 1"
    - "These are solutions we might lose when dividing!"
  - Caption: "Always check for equilibria BEFORE separating"

### Slide 18: Finding Equilibrium Solutions
- **Type:** `slide-list`
- **Section:** Details
- **Content:**
  - Title: "The Complete Process"
  - Numbered list:
    1. "**Find equilibria:** Set g(y) = 0 and solve for y"
    2. "**Record these:** y = y₀ are constant solutions"
    3. "**Then separate:** For non-equilibrium solutions"
    4. "**Combine:** General solution includes all cases"
  - Example: "For dy/dx = y(1 - y), equilibria are y = 0 and y = 1"

### Slide 19: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Solve by Separation"
  - Problem: "dy/dx = x²y"
  - Tasks:
    - "Separate the variables"
    - "Integrate both sides"
    - "Write the general solution"
  - Time: "3 minutes"

### Slide 20: Practice Problem 1 Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: dy/dx = x²y"
  - Steps:
    - "Separate: (1/y) dy = x² dx"
    - "Integrate: ln|y| = x³/3 + C"
    - "Solve: |y| = e^{x³/3 + C} = Ae^{x³/3}"
  - Result: "y = Ce^{x³/3}"
  - Caption: "Don't forget: y = 0 is also a solution (equilibrium)"

### Slide 21: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: With Initial Condition"
  - Problem: "dy/dx = y/x with y(1) = 2"
  - Tasks:
    - "Find the general solution"
    - "Apply the initial condition"
    - "Write the particular solution"
  - Time: "3 minutes"

### Slide 22: Practice Problem 2 Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: dy/dx = y/x, y(1) = 2"
  - Steps:
    - "Separate: (1/y) dy = (1/x) dx"
    - "Integrate: ln|y| = ln|x| + C"
    - "Simplify: y = Ax (using exponential properties)"
    - "Apply y(1) = 2: A(1) = 2, so A = 2"
  - Result: "y = 2x"
  - Verification: "dy/dx = 2 and y/x = 2x/x = 2 ✓"

### Slide 23: Practice Problem 3
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Challenge: Trigonometric Result"
  - Problem: "dy/dx = 1 + y² with y(0) = 0"
  - Hint: "∫1/(1 + y²) dy = arctan(y) + C"
  - Time: "3 minutes"

### Slide 24: Practice Problem 3 Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: dy/dx = 1 + y², y(0) = 0"
  - Steps:
    - "Separate: 1/(1 + y²) dy = dx"
    - "Integrate: arctan(y) = x + C"
    - "Apply y(0) = 0: arctan(0) = 0 = C"
    - "Solve for y: y = tan(x)"
  - Result: "y = tan(x)"
  - Caption: "Valid for -π/2 < x < π/2"

### Slide 25: Implicit vs. Explicit Solutions
- **Type:** `slide-comparison`
- **Section:** Summary
- **Content:**
  - Title: "Two Types of Solutions"
  - Column 1: Implicit Solution
    - "y² - x² = K"
    - "Cannot easily solve for y"
    - "Perfectly valid answer!"
    - "Common with separation"
  - Column 2: Explicit Solution
    - "y = Ce^x"
    - "y is isolated"
    - "Easier to work with"
    - "Solve for y when possible"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Separable: dy/dx = f(x) · g(y)"
    - "Separate: (1/g(y)) dy = f(x) dx"
    - "Integrate both sides with ONE +C"
    - "Apply initial condition AFTER finding general solution"
    - "Check for equilibrium solutions before dividing"
    - "Implicit solutions are valid!"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Solve dy/dx = 2xy with y(0) = 1"
  - Show your work:
    - "Separate the variables"
    - "Integrate"
    - "Apply the initial condition"
  - Expected answer: "y = e^{x²}"

### Slide 28: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Exponential and Logistic Models"
  - Secondary: "The most important applications of separation of variables in real-world modeling."

---

## D3 Visualization Specifications

### Visualization 1: Separability Checker (Slide 4)

```javascript
// Interactive table showing separable equations
// Features:
// - Table of equations
// - Checkmark/X for separable/not
// - Show factorization when separable
// - Animate the factoring process

// Interaction:
// - Click equation to reveal analysis
// - Show f(x) and g(y) when separable
// - Explain why not when non-separable

// Color scheme:
// - Separable: green checkmark
// - Not separable: red X
// - f(x): orange highlighting
// - g(y): blue highlighting

// Font sizes: 1.25rem for all text
```

### Visualization 2: Separation Animator (Slides 9, 10)

```javascript
// Animated separation of variables
// Features:
// - Show equation dy/dx = f(x)g(y)
// - Animate terms moving to opposite sides
// - dy and y-terms move left
// - dx and x-terms move right
// - Result: (1/g(y))dy = f(x)dx

// Animation:
// - 600ms per movement
// - Clear intermediate steps
// - Color coding throughout

// Color scheme:
// - y-related terms: blue
// - x-related terms: orange
// - Operators: gray

// Font sizes: 1.5rem for equations
```

### Visualization 3: Solution Family (Slide 11)

```javascript
// Family of solution curves on slope field
// Features:
// - Slope field for the equation
// - Multiple solution curves (different C values)
// - Interactive C slider
// - Highlighted selected curve

// For dy/dx = x/y:
// - Draw family of hyperbolas y² - x² = K
// - K values: -4, -2, -1, 0, 1, 2, 4
// - Color gradient based on K

// Layout:
// - Slope field as background (light gray)
// - Solution curves overlaid
// - Slider to select K value

// Font sizes: 1.25rem for labels and legend
```

### Visualization 4: Initial Condition Highlighter (Slide 14)

```javascript
// Step-by-step solution with initial condition
// Features:
// - Solution steps shown sequentially
// - Initial condition step highlighted
// - Graph showing particular solution

// Highlighting:
// - Step 5 (initial condition application) in orange box
// - Previous steps in normal formatting
// - Final answer in larger, bold text

// Graph component:
// - Show the particular solution curve
// - Mark the initial point
// - Show slope field in background

// Font sizes: 1.25rem for steps, 1.5rem for result
```

### Visualization 5: Equilibrium Warning (Slide 17)

```javascript
// Slope field with equilibrium solutions highlighted
// Features:
// - Slope field for dy/dx = y(1 - y)
// - Horizontal lines at y = 0 and y = 1
// - Label these as equilibrium solutions
// - Show arrows indicating stability

// Annotations:
// - y = 0: dashed line, labeled "equilibrium (unstable)"
// - y = 1: dashed line, labeled "equilibrium (stable)"
// - Arrows showing flow direction

// Color scheme:
// - Equilibrium lines: orange dashed
// - Stable: green label
// - Unstable: red label

// Font sizes: 1.25rem for all labels
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-7-diffeq: #ea580c` for accents
- Separation animation should be smooth and clear (600ms transitions)
- Solution families should show at least 5 curves
- Initial condition application should be visually distinct
- Minimum font size 1.25rem for all D3 text elements
- Support keyboard navigation (arrow keys, T for TOC)
- Use consistent color coding: y-terms (blue), x-terms (orange)
