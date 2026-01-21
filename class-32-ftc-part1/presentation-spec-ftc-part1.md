# Presentation Spec: Fundamental Theorem of Calculus Part 1

## Class 32 | Unit 6: Integration and Accumulation of Change
## CED Topics 6.4, 6.5

---

## Overview

This landmark presentation reveals one of mathematics' most beautiful results: differentiation and integration are inverse operations. Students discover accumulation functions, understand that the derivative of an accumulated area equals the original function, and learn to apply FTC Part 1 including cases requiring the chain rule. The dual-graph visualization showing f and F simultaneously is central to building conceptual understanding.

**Theme Color:** `#d4a028` (Unit 6 Gold)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 6: Integration and Accumulation of Change"
  - Title: "The Fundamental Theorem of Calculus"
  - Subtitle: "Part 1: Connecting Derivatives and Integrals"
  - Meta: "Class 32 | CED 6.4, 6.5 | NCSSM"

### Slide 1: The Deep Mystery
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "We've learned two seemingly unrelated operations: finding slopes (derivatives) and finding areas (integrals)"
  - Secondary: "Why would these have anything to do with each other?"
- **Notes:** Build suspense for the revelation

### Slide 2: The Surprising Connection
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Today's revelation: These operations are INVERSES of each other!"
  - Secondary: "Differentiation undoes integration. Integration undoes differentiation."
- **Notes:** This is the key insight of calculus

### Slide 3: Building an Accumulation Function
- **Type:** `slide-visual`
- **Section:** Accumulation Functions
- **Content:**
  - Title: "The Accumulation Function"
  - Definition: $$F(x) = \int_a^x f(t)\,dt$$
  - Caption: "F(x) gives the signed area under f from a fixed point a to a variable point x"
- **Notes:** Emphasize x is the variable, t is a dummy variable

### Slide 4: Why Use Different Variables?
- **Type:** `slide-two-part`
- **Section:** Accumulation Functions
- **Content:**
  - Title: "Variable Clarification"
  - Primary: "Inside the integral: t is a 'dummy variable' - it gets integrated out"
  - Secondary: "The result depends on x through the upper bound"
  - Warning: "Never write $\int_a^x f(x)\,dx$ - confusing x with two meanings!"

### Slide 5: F(x) Is a Function of x
- **Type:** `slide-visual`
- **Section:** Accumulation Functions
- **Content:**
  - Title: "The Accumulation Function in Action"
  - **D3 Visualization:** Interactive area accumulator
    - Show f(t) with shaded region from a to x
    - Slider for x position
    - Display F(x) value updating as x changes
  - Caption: "As x moves right, F(x) changes - more area accumulates"

### Slide 6: Physical Interpretation
- **Type:** `slide-comparison`
- **Section:** Accumulation Functions
- **Content:**
  - Title: "Physical Meaning"
  - Column 1: Velocity Example
    - "If v(t) = velocity"
    - "Then $\int_0^x v(t)\,dt$ = position at time x"
    - "Accumulated velocity times time = displacement"
  - Column 2: General
    - "If f(t) = rate of change"
    - "Then $\int_a^x f(t)\,dt$ = accumulated change"

### Slide 7: The Key Question
- **Type:** `slide-statement`
- **Section:** Discovering FTC
- **Content:**
  - Statement: "How fast is F(x) changing? What is F'(x)?"
  - Secondary: "In other words: what's the rate of area accumulation?"
- **Notes:** This leads directly to FTC Part 1

### Slide 8: The Tiny Rectangle Argument
- **Type:** `slide-visual`
- **Section:** Discovering FTC
- **Content:**
  - Title: "When x Increases by dx..."
  - **D3 Visualization:** Zoomed view showing:
    - Original shaded area F(x)
    - Tiny rectangle added at right edge
    - Width: dx, Height: approximately f(x)
    - Additional area: dF = f(x) * dx
  - Caption: "The new area is approximately f(x) times dx"

### Slide 9: The Derivative Emerges
- **Type:** `slide-visual`
- **Section:** Discovering FTC
- **Content:**
  - Title: "Finding F'(x)"
  - Math derivation:
    - "Additional area: $\Delta F \approx f(x) \cdot \Delta x$"
    - "So: $\frac{\Delta F}{\Delta x} \approx f(x)$"
    - "Taking the limit: $F'(x) = \lim_{\Delta x \to 0} \frac{\Delta F}{\Delta x} = f(x)$"
  - Highlighted result: $$F'(x) = f(x)$$

### Slide 10: The Fundamental Theorem Part 1
- **Type:** `slide-visual`
- **Section:** The Theorem
- **Content:**
  - Title: "The Fundamental Theorem of Calculus, Part 1"
  - Gold-bordered definition box:
    - $$\frac{d}{dx}\left[\int_a^x f(t)\,dt\right] = f(x)$$
  - In words: "The derivative of the area function is the original function!"
