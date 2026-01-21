# Presentation Spec: Interpreting Derivatives in Context

## Class 19 | Unit 4: Contextual Applications of Differentiation
## CED Topic 4.1

---

## Overview

This presentation bridges abstract derivative calculations and real-world meaning. Students learn to interpret derivatives as rates of change with proper units and verbal descriptions. The focus is on translating mathematical expressions into meaningful statements about quantities changing over time or with respect to other variables.

**Theme Color:** `#059669` (Unit 4 Emerald)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 4: Contextual Applications of Differentiation"
  - Title: "Interpreting Derivatives in Context"
  - Subtitle: "Meaning, Units, and Verbal Descriptions"
  - Meta: "Class 19 | CED 4.1 | NCSSM"

### Slide 1: The Bathtub Scenario
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "A bathtub has 50 gallons of water and is draining at 3 gallons per minute."
  - Follow-up questions:
    - "Which number is V(t)?"
    - "Which number is V'(t)?"
    - "Why is V'(t) negative?"
- **Notes:** Opens with concrete scenario to distinguish value from rate

### Slide 2: Amount vs. Rate
- **Type:** `slide-comparison`
- **Section:** Opening Hook
- **Content:**
  - Title: "Two Fundamentally Different Things"
  - Column 1: The Amount
    - "V(t) = 50 gallons"
    - "The quantity at a moment"
    - "How much is there?"
  - Column 2: The Rate
    - "V'(t) = -3 gal/min"
    - "How fast the quantity changes"
    - "How quickly is it changing?"
- **Notes:** Establishes the key distinction between f(a) and f'(a)

### Slide 3: The Fundamental Interpretation
- **Type:** `slide-two-part`
- **Section:** Core Concept
- **Content:**
  - Title: "The Derivative as Rate of Change"
  - Primary: "f'(a) represents the instantaneous rate of change of f at x = a"
  - Secondary: "This is the 'speedometer reading' at a moment in time"
- **Notes:** Core conceptual statement

### Slide 4: The Unit Rule
- **Type:** `slide-visual`
- **Section:** Core Concept
- **Content:**
  - Title: "Units of the Derivative"
  - Math display: $$\text{Units of } f'(x) = \frac{\text{Units of } f}{\text{Units of } x}$$
  - Caption: "The derivative always divides output units by input units"
- **Notes:** Critical rule for proper interpretation

### Slide 5: Unit Examples
- **Type:** `slide-list`
- **Section:** Core Concept
- **Content:**
  - Title: "Common Unit Patterns"
  - List items:
    - "Position (meters) / time (seconds) = m/s (velocity)"
    - "Cost (dollars) / quantity (items) = $/item (marginal cost)"
    - "Population (people) / time (years) = people/year (growth rate)"
    - "Temperature (degrees C) / time (hours) = degrees C/hour (cooling rate)"
- **Notes:** Connects to multiple real-world contexts

### Slide 6: The Interpretation Template
- **Type:** `slide-visual`
- **Section:** Verbal Interpretation
- **Content:**
  - Title: "How to Interpret a Derivative"
  - Template box (highlighted):
    - "At [input value], the [quantity] is [increasing/decreasing] at a rate of [|derivative value|] [units] per [input unit]."
  - Caption: "Use this template for all verbal interpretations"
- **Notes:** Provides scaffold for proper interpretations

### Slide 7: Contextual Explorer
- **Type:** `slide-visual`
- **Section:** Verbal Interpretation
- **Content:**
  - Title: "Interpreting Derivatives Visually"
  - **D3 Visualization:** Interactive graph showing a contextual function
    - Display curve (e.g., population over time)
    - Draggable point selects position on curve
    - Show tangent line at that point
    - Display: "P(t₀) = [value] people" and "P'(t₀) = [slope] people/year"
  - Caption: "The slope of the tangent line IS the derivative"
- **Visualization Details:**
  - Function: Population model P(t)
  - Tangent line updates as point moves
  - Both value and rate displayed with units

