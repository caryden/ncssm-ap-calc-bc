# Presentation Spec: Power Rule and Basic Derivative Rules

## Class 11 | Unit 2: Differentiation Fundamentals
## CED Topics 2.5, 2.6

---

## Overview

This presentation introduces the first major derivative shortcuts: the power rule and the basic rules for constants, sums, differences, and constant multiples. Following the 3Blue1Brown approach, students develop geometric intuition for WHY the power rule works before practicing efficient differentiation of polynomials and expressions with radicals and negative exponents.

**Theme Color:** `#7c3aed` (Unit 2 Purple)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 2: Differentiation Fundamentals"
  - Title: "The Power Rule"
  - Subtitle: "Your First Derivative Shortcuts"
  - Meta: "Class 11 | CED 2.5, 2.6 | NCSSM"

### Slide 1: The Problem
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "The limit definition works... but it's *painfully* slow."
- **Notes:** Connect to students' experience from Class 9

### Slide 2: The Tedium
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "What We've Been Doing"
  - Example: Finding the derivative of $f(x) = x^5$ using the limit definition
  - Math: "Would require expanding $(x+h)^5 = x^5 + 5x^4h + 10x^3h^2 + 10x^2h^3 + 5xh^4 + h^5$"
  - Caption: "This is tedious. There must be a better way."
- **Notes:** Don't actually compute - just show the complexity

### Slide 3: Today's Promise
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "By the end of class, you'll differentiate $x^5$ in *two seconds* - and you'll understand WHY the shortcut works."
- **Notes:** Set expectations for efficiency gains

### Slide 4: Think Geometrically
- **Type:** `slide-statement`
- **Section:** Geometric Intuition
- **Content:**
  - Statement: "Let's understand derivatives through *geometry* before we memorize formulas."
- **Notes:** Following 3Blue1Brown's philosophy - discovery over memorization

### Slide 5: The Expanding Square
- **Type:** `slide-visual`
- **Section:** Geometric Intuition
- **Content:**
  - Title: "Derivative of $x^2$: The Expanding Square"
  - **D3 Visualization:** Animated square expanding
    - Initial: Square with side $x$, area = $x^2$
    - After: Square with side $x + dx$
    - Highlight new regions
  - Caption: "A square of side x has area $x^2$. What happens when the side grows by dx?"
- **Visualization Details:**
  - Original square in primary color
  - New strips highlighted in accent color
  - Corner piece (dx^2) in lighter shade
  - Labels showing dimensions

### Slide 6: The Area Change
- **Type:** `slide-visual`
- **Section:** Geometric Intuition
- **Content:**
  - Title: "What's the Change in Area?"
  - **D3 Visualization:** Square with new regions labeled
    - Right strip: width $dx$, height $x$ (area = $x \cdot dx$)
    - Top strip: width $x$, height $dx$ (area = $x \cdot dx$)
    - Corner: width $dx$, height $dx$ (area = $(dx)^2$)
  - Math: $\Delta A = x \cdot dx + x \cdot dx + (dx)^2 = 2x \cdot dx + (dx)^2$
  - Caption: "The area grows by two strips plus a tiny corner"

### Slide 7: The Key Insight
- **Type:** `slide-two-part`
- **Section:** Geometric Intuition
- **Content:**
  - Title: "As dx Approaches Zero..."
  - Primary:
    - "The corner $(dx)^2$ becomes *negligibly small* compared to $2x \cdot dx$"
    - Visual: Show corner shrinking relative to strips
  - Secondary:
    - Math: $\frac{\Delta A}{dx} = 2x + dx \xrightarrow{dx \to 0} 2x$
    - Result: $\frac{d}{dx}(x^2) = 2x$
- **Notes:** This is the geometric proof - no algebra needed!

### Slide 8: The Expanding Cube
- **Type:** `slide-visual`
- **Section:** Geometric Intuition
- **Content:**
  - Title: "Derivative of $x^3$: The Expanding Cube"
  - **D3 Visualization:** 3D cube representation (isometric view)
    - Cube of side $x$ (volume = $x^3$)
    - When side grows by $dx$, three faces contribute $x^2 \cdot dx$ each
  - Math: $\Delta V \approx 3x^2 \cdot dx$
  - Result: $\frac{d}{dx}(x^3) = 3x^2$
  - Caption: "Three faces, each contributing $x^2 \cdot dx$"
