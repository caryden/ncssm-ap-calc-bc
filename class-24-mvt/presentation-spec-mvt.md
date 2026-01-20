# Presentation Spec: Mean Value Theorem

## Class 24 | Unit 5: Analytical Applications of Differentiation
## CED Topic 5.1

---

## Overview

This presentation introduces the Mean Value Theorem, one of the most important theoretical results in calculus. The lesson builds from physical intuition (speed trap scenario) through Rolle's Theorem to the full MVT statement, emphasizing both geometric (parallel secant and tangent lines) and physical (average equals instantaneous somewhere) interpretations.

**Theme Color:** `#0d9488` (Unit 5 Teal)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 5: Analytical Applications of Differentiation"
  - Title: "The Mean Value Theorem"
  - Subtitle: "Connecting Average and Instantaneous Rates"
  - Meta: "Class 24 | CED 5.1 | NCSSM"

### Slide 1: The Speed Trap
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "You travel 150 miles in 2 hours. The speed limit is 65 mph. Did you definitely exceed the speed limit?"
  - Secondary: "Your average speed was 75 mph..."
- **Notes:** Let students discuss before revealing the mathematical answer

### Slide 2: The Key Insight
- **Type:** `slide-two-part`
- **Section:** Opening Hook
- **Content:**
  - Primary: "At some instant, your speedometer MUST have read exactly 75 mph."
  - Secondary: "How do we know this for certain? Can we prove it mathematically?"
- **Notes:** This motivates the Mean Value Theorem

### Slide 3: Rolle's Theorem - Setup
- **Type:** `slide-visual`
- **Section:** Rolle's Theorem
- **Content:**
  - Title: "A Special Case: What if f(a) = f(b)?"
  - **D3 Visualization:** Curve with endpoints at same height
  - Caption: "If the function starts and ends at the same height, what must happen in between?"
- **Visualization Details:**
  - Show a smooth curve where f(a) = f(b)
  - Highlight that the function must "turn around" somewhere

### Slide 4: Rolle's Theorem - Statement
- **Type:** `slide-two-part`
- **Section:** Rolle's Theorem
- **Content:**
  - Primary (Definition box):
    - Label: "Rolle's Theorem"
    - "If f is continuous on [a, b], differentiable on (a, b), and f(a) = f(b), then there exists at least one c in (a, b) such that f'(c) = 0."
  - Secondary: "In other words: there must be a horizontal tangent somewhere between."
- **Notes:** Emphasize THREE conditions must be met

### Slide 5: Rolle's Theorem - Visualization
- **Type:** `slide-visual`
- **Section:** Rolle's Theorem
- **Content:**
  - Title: "Visualizing Rolle's Theorem"
  - **D3 Visualization:** Interactive curve with f(a) = f(b)
    - Show tangent line at draggable point c
    - When tangent is horizontal, highlight the point
    - Display "f'(c) = 0" label
  - Caption: "The tangent line must be horizontal somewhere"
- **Visualization Details:**
  - Function: f(x) = x^2 - 4x + 3 on [1, 3]
  - Show f(1) = 0 and f(3) = 0
  - Interactive: drag point to find where tangent is horizontal

### Slide 6: Rolle's Example
- **Type:** `slide-example`
- **Section:** Rolle's Theorem
- **Content:**
  - Title: "Example: Verifying Rolle's Theorem"
  - Problem: "For f(x) = x^2 - 4x + 3 on [1, 3], verify hypotheses and find c."
  - Steps:
    1. "Check continuity: Polynomial, so continuous on [1, 3]"
    2. "Check differentiability: Polynomial, so differentiable on (1, 3)"
    3. "Check f(a) = f(b): f(1) = 0, f(3) = 0"
    4. "Find c: f'(x) = 2x - 4 = 0 gives c = 2"
  - Result: "c = 2 is in (1, 3). Rolle's Theorem confirmed!"

### Slide 7: From Rolle's to MVT
- **Type:** `slide-statement`
- **Section:** Mean Value Theorem
- **Content:**
  - Statement: "What if f(a) and f(b) are NOT equal?"
  - Secondary: "Can we still find a special tangent line?"
- **Notes:** Transition to the general case

### Slide 8: The Secant Line
- **Type:** `slide-visual`
- **Section:** Mean Value Theorem
- **Content:**
  - Title: "The Secant Line Through Endpoints"
  - **D3 Visualization:**
    - Curve f(x) on [a, b]
    - Secant line through (a, f(a)) and (b, f(b))
    - Display slope formula
  - Caption: "The secant line has slope [f(b) - f(a)] / (b - a)"
- **Visualization Details:**
  - Show curve with distinct endpoint heights
  - Secant line clearly drawn through endpoints
  - Slope calculation displayed

### Slide 9: The Parallel Tangent
- **Type:** `slide-visual`
- **Section:** Mean Value Theorem
- **Content:**
  - Title: "Finding a Parallel Tangent"
  - **D3 Visualization:**
    - Same curve with secant line
    - Tangent line at moveable point
    - Highlight when tangent is parallel to secant
  - Caption: "There must be a tangent line parallel to the secant"