- **Notes:** This is one of the most important theorems in calculus

### Slide 11: Why This Is Profound
- **Type:** `slide-statement`
- **Section:** The Theorem
- **Content:**
  - Statement: "3Blue1Brown: 'If you want to find an antiderivative of f, look for a function whose derivative is f. The accumulation function is exactly that function.'"
- **Notes:** This explains why antiderivatives matter

### Slide 12: Dual Graph - f and F
- **Type:** `slide-visual`
- **Section:** Connecting f and F
- **Content:**
  - Title: "The Relationship Between f and F"
  - **D3 Visualization:** Dual stacked graphs
    - Bottom: f(t) with shaded area from a to x
    - Top: F(x) = accumulated area function
    - Vertical line at x connecting both
    - Moving x shows both graphs updating
  - Caption: "The slope of F at any point equals the height of f at that point"

### Slide 13: Sign Analysis
- **Type:** `slide-visual`
- **Section:** Connecting f and F
- **Content:**
  - Title: "How f Controls F"
  - Table with visualization support:
    | When f(x)... | F(x)... | Because... |
    |--------------|---------|------------|
    | f(x) > 0 | F is increasing | Adding positive area |
    | f(x) < 0 | F is decreasing | Adding negative area |
    | f(x) = 0 | F has horizontal tangent | Rate of accumulation is zero |
- **Notes:** This mirrors the f and f' relationship

### Slide 14: Critical Points Connection
- **Type:** `slide-visual`
- **Section:** Connecting f and F
- **Content:**
  - Title: "Zeros of f = Critical Points of F"
  - **D3 Visualization:** Show f crossing zero
    - Mark the x-value where f(x) = 0
    - Show corresponding horizontal tangent on F
  - Caption: "Where f changes sign, F has a local extremum"

### Slide 15: Basic FTC Examples
- **Type:** `slide-example`
- **Section:** Applications
- **Content:**
  - Title: "Applying FTC Part 1"
  - Example 1: $$\frac{d}{dx}\left[\int_0^x \cos(t)\,dt\right] = \cos(x)$$
  - Example 2: $$\frac{d}{dx}\left[\int_2^x t^3\,dt\right] = x^3$$
  - Pattern: "Just replace the dummy variable with x!"

### Slide 16: What About the Chain Rule?
- **Type:** `slide-statement`
- **Section:** Chain Rule Extension
- **Content:**
  - Statement: "What if the upper bound isn't just x, but a function of x?"
  - Example: "$\int_a^{x^2} f(t)\,dt$ - how do we differentiate this?"
- **Notes:** Set up the chain rule extension

### Slide 17: FTC with Chain Rule
- **Type:** `slide-visual`
- **Section:** Chain Rule Extension
- **Content:**
  - Title: "FTC Part 1 with Chain Rule"
  - Formula: $$\frac{d}{dx}\left[\int_a^{u(x)} f(t)\,dt\right] = f(u(x)) \cdot u'(x)$$
  - Explanation: "Evaluate f at the upper bound, then multiply by the derivative of the bound"
- **Notes:** This is crucial for AP exam success

### Slide 18: Chain Rule Example 1
- **Type:** `slide-example`
- **Section:** Chain Rule Extension
- **Content:**
  - Title: "Example: Upper Bound is $x^3$"
  - Problem: $$\frac{d}{dx}\left[\int_1^{x^3} \sin(t)\,dt\right]$$
  - Solution:
    - "f(t) = sin(t), u(x) = x^3, u'(x) = 3x^2"
    - "= sin(x^3) * 3x^2"
    - "= 3x^2 sin(x^3)"

### Slide 19: Chain Rule Example 2
- **Type:** `slide-example`
- **Section:** Chain Rule Extension
- **Content:**
  - Title: "Example: Variable in Lower Bound"
  - Problem: $$\frac{d}{dx}\left[\int_x^5 e^t\,dt\right]$$
  - Solution:
    - "Rewrite: $= \frac{d}{dx}\left[-\int_5^x e^t\,dt\right]$"
    - "= -e^x"
  - Key insight: "Variable in lower bound means negative sign"

### Slide 20: Chain Rule Example 3
- **Type:** `slide-example`
- **Section:** Chain Rule Extension
- **Content:**
  - Title: "Example: Both Bounds Variable"
  - Problem: $$\frac{d}{dx}\left[\int_x^{x^2} t^4\,dt\right]$$
  - Strategy: "Split at a constant!"
  - Solution:
    - "$= \frac{d}{dx}\left[\int_x^0 t^4\,dt + \int_0^{x^2} t^4\,dt\right]$"
    - "$= \frac{d}{dx}\left[-\int_0^x t^4\,dt\right] + \frac{d}{dx}\left[\int_0^{x^2} t^4\,dt\right]$"
    - "$= -x^4 + (x^2)^4 \cdot 2x = -x^4 + 2x^9$"