- **Notes:** Quick treatment - the pattern should be emerging

### Slide 9: The Pattern Emerges
- **Type:** `slide-visual`
- **Section:** Geometric Intuition
- **Content:**
  - Title: "Do You See the Pattern?"
  - Table:
    | Function | Derivative |
    |----------|------------|
    | $x^1$ | $1$ |
    | $x^2$ | $2x$ |
    | $x^3$ | $3x^2$ |
    | $x^4$ | $4x^3$ |
    | $x^n$ | $?$ |
  - Caption: "What's the rule?"
- **Notes:** Lead students to discover the pattern before stating it

### Slide 10: The Power Rule
- **Type:** `slide-visual`
- **Section:** The Rules
- **Content:**
  - Title: "The Power Rule"
  - Definition box with gold border:
    - Math: $$\frac{d}{dx}(x^n) = n \cdot x^{n-1}$$
  - Verbal: "Bring down the exponent as a coefficient, then subtract one from the exponent"
  - Caption: "Works for ANY real exponent n"
- **Notes:** Emphasize "bring down, subtract one" as a verbal mnemonic

### Slide 11: Power Rule in Action
- **Type:** `slide-visual`
- **Section:** The Rules
- **Content:**
  - Title: "The Power Rule: Step by Step"
  - **D3 Visualization:** Animated transformation showing:
    - Original: $x^5$
    - Arrow 1: "Bring down the 5" → $5 \cdot x^5$
    - Arrow 2: "Subtract 1 from exponent" → $5 \cdot x^4$
    - Final: $5x^4$
  - Color-coded to track the exponent movement
- **Visualization Details:**
  - Exponent highlighted and animated moving to coefficient position
  - Exponent value decreases by 1 with visual feedback
  - Clean step-by-step animation

### Slide 12: Practice - Power Rule
- **Type:** `slide-exercise`
- **Section:** The Rules
- **Content:**
  - Title: "Quick Practice: Power Rule"
  - Problems:
    1. $\frac{d}{dx}(x^7) = ?$
    2. $\frac{d}{dx}(x^{10}) = ?$
    3. $\frac{d}{dx}(x^{100}) = ?$
  - Time: "30 seconds"
- **Notes:** Build fluency with simple cases first

### Slide 13: Practice Solutions
- **Type:** `slide-list`
- **Section:** The Rules
- **Content:**
  - Title: "Solutions"
  - List:
    - $\frac{d}{dx}(x^7) = 7x^6$
    - $\frac{d}{dx}(x^{10}) = 10x^9$
    - $\frac{d}{dx}(x^{100}) = 100x^{99}$
  - Observation: "Notice how fast this is compared to the limit definition!"

### Slide 14: The Constant Rule
- **Type:** `slide-two-part`
- **Section:** The Rules
- **Content:**
  - Title: "The Constant Rule"
  - Primary:
    - Definition box: $$\frac{d}{dx}(c) = 0$$
  - Secondary:
    - "The derivative of any constant is zero"
    - Visual: Horizontal line with slope annotation = 0
    - Examples: $\frac{d}{dx}(7) = 0$, $\frac{d}{dx}(\pi) = 0$, $\frac{d}{dx}(e) = 0$
- **Notes:** e is a constant (about 2.718), not a variable!

### Slide 15: The Constant Multiple Rule
- **Type:** `slide-two-part`
- **Section:** The Rules
- **Content:**
  - Title: "The Constant Multiple Rule"
  - Primary:
    - Definition box: $$\frac{d}{dx}[c \cdot f(x)] = c \cdot f'(x)$$
  - Secondary:
    - "Constants can be 'factored out' of the derivative"
    - Example: $\frac{d}{dx}(5x^3) = 5 \cdot \frac{d}{dx}(x^3) = 5 \cdot 3x^2 = 15x^2$

### Slide 16: The Sum and Difference Rules
- **Type:** `slide-two-part`
- **Section:** The Rules
- **Content:**
  - Title: "Sum and Difference Rules"
  - Primary:
    - Definition box: $$\frac{d}{dx}[f(x) \pm g(x)] = f'(x) \pm g'(x)$$
  - Secondary:
    - "Differentiate each term separately"
    - Example: $\frac{d}{dx}(x^3 + x^2) = 3x^2 + 2x$
    - Example: $\frac{d}{dx}(x^4 - x) = 4x^3 - 1$

