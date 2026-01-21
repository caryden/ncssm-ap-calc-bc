# Presentation Spec: Average Value and Accumulation Functions

## Class 44 | Unit 8: Applications of Integration
## CED Topics 8.1, 8.3

---

## Overview

This presentation introduces two powerful applications of definite integrals: finding the average value of a function over an interval and using accumulation functions to model real-world contexts. Key visualizations include the equal-area rectangle that demonstrates average value geometrically and an interactive accumulation function explorer that shows how F(x) = integral from a to x of f(t)dt tracks running totals.

**Theme Color:** `#e11d48` (Unit 8 Rose)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 8: Applications of Integration"
  - Title: "Average Value & Accumulation"
  - Subtitle: "From Totals to Averages, From Rates to Accumulation"
  - Meta: "Class 44 | CED 8.1, 8.3 | NCSSM"

### Slide 1: The Big Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "A car's velocity varies as v(t) = 60 - 10sin(t) mph. What was the *average* velocity over a 2-hour trip?"
- **Notes:** Students may guess 60 mph (the constant term), but the oscillation affects the answer

### Slide 2: Discrete vs. Continuous Averages
- **Type:** `slide-comparison`
- **Section:** From Discrete to Continuous
- **Content:**
  - Title: "Two Types of Averages"
  - Column 1: Discrete Average
    - Header: "Finite Set of Values"
    - Formula: $$\bar{y} = \frac{y_1 + y_2 + \cdots + y_n}{n}$$
    - "Sum the values, divide by count"
  - Column 2: Continuous Average
    - Header: "Infinitely Many Values"
    - Formula: "???"
    - "How do we average a continuous function?"

### Slide 3: Building the Continuous Average
- **Type:** `slide-visual`
- **Section:** From Discrete to Continuous
- **Content:**
  - Title: "From Sum to Integral"
  - **D3 Visualization:** Show function with n sample points
    - Display: Average = [f(x₁) + f(x₂) + ... + f(xₙ)] / n
    - Slider to increase n
    - As n → ∞, the sum becomes an integral
  - Caption: "Sample at more points → Riemann sum → Integral"
- **Visualization Details:**
  - Show f(x) = x² on [0, 2]
  - Display sampled points as dots
  - Show average value converging as n increases

### Slide 4: The Average Value Formula
- **Type:** `slide-two-part`
- **Section:** Average Value Definition
- **Content:**
  - Title: "Average Value of a Function"
  - Primary (Definition box with rose border):
    - $$f_{avg} = \frac{1}{b-a} \int_a^b f(x)\,dx$$
  - Secondary:
    - "The integral gives the total accumulation"
    - "Dividing by (b - a) gives the average rate"
    - "Think: Total / Interval Length = Average"

### Slide 5: Geometric Interpretation
- **Type:** `slide-visual`
- **Section:** Average Value Definition
- **Content:**
  - Title: "The Equal-Area Rectangle"
  - **D3 Visualization:** Interactive equal-area demonstration
    - Show curve f(x) with shaded area under it
    - Draw horizontal line at height y
    - Show rectangle with height y, width (b-a)
    - When rectangle area = integral, highlight match
  - Caption: "The average value is the height of a rectangle with the same area as the region under the curve"
- **Visualization Details:**
  - Function: f(x) = x² on [0, 3]
  - Slider to adjust horizontal line height
  - Display: "Rectangle area = [y × 3]" and "Integral = 9"
  - Visual indicator when areas match (f_avg = 3)

### Slide 6: Why Equal Area Works
- **Type:** `slide-visual`
- **Section:** Average Value Definition
- **Content:**
  - Title: "Balancing Excess and Deficit"
  - Diagram showing:
    - Curve with horizontal line at f_avg
    - Area above the line (excess) shaded in one color
    - Area below the line (deficit) shaded in another color
  - Key insight: "The excess above f_avg exactly fills the deficit below"
  - Caption: "The average 'levels out' the function"

### Slide 7: Mean Value Theorem for Integrals
- **Type:** `slide-two-part`
- **Section:** Average Value Definition
- **Content:**
  - Title: "The MVT for Integrals"
  - Primary (Theorem box):
    - "If f is continuous on [a, b], there exists c in [a, b] such that:"
    - $$f(c) = f_{avg} = \frac{1}{b-a} \int_a^b f(x)\,dx$$
  - Secondary:
    - "The function actually *achieves* its average value somewhere!"
    - "For f(x) = x² on [0, 3]: f_avg = 3, achieved at c = √3 ≈ 1.73"

### Slide 8: Example - Average of Sine
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Average Value of sin(x)"
  - Problem box: "Find the average value of f(x) = sin(x) on [0, π]"
  - Step 1: Set up the formula
  - Math: $$f_{avg} = \frac{1}{\pi - 0} \int_0^\pi \sin(x)\,dx$$

