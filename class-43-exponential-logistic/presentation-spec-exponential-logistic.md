# Presentation Spec: Exponential and Logistic Models

## Class 43 | Unit 7: Differential Equations (Logistic is BC Only)
## CED Topics 7.8, 7.9

---

## Overview

This presentation applies separation of variables to the two most important differential equation models: exponential growth/decay and logistic growth. Students understand when each model is appropriate, derive or verify solutions, interpret parameters in context, and analyze long-term behavior. The logistic model (CED 7.9) is BC-only and represents a key extension that addresses the limitations of exponential growth.

**Theme Color:** `#ea580c` (Unit 7 Orange)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 7: Differential Equations"
  - Title: "Exponential & Logistic Models"
  - Subtitle: "Growth, Decay, and Carrying Capacity"
  - BC indicator: "Logistic is BC Topic"
  - Meta: "Class 43 | CED 7.8, 7.9 | NCSSM"

### Slide 1: The Unrealistic Prediction
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "The Bacteria Problem"
  - Problem: "A bacteria population doubles every hour. Starting with 100 bacteria, how many are there after 24 hours?"
  - **D3 Visualization:** Animated counter
    - Calculate: 100 × 2²⁴ = 1,677,721,600
    - Display: "Nearly 1.7 BILLION bacteria!"
  - Question: "Is this realistic?"
- **Visualization Details:**
  - Animate the number growing dramatically
  - Show the exponential explosion visually

### Slide 2: What's Missing?
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Exponential growth assumes unlimited resources."
  - Secondary: "Real populations face limits: food, space, competition. Today we explore two models:"
  - List:
    - "**Exponential:** Unlimited growth or decay (ideal case)"
    - "**Logistic:** Growth with a carrying capacity (realistic case)"

### Slide 3: The Exponential Model
- **Type:** `slide-two-part`
- **Section:** Exponential
- **Content:**
  - **Primary:** Formula box with orange border
    - $$\frac{dy}{dt} = ky$$
    - "The rate of change is proportional to the current amount"
  - **Secondary:**
    - "k > 0: Exponential **growth**"
    - "k < 0: Exponential **decay**"
    - "k is the proportionality constant (not the rate itself!)"

### Slide 4: Solving the Exponential Equation
- **Type:** `slide-visual`
- **Section:** Exponential
- **Content:**
  - Title: "Solving dy/dt = ky by Separation"
  - **D3 Visualization:** Step-by-step solution
    - Step 1: "Separate: (1/y) dy = k dt"
    - Step 2: "Integrate: ln|y| = kt + C"
    - Step 3: "Solve: |y| = e^{kt+C} = Ae^{kt}"
    - Step 4: "With y(0) = y₀: A = y₀"
  - Result box: $$y = y_0 e^{kt}$$
  - Caption: "The exponential function is its own derivative (up to a constant)"

### Slide 5: Exponential Growth Visualization
- **Type:** `slide-visual`
- **Section:** Exponential
- **Content:**
  - Title: "Exponential Growth (k > 0)"
  - **D3 Visualization:** Interactive exponential curves
    - Show y = y₀e^{kt} for different k values
    - Slider for k: 0.1 to 2.0
    - Show doubling time changing with k
  - Observations:
    - "Larger k = faster growth"
    - "The curve gets steeper as y grows"
    - "No upper limit - y → ∞"
- **Visualization Details:**
  - Multiple curves with different k values
  - Annotate doubling time on graph

### Slide 6: Exponential Decay Visualization
- **Type:** `slide-visual`
- **Section:** Exponential
- **Content:**
  - Title: "Exponential Decay (k < 0)"
  - **D3 Visualization:** Interactive decay curves
    - Show y = y₀e^{kt} for negative k values
    - Show half-life marked on graph
  - Observations:
    - "Amount decreases over time"
    - "Never reaches zero (approaches asymptotically)"
    - "Applications: radioactive decay, depreciation"
- **Visualization Details:**
  - Show horizontal asymptote at y = 0
  - Mark half-life on graph

