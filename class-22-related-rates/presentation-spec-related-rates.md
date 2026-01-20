# Presentation Spec: Related Rates Problem Solving

## Class 22 | Unit 4: Contextual Applications of Differentiation
## CED Topic 4.5

---

## Overview

This presentation extends related rates to complex scenarios involving Pythagorean theorem, similar triangles, and trigonometric relationships. Students learn to identify which geometric relationship to use and practice solving classic problems like the sliding ladder, shadow problems, and angle of elevation. The emphasis is on strategy selection and careful setup.

**Theme Color:** `#059669` (Unit 4 Emerald)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 4: Contextual Applications of Differentiation"
  - Title: "Related Rates Problem Solving"
  - Subtitle: "Pythagorean, Similar Triangles, and Trigonometry"
  - Meta: "Class 22 | CED 4.5 | NCSSM"

### Slide 1: Review - Four Steps
- **Type:** `slide-list`
- **Section:** Opening
- **Content:**
  - Title: "Quick Review: The Four-Step Method"
  - List (numbered):
    - "Draw and label all changing quantities"
    - "Write an equation relating the quantities"
    - "Differentiate with respect to time t"
    - "Substitute known values and solve"
  - Key Point: "Today's focus: Step 2 - choosing the RIGHT equation"

### Slide 2: Three Major Patterns
- **Type:** `slide-comparison`
- **Section:** Strategy Overview
- **Content:**
  - Title: "Three Geometric Patterns"
  - Three columns:
    - Column 1: Pythagorean Theorem
      - "Right triangles"
      - "Ladder, dock, kite"
      - "a² + b² = c²"
    - Column 2: Similar Triangles
      - "Proportional shapes"
      - "Shadow, cone, light"
      - "a/b = c/d"
    - Column 3: Trigonometry
      - "Changing angles"
      - "Elevation, searchlight"
      - "sin, cos, tan"

### Slide 3: The Classic Ladder Problem
- **Type:** `slide-visual`
- **Section:** Pythagorean Problems
- **Content:**
  - Title: "The Sliding Ladder"
  - **D3 Visualization:** Animated ladder sliding
    - Wall, ground forming right angle
    - Ladder of length 10 ft
    - Base moving away from wall
    - Top sliding down wall
  - Problem: "A 10-foot ladder slides down a wall. If the base moves away at 2 ft/s, how fast is the top sliding down when the base is 6 feet from the wall?"

### Slide 4: Ladder - Step 1
- **Type:** `slide-visual`
- **Section:** Pythagorean Problems
- **Content:**
  - Title: "Step 1: Draw and Label"
  - **D3 Visualization:** Labeled diagram
    - x = distance from wall to base
    - y = height of top on wall
    - Ladder length = 10 ft (constant!)
    - Arrow showing dx/dt = 2 ft/s (given)
    - Question mark on dy/dt (to find)
  - Note: "Identify what's constant vs. what changes"

### Slide 5: Ladder - Step 2
- **Type:** `slide-visual`
- **Section:** Pythagorean Problems
- **Content:**
  - Title: "Step 2: Write the Equation"
  - Diagram showing right triangle
  - Pythagorean theorem: $$x^2 + y^2 = 10^2 = 100$$
  - Key observation (highlighted):
    - "The ladder length (10 ft) is CONSTANT"
    - "Use the number 100, not a variable L²"
  - Caption: "Constants stay as numbers in the equation"

### Slide 6: Ladder - Step 3
- **Type:** `slide-example`
- **Section:** Pythagorean Problems
- **Content:**
  - Title: "Step 3: Differentiate"
  - Starting: $x^2 + y^2 = 100$
  - Differentiate both sides with respect to t:
    - $$2x\frac{dx}{dt} + 2y\frac{dy}{dt} = 0$$
  - Note: "d/dt[100] = 0 because 100 is a constant"
  - Simplified: $$x\frac{dx}{dt} + y\frac{dy}{dt} = 0$$