### Slide 8: Example 1 - Population
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Population Growth"
  - Problem: "P(t) = population at time t years. Given: P(10) = 50,000 and P'(10) = 1,200"
  - Step 1: "Interpret P(10)"
    - "At t = 10 years, the population is 50,000 people."
  - Step 2: "Interpret P'(10)"
    - "At t = 10 years, the population is increasing at 1,200 people per year."

### Slide 9: Example 2 - Cost Function
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Marginal Cost"
  - Problem: "C(x) = cost in dollars to produce x items. Given: C(100) = 5,000 and C'(100) = 12"
  - Interpret C(100):
    - "It costs $5,000 to produce 100 items."
  - Interpret C'(100):
    - "At production level 100 items, cost is increasing at $12 per additional item."
  - Note: "C'(x) is called 'marginal cost' in economics"

### Slide 10: Example 3 - Temperature
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Temperature Change"
  - Problem: "T(t) = temperature in degrees F at time t hours after noon. Given: T(3) = 72 and T'(3) = -2"
  - Interpret T(3):
    - "At 3:00 PM, the temperature is 72 degrees F."
  - Interpret T'(3):
    - "At 3:00 PM, the temperature is decreasing at 2 degrees F per hour."
  - Key Point: "The negative sign means 'decreasing' - say 'decreasing at 2' not 'changing at -2'"

### Slide 11: Sign Interpretation
- **Type:** `slide-comparison`
- **Section:** Graphical Interpretation
- **Content:**
  - Title: "What Does the Sign Tell Us?"
  - Column 1: Positive Derivative
    - "f'(a) > 0"
    - "Quantity is INCREASING"
    - "Graph slopes UPWARD"
    - Small diagram showing positive slope
  - Column 2: Negative Derivative
    - "f'(a) < 0"
    - "Quantity is DECREASING"
    - "Graph slopes DOWNWARD"
    - Small diagram showing negative slope

### Slide 12: Graphical Interpretation
- **Type:** `slide-visual`
- **Section:** Graphical Interpretation
- **Content:**
  - Title: "Reading Derivatives from Graphs"
  - **D3 Visualization:** Graph with varying slopes
    - Show function with steep positive, gentle positive, zero, negative regions
    - Highlight regions with different derivative characteristics
  - Key points:
    - "Steep positive slope = large positive derivative"
    - "Steep negative slope = large negative derivative (in magnitude)"
    - "Horizontal tangent = derivative equals 0"

### Slide 13: Numerical Interpretation
- **Type:** `slide-visual`
- **Section:** Numerical Interpretation
- **Content:**
  - Title: "Estimating Derivatives from Tables"
  - Table display:
    - t (hours): 0, 1, 2, 3, 4
    - V(t) gallons: 100, 85, 72, 61, 52
  - Estimate V'(2):
    - Math: $$V'(2) \approx \frac{V(3) - V(1)}{3 - 1} = \frac{61 - 85}{2} = -12 \text{ gal/hr}$$
  - Interpretation: "At t = 2 hours, the volume is decreasing at approximately 12 gallons per hour."

### Slide 14: Common Misconceptions
- **Type:** `slide-list`
- **Section:** Misconceptions
- **Content:**
  - Title: "Avoid These Errors"
  - List items:
    - "Confusing f(a) with f'(a): f(a) is the VALUE, f'(a) is the RATE"
    - "Forgetting units: Units of f' = (units of f)/(units of x)"
    - "Assuming rates are always positive: Negative means decreasing!"
    - "Saying f'(3) = 5 means f(3) = 5: These are completely different!"
- **Notes:** Addresses common misconceptions from research

### Slide 15: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Water Tank"
  - Problem: "W(t) = liters of water in a tank at time t minutes. Given: W(5) = 200 and W'(5) = -15"
  - Tasks:
    - "Interpret W(5) in context."
    - "Interpret W'(5) in context."
    - "What are the units of W'(t)?"
  - Time: "3 minutes"