### Slide 7: Doubling Time and Half-Life
- **Type:** `slide-comparison`
- **Section:** Exponential
- **Content:**
  - Title: "Key Time Formulas"
  - Column 1: Doubling Time (k > 0)
    - "When does y = 2y₀?"
    - "2y₀ = y₀e^{kT_d}"
    - "2 = e^{kT_d}"
    - $$T_d = \frac{\ln 2}{k}$$
  - Column 2: Half-Life (k < 0)
    - "When does y = ½y₀?"
    - "½y₀ = y₀e^{kT_{1/2}}"
    - "½ = e^{kT_{1/2}}"
    - $$T_{1/2} = \frac{\ln 2}{|k|}$$

### Slide 8: Worked Example - Radioactive Decay
- **Type:** `slide-example`
- **Section:** Exponential
- **Content:**
  - Title: "Example: Carbon-14 Dating"
  - Problem: "Carbon-14 has a half-life of 5730 years. A sample contains 100 grams. How much remains after 10,000 years?"
  - Solution:
    - "Find k: T_{1/2} = ln(2)/|k|"
    - "|k| = ln(2)/5730 ≈ 0.000121"
    - "k = -0.000121 (negative for decay)"
    - "Model: A = 100e^{-0.000121t}"
    - "At t = 10000: A = 100e^{-1.21} ≈ 29.8 grams"
  - Answer box: "About 29.8 grams remain"

### Slide 9: Limitations of Exponential Growth
- **Type:** `slide-visual`
- **Section:** Transition
- **Content:**
  - Title: "The Problem with Exponential Growth"
  - **D3 Visualization:** Exponential curve extending upward
    - Show curve y = y₀e^{kt} growing without bound
    - Add annotation: "Resources are finite!"
  - Key points:
    - "Predicts unlimited growth"
    - "Ignores resource constraints"
    - "Good approximation only when population is small relative to resources"
  - Caption: "We need a model that incorporates limits..."

### Slide 10: Introducing the Logistic Model
- **Type:** `slide-two-part`
- **Section:** Logistic
- **Content:**
  - **Primary:** Formula box with orange border (BC indicator)
    - $$\frac{dy}{dt} = ky\left(1 - \frac{y}{L}\right)$$
    - "BC Topic"
  - **Secondary:**
    - "k = intrinsic growth rate"
    - "L = **carrying capacity** (maximum sustainable population)"
    - "The factor (1 - y/L) is a 'braking term'"

### Slide 11: Understanding the Braking Term
- **Type:** `slide-visual`
- **Section:** Logistic
- **Content:**
  - Title: "How the Braking Term Works"
  - **D3 Visualization:** Interactive slider showing (1 - y/L)
    - y << L: (1 - y/L) ≈ 1 → nearly exponential growth
    - y = L/2: (1 - y/L) = 0.5 → growth rate halved
    - y = L: (1 - y/L) = 0 → growth stops
    - y > L: (1 - y/L) < 0 → population decreases
  - Caption: "As y approaches L, the growth rate approaches 0"
- **Visualization Details:**
  - Slider for y from 0 to 1.5L
  - Show (1 - y/L) value updating
  - Show resulting dy/dt value

### Slide 12: Logistic Equilibrium Analysis
- **Type:** `slide-visual`
- **Section:** Logistic
- **Content:**
  - Title: "Equilibrium Solutions"
  - Analysis:
    - "Set dy/dt = 0:"
    - "ky(1 - y/L) = 0"
    - "y = 0 or y = L"
  - **D3 Visualization:** Slope field for logistic equation
    - Show horizontal lines at y = 0 and y = L
    - Arrows showing flow direction
  - Stability:
    - "y = 0: UNSTABLE (perturbations grow away)"
    - "y = L: STABLE (solutions approach L)"
- **Visualization Details:**
  - Slope field with flow arrows
  - Green label on y = L (stable)
  - Red label on y = 0 (unstable)

