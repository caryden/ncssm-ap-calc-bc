# Presentation Spec: Introduction to Related Rates

## Class 21 | Unit 4: Contextual Applications of Differentiation
## CED Topic 4.4

---

## Overview

This presentation introduces related rates problems, where multiple quantities change with respect to time and are connected by a geometric or physical equation. Students learn the systematic four-step method for solving these problems and practice with classic introductory examples involving expanding circles and spheres. The emphasis is on understanding the setup process and avoiding the critical error of substituting values before differentiating.

**Theme Color:** `#059669` (Unit 4 Emerald)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 4: Contextual Applications of Differentiation"
  - Title: "Introduction to Related Rates"
  - Subtitle: "Connecting Rates of Change"
  - Meta: "Class 21 | CED 4.4 | NCSSM"

### Slide 1: The Rippling Pond
- **Type:** `slide-visual`
- **Section:** Opening Hook
- **Content:**
  - Title: "The Rippling Pond"
  - **D3 Visualization:** Animated expanding circles
    - Circular ripples expanding outward
    - Radius value updating as animation plays
  - Scenario: "A pebble is dropped into a still pond, creating circular ripples. The radius expands at 2 cm/s."
  - Question: "How fast is the AREA growing when the radius is 5 cm?"

### Slide 2: Two Rates, One Equation
- **Type:** `slide-two-part`
- **Section:** Opening Hook
- **Content:**
  - Title: "What's Happening Here?"
  - Primary: "Two quantities are changing: radius r and area A"
  - Secondary: "They're connected by an equation: A = πr²"
  - Key insight: "If we know dr/dt, can we find dA/dt?"
  - Answer: "Yes! This is a RELATED RATES problem."

### Slide 3: What Are Related Rates?
- **Type:** `slide-list`
- **Section:** Core Concept
- **Content:**
  - Title: "What Are Related Rates Problems?"
  - List items:
    - "Multiple quantities that all change with respect to time"
    - "A geometric or physical equation connects these quantities"
    - "We use calculus to relate their RATES of change"
  - Key Point: "Even if variables like r, A, V aren't written as functions of time, they ARE implicitly functions of t"

### Slide 4: The Key Insight
- **Type:** `slide-statement`
- **Section:** Core Concept
- **Content:**
  - Statement: "Every variable is implicitly a function of time"
  - Secondary: "So we use the chain rule when differentiating with respect to t"
  - Example: $$\frac{d}{dt}[r^2] = 2r \cdot \frac{dr}{dt}$$
  - Caption: "The dr/dt appears because of the chain rule - r is a function of t!"

### Slide 5: The Four-Step Method
- **Type:** `slide-list`
- **Section:** Method
- **Content:**
  - Title: "The Four-Step Method"
  - List (numbered):
    - "Step 1: DRAW and LABEL - Sketch the situation, label all changing quantities"
    - "Step 2: WRITE AN EQUATION - Relate the quantities (NOT the rates yet!)"
    - "Step 3: DIFFERENTIATE - Apply implicit differentiation with respect to t"
    - "Step 4: SUBSTITUTE and SOLVE - NOW plug in values for that specific moment"

### Slide 6: Step 1 - Draw and Label
- **Type:** `slide-visual`
- **Section:** Method Details
- **Content:**
  - Title: "Step 1: Draw and Label"
  - **D3 Visualization:** Diagram showing:
    - Circle with radius labeled r
    - Area labeled A
    - Arrow showing dr/dt = 2 cm/s (given)
    - Question mark on dA/dt (to find)
  - Checklist:
    - "Label ALL changing quantities with variables"
    - "Identify given rates and unknown rate"
    - "Note any constants"

### Slide 7: Step 2 - Write Equation
- **Type:** `slide-visual`
- **Section:** Method Details
- **Content:**
  - Title: "Step 2: Write an Equation"
  - Equation box: $$A = \pi r^2$$
  - Critical warning (highlighted red box):
    - "DO NOT substitute specific numbers yet!"
    - "Keep variables as variables"
  - Caption: "The equation relates the QUANTITIES, not the rates"

### Slide 8: Step 3 - Differentiate
- **Type:** `slide-visual`
- **Section:** Method Details
- **Content:**
  - Title: "Step 3: Differentiate with Respect to Time"
  - Starting equation: $A = \pi r^2$
  - Differentiate both sides:
    - $$\frac{d}{dt}[A] = \frac{d}{dt}[\pi r^2]$$
    - $$\frac{dA}{dt} = 2\pi r \cdot \frac{dr}{dt}$$
  - Note: "The chain rule gives us the dr/dt term"
  - Caption: "Now we have an equation relating the RATES"