- **Visualization Details:**
  - Interactive slider to move point along curve
  - Show tangent slope in real-time
  - Highlight when tangent slope = secant slope

### Slide 10: MVT Statement
- **Type:** `slide-two-part`
- **Section:** Mean Value Theorem
- **Content:**
  - Primary (Definition box with gold border):
    - Label: "Mean Value Theorem"
    - Math: "If f is continuous on [a, b] and differentiable on (a, b), then there exists at least one c in (a, b) such that:"
    - $$f'(c) = \frac{f(b) - f(a)}{b - a}$$
  - Secondary: "The instantaneous rate equals the average rate at some point."

### Slide 11: Breaking Down MVT
- **Type:** `slide-visual`
- **Section:** Mean Value Theorem
- **Content:**
  - Title: "Understanding the Formula"
  - Annotated equation with color-coded parts:
    - f'(c) -> "Instantaneous rate of change at c (tangent slope)"
    - [f(b) - f(a)] / (b - a) -> "Average rate of change over [a, b] (secant slope)"
  - Caption: "MVT guarantees these are equal somewhere in (a, b)"

### Slide 12: Two Interpretations
- **Type:** `slide-comparison`
- **Section:** Mean Value Theorem
- **Content:**
  - Title: "Two Ways to Understand MVT"
  - Column 1: Geometric Interpretation
    - Header: "Parallel Lines"
    - "There exists a tangent line parallel to the secant line through the endpoints"
    - Small diagram showing parallel lines
  - Column 2: Physical Interpretation
    - Header: "Rates of Change"
    - "At some instant, the instantaneous rate equals the average rate over the interval"
    - Example: "Average 75 mph over 2 hours means speedometer showed 75 at some moment"

### Slide 13: MVT Interactive Explorer
- **Type:** `slide-visual`
- **Section:** Mean Value Theorem
- **Content:**
  - Title: "Mean Value Theorem Explorer"
  - **D3 Visualization:** Full interactive MVT demonstration
    - Function curve on [a, b]
    - Secant line (fixed)
    - Tangent line at draggable point
    - Real-time slope comparison
    - Highlight when slopes match
  - Caption: "Find the point c where the tangent parallels the secant"
- **Visualization Details:**
  - Default function: f(x) = x^3 - x on [0, 2]
  - Show both slopes numerically
  - Visual highlight when match found
  - Display the value of c

### Slide 14: Connection to Rolle's
- **Type:** `slide-statement`
- **Section:** Mean Value Theorem
- **Content:**
  - Statement: "When f(a) = f(b), the average rate of change is 0, and MVT becomes Rolle's Theorem."
  - Secondary: "MVT generalizes Rolle's by allowing different endpoint values."

### Slide 15: Example 1 - Polynomial
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: f(x) = x^3 - x on [0, 2]"
  - Steps:
    1. "Verify hypotheses: Polynomial, so continuous and differentiable everywhere"
    2. "Calculate average rate: [f(2) - f(0)] / (2 - 0) = (6 - 0)/2 = 3"
    3. "Find c: f'(x) = 3x^2 - 1 = 3"
    4. "Solve: 3x^2 = 4, x = 2/sqrt(3) approx 1.15"
  - Result: "c approx 1.15 is in (0, 2). MVT confirmed!"

### Slide 16: Example 1 - Verification
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "Visualizing the Solution"
  - **D3 Visualization:**
    - Graph of f(x) = x^3 - x on [0, 2]
    - Secant line through endpoints
    - Tangent line at c approx 1.15
    - Both lines shown parallel
  - Caption: "The tangent at c approx 1.15 is parallel to the secant"

### Slide 17: Example 2 - When MVT Fails
- **Type:** `slide-visual`
- **Section:** Hypothesis Failures
- **Content:**
  - Title: "When MVT Doesn't Apply"
  - Problem: "f(x) = |x| on [-1, 1]"
  - **D3 Visualization:**
    - V-shaped graph of |x|
    - Secant line (horizontal, slope = 0)
    - No tangent line with slope 0 exists
  - Analysis:
    - "Continuous on [-1, 1]? YES"
    - "Differentiable on (-1, 1)? NO - corner at x = 0"
    - "MVT does NOT apply!"

### Slide 18: Hypothesis Checklist
- **Type:** `slide-list`
- **Section:** Hypothesis Failures
- **Content:**
  - Title: "Always Check Both Hypotheses"
  - List:
    1. "Continuous on [a, b]? Check for jumps, holes, or asymptotes"
    2. "Differentiable on (a, b)? Check for corners, cusps, or vertical tangents"
  - Warning box: "If either hypothesis fails, MVT cannot be applied!"

### Slide 19: Example 3 - Multiple Values of c
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "Multiple Values of c"
  - Problem: "f(x) = sin(x) on [0, 2pi]"
  - **D3 Visualization:**
    - Sine curve on [0, 2pi]
    - Horizontal secant (since sin(0) = sin(2pi) = 0)
    - Two horizontal tangent lines at c = pi/2 and c = 3pi/2
  - Analysis:
    - "Average rate = 0 (Rolle's special case)"
    - "f'(x) = cos(x) = 0 at x = pi/2 and x = 3pi/2"
    - "Two values of c! 'At least one' can mean multiple."