### Slide 13: The Logistic Solution
- **Type:** `slide-visual`
- **Section:** Logistic
- **Content:**
  - Title: "The Logistic Solution (Given)"
  - Formula box:
    - $$y(t) = \frac{L}{1 + Ae^{-kt}}$$
    - where $$A = \frac{L - y_0}{y_0}$$
  - Note: "This formula is often provided on the AP exam"
  - Caption: "The derivation uses partial fractions - complex algebra!"
- **Notes:** Emphasize understanding and application over derivation.

### Slide 14: The S-Shaped Curve
- **Type:** `slide-visual`
- **Section:** Logistic
- **Content:**
  - Title: "The Logistic Curve: S-Shape (Sigmoidal)"
  - **D3 Visualization:** Animated logistic curve
    - Show S-shaped curve approaching L
    - Mark key features:
      - Initial point y₀
      - Inflection point at y = L/2
      - Horizontal asymptote at y = L
  - Key features:
    - "Slow start (nearly exponential)"
    - "Rapid middle growth"
    - "Leveling off as y → L"
- **Visualization Details:**
  - Animate the curve being drawn
  - Highlight inflection point
  - Show asymptote at y = L

### Slide 15: The Inflection Point
- **Type:** `slide-visual`
- **Section:** Logistic
- **Content:**
  - Title: "Where Is Growth Fastest?"
  - Analysis:
    - "The inflection point is where d²y/dt² = 0"
    - "This is where dy/dt is MAXIMUM"
    - "For logistic: inflection occurs at **y = L/2**"
  - **D3 Visualization:**
    - Logistic curve with inflection point marked
    - Tangent line at inflection (steepest)
    - Maximum growth rate = kL/4
  - Caption: "Growth is fastest when population is at half carrying capacity"

### Slide 16: Side-by-Side Comparison
- **Type:** `slide-visual`
- **Section:** Comparison
- **Content:**
  - Title: "Exponential vs. Logistic"
  - **D3 Visualization:** Both curves on same axes
    - Exponential: y = y₀e^{kt} (dashed, extends upward)
    - Logistic: y = L/(1 + Ae^{-kt}) (solid, levels off)
    - Same k and y₀ values
  - Observations:
    - "Initially similar (both nearly exponential)"
    - "Diverge as logistic approaches L"
    - "Exponential → ∞; Logistic → L"
- **Visualization Details:**
  - Same color scheme for both
  - Exponential: dashed orange
  - Logistic: solid orange
  - Horizontal line at y = L

### Slide 17: Comparison Table
- **Type:** `slide-comparison`
- **Section:** Comparison
- **Content:**
  - Title: "Model Comparison"
  - | Feature | Exponential | Logistic |
  - | Equation | dy/dt = ky | dy/dt = ky(1 - y/L) |
  - | Solution | y = y₀e^{kt} | y = L/(1 + Ae^{-kt}) |
  - | Long-term | y → ∞ (or 0) | y → L |
  - | Shape | J-curve | S-curve |
  - | Resources | Unlimited | Limited to L |
  - | Equilibria | y = 0 only | y = 0 and y = L |

### Slide 18: Application - Population Modeling
- **Type:** `slide-example`
- **Section:** Applications
- **Content:**
  - Title: "Example: Deer Population"
  - Problem: "A wildlife reserve introduces 50 deer into a park that can support 500 deer. The intrinsic growth rate is k = 0.3 per year."
  - Tasks:
    - a) Write the differential equation
    - b) Write the solution
    - c) Find the population after 5 years
    - d) When will population reach 400?
    - e) What is the long-term population?

### Slide 19: Application Solution
- **Type:** `slide-visual`
- **Section:** Applications
- **Content:**
  - Title: "Solution: Deer Population"
  - Solutions:
    - a) $$\frac{dP}{dt} = 0.3P\left(1 - \frac{P}{500}\right)$$
    - b) A = (500 - 50)/50 = 9, so $$P(t) = \frac{500}{1 + 9e^{-0.3t}}$$
    - c) $$P(5) = \frac{500}{1 + 9e^{-1.5}} \approx 166$$ deer
    - d) Solve 400 = 500/(1 + 9e^{-0.3t}): t ≈ 11.9 years
    - e) $$\lim_{t→∞} P(t) = L = 500$$ deer
  - **D3 Visualization:** Graph showing the solution curve with points marked