### Slide 21: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem: $$\frac{d}{dx}\left[\int_2^x (t^2 + 1)\,dt\right]$$
  - Time: "1 minute"

### Slide 22: Practice Problem 1 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Solution: $$\frac{d}{dx}\left[\int_2^x (t^2 + 1)\,dt\right] = x^2 + 1$$
  - Note: "Direct application - just substitute x for t"

### Slide 23: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Chain Rule Practice"
  - Problem: $$\frac{d}{dx}\left[\int_0^{x^2} \sqrt{t}\,dt\right]$$
  - Time: "2 minutes"

### Slide 24: Practice Problem 2 Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Steps:
    - "f(t) = sqrt(t), u(x) = x^2, u'(x) = 2x"
    - "f(u(x)) = sqrt(x^2) = |x|"
    - "Result: $|x| \cdot 2x = 2x|x|$"
  - Or: "= 2x^2 for x >= 0"

### Slide 25: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "The derivative of an accumulation function is the original function"
    - "$\frac{d}{dx}\left[\int_a^x f(t)\,dt\right] = f(x)$"
    - "With chain rule: multiply by derivative of the upper bound"
    - "Where f > 0, F increases; where f < 0, F decreases"
    - "Differentiation and integration are INVERSE operations"

### Slide 26: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Two problems:
    1. "Find $\frac{d}{dx}\left[\int_1^x e^{t^2}\,dt\right]$"
    2. "Find $\frac{d}{dx}\left[\int_0^{\sin x} t^3\,dt\right]$"

### Slide 27: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: FTC Part 2 - How to actually EVALUATE definite integrals"
  - Secondary: "No more Riemann sum limits - just simple subtraction!"

---

## D3 Visualization Specifications

### Visualization 1: Interactive Accumulation Function (Slide 5)

```javascript
// Accumulation function explorer
// Features:
// - Display f(t) on coordinate plane
// - Fixed point a on left
// - Draggable/slider-controlled x position
// - Shaded region from a to x updates in real-time
// - Display: "F(x) = [area value]"
// - Show numeric value of accumulated area

// Function: f(t) = t (linear for simplicity)
// or f(t) = sin(t) for more interesting behavior

// Color scheme:
// - Function curve: #60a5fa
// - Shaded area: #d4a028 with 0.5 opacity
// - Current x marker: #ef4444
```

### Visualization 2: Tiny Rectangle Argument (Slide 8)

```javascript
// Zoomed view of area increment
// Features:
// - Show existing shaded area F(x)
// - Highlight tiny rectangle at right edge
// - Label width as dx (or delta-x)
// - Label height as f(x)
// - Label area as dF = f(x) dx
// - Animate the rectangle appearing

// Implementation:
// - Start zoomed out showing full region
// - Zoom into right edge
// - Draw and label tiny rectangle
// - Show derivative relationship emerging
```

### Visualization 3: Dual Graph f and F (Slide 12)

```javascript
// Stacked graphs showing f and its accumulation function
// Features:
// - Two coordinate systems stacked vertically
// - Bottom: f(t) with shaded area from a to x
// - Top: F(x) plotted as accumulation function
// - Vertical line at x connecting both graphs
// - As x moves, both update:
//   - Area in bottom graph changes
//   - Point on F curve in top graph moves
// - Display: "F(x) = [value]", "F'(x) = f(x) = [value]"

// Key insight visualization:
// - Slope of F at x equals height of f at x
// - Draw tangent line on F with slope = f(x)

// Function choice: f(t) = sin(t) works well
// F(x) = -cos(x) + cos(a) shows clear relationship

// Color scheme:
// - f(t) curve: #60a5fa
// - F(x) curve: #d4a028
// - Shaded area: theme gold with transparency
// - Tangent line: #ef4444
```

### Visualization 4: Sign Analysis Animation (Slide 13)

```javascript
// Show how sign of f affects F
// Features:
// - Function f that crosses zero (e.g., f(t) = t - 1)
// - Color regions where f > 0 (green/increasing)
// - Color regions where f < 0 (red/decreasing)
// - Show F graph updating
// - Mark critical point where f = 0

// Animation sequence:
// - Sweep x from left to right
// - F increases when passing through positive f region
// - F decreases when passing through negative f region
// - F has extremum where f = 0
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- Dual graph visualization is central - ensure smooth synchronization
- Chain rule examples should build in complexity
- All D3 text minimum 1.25rem
- Use consistent notation: f for original function, F for accumulation function
- TOC sections: Opening, Accumulation Functions, Discovering FTC, The Theorem, Connecting f and F, Chain Rule Extension, Practice, Summary