### Slide 20: Speed Trap Application
- **Type:** `slide-two-part`
- **Section:** Applications
- **Content:**
  - Title: "Back to the Speed Trap"
  - Primary:
    - "If you travel 150 miles in 2 hours:"
    - "Average speed = 75 mph"
    - "MVT guarantees: at some instant, your speedometer showed exactly 75 mph"
  - Secondary:
    - "If speed limit is 65 mph, you DEFINITELY exceeded it!"
    - "This is the mathematical proof of the speed trap principle."

### Slide 21: Theoretical Importance
- **Type:** `slide-list`
- **Section:** Applications
- **Content:**
  - Title: "Why MVT Matters"
  - List:
    - "MVT is the theoretical backbone of calculus"
    - "Used to prove: f' > 0 implies f increasing"
    - "Foundation for L'Hopital's Rule"
    - "Underpins the Fundamental Theorem of Calculus"
    - "Key existence theorem: guarantees something exists without telling us how to find it"

### Slide 22: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Prompt: "For f(x) = x^2 on [1, 3]:"
  - Tasks:
    1. "Verify the hypotheses of MVT"
    2. "Calculate the average rate of change"
    3. "Find the value of c guaranteed by MVT"
  - Time: "3 minutes"

### Slide 23: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: f(x) = x^2 on [1, 3]"
  - Steps:
    1. "Hypotheses: Polynomial, so continuous and differentiable"
    2. "Average rate: (f(3) - f(1))/(3-1) = (9-1)/2 = 4"
    3. "Find c: f'(x) = 2x = 4, so x = 2"
    4. "Verify: c = 2 is in (1, 3)"
  - Result: "c = 2 (which is the midpoint! Is this always true? No!)"

### Slide 24: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "MVT is an EXISTENCE theorem - guarantees c exists without finding it"
    - "Always check BOTH hypotheses: continuous on [a, b], differentiable on (a, b)"
    - "Geometric: tangent parallel to secant"
    - "Physical: average rate = instantaneous rate somewhere"
    - "Rolle's Theorem is MVT with f(a) = f(b)"

### Slide 25: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "In your own words:"
  - Tasks:
    1. "State the Mean Value Theorem with both hypotheses"
    2. "Draw a picture illustrating the geometric interpretation"
    3. "Explain what f'(c) = [f(b) - f(a)]/(b - a) means physically"

### Slide 26: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Using these ideas to find maximum and minimum values"
  - Secondary: "The Extreme Value Theorem and Critical Points"

---

## D3 Visualization Specifications

### Visualization 1: Rolle's Theorem Explorer (Slides 3, 5)

```javascript
// Interactive visualization for Rolle's Theorem
// Features:
// - Curve with f(a) = f(b) (e.g., f(x) = x^2 - 4x + 3 on [1, 3])
// - Endpoints marked at same height
// - Draggable point along curve showing tangent line
// - Tangent slope displayed in real-time
// - Highlight when tangent is horizontal (f'(c) = 0)

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Tangent line: var(--color-tangent) #fbbf24
// - Horizontal highlight: var(--color-accent) #0d9488

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: MVT Interactive Explorer (Slides 9, 13)

```javascript
// Full MVT demonstration
// Features:
// - Function curve on [a, b]
// - Fixed secant line through (a, f(a)) and (b, f(b))
// - Draggable point c with tangent line
// - Display both slopes: secant slope (fixed) and tangent slope (updating)
// - Visual indicator when slopes match (parallel lines)
// - Show the value of c where equality holds

// Default function: f(x) = x^3 - x on [0, 2]
// Average rate = 3, so finding where 3x^2 - 1 = 3

// Color scheme:
// - Curve: #60a5fa
// - Secant line: #a78bfa
// - Tangent line: #fbbf24
// - Match highlight: #0d9488

// Interaction: slider or drag point to move c
// Display: "Secant slope: 3.00" and "Tangent slope: [updating]"
// When match: "MATCH! f'(c) = average rate"
```

### Visualization 3: Hypothesis Failure Demonstration (Slide 17)

```javascript
// Show |x| on [-1, 1] - MVT fails
// Features:
// - V-shaped graph of |x|
// - Secant line (horizontal, connecting (-1, 1) and (1, 1))
// - Display secant slope = 0
// - Show that no tangent with slope 0 exists
// - Highlight the corner at x = 0 (non-differentiable)

// Message: "No horizontal tangent exists! MVT doesn't apply."
// Annotation at corner: "Not differentiable here"
```

### Visualization 4: Multiple c Values (Slide 19)

```javascript
// Show sin(x) on [0, 2pi] with multiple values of c
// Features:
// - Sine curve on [0, 2pi]
// - Horizontal secant line (endpoints at same height)
// - Two horizontal tangent lines at pi/2 and 3pi/2
// - Both c values marked and labeled

// Message: "'At least one c' can mean more than one!"
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-5-analysis: #0d9488` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Include speed/velocity language for physical interpretation
- Emphasize hypothesis checking throughout