### Slide 20: What If y₀ > L?
- **Type:** `slide-visual`
- **Section:** Applications
- **Content:**
  - Title: "When Initial Population Exceeds Carrying Capacity"
  - **D3 Visualization:** Logistic with y₀ > L
    - Show curve decreasing toward L
    - Population still approaches L (from above)
  - Analysis:
    - "If y₀ = 1.5L, then (1 - y₀/L) = -0.5"
    - "dy/dt < 0: population DECREASES"
    - "Still approaches L, but from above"
  - Caption: "L is an attractor - all positive solutions approach L"

### Slide 21: Real-World Applications
- **Type:** `slide-list`
- **Section:** Applications
- **Content:**
  - Title: "Where Do We See Logistic Growth?"
  - List:
    - "**Biology:** Population growth in ecosystems"
    - "**Epidemiology:** Spread of diseases (limited susceptible population)"
    - "**Technology:** Adoption of new products (limited market)"
    - "**Learning:** Skill acquisition (limited ceiling)"
    - "**Chemistry:** Reaction rates (limited reagents)"
  - Caption: "Any growth process with natural limits!"

### Slide 22: Practice - Identify the Model
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Which Model?"
  - Scenarios:
    1. "Bacteria in a petri dish with unlimited nutrients"
    2. "Fish population in a lake with limited food"
    3. "Radioactive decay of uranium"
    4. "Spread of a rumor through a school of 500 students"
  - Time: "2 minutes"

### Slide 23: Practice Solutions
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions: Model Identification"
  - List:
    1. "Bacteria with unlimited nutrients → **Exponential growth**"
    2. "Fish with limited food → **Logistic** (L = carrying capacity)"
    3. "Radioactive decay → **Exponential decay**"
    4. "Rumor in school of 500 → **Logistic** (L = 500)"

### Slide 24: Practice - Logistic Analysis
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Quick Check"
  - Given: $$\frac{dy}{dt} = 0.2y\left(1 - \frac{y}{200}\right)$$ with y(0) = 20
  - Questions:
    1. "What is k?"
    2. "What is the carrying capacity L?"
    3. "At what population is growth fastest?"
    4. "What is the long-term behavior?"
  - Time: "2 minutes"

### Slide 25: Practice Solutions
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Solutions: Logistic Analysis"
  - Answers:
    1. "k = 0.2"
    2. "L = 200"
    3. "Growth fastest at y = L/2 = 100"
    4. "Long-term: y → 200 as t → ∞"
  - **D3 Visualization:** Small graph showing the solution curve

### Slide 26: Unit 7 Recap
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Unit 7: The Complete Journey"
  - List:
    - "**Class 39:** Modeling - translate verbal → differential equation"
    - "**Class 40:** Slope fields - visualize solutions"
    - "**Class 41:** Euler's method - approximate numerically (BC)"
    - "**Class 42:** Separation of variables - solve exactly"
    - "**Class 43:** Exponential & logistic - apply to real models"
  - Caption: "From words to equations to solutions to applications!"

### Slide 27: Key Formulas Reference
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "Key Formulas to Know"
  - **Exponential:**
    - Equation: dy/dt = ky
    - Solution: y = y₀e^{kt}
    - Doubling time: T_d = ln(2)/k
    - Half-life: T_{1/2} = ln(2)/|k|
  - **Logistic (BC):**
    - Equation: dy/dt = ky(1 - y/L)
    - Solution: y = L/(1 + Ae^{-kt})
    - Inflection: y = L/2
    - Long-term: y → L

### Slide 28: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Given: $$\frac{dy}{dt} = 0.5y\left(1 - \frac{y}{1000}\right)$$ with y(0) = 100
  - Tasks:
    1. "Identify k and L"
    2. "Find the equilibrium solutions"
    3. "At what y-value is growth fastest?"
    4. "Describe the long-term behavior if y(0) = 1200 instead"

### Slide 29: Congratulations
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Unit 7 Complete!"
  - Secondary: "You now have a complete toolkit for differential equations: modeling, visualizing, approximating, and solving."