### Slide 9: Example - Average of Sine (Continued)
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Average Value of sin(x) (completed)"
  - Step 2: Evaluate the integral
  - Math: $$= \frac{1}{\pi}\left[-\cos(x)\right]_0^\pi = \frac{1}{\pi}\left[-(-1) - (-1)\right] = \frac{2}{\pi}$$
  - Result box: $$f_{avg} = \frac{2}{\pi} \approx 0.637$$
  - Caption: "If you replaced the sine curve with a horizontal line at height 2/π, you'd get the same total area"

### Slide 10: Transition to Accumulation
- **Type:** `slide-statement`
- **Section:** Accumulation Functions
- **Content:**
  - Statement: "What if we want to track how much *accumulates* as we move along the interval?"
  - Secondary: "Enter: The Accumulation Function"

### Slide 11: Accumulation Function Definition
- **Type:** `slide-two-part`
- **Section:** Accumulation Functions
- **Content:**
  - Title: "The Accumulation Function"
  - Primary (Definition box):
    - $$F(x) = \int_a^x f(t)\,dt$$
  - Secondary:
    - "F(x) tells us: How much has accumulated from a to x?"
    - "The upper limit varies - it's a function of x"
    - "The dummy variable t reminds us it's not x"

### Slide 12: Accumulation Function Visualized
- **Type:** `slide-visual`
- **Section:** Accumulation Functions
- **Content:**
  - Title: "Tracking Accumulation"
  - **D3 Visualization:** Dual-panel accumulation explorer
    - Top panel: f(t) with shaded area from a to x
    - Bottom panel: F(x) plotted as a curve
    - Moveable vertical line at position x
  - Caption: "As x increases, the accumulated area grows. F(x) tracks this running total."
- **Visualization Details:**
  - Use f(t) = t² with a = 0
  - Show shaded region updating as x moves
  - Plot F(x) = x³/3 on bottom panel
  - Display: "F(x) = [current value]"

### Slide 13: FTC Connection
- **Type:** `slide-two-part`
- **Section:** Accumulation Functions
- **Content:**
  - Title: "The FTC Connection"
  - Primary:
    - "If F(x) = ∫ₐˣ f(t)dt, then:"
    - $$F'(x) = f(x)$$
  - Secondary:
    - "The derivative of the accumulation function is the original function"
    - "The *rate* of accumulation equals the integrand"
    - "This is the First Fundamental Theorem of Calculus!"

### Slide 14: Example - Distance from Velocity
- **Type:** `slide-example`
- **Section:** Applied Contexts
- **Content:**
  - Title: "Example: Distance from Velocity"
  - Context: "Given velocity v(t) = 3t² (m/s)"
  - Problem: "Write the accumulation function for distance from t = 0"
  - Solution:
    - $$D(x) = \int_0^x 3t^2\,dt = \left[t^3\right]_0^x = x^3$$
  - Interpretation:
    - "D(2) = 8 meters: after 2 seconds, traveled 8 meters"
    - "D'(x) = 3x² = v(x): rate of distance = velocity ✓"

### Slide 15: Example - Total Cost from Marginal Cost
- **Type:** `slide-example`
- **Section:** Applied Contexts
- **Content:**
  - Title: "Example: Total Cost from Marginal Cost"
  - Context: "Marginal cost C'(x) = 10 + 0.1x ($/item)"
  - Problem: "Find total variable cost for producing x items"
  - Solution:
    - $$C(x) = \int_0^x (10 + 0.1t)\,dt = 10x + 0.05x^2$$
  - Interpretation:
    - "C(100) = $1500: variable cost for 100 items"
    - "Verify: C'(x) = 10 + 0.1x ✓"

### Slide 16: Chain Rule with Accumulation
- **Type:** `slide-two-part`
- **Section:** FTC with Chain Rule
- **Content:**
  - Title: "When the Upper Limit is a Function"
  - Primary:
    - "If F(x) = ∫ₐ^{g(x)} f(t)dt, then by chain rule:"
    - $$F'(x) = f(g(x)) \cdot g'(x)$$
  - Secondary:
    - "The upper bound g(x) requires the chain rule"
    - "Evaluate f at g(x), then multiply by g'(x)"

### Slide 17: Example - FTC with Chain Rule
- **Type:** `slide-example`
- **Section:** FTC with Chain Rule
- **Content:**
  - Title: "Example: Composed Upper Limit"
  - Problem: "If F(x) = ∫₂^{x²} √(1 + t³) dt, find F'(x)"
  - Solution:
    - "Let g(x) = x², so g'(x) = 2x"
    - "f(t) = √(1 + t³)"
    - $$F'(x) = \sqrt{1 + (x^2)^3} \cdot 2x = 2x\sqrt{1 + x^6}$$
  - Caption: "Don't forget the chain rule factor!"

