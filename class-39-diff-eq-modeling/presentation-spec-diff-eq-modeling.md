# Presentation Spec: Modeling with Differential Equations

## Class 39 | Unit 7: Differential Equations
## CED Topics 7.1, 7.2

---

## Overview

This presentation introduces differential equations as the mathematical language for describing change. Students learn to translate verbal descriptions of real-world phenomena into mathematical equations and verify whether proposed functions are solutions. The focus is on conceptual understanding: what a differential equation represents, what it means to "solve" one, and how initial conditions determine specific solutions from a family.

**Theme Color:** `#ea580c` (Unit 7 Orange)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 7: Differential Equations"
  - Title: "Modeling with Differential Equations"
  - Subtitle: "The Language of Change"
  - Meta: "Class 39 | CED 7.1, 7.2 | NCSSM"

### Slide 1: The Coffee Cooling Problem
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "A cup of coffee cools at a rate proportional to the difference between its temperature and room temperature."
  - Secondary: "How would we describe this mathematically?"
- **Notes:** This motivating example shows how differential equations arise naturally when describing change.

### Slide 2: Unpacking the Coffee Problem
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "From Words to Mathematics"
  - **D3 Visualization:** Animated equation building
    - "rate of cooling" → dT/dt
    - "proportional to" → = k ×
    - "difference from room temperature" → (T - T_room)
  - Final equation: $$\frac{dT}{dt} = -k(T - T_{room})$$
  - Caption: "The negative sign indicates cooling (temperature decreases)"
- **Visualization Details:**
  - Animate each phrase transforming into symbols
  - Use color coding: verbal (orange), mathematical (blue)
  - Highlight the negative sign with explanation

### Slide 3: What is a Differential Equation?
- **Type:** `slide-two-part`
- **Section:** Definition
- **Content:**
  - **Primary:** Definition box with orange border
    - "A **differential equation** is an equation that relates a function to one or more of its derivatives."
  - **Secondary:**
    - "The function is unknown - that's what we're trying to find!"
    - "The equation tells us about the relationship between the function and how it changes."

### Slide 4: Examples of Differential Equations
- **Type:** `slide-list`
- **Section:** Definition
- **Content:**
  - Title: "Common Differential Equations"
  - List items:
    - $$\frac{dy}{dt} = ky$$ — "Rate proportional to current value"
    - $$\frac{dy}{dx} = x + y$$ — "Derivative depends on both variables"
    - $$\frac{d^2y}{dx^2} = -y$$ — "Simple harmonic motion"
    - $$\frac{ds}{dt} = v(t)$$ — "Position and velocity"
  - Caption: "Notice: each equation involves a derivative"

### Slide 5: Order of a Differential Equation
- **Type:** `slide-comparison`
- **Section:** Definition
- **Content:**
  - Title: "Classifying by Order"
  - Column 1: First-Order
    - "Highest derivative is the first derivative"
    - $$\frac{dy}{dx} = 2xy$$
    - $$\frac{dP}{dt} = kP$$
    - "Our focus in AP Calculus BC"
  - Column 2: Second-Order
    - "Highest derivative is the second derivative"
    - $$\frac{d^2y}{dx^2} = -9y$$
    - $$\frac{d^2s}{dt^2} = -g$$
    - "Physics applications (acceleration)"

### Slide 6: The Big Reversal
- **Type:** `slide-statement`
- **Section:** Modeling
- **Content:**
  - Statement: "Differential equations reverse our usual question."
  - Secondary: "Instead of 'Given f, find f′' we ask: 'Given a relationship involving f′, find f'"
- **Notes:** Key conceptual shift - emphasize this reversal.

### Slide 7: The Modeling Process
- **Type:** `slide-list`
- **Section:** Modeling
- **Content:**
  - Title: "From Words to Equations"
  - Numbered list:
    1. "Identify the quantity (dependent variable) and what it depends on (independent variable)"
    2. "Express the relationship in words: 'rate of change of ___ is ___'"
    3. "Translate each part into mathematical symbols"
    4. "Write the complete differential equation"
  - Caption: "Modeling is translation: verbal → mathematical"

### Slide 8: Worked Example - Population Growth
- **Type:** `slide-visual`
- **Section:** Modeling
- **Content:**
  - Title: "Example: Bacteria Population"
  - Problem box: "A bacteria population grows at a rate proportional to its current size."
  - **D3 Visualization:** Animated equation building
    - "Let P = population, t = time"
    - "rate of growth" → dP/dt
    - "proportional to current size" → kP
  - Result: $$\frac{dP}{dt} = kP$$
- **Visualization Details:**
  - Step-by-step animation of translation
  - Highlight each verbal phrase and its mathematical equivalent

