# Presentation Spec: Euler's Method

## Class 41 | Unit 7: Differential Equations (BC Only)
## CED Topic 7.5

---

## Overview

This presentation introduces Euler's method as a numerical technique for approximating solutions to differential equations. Students connect Euler's method to slope fields (following local directions) and to linearization (tangent line approximation). The emphasis is on understanding why the method works, executing it accurately with organized calculations, and recognizing its limitations. This is a BC-only topic.

**Theme Color:** `#ea580c` (Unit 7 Orange)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 7: Differential Equations"
  - Title: "Euler's Method"
  - Subtitle: "Numerical Approximation of Solutions"
  - BC indicator: "BC Topic"
  - Meta: "Class 41 | CED 7.5 | NCSSM"

### Slide 1: The Challenge
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "When Algebra Fails"
  - Problem box: "Solve dy/dx = x + y with y(0) = 1. Find y(1)."
  - Question: "Can we separate this equation?"
  - Analysis:
    - "dy/dx = x + y cannot be written as f(x) · g(y)"
    - "Separation of variables doesn't work!"
  - **D3 Visualization:** Slope field for dy/dx = x + y showing the complexity
- **Notes:** Motivate the need for numerical methods.

### Slide 2: The Dilemma
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Most differential equations cannot be solved by any formula."
  - Secondary: "So how do we find solutions? We approximate numerically."

### Slide 3: The Key Insight
- **Type:** `slide-visual`
- **Section:** The Idea
- **Content:**
  - Title: "Recall: Local Linearization"
  - Math display: Near x = a, a function is approximately linear:
    - $$f(x) \approx f(a) + f'(a)(x - a)$$
  - **D3 Visualization:** Curve with tangent line
    - Show f(x) and its tangent line at point a
    - Highlight the approximation region
  - Caption: "The tangent line is a good approximation for small steps"

### Slide 4: Euler's Insight
- **Type:** `slide-visual`
- **Section:** The Idea
- **Content:**
  - Title: "Walking Through the Slope Field"
  - **D3 Visualization:** Slope field with Euler step animation
    - Show slope field for dy/dx = f(x, y)
    - Mark initial point (x₀, y₀)
    - Draw tangent line segment
    - Step to new point following the tangent
    - Repeat process
  - Key idea: "At each point, follow the local tangent line for a small step"
- **Visualization Details:**
  - Animate the stepping process
  - Show slope mark at each point
  - Draw line segment representing the step

### Slide 5: The Euler Step
- **Type:** `slide-visual`
- **Section:** The Method
- **Content:**
  - Title: "One Euler Step"
  - **D3 Visualization:** Detailed single step
    - Point (xₙ, yₙ) marked
    - Slope calculated: m = f(xₙ, yₙ)
    - Step shown: move h in x-direction
    - New point (xₙ₊₁, yₙ₊₁) marked
  - Formulas:
    - "Step size: h"
    - "Slope at current point: f(xₙ, yₙ)"
    - "Change in y: Δy ≈ f(xₙ, yₙ) · h"
  - Caption: "The tangent line predicts where we land"

### Slide 6: The Euler Iteration Formulas
- **Type:** `slide-two-part`
- **Section:** The Method
- **Content:**
  - **Primary:** Formula box with orange border
    - $$x_{n+1} = x_n + h$$
    - $$y_{n+1} = y_n + h \cdot f(x_n, y_n)$$
  - **Secondary:**
    - "New x = old x + step size"
    - "New y = old y + (step size) × (slope at current point)"

### Slide 7: Critical Point
- **Type:** `slide-statement`
- **Section:** The Method
- **Content:**
  - Statement: "Calculate the slope at the CURRENT point (xₙ, yₙ), then use it to step to the NEXT point."
  - Secondary: "Don't use the slope at the new point - that's what makes this Euler's method."
- **Notes:** This is the most common error - emphasize strongly.

