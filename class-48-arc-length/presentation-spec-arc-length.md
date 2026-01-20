# Presentation Spec: Arc Length of Smooth Planar Curves (BC)

## Class 48 | Unit 8: Applications of Integration
## CED Topic 8.13

---

## Overview

This BC-only presentation introduces the arc length formula, derived from the Pythagorean theorem applied to infinitesimal curve segments. Students will understand that arc length is computed by summing the lengths of infinitely many tiny line segments that approximate the curve. The lesson emphasizes both the conceptual derivation and practical computation, noting that many arc length integrals cannot be evaluated by elementary methods and require numerical approximation. The key skill is correct setup, which is the primary AP exam focus.

**Theme Color:** `#e11d48` (Unit 8 Rose)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 8: Applications of Integration"
  - Title: "Arc Length"
  - Subtitle: "Measuring the Length of Curves"
  - Meta: "Class 48 | CED 8.13 | BC Only | NCSSM"

### Slide 1: The Winding Road
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "How Far Do You Actually Travel?"
  - Image/illustration of a winding mountain road
  - Question: "If you drive along this curvy road, how far do you actually go?"
  - Key insight: "The curved distance is longer than 'as the crow flies'"
- **Notes:** Physical motivation for the concept

### Slide 2: The Challenge
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "To measure a curve's length, we break it into infinitely many tiny pieces, each approximately a straight line."
  - Secondary: "The Pythagorean theorem will do the heavy lifting."

### Slide 3: Polygonal Approximation
- **Type:** `slide-visual`
- **Section:** Derivation
- **Content:**
  - Title: "Approximating with Line Segments"
  - **D3 Visualization:** Curve with adjustable number of segments
    - Show smooth curve y = f(x) on [a, b]
    - Overlay polygonal approximation with n segments
    - Slider to increase n from 4 to 50
    - Display: "n = [value], Approximate length = [sum]"
  - Caption: "More segments → better approximation → exact length in the limit"

### Slide 4: One Tiny Segment
- **Type:** `slide-visual`
- **Section:** Derivation
- **Content:**
  - Title: "The Length of One Tiny Piece"
  - **D3 Visualization:** Zoomed-in segment with Pythagorean triangle
    - Small section of curve
    - Right triangle with legs Δx and Δy, hypotenuse = segment length
    - Labels: horizontal = Δx, vertical = Δy
    - Hypotenuse: √((Δx)² + (Δy)²)
  - Caption: "Pythagorean theorem: segment length = √((Δx)² + (Δy)²)"

### Slide 5: The Key Algebraic Step
- **Type:** `slide-two-part`
- **Section:** Derivation
- **Content:**
  - Title: "Factor Out Δx"
  - Primary:
    - $$\sqrt{(\Delta x)^2 + (\Delta y)^2} = \sqrt{1 + \left(\frac{\Delta y}{\Delta x}\right)^2} \cdot \Delta x$$
  - Secondary:
    - "By the Mean Value Theorem, there exists cᵢ such that:"
    - $$\frac{\Delta y}{\Delta x} = f'(c_i)$$
    - "So segment length = √(1 + [f'(cᵢ)]²) · Δx"