### Slide 9: Worked Example - Newton's Law of Cooling
- **Type:** `slide-visual`
- **Section:** Modeling
- **Content:**
  - Title: "Example: Newton's Law of Cooling"
  - Problem box: "Temperature changes at a rate proportional to the difference from ambient temperature."
  - Step-by-step:
    - "Let T = temperature, A = ambient temperature"
    - "rate of change" → dT/dt
    - "proportional to difference" → k(T - A)
    - "The negative (cooling)" → -k(T - A)
  - Result: $$\frac{dT}{dt} = -k(T - A)$$
  - Caption: "If T > A, then dT/dt < 0 (temperature decreases)"

### Slide 10: Your Turn - Air Resistance
- **Type:** `slide-exercise`
- **Section:** Modeling
- **Content:**
  - Title: "Practice: Write the Differential Equation"
  - Prompt: "The velocity of a falling object decreases at a rate proportional to its current velocity due to air resistance."
  - Hints:
    - "What is the dependent variable?"
    - "What is the independent variable?"
    - "What does 'proportional to' mean mathematically?"
  - Time: "2 minutes"

### Slide 11: Air Resistance Solution
- **Type:** `slide-visual`
- **Section:** Modeling
- **Content:**
  - Title: "Solution: Air Resistance"
  - Translation:
    - "Let v = velocity, t = time"
    - "velocity decreases" → dv/dt is negative
    - "at a rate proportional to current velocity" → -kv
  - Result: $$\frac{dv}{dt} = -kv$$
  - Caption: "Same form as radioactive decay - exponential decrease!"

### Slide 12: What is a Solution?
- **Type:** `slide-two-part`
- **Section:** Solutions
- **Content:**
  - **Primary:** Definition box with orange border
    - "A **solution** to a differential equation is a function that, when substituted into the equation, makes it true."
  - **Secondary:**
    - "Solutions are FUNCTIONS, not numbers!"
    - "y = 3e^{2t} is a function, not a single value like y = 5"

### Slide 13: Verifying a Solution
- **Type:** `slide-visual`
- **Section:** Solutions
- **Content:**
  - Title: "Verification Process"
  - Problem: "Is y = 3e^{2t} a solution to dy/dt = 2y?"
  - **D3 Visualization:** Animated verification
    - Step 1: "Calculate the left side (the derivative)"
      - dy/dt = d/dt(3e^{2t}) = 6e^{2t}
    - Step 2: "Calculate the right side"
      - 2y = 2(3e^{2t}) = 6e^{2t}
    - Step 3: "Compare"
      - Both sides equal 6e^{2t} ✓
  - Result: "Yes, y = 3e^{2t} is a solution!"
- **Visualization Details:**
  - Animate each step sequentially
  - Use checkmark animation when sides match
  - Color-code left side (blue) and right side (green)

### Slide 14: Key Insight - Verification Without Solving
- **Type:** `slide-statement`
- **Section:** Solutions
- **Content:**
  - Statement: "You can verify a solution without knowing how to solve the equation!"
  - Secondary: "Just plug in and check. This is a powerful skill for the AP exam."

### Slide 15: General vs. Particular Solutions
- **Type:** `slide-comparison`
- **Section:** Solutions
- **Content:**
  - Title: "Two Types of Solutions"
  - Column 1: General Solution
    - "Contains an arbitrary constant C"
    - "Represents a FAMILY of solutions"
    - Example: $$y = Ce^{2t}$$
    - "Infinitely many solutions"
  - Column 2: Particular Solution
    - "Specific value of C determined"
    - "ONE specific solution"
    - Example: $$y = 3e^{2t}$$ (when C = 3)
    - "Determined by initial condition"

### Slide 16: Visualizing the Family of Solutions
- **Type:** `slide-visual`
- **Section:** Solutions
- **Content:**
  - Title: "The General Solution: A Family of Curves"
  - **D3 Visualization:** Multiple solution curves
    - Show y = Ce^{2t} for C = -2, -1, 0, 1, 2, 3, 4
    - All curves have similar shape but different positions
    - Slider to vary C and highlight one curve
  - Caption: "Each value of C gives a different curve - all are solutions!"
- **Visualization Details:**
  - Draw family of exponential curves
  - Color gradient from blue (C < 0) through white (C = 0) to orange (C > 0)
  - Interactive slider to select C value

### Slide 17: Initial Conditions
- **Type:** `slide-visual`
- **Section:** Solutions
- **Content:**
  - Title: "Initial Conditions Pick One Curve"
  - **D3 Visualization:** Family of curves with initial point
    - Same family as previous slide
    - Mark the point (0, 3) on the y-axis
    - Highlight the curve through that point
  - Explanation:
    - "If y(0) = 3, then Ce^{2(0)} = Ce^0 = C = 3"
    - "The particular solution is y = 3e^{2t}"
  - Caption: "The initial condition determines which curve from the family"