### Slide 8: Organizing Your Work
- **Type:** `slide-visual`
- **Section:** The Method
- **Content:**
  - Title: "The Euler Table"
  - **D3 Visualization:** Interactive table template
    - | n | xₙ | yₙ | f(xₙ, yₙ) | yₙ₊₁ = yₙ + h·f |
    - | 0 | x₀ | y₀ | compute | compute |
    - | 1 | x₀+h | y₁ | compute | compute |
    - | ... | ... | ... | ... | ... |
  - Caption: "Always organize work in a table - this earns partial credit on the AP exam!"

### Slide 9: Worked Example Setup
- **Type:** `slide-visual`
- **Section:** Worked Example
- **Content:**
  - Title: "Example: dy/dx = x + y"
  - Problem box:
    - "Initial condition: y(0) = 1"
    - "Step size: h = 0.25"
    - "Find: y(1)"
  - Setup:
    - "f(x, y) = x + y"
    - "Starting point: (0, 1)"
    - "Number of steps: 4 (from x = 0 to x = 1 with h = 0.25)"

### Slide 10: Worked Example - Step 0
- **Type:** `slide-visual`
- **Section:** Worked Example
- **Content:**
  - Title: "Step 0: Starting Point"
  - **D3 Visualization:** Table with first row highlighted
    - | n | xₙ | yₙ | f(xₙ, yₙ) = xₙ + yₙ | yₙ₊₁ = yₙ + 0.25·f |
    - | 0 | 0 | 1 | 0 + 1 = 1 | 1 + 0.25(1) = 1.25 |
  - Visualization: Slope field with point (0, 1) and arrow to (0.25, 1.25)
- **Visualization Details:**
  - Highlight current row in table
  - Animate the calculation process
  - Show the step on the slope field

### Slide 11: Worked Example - Step 1
- **Type:** `slide-visual`
- **Section:** Worked Example
- **Content:**
  - Title: "Step 1"
  - **D3 Visualization:** Table with second row highlighted
    - | n | xₙ | yₙ | f(xₙ, yₙ) | yₙ₊₁ |
    - | 0 | 0 | 1 | 1 | 1.25 |
    - | 1 | 0.25 | 1.25 | 0.25 + 1.25 = 1.5 | 1.25 + 0.25(1.5) = 1.625 |
  - Visualization: Add second step to the slope field

### Slide 12: Worked Example - Steps 2 and 3
- **Type:** `slide-visual`
- **Section:** Worked Example
- **Content:**
  - Title: "Steps 2 and 3"
  - **D3 Visualization:** Complete table
    - | n | xₙ | yₙ | f(xₙ, yₙ) | yₙ₊₁ |
    - | 0 | 0 | 1 | 1 | 1.25 |
    - | 1 | 0.25 | 1.25 | 1.5 | 1.625 |
    - | 2 | 0.50 | 1.625 | 2.125 | ≈ 2.156 |
    - | 3 | 0.75 | 2.156 | 2.906 | ≈ 2.883 |
    - | 4 | 1.00 | **2.883** | — | — |
  - Visualization: Complete Euler approximation path on slope field

### Slide 13: The Answer
- **Type:** `slide-visual`
- **Section:** Worked Example
- **Content:**
  - Title: "Euler's Approximation"
  - **D3 Visualization:** Complete path with answer highlighted
    - Show all 4 steps on slope field
    - End point clearly marked
  - Result box: "y(1) ≈ 2.883"
  - Caption: "Using Euler's method with h = 0.25"
- **Notes:** Emphasize "approximately" - this is an approximation, not exact.

### Slide 14: How Accurate Is This?
- **Type:** `slide-visual`
- **Section:** Accuracy
- **Content:**
  - Title: "Comparing with the Exact Solution"
  - Information:
    - "This equation (dy/dx = x + y) actually HAS an exact solution:"
    - $$y = 2e^x - x - 1$$
    - "Exact value: y(1) = 2e - 2 ≈ 3.437"
  - Comparison:
    - "Euler (h = 0.25): 2.883"
    - "Exact: 3.437"
    - "Error: about 16%"
  - **D3 Visualization:** Euler path vs exact solution curve