### Slide 9: Step 4 - Substitute and Solve
- **Type:** `slide-visual`
- **Section:** Method Details
- **Content:**
  - Title: "Step 4: Substitute and Solve"
  - Rate equation: $\frac{dA}{dt} = 2\pi r \cdot \frac{dr}{dt}$
  - Given values at the moment:
    - r = 5 cm
    - dr/dt = 2 cm/s
  - Substitute:
    - $$\frac{dA}{dt} = 2\pi (5)(2) = 20\pi \text{ cm}^2/\text{s}$$
  - Answer box: "The area is increasing at 20π cm²/s (approximately 62.8 cm²/s)"

### Slide 10: Why Order Matters
- **Type:** `slide-comparison`
- **Section:** Critical Warning
- **Content:**
  - Title: "Why This Order Matters"
  - Column 1 (Wrong - red border):
    - "WRONG Approach:"
    - "If r = 5, then A = π(5)² = 25π"
    - "Differentiating: dA/dt = 0"
    - "Error: Treated A as constant!"
  - Column 2 (Right - green border):
    - "RIGHT Approach:"
    - "Keep equation general: A = πr²"
    - "Differentiate: dA/dt = 2πr · dr/dt"
    - "THEN substitute r = 5, dr/dt = 2"

### Slide 11: The Critical Rule
- **Type:** `slide-statement`
- **Section:** Critical Warning
- **Content:**
  - Statement (in warning box): "NEVER substitute specific values before differentiating"
  - Secondary: "Once you substitute numbers, variables become constants, and their derivatives are ZERO"
  - Caption: "This is the #1 error in related rates problems"

### Slide 12: Related Rates Visualizer
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Watching Related Rates in Action"
  - **D3 Visualization:** Expanding circle animation
    - Circle growing over time
    - Display updating: r = [value], A = [value]
    - Rates display: dr/dt = 2, dA/dt = [computed value]
    - Shows formula: dA/dt = 2πr · dr/dt
  - Observation: "Notice dA/dt increases as r increases, even though dr/dt is constant!"

### Slide 13: Example 2 - Expanding Sphere
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Inflating Balloon"
  - Problem: "A balloon's radius increases at 3 cm/s. How fast is the volume increasing when r = 10 cm?"
  - Step 1: dr/dt = 3 cm/s, find dV/dt when r = 10
  - Step 2: $V = \frac{4}{3}\pi r^3$
  - Step 3: $\frac{dV}{dt} = 4\pi r^2 \cdot \frac{dr}{dt}$
  - Step 4: $\frac{dV}{dt} = 4\pi (100)(3) = 1200\pi$ cm³/s

### Slide 14: Example 3 - Conical Tank Setup
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Filling a Cone (Setup)"
  - **D3 Visualization:** Conical tank diagram
    - Cone with height 6 m, top radius 3 m
    - Water level at height h with surface radius r
    - Labels for all dimensions
  - Problem: "Water pours in at 2 m³/min. How fast is the water level rising when h = 2 m?"
  - Given: dV/dt = 2 m³/min. Find: dh/dt when h = 2

### Slide 15: Conical Tank - Similar Triangles
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "The Two-Variable Problem"
  - Issue: $V = \frac{1}{3}\pi r^2 h$ has TWO variables (r and h)
  - Solution: Use similar triangles!
  - Diagram showing: $\frac{r}{h} = \frac{3}{6} = \frac{1}{2}$
  - Therefore: $r = \frac{h}{2}$
  - New volume formula: $V = \frac{1}{3}\pi \left(\frac{h}{2}\right)^2 h = \frac{\pi h^3}{12}$
  - Caption: "Now we have only ONE variable to differentiate"

### Slide 16: Conical Tank - Solution
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Filling a Cone (Complete)"
  - Equation: $V = \frac{\pi h^3}{12}$
  - Differentiate: $\frac{dV}{dt} = \frac{\pi h^2}{4} \cdot \frac{dh}{dt}$
  - Substitute h = 2 and dV/dt = 2:
    - $2 = \frac{\pi (4)}{4} \cdot \frac{dh}{dt}$
    - $2 = \pi \cdot \frac{dh}{dt}$
    - $\frac{dh}{dt} = \frac{2}{\pi}$ m/min
  - Answer: "The water level rises at 2/π m/min (about 0.64 m/min)"

### Slide 17: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Melting Snowball"
  - Problem: "A spherical snowball is melting. Its radius decreases at 0.5 cm/min. How fast is the volume decreasing when r = 4 cm?"
  - Hints:
    - "Volume of sphere: V = (4/3)πr³"
    - "Note: dr/dt is NEGATIVE (decreasing)"
  - Time: "4 minutes"