### Slide 17: Combining the Rules
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Polynomial"
  - Problem: Find $\frac{d}{dx}(2x^3 - 5x + 7)$
  - Step 1: Apply sum/difference rule - differentiate each term
  - Step 2: $\frac{d}{dx}(2x^3) - \frac{d}{dx}(5x) + \frac{d}{dx}(7)$
  - Step 3: $2 \cdot 3x^2 - 5 \cdot 1 + 0$
  - Result: $6x^2 - 5$
- **Notes:** Show each rule being applied

### Slide 18: Another Example
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Longer Polynomial"
  - Problem: Find $f'(x)$ for $f(x) = 4x^5 - 3x^4 + 2x^2 - x + 9$
  - Solution:
    - $f'(x) = 4(5x^4) - 3(4x^3) + 2(2x) - 1 + 0$
    - $f'(x) = 20x^4 - 12x^3 + 4x - 1$
  - Caption: "Each term differentiates independently"

### Slide 19: Critical Skill - Rewriting
- **Type:** `slide-statement`
- **Section:** Rewriting
- **Content:**
  - Statement: "Before using the power rule, you may need to REWRITE the expression in power form."
- **Notes:** This is where students often struggle

### Slide 20: Radicals to Exponents
- **Type:** `slide-visual`
- **Section:** Rewriting
- **Content:**
  - Title: "Rewriting Radicals"
  - Conversion table:
    | Original | Power Form |
    |----------|------------|
    | $\sqrt{x}$ | $x^{1/2}$ |
    | $\sqrt[3]{x}$ | $x^{1/3}$ |
    | $\sqrt[n]{x}$ | $x^{1/n}$ |
  - General rule: $\sqrt[n]{x^m} = x^{m/n}$
- **Notes:** Students need strong algebra skills here

### Slide 21: Example - Square Root
- **Type:** `slide-example`
- **Section:** Rewriting
- **Content:**
  - Title: "Example: Derivative of $\sqrt{x}$"
  - Step 1: Rewrite: $\sqrt{x} = x^{1/2}$
  - Step 2: Apply power rule: $\frac{d}{dx}(x^{1/2}) = \frac{1}{2}x^{1/2 - 1}$
  - Step 3: Simplify exponent: $\frac{1}{2}x^{-1/2}$
  - Step 4: Convert back: $\frac{1}{2} \cdot \frac{1}{x^{1/2}} = \frac{1}{2\sqrt{x}}$
  - Result box: $\frac{d}{dx}(\sqrt{x}) = \frac{1}{2\sqrt{x}}$

### Slide 22: Negative Exponents
- **Type:** `slide-visual`
- **Section:** Rewriting
- **Content:**
  - Title: "Rewriting Fractions"
  - Conversion table:
    | Original | Power Form |
    |----------|------------|
    | $\frac{1}{x}$ | $x^{-1}$ |
    | $\frac{1}{x^2}$ | $x^{-2}$ |
    | $\frac{1}{x^n}$ | $x^{-n}$ |
  - General rule: $\frac{1}{x^n} = x^{-n}$

### Slide 23: Example - Negative Exponent
- **Type:** `slide-example`
- **Section:** Rewriting
- **Content:**
  - Title: "Example: Derivative of $\frac{1}{x^3}$"
  - Step 1: Rewrite: $\frac{1}{x^3} = x^{-3}$
  - Step 2: Apply power rule: $\frac{d}{dx}(x^{-3}) = -3 \cdot x^{-3-1}$
  - Step 3: Simplify exponent: $-3x^{-4}$
  - Step 4: Convert back: $-\frac{3}{x^4}$
  - Result box: $\frac{d}{dx}\left(\frac{1}{x^3}\right) = -\frac{3}{x^4}$
- **Notes:** Emphasize: -3 - 1 = -4, NOT -2!