### Slide 7: Ladder - Step 4
- **Type:** `slide-example`
- **Section:** Pythagorean Problems
- **Content:**
  - Title: "Step 4: Substitute and Solve"
  - Find y when x = 6: $6^2 + y^2 = 100 \Rightarrow y = 8$ ft
  - Substitute into rate equation:
    - $$(6)(2) + (8)\frac{dy}{dt} = 0$$
    - $$12 + 8\frac{dy}{dt} = 0$$
    - $$\frac{dy}{dt} = -\frac{12}{8} = -1.5 \text{ ft/s}$$
  - Answer box: "The top slides DOWN at 1.5 ft/s"
  - Note: "Negative because y is decreasing"

### Slide 8: Ladder Simulator
- **Type:** `slide-visual`
- **Section:** Pythagorean Problems
- **Content:**
  - Title: "Watching the Ladder Slide"
  - **D3 Visualization:** Interactive ladder simulation
    - Animated ladder sliding
    - Display: x, y, dx/dt, dy/dt in real-time
    - Show that dy/dt gets larger (more negative) as y decreases
  - Observation: "The top accelerates as it falls!"

### Slide 9: Boat Approaching Dock
- **Type:** `slide-visual`
- **Section:** Pythagorean Problems
- **Content:**
  - Title: "Variation: Boat at Dock"
  - **D3 Visualization:** Dock and boat diagram
    - Dock 6 ft above water
    - Boat being pulled by rope
    - Rope from dock to boat bow
  - Problem: "Rope is wound in at 2 ft/s. How fast is the boat approaching when 10 ft of rope is out?"
  - Note: "Same Pythagorean setup - rope is hypotenuse"

### Slide 10: Shadow Problem Setup
- **Type:** `slide-visual`
- **Section:** Similar Triangles
- **Content:**
  - Title: "The Shadow Problem"
  - **D3 Visualization:** Lamppost, person, shadow
    - 15-foot lamppost
    - 6-foot person walking away
    - Shadow extending in front
  - Problem: "A 6-foot person walks away from a 15-foot lamppost at 4 ft/s. How fast is the tip of their shadow moving?"

### Slide 11: Shadow - Similar Triangles
- **Type:** `slide-visual`
- **Section:** Similar Triangles
- **Content:**
  - Title: "Step 2: Find the Relationship"
  - **D3 Visualization:** Highlighted similar triangles
    - Large triangle: lamppost height 15, base (x + s)
    - Small triangle: person height 6, base s
  - Similar triangles proportion:
    - $$\frac{15}{x + s} = \frac{6}{s}$$
  - Cross multiply: $15s = 6(x + s)$
  - Simplify: $15s = 6x + 6s \Rightarrow 9s = 6x \Rightarrow s = \frac{2}{3}x$

### Slide 12: Shadow - Solution
- **Type:** `slide-example`
- **Section:** Similar Triangles
- **Content:**
  - Title: "Complete the Shadow Problem"
  - Relationship: $s = \frac{2}{3}x$
  - Differentiate: $\frac{ds}{dt} = \frac{2}{3}\frac{dx}{dt} = \frac{2}{3}(4) = \frac{8}{3}$ ft/s
  - Shadow TIP speed (what was asked):
    - Tip is at distance $x + s$ from pole
    - $\frac{d}{dt}(x + s) = \frac{dx}{dt} + \frac{ds}{dt} = 4 + \frac{8}{3} = \frac{20}{3}$ ft/s
  - Answer: "The shadow tip moves at 20/3 ft/s (about 6.67 ft/s)"

### Slide 13: Conical Tank Problem
- **Type:** `slide-visual`
- **Section:** Similar Triangles
- **Content:**
  - Title: "Draining Tank Problem"
  - **D3 Visualization:** Conical tank with water
    - Tank: height 10 m, top radius 5 m
    - Water level at height h, surface radius r
  - Problem: "Water drains at 3 m³/min. How fast is the water level dropping when h = 4 m?"
  - Given: dV/dt = -3 m³/min (negative = draining)
  - Find: dh/dt when h = 4 m