### Slide 18: Finding a Particular Solution
- **Type:** `slide-example`
- **Section:** Solutions
- **Content:**
  - Title: "Example: Using an Initial Condition"
  - Problem: "Given: dy/dt = y with general solution y = Ce^t. Find the particular solution if y(0) = 5."
  - Steps:
    - "Apply the initial condition: y(0) = Ce^0 = C = 5"
    - "Substitute C = 5 into the general solution"
  - Result: $$y = 5e^t$$
  - Caption: "Initial conditions turn general solutions into particular solutions"

### Slide 19: Practice - Verify a Solution
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Verification"
  - Prompt: "Is y = x² + 1 a solution to dy/dx = 2x?"
  - Process:
    - "Calculate the left side: dy/dx = ?"
    - "Calculate the right side: 2x = ?"
    - "Do they match?"
  - Time: "2 minutes"

### Slide 20: Practice Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Verification"
  - Steps:
    - "Left side: dy/dx = d/dx(x² + 1) = 2x"
    - "Right side: 2x"
    - "2x = 2x ✓"
  - Result: "Yes, y = x² + 1 is a solution!"
  - Caption: "Note: y = x² + 5 would also be a solution (different C)"

### Slide 21: Practice - Particular Solution
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Find the Particular Solution"
  - Prompt: "Given dy/dt = y with general solution y = Ce^t, find the particular solution if y(0) = -2."
  - Time: "2 minutes"

### Slide 22: Practice Solution
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Particular Solution"
  - Steps:
    - "Apply initial condition: y(0) = Ce^0 = C = -2"
    - "Substitute: y = -2e^t"
  - Result: $$y = -2e^t$$
  - Verification: "Check: y(0) = -2e^0 = -2 ✓"

### Slide 23: Common Misconceptions
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Avoid These Mistakes"
  - List items:
    - "Solutions are FUNCTIONS, not numbers"
    - "You can verify without solving - just plug in and check"
    - "General solutions have arbitrary constants; particular solutions don't"
    - "Initial conditions come AFTER finding the general solution"
    - "Not all differential equations can be solved by 'just integrating'"

### Slide 24: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "A differential equation relates a function to its derivative(s)"
    - "Modeling: translate verbal descriptions into mathematical equations"
    - "A solution is a function that makes the equation true"
    - "Verify solutions by substitution - you don't need to solve first"
    - "Initial conditions determine particular solutions from general solutions"

### Slide 25: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "Write a differential equation for: 'The rate of decay of a radioactive substance is proportional to the amount remaining.'"
    2. "Verify: Is y = 100e^{-0.5t} a solution if k = 0.5?"
  - Caption: "Show your verification work!"

### Slide 26: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Slope Fields"
  - Secondary: "How do we visualize differential equations and their solutions without solving them?"
- **Notes:** Preview sets up Class 40 on slope fields.

---

## D3 Visualization Specifications

### Visualization 1: Equation Builder (Slides 2, 8, 9)

```javascript
// Animated translation from verbal to mathematical
// Features:
// - Display verbal phrase
// - Animate transformation to mathematical symbols
// - Build equation piece by piece
// - Color-coded: verbal (orange), math (blue)

// Animation sequence:
// 1. Show verbal phrase
// 2. Fade out verbal, fade in math symbol
// 3. Accumulate to form complete equation
// 4. Final equation highlighted in box

// Font sizes: minimum 1.5rem for equations, 1.25rem for labels
```

### Visualization 2: Verification Animator (Slide 13)

```javascript
// Step-by-step verification process
// Features:
// - Two columns: Left Side / Right Side
// - Animate each calculation step
// - Show comparison at the end
// - Green checkmark when sides match

// Color scheme:
// - Left side: #60a5fa (blue)
// - Right side: #10b981 (green)
// - Match indicator: #ea580c (orange)

// Font sizes: minimum 1.5rem for all equations
```

### Visualization 3: Solution Family (Slides 16, 17)

```javascript
// Interactive visualization of general solution family
// Features:
// - Plot y = Ce^{2t} for multiple C values
// - Color gradient based on C value
// - Slider to select and highlight one curve
// - Show initial point when relevant
// - Display current C value and equation

// Axes:
// - t-axis: 0 to 2
// - y-axis: -5 to 10
// - Grid lines for reference

// Color scheme:
// - Negative C: blues
// - C = 0: gray
// - Positive C: oranges
// - Selected curve: bright orange with glow

// Font sizes: 1.25rem for axis labels and annotations
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-7-diffeq: #ea580c` for accents
- Equation builder animations should have 500ms transitions
- Verification animations: 800ms per step with 400ms delays
- Solution family visualization uses viewBox for responsiveness
- Minimum font size 1.25rem for all D3 text elements
- Support keyboard navigation (arrow keys, T for TOC)