### Slide 16: Practice Solution 1
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Water Tank"
  - W(5) = 200:
    - "At t = 5 minutes, there are 200 liters in the tank."
  - W'(5) = -15:
    - "At t = 5 minutes, water is draining at 15 liters per minute."
  - Units of W'(t):
    - "liters per minute (L/min)"

### Slide 17: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Revenue Function"
  - Problem: "R(p) = revenue in dollars from selling items at price p dollars. Given: R(25) = 10,000 and R'(25) = -150"
  - Tasks:
    - "Interpret R'(25) in context."
    - "What does the negative sign tell us about pricing?"
  - Time: "3 minutes"

### Slide 18: Practice Solution 2
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Revenue Function"
  - R'(25) = -150:
    - "At a price of $25, revenue is decreasing at $150 per dollar increase in price."
  - What does negative mean?
    - "Raising the price from $25 will DECREASE revenue."
    - "This happens when demand drops faster than price rises."

### Slide 19: Value vs. Rate Summary
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "The Value-Rate Distinction"
  - **D3 Visualization:** Side-by-side display
    - Left: "f(a) answers: What is the quantity?"
    - Right: "f'(a) answers: How fast is it changing?"
  - Examples:
    - "V(3) = 50 gallons: At t=3, the volume IS 50 gallons"
    - "V'(3) = -2 gal/min: At t=3, the volume is CHANGING at -2 gal/min"

### Slide 20: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Derivative = instantaneous rate of change"
    - "Units of f' = (units of f) / (units of x)"
    - "Use the interpretation template for verbal descriptions"
    - "Sign tells direction: positive = increasing, negative = decreasing"
    - "f(a) is the VALUE, f'(a) is the RATE - fundamentally different!"

### Slide 21: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "P(t) is the population of a town in thousands at time t years since 2020. Given: P(5) = 8 and P'(5) = -0.2"
  - Questions:
    - "1. Interpret P(5) in context."
    - "2. Interpret P'(5) in context."
    - "3. What is the unit of P'(t)?"

### Slide 22: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Position, Velocity, and Acceleration"
  - Secondary: "The most intuitive application of derivatives - how motion quantities connect through differentiation."

---

## D3 Visualization Specifications

### Visualization 1: Contextual Derivative Explorer (Slide 7)

```javascript
// Interactive visualization showing derivative interpretation
// Features:
// - Contextual curve (e.g., population over time)
// - Draggable point to select t value
// - Tangent line at selected point
// - Display of both f(t₀) and f'(t₀) with units
// - Interpretation text updates in real-time

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Tangent line: var(--color-tangent) #fbbf24
// - Point: var(--theme-color) #059669
// - Value display: #059669
// - Rate display: #fbbf24

// Font sizes: minimum 1.25rem for all labels
// Show: "P(t₀) = [value] people" and "P'(t₀) = [slope] people/year"
```

### Visualization 2: Slope Region Highlighter (Slide 12)

```javascript
// Static or animated visualization showing slope regions
// Features:
// - Function with varied slope regions
// - Color-coded regions: green for positive, red for negative
// - Labels for "steep positive," "gentle positive," "zero," "negative"
// - Tangent lines at key points

// Color scheme:
// - Positive slope regions: #059669 (theme emerald)
// - Negative slope regions: #e11d48 (rose)
// - Zero slope points: #fbbf24 (gold)
```

### Visualization 3: Value vs. Rate Comparison (Slide 19)

```javascript
// Side-by-side display distinguishing f(a) from f'(a)
// Features:
// - Left panel: Shows "quantity" with bucket/tank metaphor
// - Right panel: Shows "rate" with flow arrow metaphor
// - Animated transition showing how they differ
// - Clear labeling with units
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-4-context: #059669` for accents
- Emphasize units throughout - they are mandatory for AP credit
- Template box for interpretation should be visually prominent
- Include Rule of Four: graphical (slopes), numerical (tables), analytical (formulas), verbal (interpretations)
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