### Slide 15: The Step Size Effect
- **Type:** `slide-visual`
- **Section:** Accuracy
- **Content:**
  - Title: "Smaller Steps = Better Accuracy"
  - **D3 Visualization:** Comparison of different step sizes
    - h = 0.5 (2 steps): y(1) ≈ 2.500
    - h = 0.25 (4 steps): y(1) ≈ 2.883
    - h = 0.1 (10 steps): y(1) ≈ 3.187
    - h = 0.01 (100 steps): y(1) ≈ 3.410
    - Exact: 3.437
  - Visual: All approximations overlaid on exact solution
  - Caption: "More steps = closer to the truth"
- **Visualization Details:**
  - Color-code each approximation
  - Show exact solution as smooth curve
  - Animate appearance of each approximation

### Slide 16: Why Smaller Steps Work
- **Type:** `slide-visual`
- **Section:** Accuracy
- **Content:**
  - Title: "Why Does Step Size Matter?"
  - **D3 Visualization:** Zoom in on one step
    - Show tangent line vs actual curve
    - Gap grows as you move away from the point
  - Explanation:
    - "The tangent line is only a good approximation NEAR the point"
    - "Big steps take us far from where the approximation is valid"
    - "Small steps keep us close to the true solution"
  - Caption: "Each step introduces error; smaller steps = smaller errors"