### Slide 18: Practice - Average Value
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Average Temperature"
  - Problem: "Temperature varies as T(t) = 70 + 20sin(πt/12) degrees over 24 hours (t in hours). Find the average temperature."
  - Hint: "Set up the integral, evaluate carefully"
  - Time: "3 minutes"

### Slide 19: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Average Temperature"
  - Setup: $$T_{avg} = \frac{1}{24} \int_0^{24} \left[70 + 20\sin\left(\frac{\pi t}{12}\right)\right]dt$$
  - Evaluation: $$= \frac{1}{24}\left[70t - \frac{240}{\pi}\cos\left(\frac{\pi t}{12}\right)\right]_0^{24}$$
  - Result: $$= \frac{1}{24}(1680 - 0) = 70°$$
  - Insight: "The oscillation averages out! The average equals the constant term."

### Slide 20: Practice - FTC Application
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: FTC Application"
  - Problem: "If F(x) = ∫₁^{x³} cos(t²) dt, find F'(2)"
  - Hint: "Apply chain rule: F'(x) = f(g(x)) · g'(x)"
  - Time: "2 minutes"

### Slide 21: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: F'(2)"
  - Steps:
    - "g(x) = x³, so g'(x) = 3x²"
    - "f(t) = cos(t²), so f(g(x)) = cos((x³)²) = cos(x⁶)"
    - $$F'(x) = \cos(x^6) \cdot 3x^2$$
    - $$F'(2) = \cos(64) \cdot 12 = 12\cos(64)$$
  - Note: "cos(64) ≈ 0.39, so F'(2) ≈ 4.68"

### Slide 22: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Average value: f_avg = (1/(b-a)) · ∫ₐᵇ f(x)dx"
    - "Geometric meaning: Height of equal-area rectangle"
    - "MVT for Integrals: f achieves its average somewhere on [a, b]"
    - "Accumulation function: F(x) = ∫ₐˣ f(t)dt tracks running total"
    - "FTC: F'(x) = f(x) — rate of accumulation equals integrand"
    - "Chain rule: If upper limit is g(x), multiply by g'(x)"

### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Find the average value of f(x) = x³ on [0, 2]"
  - Space for student work
  - Expected answer: f_avg = (1/2) · [x⁴/4]₀² = (1/2)(4) = 2

### Slide 24: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Area Between Curves"
  - Secondary: "We'll extend our slicing idea to find the area enclosed between two functions."

---

## D3 Visualization Specifications

### Visualization 1: Discrete-to-Continuous Average (Slide 3)

```javascript
// Interactive visualization showing average converging
// Features:
// - Function f(x) = x² on [0, 2]
// - Slider controls number of sample points n (5, 10, 25, 50, 100)
// - Points displayed on curve
// - Average value computed and displayed
// - As n increases, average approaches 4/3

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Sample points: var(--theme-color) #e11d48
// - Average line: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Equal-Area Rectangle Explorer (Slide 5)

```javascript
// Interactive visualization demonstrating average value geometrically
// Features:
// - Function f(x) = x² on [0, 3]
// - Shaded area under curve
// - Horizontal line at adjustable height y
// - Rectangle showing area = y × 3
// - Highlight when rectangle area = integral (y = 3)

// Interaction:
// - Slider to adjust y from 0 to max(f)
// - Display: "Integral = 9" and "Rectangle = [y × 3]"
// - Visual celebration when areas match

// Color scheme:
// - Curve fill: var(--theme-color) with 0.3 opacity
// - Rectangle: var(--color-highlight) #fbbf24 with 0.3 opacity
// - Match indicator: green glow

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 3: Accumulation Function Explorer (Slide 12)

```javascript
// Dual-panel visualization showing accumulation
// Features:
// - Top panel: f(t) = t² with shaded area from 0 to x
// - Bottom panel: F(x) = x³/3 plotted
// - Vertical line at position x (draggable)
// - Point on F(x) curve corresponding to accumulated area

// Interaction:
// - Drag vertical line to change x
// - Shaded area updates in real-time
// - Point on F(x) moves correspondingly
// - Display: "x = [value]", "F(x) = [value]"

// Color scheme:
// - f(t) curve: var(--color-function) #60a5fa
// - F(x) curve: var(--theme-color) #e11d48
// - Shaded area: var(--color-function) with 0.3 opacity
// - Vertical line: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-8-int-apps: #e11d48` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Include smooth transitions for slider interactions (300ms ease)
- Ensure visualizations work on both classroom displays and Zoom stream