### Slide 24: Common Pitfall Alert
- **Type:** `slide-visual`
- **Section:** Rewriting
- **Content:**
  - Title: "Warning: Negative Exponent Subtraction"
  - **D3 Visualization:** Number line showing exponent subtraction
    - Example: For $x^{-3}$, new exponent is $-3 - 1 = -4$
    - Show on number line: -3, then subtract 1 to get -4
  - Common error: Writing $-3 - 1 = -2$ (WRONG!)
  - Correct: $-3 - 1 = -4$
  - Caption: "Always subtract 1, even when the exponent is negative"
- **Notes:** This is a frequent AP exam error

### Slide 25: Combined Example
- **Type:** `slide-example`
- **Section:** Rewriting
- **Content:**
  - Title: "Example: Mixed Expression"
  - Problem: Find $f'(x)$ for $f(x) = 2\sqrt{x} - \frac{3}{x^2}$
  - Step 1: Rewrite: $f(x) = 2x^{1/2} - 3x^{-2}$
  - Step 2: Differentiate: $f'(x) = 2 \cdot \frac{1}{2}x^{-1/2} - 3(-2)x^{-3}$
  - Step 3: Simplify: $f'(x) = x^{-1/2} + 6x^{-3}$
  - Step 4: Convert: $f'(x) = \frac{1}{\sqrt{x}} + \frac{6}{x^3}$

### Slide 26: When Power Rule Does NOT Apply
- **Type:** `slide-comparison`
- **Section:** Limitations
- **Content:**
  - Title: "Power Rule: Know Its Limits"
  - Column 1: Power Rule WORKS (variable base, constant exponent)
    - $x^5$ ✓
    - $x^{-2}$ ✓
    - $x^{1/3}$ ✓
  - Column 2: Power Rule FAILS (constant base, variable exponent)
    - $e^x$ ✗ (This is NOT $x^e$!)
    - $2^x$ ✗
    - $x^x$ ✗ (variable in BOTH positions)
  - Caption: "Power rule requires constant exponent!"
- **Notes:** Students commonly try to use power rule on e^x

### Slide 27: Practice Problems
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problems:
    1. $f(x) = x^7 - 3x^5 + 2x - 8$
    2. $f(x) = \frac{4}{x} + \sqrt[3]{x}$
    3. Find the slope of the tangent to $y = x^3 - 4x$ at $x = 2$
  - Time: "4 minutes"

### Slide 28: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - Problem 1: $f'(x) = 7x^6 - 15x^4 + 2$
  - Problem 2:
    - Rewrite: $f(x) = 4x^{-1} + x^{1/3}$
    - $f'(x) = -4x^{-2} + \frac{1}{3}x^{-2/3} = -\frac{4}{x^2} + \frac{1}{3\sqrt[3]{x^2}}$
  - Problem 3:
    - $y' = 3x^2 - 4$
    - $y'(2) = 3(4) - 4 = 8$
    - Slope = 8

### Slide 29: Visual Verification
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Verifying Problem 3"
  - **D3 Visualization:** Graph of $y = x^3 - 4x$ with tangent line at $x = 2$
    - Show curve
    - Draw tangent line at (2, 0)
    - Display: "Slope = 8"
  - Caption: "Our formula matches the actual slope!"
- **Visualization Details:**
  - Clear graph with point of tangency marked
  - Tangent line extended to show slope visually
  - Slope annotation on the tangent line

### Slide 30: Rule Summary Table
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "Summary: Basic Derivative Rules"
  - Table:
    | Rule | Formula |
    |------|---------|
    | Power Rule | $\frac{d}{dx}(x^n) = nx^{n-1}$ |
    | Constant Rule | $\frac{d}{dx}(c) = 0$ |
    | Constant Multiple | $\frac{d}{dx}(cf) = c \cdot f'$ |
    | Sum/Difference | $\frac{d}{dx}(f \pm g) = f' \pm g'$ |
  - Caption: "These four rules handle all polynomial differentiation"

### Slide 31: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "The power rule is geometrically intuitive (expanding squares, cubes)"
    - "Always REWRITE radicals and fractions in power form first"
    - "Watch negative exponent subtraction: $-3 - 1 = -4$, not $-2$"
    - "Power rule requires CONSTANT exponent (doesn't work on $e^x$)"
    - "These shortcuts replace tedious limit calculations"