### Slide 18: Practice Solution 1
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Melting Snowball"
  - Given: dr/dt = -0.5 cm/min, r = 4 cm
  - Equation: $V = \frac{4}{3}\pi r^3$
  - Differentiate: $\frac{dV}{dt} = 4\pi r^2 \cdot \frac{dr}{dt}$
  - Substitute: $\frac{dV}{dt} = 4\pi(16)(-0.5) = -32\pi$ cm³/min
  - Answer: "The volume is decreasing at 32π cm³/min"
  - Note: "Negative rate means decreasing - this makes sense for melting!"

### Slide 19: Practice Problem 2 (Setup Only)
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Setup Practice: Growing Cube"
  - Problem: "The edge of a cube increases at 2 cm/s. Set up the equation to find how fast the surface area is changing when the edge is 5 cm."
  - Tasks:
    - "Write the surface area formula"
    - "Differentiate with respect to t"
    - "Do NOT solve yet"
  - Time: "2 minutes"

### Slide 20: Practice Solution 2
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Growing Cube Setup"
  - Surface area: $S = 6e^2$ (where e = edge length)
  - Differentiate: $\frac{dS}{dt} = 12e \cdot \frac{de}{dt}$
  - Substitute: $\frac{dS}{dt} = 12(5)(2) = 120$ cm²/s
  - Answer: "Surface area increases at 120 cm²/s"

### Slide 21: Common Misconceptions
- **Type:** `slide-list`
- **Section:** Misconceptions
- **Content:**
  - Title: "Avoid These Errors"
  - List items:
    - "Substituting before differentiating - the #1 error!"
    - "Forgetting the chain rule: d/dt[r²] = 2r · dr/dt, not just 2r"
    - "Treating constants as variables (ladder length, etc.)"
    - "Thinking rates are constant (dA/dt changes as r changes!)"
    - "Assuming negative rates mean errors (negative = decreasing)"

### Slide 22: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Related rates connect rates of change through an equation"
    - "Four-step method: Draw → Equation → Differentiate → Substitute"
    - "NEVER substitute values before differentiating"
    - "Chain rule is essential: every variable is a function of t"
    - "Check your answer: does the sign make sense?"

### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "A circular puddle is evaporating. The radius decreases at 0.2 cm/min."
  - Task: "Write the setup (Steps 1-3 only) for finding how fast the area is decreasing when r = 10 cm."
  - Note: "Don't solve - just set up the differentiated equation"

### Slide 24: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: More Complex Related Rates"
  - Secondary: "Pythagorean theorem problems, similar triangles, and trigonometry"

---

## D3 Visualization Specifications

### Visualization 1: Expanding Ripples (Slide 1)

```javascript
// Animated expanding circles representing pond ripples
// Features:
// - Multiple concentric circles expanding outward
// - Outer circle radius displayed and updating
// - Constant rate dr/dt = 2 cm/s
// - Pulse animation starting from center

// Color scheme:
// - Ripples: var(--theme-color) #059669 with decreasing opacity
// - Labels: #1f2937

// Animation: Continuous loop with ripples expanding
```

### Visualization 2: Circle with Labels (Slide 6)

```javascript
// Static diagram for Step 1: Draw and Label
// Features:
// - Circle with radius line labeled 'r'
// - Area labeled 'A'
// - Arrow on radius showing dr/dt = 2 (given)
// - Question mark near circle edge for dA/dt (find)
// - Clear geometric layout

// Color scheme:
// - Circle: #059669
// - Given rates: #3b82f6 (blue)
// - Unknown rate: #ef4444 (red with ?)
```

### Visualization 3: Related Rates Visualizer (Slide 12)

```javascript
// Interactive expanding circle with rate calculations
// Features:
// - Circle that grows over time (or with slider)
// - Real-time display of r, A values
// - Real-time display of dr/dt (constant) and dA/dt (varies)
// - Formula shown: dA/dt = 2πr · dr/dt
// - Graph option: dA/dt vs. r (shows linear relationship)

// Color scheme:
// - Circle: var(--theme-color) #059669
// - Values: #1f2937
// - Formula: #7c3aed (purple)

// Key insight: dA/dt increases even though dr/dt is constant
```

### Visualization 4: Conical Tank (Slides 14-15)

```javascript
// Cone diagram with water level
// Features:
// - Inverted cone shape (water tank)
// - Water level at height h with surface radius r
// - Labels: total height 6m, top radius 3m
// - Similar triangles highlighted
// - Ratio r/h = 1/2 shown

// Animation option: Water level rising with dh/dt calculated
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-4-context: #059669` for accents
- The "NEVER substitute before differentiating" warning should be visually prominent
- Four-step method should be a consistent reference throughout
- Include Rule of Four: graphical (diagrams), numerical (calculations), analytical (formulas), verbal (interpretations)
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