- **Notes:** Celebrate completion of the unit.

---

## D3 Visualization Specifications

### Visualization 1: Exponential Growth/Decay (Slides 5, 6)

```javascript
// Interactive exponential curves
// Features:
// - y = y₀e^{kt} with adjustable k
// - Slider for k value (-2 to 2)
// - Show doubling time or half-life annotation
// - Multiple curves for different k values

// Interaction:
// - Slider changes k in real time
// - Curve updates smoothly
// - Time markers update

// Color scheme:
// - Growth curves: orange
// - Decay curves: blue
// - Asymptote (y = 0): dashed gray

// Font sizes: 1.25rem for all labels
```

### Visualization 2: Braking Term Demonstration (Slide 11)

```javascript
// Interactive visualization of (1 - y/L)
// Features:
// - Slider for y from 0 to 1.5L
// - Display (1 - y/L) value
// - Display resulting dy/dt = ky(1 - y/L)
// - Color coding: positive (green), negative (red)

// Visual elements:
// - Bar showing (1 - y/L) value
// - Numerical display
// - Growth rate bar

// Animation:
// - Smooth transitions as slider moves
// - Color changes at y = L threshold

// Font sizes: 1.5rem for values, 1.25rem for labels
```

### Visualization 3: Logistic Slope Field (Slide 12)

```javascript
// Slope field with equilibrium analysis
// Features:
// - Slope field for dy/dt = ky(1 - y/L)
// - Horizontal lines at y = 0 and y = L
// - Flow arrows indicating direction
// - Stability labels

// Annotations:
// - y = 0: dashed line, "unstable" (red)
// - y = L: dashed line, "stable" (green)
// - Solution curves flowing toward L

// Color scheme:
// - Slope marks: gray
// - Equilibrium lines: orange dashed
// - Flow arrows: match stability color

// Font sizes: 1.25rem for all labels
```

### Visualization 4: S-Curve Animation (Slide 14)

```javascript
// Animated logistic curve
// Features:
// - Draw S-curve progressively
// - Mark inflection point at y = L/2
// - Show horizontal asymptote at y = L
// - Annotate key features

// Animation:
// - Curve drawn from left to right
// - 3 second total animation
// - Features labeled as curve reaches them

// Key points to mark:
// - Initial point (0, y₀)
// - Inflection point (marked with dot)
// - Asymptote at y = L (dashed horizontal)

// Font sizes: 1.25rem for annotations
```

### Visualization 5: Exponential vs Logistic Comparison (Slide 16)

```javascript
// Side-by-side comparison on same axes
// Features:
// - Exponential curve (dashed)
// - Logistic curve (solid)
// - Same k, y₀ values
// - Horizontal line at y = L

// Visual distinction:
// - Exponential: dashed orange, extends upward
// - Logistic: solid orange, levels off at L
// - Initially overlapping, then diverging

// Animation:
// - Draw both curves simultaneously
// - Highlight divergence point

// Font sizes: 1.25rem for legend and labels
```

### Visualization 6: Population Application (Slide 19)

```javascript
// Deer population solution graph
// Features:
// - Logistic curve P = 500/(1 + 9e^{-0.3t})
// - Mark t = 5 point (P ≈ 166)
// - Mark t ≈ 11.9 point (P = 400)
// - Horizontal asymptote at P = 500

// Annotations:
// - Initial point (0, 50)
// - P(5) ≈ 166 marked
// - P = 400 line with intersection
// - Carrying capacity L = 500

// Color scheme:
// - Curve: orange
// - Markers: blue dots
// - Asymptote: dashed gray

// Font sizes: 1.25rem for all labels
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-7-diffeq: #ea580c` for accents
- Logistic curves should show smooth S-shape
- Equilibrium analysis should show clear stability indication
- Comparison visualizations need clear legend
- Minimum font size 1.25rem for all D3 text elements
- Support keyboard navigation (arrow keys, T for TOC)
- Logistic formula often provided - emphasize interpretation over derivation
- BC indicator on logistic-specific slides