### Slide 32: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "Differentiate: $f(x) = 4x^3 - 2\sqrt{x} + 5$"
  - Show your work including the rewriting step.
  - Expected answer: $f'(x) = 12x^2 - x^{-1/2} = 12x^2 - \frac{1}{\sqrt{x}}$

### Slide 33: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Derivatives of Trigonometric Functions"
  - Secondary: "Power rule handles polynomials, but we need new rules for sin(x), cos(x), and their friends."

---

## D3 Visualization Specifications

### Visualization 1: Expanding Square Animation (Slides 5, 6)

```javascript
// Interactive/animated visualization showing area change of a square
// Features:
// - Initial square with side length x
// - Slider or animation to increase side by dx
// - Color-coded regions:
//   - Original area (x^2): var(--color-function) #60a5fa
//   - Two new strips (x*dx each): var(--theme-color) #7c3aed
//   - Corner piece (dx^2): lighter purple with pattern
// - Labels showing dimensions and areas
// - Toggle to show/hide the tiny corner

// Animation sequence:
// 1. Show original square
// 2. Expand to show new regions
// 3. Highlight strips contributing 2x*dx
// 4. Show corner shrinking to nothing as dx → 0
// 5. Display final result: d/dx(x²) = 2x

// Sizing: viewBox 0 0 500 500 for responsive display
// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Power Rule Step Animation (Slide 11)

```javascript
// Animated transformation showing power rule application
// Features:
// - Display: x^5 (large, centered)
// - Step 1 animation: exponent 5 "falls down" to become coefficient
// - Step 2 animation: exponent changes from 5 to 4
// - Final display: 5x^4
// - Color tracking: exponent stays same color as it moves

// Animation timing:
// - Step 1: 1 second for exponent to move
// - Step 2: 0.5 seconds for decrement
// - Hold final result: 2 seconds

// User controls: Play/Pause, Reset, Step-through
```

### Visualization 3: Expanding Cube (Slide 8)

```javascript
// Isometric 3D cube representation
// Features:
// - Cube shown in isometric view
// - Three visible faces represent the 3x² contributions
// - Animation showing slight expansion
// - Labels showing each face contributes x²·dx

// Styling:
// - Cube faces in theme colors with slight transparency
// - Edges clearly visible
// - Dimension labels on edges
// - Total: 3x²·dx displayed prominently

// Can be static image if 3D animation is complex
```

### Visualization 4: Number Line for Negative Exponents (Slide 24)

```javascript
// Visual number line showing exponent subtraction
// Features:
// - Number line from -6 to 2
// - Starting point highlighted at -3
// - Animated arrow showing "subtract 1"
// - End point at -4
// - Wrong answer (-2) shown crossed out

// Educational purpose:
// - Makes abstract subtraction concrete
// - Prevents common sign error

// Styling:
// - Clear number markers
// - Directional arrow for subtraction
// - Color coding: correct answer in green, wrong in red
```

### Visualization 5: Tangent Line Verification (Slide 29)

```javascript
// Graph with function and tangent line
// Features:
// - Plot y = x³ - 4x on domain [-3, 3]
// - Mark point at (2, 0)
// - Draw tangent line through (2, 0) with slope 8
// - Display "Slope = 8" near the line
// - Optional: Interactive point that can be moved

// Interaction (optional):
// - Drag point along curve
// - Tangent line updates automatically
// - Slope value updates: "At x = [val], slope = [3x²-4 value]"

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Tangent line: var(--color-tangent) #fbbf24
// - Point: var(--color-derivative) #f97316
```

### Visualization 6: Pattern Discovery Table (Slide 9)

```javascript
// Animated table that fills in as students discover the pattern
// Features:
// - Left column: x¹, x², x³, x⁴, xⁿ
// - Right column: starts empty or with ?
// - Click or auto-reveal to show derivatives
// - Pattern becomes clear visually
// - Final row shows power rule formula

// Animation:
// - Each row appears in sequence
// - Brief pause for students to predict next
// - Final row (xⁿ → nx^(n-1)) appears with emphasis
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-2-diff-fund: #7c3aed` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Geometric visualizations should be the centerpiece of this presentation
- Rewriting skills are critical - allocate adequate time to slides 19-25
- Common errors (negative exponent subtraction) should be explicitly addressed
- Contrast with exponential functions (e^x) to prevent overgeneralization