### Slide 14: Conical Tank - Solution
- **Type:** `slide-example`
- **Section:** Similar Triangles
- **Content:**
  - Title: "Conical Tank Solution"
  - Similar triangles: $\frac{r}{h} = \frac{5}{10} = \frac{1}{2} \Rightarrow r = \frac{h}{2}$
  - Volume: $V = \frac{1}{3}\pi r^2 h = \frac{1}{3}\pi \left(\frac{h}{2}\right)^2 h = \frac{\pi h^3}{12}$
  - Differentiate: $\frac{dV}{dt} = \frac{\pi h^2}{4} \cdot \frac{dh}{dt}$
  - Substitute h = 4, dV/dt = -3:
    - $-3 = \frac{\pi (16)}{4} \cdot \frac{dh}{dt}$
    - $\frac{dh}{dt} = \frac{-3}{4\pi} \approx -0.24$ m/min
  - Answer: "Water level drops at 3/(4π) m/min"

### Slide 15: Angle of Elevation Setup
- **Type:** `slide-visual`
- **Section:** Trigonometric Problems
- **Content:**
  - Title: "Angle of Elevation Problem"
  - **D3 Visualization:** Balloon rising
    - Person standing on ground
    - Balloon rising above
    - Angle θ from horizontal to balloon
    - Horizontal distance 500 ft (constant)
  - Problem: "A balloon rises at 10 ft/s from 500 ft away. How fast is the angle of elevation changing when the balloon is 500 ft high?"

### Slide 16: Angle of Elevation - Setup
- **Type:** `slide-example`
- **Section:** Trigonometric Problems
- **Content:**
  - Title: "Setting Up the Trig Relationship"
  - Variables:
    - h = height of balloon
    - θ = angle of elevation
    - 500 ft = horizontal distance (CONSTANT)
  - Relationship: $\tan(\theta) = \frac{h}{500}$
  - Given: dh/dt = 10 ft/s
  - Find: dθ/dt when h = 500 ft

### Slide 17: Angle of Elevation - Solution
- **Type:** `slide-example`
- **Section:** Trigonometric Problems
- **Content:**
  - Title: "Angle of Elevation Solution"
  - Differentiate: $\sec^2(\theta) \cdot \frac{d\theta}{dt} = \frac{1}{500} \cdot \frac{dh}{dt}$
  - When h = 500: $\tan(\theta) = 1 \Rightarrow \theta = \frac{\pi}{4}$
  - At θ = π/4: $\sec^2(\theta) = 2$
  - Substitute:
    - $2 \cdot \frac{d\theta}{dt} = \frac{1}{500}(10)$
    - $\frac{d\theta}{dt} = \frac{10}{1000} = 0.01$ rad/s
  - Answer: "The angle increases at 0.01 rad/s (about 0.57°/s)"

### Slide 18: Strategy Selection Guide
- **Type:** `slide-visual`
- **Section:** Strategy Guide
- **Content:**
  - Title: "Which Approach to Use?"
  - **D3 Visualization:** Decision flowchart
    - "Is there a right angle?" → Yes → Pythagorean
    - "Are shapes proportional?" → Yes → Similar Triangles
    - "Is an angle changing?" → Yes → Trigonometry
  - Examples for each:
    - Pythagorean: ladder, dock, kite
    - Similar triangles: shadow, cone, light beam
    - Trig: elevation, searchlight, radar

### Slide 19: Practice Problem 1
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn: Kite Problem"
  - Problem: "A kite is 100 ft high, moving horizontally at 8 ft/s. How fast is the string being let out when 200 ft of string is out?"
  - Hint: "The string is the hypotenuse of a right triangle"
  - Time: "4 minutes"

### Slide 20: Practice Solution 1
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Kite Problem"
  - Setup: x = horizontal distance, s = string length, height = 100 (constant)
  - Pythagorean: $x^2 + 100^2 = s^2$
  - When s = 200: $x^2 = 40000 - 10000 = 30000 \Rightarrow x = 100\sqrt{3}$
  - Differentiate: $2x\frac{dx}{dt} = 2s\frac{ds}{dt}$
  - Substitute: $(100\sqrt{3})(8) = (200)\frac{ds}{dt}$
  - Answer: $\frac{ds}{dt} = 4\sqrt{3} \approx 6.93$ ft/s