### Slide 17: Error Accumulation
- **Type:** `slide-visual`
- **Section:** Accuracy
- **Content:**
  - Title: "Errors Compound"
  - **D3 Visualization:** Error growth animation
    - Show small error at step 1
    - Error grows at step 2 (building on step 1's error)
    - Error continues to grow
  - Key insight:
    - "Each step introduces new error"
    - "Each step also carries forward previous errors"
    - "Total error grows over many steps"
  - Caption: "This is why Euler's method is only good for short intervals"

### Slide 18: The Tradeoff
- **Type:** `slide-comparison`
- **Section:** Accuracy
- **Content:**
  - Title: "Accuracy vs. Computation"
  - Column 1: Large Step Size (h = 0.5)
    - "Fewer calculations"
    - "Faster to compute"
    - "Less accurate"
  - Column 2: Small Step Size (h = 0.01)
    - "Many calculations"
    - "Slower to compute"
    - "More accurate"
  - Bottom note: "On the AP exam, step size is given - don't worry about choosing it"

### Slide 19: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Quick Computation"
  - Problem: "dy/dx = 2x, y(0) = 1. Find y(1) with h = 0.5."
  - Setup:
    - "f(x, y) = 2x (note: slope depends only on x)"
    - "2 steps needed"
  - Table template provided
  - Time: "3 minutes"

### Slide 20: Practice Problem 1 Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: dy/dx = 2x"
  - Complete table:
    - | n | xₙ | yₙ | f(xₙ, yₙ) = 2xₙ | yₙ₊₁ |
    - | 0 | 0 | 1 | 0 | 1 |
    - | 1 | 0.5 | 1 | 1 | 1.5 |
    - | 2 | 1.0 | **1.5** | — | — |
  - Answer: "y(1) ≈ 1.5"
  - Check: "Exact solution: y = x² + 1, so y(1) = 2"
  - Caption: "Euler underestimates because the curve is concave up"

### Slide 21: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "AP-Style Problem"
  - Problem: "dy/dx = y with y(0) = 1 and h = 0.1"
  - Tasks:
    - "Set up the first 4 rows of the Euler table"
    - "Approximate y(0.3)"
  - Time: "4 minutes"

### Slide 22: Practice Problem 2 Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: dy/dx = y"
  - Complete table:
    - | n | xₙ | yₙ | f(xₙ, yₙ) = yₙ | yₙ₊₁ |
    - | 0 | 0 | 1 | 1 | 1.1 |
    - | 1 | 0.1 | 1.1 | 1.1 | 1.21 |
    - | 2 | 0.2 | 1.21 | 1.21 | 1.331 |
    - | 3 | 0.3 | **1.331** | — | — |
  - Answer: "y(0.3) ≈ 1.331"
  - Check: "Exact: y = eˣ, so y(0.3) = e^{0.3} ≈ 1.350"

### Slide 23: AP Exam Tips
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "AP Exam: Euler's Method"
  - List:
    - "Always organize work in a clear table"
    - "Show ALL intermediate calculations"
    - "Use the slope at the CURRENT point (not the new point)"
    - "Say 'approximately' - these are estimates"
    - "Calculator is allowed - but show your process"
    - "Even with arithmetic errors, correct method earns points"

### Slide 24: Common Mistakes to Avoid
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Don't Make These Errors"
  - List:
    - "Using the slope at the NEW point instead of current point"
    - "Forgetting to add h to x at each step"
    - "Arithmetic errors (use calculator carefully)"
    - "Not showing enough work for partial credit"
    - "Treating the approximation as exact"

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Euler's method is repeated tangent line approximation"
    - "xₙ₊₁ = xₙ + h and yₙ₊₁ = yₙ + h·f(xₙ, yₙ)"
    - "Organize work in a table for clarity"
    - "Smaller step size = more accurate (but more work)"
    - "Euler gives approximations, not exact answers"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Complete a 4-step Euler table for:"
  - "dy/dx = -y, y(0) = 4, h = 0.5"
  - "Find y(2)."
  - Table template provided

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Separation of Variables"
  - Secondary: "When we CAN find exact solutions, how do we do it?"

---

## D3 Visualization Specifications

### Visualization 1: Euler Step Animator (Slides 4, 5, 10-13)

```javascript
// Animated Euler step visualization
// Features:
// - Slope field background
// - Animated stepping process
// - Tangent line segment at each step
// - Point markers for each (xₙ, yₙ)
// - Optional: synchronized table highlighting

// Algorithm:
// 1. Draw slope field
// 2. Mark initial point
// 3. Calculate slope, draw tangent segment
// 4. Animate movement to new point
// 5. Repeat

// Color scheme:
// - Slope field: light gray marks
// - Euler path: orange (#ea580c)
// - Current point: orange dot with glow
// - Previous points: orange dots (smaller)

// Animation timing:
// - 800ms per step
// - 400ms pause between steps

// Font sizes: 1.25rem for all labels
```

### Visualization 2: Step Size Comparison (Slide 15)

```javascript
// Multiple Euler approximations with different h values
// Features:
// - Exact solution curve (if known)
// - Multiple Euler paths (h = 0.5, 0.25, 0.1)
// - Color-coded paths
// - Legend with step sizes
// - Final value annotations

// Layout:
// - Single coordinate system
// - Overlay all paths
// - Animate appearance sequentially

// Color scheme:
// - Exact solution: dark blue (dashed)
// - h = 0.5: red
// - h = 0.25: orange
// - h = 0.1: green

// Font sizes: 1.25rem for legend and annotations
```

### Visualization 3: Error Growth (Slides 16, 17)

```javascript
// Visualization of error accumulation
// Features:
// - Exact curve
// - Euler approximation
// - Shaded error region between them
// - Error markers at each step
// - Growing error annotation

// Animation:
// - Show curve and approximation together
// - Highlight error at each step
// - Show error region growing

// Color scheme:
// - Exact: blue
// - Euler: orange
// - Error region: light red with transparency

// Font sizes: 1.25rem for error labels
```

### Visualization 4: Interactive Euler Table (Slides 8, 10-13)

```javascript
// Synchronized table and graph
// Features:
// - Euler table with columns: n, xₙ, yₙ, f(xₙ, yₙ), yₙ₊₁
// - Graph with slope field and path
// - Highlighting of current row
// - Step-by-step reveal

// Synchronization:
// - Highlight row when that step is shown on graph
// - Fill in calculations as they appear
// - Show running total

// Layout:
// - Table on left (or top)
// - Graph on right (or bottom)
// - Clear visual connection

// Font sizes:
// - Table headers: 1.25rem
// - Table cells: 1.25rem
// - Graph labels: 1.25rem
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-7-diffeq: #ea580c` for accents
- Euler path should be drawn as connected line segments (not smooth curve)
- Step animations should be clear and not too fast (800ms per step)
- Table calculations should be shown step by step
- Minimum font size 1.25rem for all D3 text elements
- Support keyboard navigation (arrow keys, T for TOC)
- Consider adding "play/pause" controls for animations