### Slide 6: From Sum to Integral
- **Type:** `slide-two-part`
- **Section:** Derivation
- **Content:**
  - Title: "Taking the Limit"
  - Primary:
    - "Total length ≈ Σ √(1 + [f'(cᵢ)]²) · Δx"
    - "This is a Riemann sum!"
    - "As n → ∞:"
    - $$L = \int_a^b \sqrt{1 + [f'(x)]^2}\,dx$$
  - Secondary:
    - "The integrand √(1 + [f'(x)]²) accounts for the 'steepness' of the curve"
    - "Steeper curves have larger arc length"

### Slide 7: The Arc Length Formula
- **Type:** `slide-two-part`
- **Section:** The Formula
- **Content:**
  - Title: "Arc Length Formula"
  - Primary (Formula box with rose border):
    - "For y = f(x) from x = a to x = b:"
    - $$L = \int_a^b \sqrt{1 + \left(\frac{dy}{dx}\right)^2}\,dx$$
  - Secondary:
    - "Alternate form when x = g(y):"
    - $$L = \int_c^d \sqrt{1 + \left(\frac{dx}{dy}\right)^2}\,dy$$

### Slide 8: The ds Notation
- **Type:** `slide-two-part`
- **Section:** The Formula
- **Content:**
  - Title: "The Infinitesimal Arc Element"
  - Primary:
    - "Some textbooks write:"
    - $$ds = \sqrt{dx^2 + dy^2}$$
    - "So: L = ∫ds"
  - Secondary:
    - "This emphasizes the geometric interpretation:"
    - "We're summing infinitely many tiny arc lengths"
    - "Each tiny piece has length ds"

### Slide 9: Why Arc Length ≥ Horizontal Distance
- **Type:** `slide-visual`
- **Section:** The Formula
- **Content:**
  - Title: "Arc Length vs. Straight-Line Distance"
  - Visual comparison:
    - Curve from a to b
    - Straight horizontal line below
    - Arc length clearly longer
  - Math: "Since √(1 + [f']²) ≥ √1 = 1, we have L ≥ |b - a|"
  - Caption: "A curve is always at least as long as the horizontal distance it spans"

### Slide 10: Example 1 - A "Nice" Integral
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: A Nice Arc Length"
  - Problem: "Find the arc length of y = (1/3)(x² + 2)^(3/2) from x = 0 to x = 3"
  - Step 1: Find the derivative
    - $$f'(x) = \frac{1}{3} \cdot \frac{3}{2}(x^2+2)^{1/2} \cdot 2x = x\sqrt{x^2+2}$$

### Slide 11: Example 1 - Simplification
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 1 (continued)"
  - Step 2: Compute 1 + [f'(x)]²
    - "[f'(x)]² = x²(x² + 2) = x⁴ + 2x²"
    - "1 + [f'(x)]² = 1 + x⁴ + 2x² = x⁴ + 2x² + 1 = (x² + 1)²"
  - Step 3: Take the square root
    - "√(1 + [f'(x)]²) = √((x² + 1)²) = x² + 1"
  - Key insight: "It's a perfect square! The integral simplifies nicely."

### Slide 12: Example 1 - Evaluation
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example 1 (completed)"
  - Step 4: Integrate
    - $$L = \int_0^3 (x^2 + 1)\,dx = \left[\frac{x^3}{3} + x\right]_0^3$$
    - $$= (9 + 3) - 0 = 12$$
  - Result box: L = 12 units
  - Note: "This function was constructed so 1 + (f')² is a perfect square!"

### Slide 13: Example 2 - The dy Form
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Using the dy Form"
  - Problem: "Find the arc length of x = (1/3)y³ from y = 0 to y = 2"
  - Solution:
    - "Here x is given as a function of y, so use the dy form"
    - "dx/dy = y²"
    - "√(1 + (dx/dy)²) = √(1 + y⁴)"
    - $$L = \int_0^2 \sqrt{1 + y^4}\,dy$$
  - Issue: "This integral has NO elementary antiderivative!"

### Slide 14: Example 2 - Numerical Evaluation
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "When Exact Evaluation Isn't Possible"
  - Problem continued: "L = ∫₀² √(1 + y⁴) dy"
  - Calculator result: "L ≈ 3.26"
  - **Visual:** Graph showing the curve with arc length marked
  - Takeaway: "Many (most!) arc length integrals require numerical methods. The formula is exact; evaluation may not be."

### Slide 15: Example 3 - Calculator Required
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Arc Length of sine"
  - Problem: "Find the arc length of y = sin(x) from x = 0 to x = π"
  - Setup:
    - "f'(x) = cos(x)"
    - "√(1 + cos²(x))"
    - $$L = \int_0^\pi \sqrt{1 + \cos^2(x)}\,dx$$
  - Result: "This is an elliptic integral - no elementary form!"
  - Calculator: "L ≈ 3.820"
  - Comparison: "Horizontal distance = π ≈ 3.14. Sine wave is about 22% longer!"

### Slide 16: What Makes an Integral "Nice"?
- **Type:** `slide-two-part`
- **Section:** Pattern Recognition
- **Content:**
  - Title: "When Does the Integral Simplify?"
  - Primary:
    - "The integral is 'nice' when 1 + [f'(x)]² is a perfect square"
    - "Then √(perfect square) = polynomial or simple function"
    - "Example: 1 + x⁴ + 2x² = (x² + 1)² ✓"
  - Secondary:
    - "Functions are often 'designed' to have nice arc length integrals"
    - "On AP exam: if they want exact evaluation, they'll give you a nice function"
    - "Otherwise: set up correctly and use calculator"

### Slide 17: Another Nice Example
- **Type:** `slide-example`
- **Section:** Pattern Recognition
- **Content:**
  - Title: "Example: Recognizing Perfect Squares"
  - Problem: "Find arc length of y = (x²)/2 - (1/4)ln(x) from x = 1 to x = e"
  - Steps:
    - "f'(x) = x - 1/(4x)"
    - "[f'(x)]² = x² - 1/2 + 1/(16x²)"
    - "1 + [f'(x)]² = x² + 1/2 + 1/(16x²) = (x + 1/(4x))²"
    - "√(...) = x + 1/(4x)"
  - Setup: "L = ∫₁ᵉ (x + 1/(4x)) dx"

### Slide 18: Nice Example - Evaluation
- **Type:** `slide-example`
- **Section:** Pattern Recognition
- **Content:**
  - Title: "Example (completed)"
  - Evaluation:
    - $$L = \int_1^e \left(x + \frac{1}{4x}\right)\,dx$$
    - $$= \left[\frac{x^2}{2} + \frac{1}{4}\ln(x)\right]_1^e$$
    - $$= \left(\frac{e^2}{2} + \frac{1}{4}\right) - \left(\frac{1}{2} + 0\right)$$
    - $$= \frac{e^2}{2} - \frac{1}{4} \approx 3.44$$
  - Result box: L = e²/2 - 1/4 ≈ 3.44 units

### Slide 19: Practice - Setup Only
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Setup"
  - Problem: "Set up (but do not evaluate) the integral for the arc length of y = eˣ from x = 0 to x = 1"
  - Hints:
    - "Find f'(x)"
    - "Write 1 + [f'(x)]²"
    - "Set up the integral"
  - Time: "2 minutes"

### Slide 20: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Steps:
    - "f'(x) = eˣ"
    - "1 + [f'(x)]² = 1 + e^(2x)"
    - Setup: $$L = \int_0^1 \sqrt{1 + e^{2x}}\,dx$$
  - Note: "This requires numerical evaluation: L ≈ 2.00"
  - Observation: "Horizontal distance = 1. Exponential curve is twice as long!"

### Slide 21: Practice - Evaluate
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Full Evaluation"
  - Problem: "Find the arc length of y = (2/3)x^(3/2) from x = 0 to x = 3"
  - Hint: "Check if 1 + [f'(x)]² is a perfect square"
  - Time: "3 minutes"

### Slide 22: Practice Solution - Evaluate
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Steps:
    - "f'(x) = x^(1/2) = √x"
    - "[f'(x)]² = x"
    - "1 + [f'(x)]² = 1 + x"
    - "√(1 + x) - this is already simple!"
    - $$L = \int_0^3 \sqrt{1+x}\,dx = \left[\frac{2}{3}(1+x)^{3/2}\right]_0^3$$
    - $$= \frac{2}{3}(8) - \frac{2}{3}(1) = \frac{14}{3}$$
  - Result box: L = 14/3 ≈ 4.67 units

### Slide 23: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Arc length formula: L = ∫√(1 + (dy/dx)²) dx"
    - "Derived from Pythagorean theorem on infinitesimal segments"
    - "Most arc length integrals require numerical evaluation"
    - "The key AP skill is correct SETUP"
    - "Arc length ≥ horizontal distance (equality only for horizontal curves)"
    - "BC preview: Parametric arc length L = ∫√((dx/dt)² + (dy/dt)²) dt"

### Slide 24: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Set up the arc length integral for y = x³ from x = 0 to x = 2. (Do not evaluate.)"
  - Expected answer: f'(x) = 3x², so L = ∫₀² √(1 + 9x⁴) dx

### Slide 25: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Unit 8 Complete!"
  - Secondary: "Next: Unit 9 - Parametric Equations, Polar Coordinates, and Vector-Valued Functions"
  - Preview: "Arc length will return with parametric and polar curves"

---

## D3 Visualization Specifications

### Visualization 1: Polygonal Approximation (Slide 3)

```javascript
// Interactive visualization showing arc length approximation
// Features:
// - Smooth curve y = sin(x) or y = x² on [0, 2]
// - Overlaid polygonal approximation with n segments
// - Slider to control n (4, 8, 16, 32, 64)
// - Display: "n = [value], L ≈ [sum of segment lengths]"
// - Show convergence to actual arc length

// Animation:
// - Segments update smoothly when n changes
// - Color indicates approximation quality
// - Final value highlighted when n is large

// Color scheme:
// - Actual curve: var(--color-function) #60a5fa
// - Approximation segments: var(--theme-color) #e11d48
// - Convergence indicator: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Pythagorean Triangle Zoom (Slide 4)

```javascript
// Zoomed visualization showing one segment
// Features:
// - Small portion of curve
// - Right triangle with legs Δx, Δy
// - Hypotenuse = segment length
// - Labels with actual values
// - Formula: √((Δx)² + (Δy)²) = [value]

// Visual elements:
// - Curve segment in blue
// - Triangle in rose color
// - Dimension arrows with labels
// - Formula display

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Triangle: var(--theme-color) #e11d48
// - Labels: white on dark background

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 3: Arc Length Comparison (Slide 15)

```javascript
// Visualization comparing arc length to horizontal distance
// Features:
// - Show y = sin(x) from 0 to π
// - Arc length path highlighted
// - Straight horizontal line from (0,0) to (π,0)
// - Display: "Arc = 3.82, Horizontal = 3.14"
// - Percentage difference: "22% longer"

// Visual elements:
// - Curve with length annotation
// - Straight line comparison
// - Numerical comparison box

// Color scheme:
// - Curve: var(--theme-color) #e11d48
// - Straight line: var(--color-secondary) #a78bfa
// - Comparison text: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 4: Perfect Square Pattern Recognition (Slide 16)

```javascript
// Visual showing algebraic simplification
// Features:
// - Animated algebra: 1 + x⁴ + 2x² → (x² + 1)²
// - Highlight perfect square pattern
// - Show: before square root (complex) → after (simple)

// Animation:
// - Terms rearrange to show pattern
// - Factorization appears
// - Square root simplifies
// - Final integrand revealed

// Visual elements:
// - Step-by-step algebraic transformation
// - Color coding for like terms
// - "Perfect square!" celebration

// Color scheme:
// - x⁴ terms: var(--color-function) #60a5fa
// - 2x² term: var(--theme-color) #e11d48
// - constant 1: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.5rem for math expressions
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-8-int-apps: #e11d48` for accents
- Arc length formula should be prominently displayed
- Polygonal approximation visualization is key for understanding
- Ensure slider interactions are smooth (60fps target)
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Include numerical precision in calculator examples (3 decimal places)
- Test visualization on both high-DPI classroom displays and Zoom stream