### Slide 21: Practice Problem 2
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Identify the Approach"
  - For each scenario, identify Pythagorean, Similar Triangles, or Trig:
    - "1. A searchlight rotates, illuminating a wall"
    - "2. A ladder slides down a wall"
    - "3. A person's shadow lengthens from a streetlight"
  - Time: "2 minutes"

### Slide 22: Practice Solution 2
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Identify the Approach"
  - 1. Searchlight → **Trigonometry** (angle is changing)
  - 2. Ladder → **Pythagorean** (right angle between wall and ground)
  - 3. Shadow → **Similar Triangles** (proportional triangles from light)

### Slide 23: Common Misconceptions
- **Type:** `slide-list`
- **Section:** Misconceptions
- **Content:**
  - Title: "Avoid These Errors"
  - List items:
    - "Treating constant lengths as variables (ladder length doesn't change!)"
    - "Confusing similar triangles (they have PROPORTIONAL sides, not equal)"
    - "Forgetting chain rule for trig: d/dt[tan θ] = sec²θ · dθ/dt"
    - "Assuming all rates are positive (dy/dt < 0 when y decreases)"
    - "Using quotient rule for similar triangle ratios (cross-multiply first!)"

### Slide 24: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Choose equation based on geometry: right angle → Pythagorean"
    - "Proportional shapes → Similar triangles"
    - "Changing angles → Trigonometry"
    - "Constants have derivative = 0"
    - "Always check: does the sign make physical sense?"

### Slide 25: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Task: "Which approach (Pythagorean, similar triangles, or trig) would you use for each?"
  - Scenarios:
    - "A conical pile of sand grows as sand is added"
    - "A boat approaches a dock along a rope"
    - "A lighthouse beam sweeps along a shore"

### Slide 26: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Linearization and L'Hospital's Rule"
  - Secondary: "Powerful approximation tools using derivatives"

---

## D3 Visualization Specifications

### Visualization 1: Sliding Ladder (Slides 3-4, 8)

```javascript
// Animated ladder sliding down a wall
// Features:
// - Wall (vertical), ground (horizontal), ladder (diagonal)
// - Ladder slides: base moves right, top moves down
// - Real-time display of x, y, dx/dt, dy/dt
// - Time slider or play/pause controls
// - Pythagorean relationship shown: x² + y² = 100

// Color scheme:
// - Wall: #6b7280 (gray)
// - Ground: #6b7280 (gray)
// - Ladder: var(--theme-color) #059669
// - Labels: #1f2937

// Key insight: dy/dt becomes more negative as y decreases
```

### Visualization 2: Shadow Problem (Slides 10-11)

```javascript
// Lamppost, person, and shadow diagram
// Features:
// - Lamppost (15 ft), person (6 ft) drawn to scale
// - Person walking away, shadow extending
// - Similar triangles highlighted with color
// - Labels: x (person distance), s (shadow length)
// - Proportion shown: 15/(x+s) = 6/s

// Animation: Person walks, shadow and tip extend
```

### Visualization 3: Conical Tank (Slide 13)

```javascript
// Inverted cone with water level
// Features:
// - Cone outline (tank), water shaded
// - Dimensions: height 10m, top radius 5m
// - Current water level h, surface radius r
// - Similar triangles relationship shown
// - Water level animated dropping

// Color scheme:
// - Tank outline: #6b7280
// - Water: #3b82f6 (blue)
// - Labels: #1f2937
```

### Visualization 4: Balloon/Angle of Elevation (Slide 15)

```javascript
// Rising balloon with angle measurement
// Features:
// - Ground level, observer position
// - Balloon rising vertically
// - Angle θ from horizontal marked
// - Height h and horizontal distance labeled
// - tan(θ) = h/500 shown

// Animation: Balloon rises, angle increases
```

### Visualization 5: Strategy Flowchart (Slide 18)

```javascript
// Interactive decision tree
// Features:
// - Three decision boxes
// - Arrows leading to approach names
// - Examples under each approach
// - Possibly: click to highlight relevant examples

// Color coding by approach type
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-4-context: #059669` for accents
- Strategy guide should be visually clear and memorable
- Ladder animation should show acceleration effect (dy/dt increases in magnitude)
- Include Rule of Four: graphical (diagrams), numerical (calculations), analytical (derivatives), verbal (interpretations)
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
