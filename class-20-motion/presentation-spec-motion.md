# Presentation Spec: Position, Velocity, and Acceleration

## Class 20 | Unit 4: Contextual Applications of Differentiation
## CED Topic 4.2

---

## Overview

This presentation explores the fundamental connection between position, velocity, and acceleration through derivatives. Motion problems provide the most intuitive context for understanding derivatives as rates of change. Students learn to analyze straight-line motion, determine when objects are speeding up or slowing down, and distinguish between displacement and total distance traveled.

**Theme Color:** `#059669` (Unit 4 Emerald)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 4: Contextual Applications of Differentiation"
  - Title: "Position, Velocity, and Acceleration"
  - Subtitle: "The Mathematics of Motion"
  - Meta: "Class 20 | CED 4.2 | NCSSM"

### Slide 1: The Car Dashboard
- **Type:** `slide-visual`
- **Section:** Opening Hook
- **Content:**
  - Title: "What Does Your Dashboard Tell You?"
  - Image/diagram of speedometer
  - Questions:
    - "What does the speedometer show? (Speed - how fast right now)"
    - "Is speed the same as velocity? (No - velocity includes direction)"
    - "What makes the reading change? (Acceleration)"
- **Notes:** Connects to everyday experience

### Slide 2: The Big Question
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "How do position, velocity, and acceleration relate mathematically?"
  - Secondary: "Answer: Derivatives connect them!"

### Slide 3: The Derivative Chain
- **Type:** `slide-visual`
- **Section:** Core Concept
- **Content:**
  - Title: "The Position-Velocity-Acceleration Chain"
  - **D3 Visualization:** Animated chain diagram
    - s(t) = position → differentiate → v(t) = velocity → differentiate → a(t) = acceleration
  - Math display:
    - $$s(t) = \text{position at time } t$$
    - $$v(t) = s'(t) = \text{velocity}$$
    - $$a(t) = v'(t) = s''(t) = \text{acceleration}$$

### Slide 4: Physical Meaning
- **Type:** `slide-list`
- **Section:** Core Concept
- **Content:**
  - Title: "What Each Quantity Tells Us"
  - List items:
    - "Position s(t): WHERE is the particle? (location on number line)"
    - "Velocity v(t) = s'(t): HOW FAST and WHICH DIRECTION? (rate of position change)"
    - "Acceleration a(t) = s''(t): HOW IS VELOCITY CHANGING? (rate of velocity change)"

### Slide 5: Motion Simulator
- **Type:** `slide-visual`
- **Section:** Core Concept
- **Content:**
  - Title: "Visualizing Motion"
  - **D3 Visualization:** Interactive motion simulator
    - Number line with moving particle
    - Time slider controls animation
    - Synced graphs of s(t), v(t), a(t) below
    - Current values displayed: position, velocity, acceleration
  - Caption: "Watch how the particle moves as time progresses"
- **Visualization Details:**
  - Function: s(t) = t³ - 6t² + 9t + 2
  - Show particle on number line
  - Three aligned graphs below
  - Highlight current time on all graphs

### Slide 6: Worked Example - Setup
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "Example: Analyzing Motion"
  - Problem: "A particle moves along the x-axis with position $s(t) = t^3 - 6t^2 + 9t + 2$ (meters, seconds)"
  - Step 1: Find velocity
    - $$v(t) = s'(t) = 3t^2 - 12t + 9 \text{ m/s}$$
  - Step 2: Find acceleration
    - $$a(t) = v'(t) = 6t - 12 \text{ m/s}^2$$

### Slide 7: Worked Example - Values at t = 1
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "At t = 1 second..."
  - Calculations:
    - $s(1) = 1 - 6 + 9 + 2 = 6$ meters (position)
    - $v(1) = 3 - 12 + 9 = 0$ m/s (momentarily at rest!)
    - $a(1) = 6 - 12 = -6$ m/s² (velocity decreasing)
  - Interpretation: "At t = 1, the particle is at position 6m, momentarily stopped, with velocity decreasing"

### Slide 8: Key Motion Questions
- **Type:** `slide-list`
- **Section:** Analyzing Motion
- **Content:**
  - Title: "Key Questions About Motion"
  - Table format:
    - "When is the particle at rest?" → "Find where v(t) = 0"
    - "When is it moving right (positive direction)?" → "Find where v(t) > 0"
    - "When is it moving left (negative direction)?" → "Find where v(t) < 0"
    - "When is it speeding up?" → "When v(t) and a(t) have SAME sign"
    - "When is it slowing down?" → "When v(t) and a(t) have OPPOSITE signs"

### Slide 9: Speeding Up vs. Slowing Down
- **Type:** `slide-visual`
- **Section:** Analyzing Motion
- **Content:**
  - Title: "The Speeding Up/Slowing Down Rule"
  - **D3 Visualization:** 2x2 grid showing scenarios
    - v > 0, a > 0: "Speeding up (moving right, velocity increasing)"
    - v > 0, a < 0: "Slowing down (moving right, velocity decreasing)"
    - v < 0, a > 0: "Slowing down (moving left, velocity becoming less negative)"
    - v < 0, a < 0: "Speeding up (moving left, velocity becoming more negative)"
  - Key insight box: "Speeding up means |v| is increasing, NOT that v > 0"

### Slide 10: Sign Chart Analysis
- **Type:** `slide-visual`
- **Section:** Analyzing Motion
- **Content:**
  - Title: "Sign Chart Method"
  - Example with s(t) = t³ - 6t² + 9t + 2:
  - Factor v(t): $v(t) = 3t^2 - 12t + 9 = 3(t-1)(t-3)$
  - v(t) = 0 at t = 1 and t = 3
  - Sign chart for v(t):
    - (0, 1): + (moving right)
    - (1, 3): - (moving left)
    - (3, ∞): + (moving right)

### Slide 11: Combined Sign Analysis
- **Type:** `slide-visual`
- **Section:** Analyzing Motion
- **Content:**
  - Title: "Complete Motion Analysis"
  - Combined sign chart:
    - a(t) = 6t - 12 = 0 at t = 2
    - Sign chart for a(t): negative on (0, 2), positive on (2, ∞)
  - Table:
    - (0, 1): v > 0, a < 0 → Moving right, slowing down
    - (1, 2): v < 0, a < 0 → Moving left, speeding up
    - (2, 3): v < 0, a > 0 → Moving left, slowing down
    - (3, ∞): v > 0, a > 0 → Moving right, speeding up

### Slide 12: Speed vs. Velocity
- **Type:** `slide-comparison`
- **Section:** Speed vs. Velocity
- **Content:**
  - Title: "Speed is NOT Velocity"
  - Column 1: Velocity v(t)
    - "Signed quantity (includes direction)"
    - "Can be positive or negative"
    - "v = -5 means moving LEFT"
  - Column 2: Speed |v(t)|
    - "Magnitude only (always positive)"
    - "How fast, regardless of direction"
    - "|v| = 5 means moving at speed 5"
  - Example: "If v(t) = -5 m/s, the particle moves LEFT at SPEED 5 m/s"

### Slide 13: Displacement Definition
- **Type:** `slide-two-part`
- **Section:** Displacement vs. Distance
- **Content:**
  - Title: "Displacement"
  - Primary: "Displacement = Final Position - Initial Position"
  - Secondary: $$\text{Displacement} = s(b) - s(a)$$
  - Note: "Can be positive, negative, or zero. Measures NET change in position."

### Slide 14: Total Distance Definition
- **Type:** `slide-two-part`
- **Section:** Displacement vs. Distance
- **Content:**
  - Title: "Total Distance Traveled"
  - Primary: "Total Distance = Sum of all |distances| in each segment"
  - Steps:
    - "1. Find where velocity changes sign (direction changes)"
    - "2. Calculate |distance| in each segment"
    - "3. Add all segments"
  - Note: "Always positive. Accounts for backtracking."

### Slide 15: Distance vs. Displacement Visual
- **Type:** `slide-visual`
- **Section:** Displacement vs. Distance
- **Content:**
  - Title: "The Difference Matters"
  - **D3 Visualization:** Number line animation
    - Particle path: starts at 2, goes to 6, back to 2, then to 6
    - Displacement: 6 - 2 = 4 meters
    - Distance: |6-2| + |2-6| + |6-2| = 4 + 4 + 4 = 12 meters
  - Caption: "Same starting and ending positions, very different distance!"

### Slide 16: Distance Example
- **Type:** `slide-example`
- **Section:** Displacement vs. Distance
- **Content:**
  - Title: "Example: Computing Both"
  - For s(t) = t³ - 6t² + 9t + 2 on [0, 4]:
  - Positions at key times:
    - s(0) = 2, s(1) = 6, s(3) = 2, s(4) = 6
  - Displacement: s(4) - s(0) = 6 - 2 = 4 meters
  - Total Distance:
    - t: 0→1: |6-2| = 4 m (moving right)
    - t: 1→3: |2-6| = 4 m (moving left)
    - t: 3→4: |6-2| = 4 m (moving right)
    - Total: 4 + 4 + 4 = 12 meters

### Slide 17: Common Misconceptions
- **Type:** `slide-list`
- **Section:** Misconceptions
- **Content:**
  - Title: "Avoid These Errors"
  - List items:
    - "Velocity = speed: No! Velocity has direction (sign), speed doesn't"
    - "Negative velocity means slowing down: No! It means moving LEFT"
    - "a > 0 means speeding up: Only if v > 0 too! Check BOTH signs"
    - "Total distance = displacement: No! Distance counts backtracking"
    - "v = 0 means stopped forever: No! Just momentarily at rest"

### Slide 18: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem: "A particle has position $s(t) = t^2 - 4t + 3$ for $t \geq 0$"
  - Tasks:
    - "1. Find v(t) and a(t)"
    - "2. When is the particle at rest?"
    - "3. When is it speeding up?"
    - "4. Find displacement and total distance on [0, 5]"
  - Time: "5 minutes"

### Slide 19: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - v(t) = 2t - 4, a(t) = 2
  - At rest when v(t) = 0: t = 2
  - Moving left when v < 0: t in (0, 2); Right when v > 0: t > 2
  - Speeding up: Since a = 2 > 0 always, speeding up when v > 0, i.e., t > 2
  - Positions: s(0) = 3, s(2) = -1, s(5) = 8
  - Displacement: 8 - 3 = 5 m
  - Total distance: |(-1) - 3| + |8 - (-1)| = 4 + 9 = 13 m

### Slide 20: Triple Graph Connection
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "Connecting the Three Graphs"
  - **D3 Visualization:** Vertically stacked graphs
    - s(t), v(t), a(t) aligned
    - Vertical line at moveable time t
    - Highlight: slope of s = value of v; slope of v = value of a
  - Caption: "The slope of each graph equals the value of the graph below it"

### Slide 21: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Position → Velocity → Acceleration via derivatives"
    - "Signs of v and a together determine speeding up/slowing down"
    - "Speed = |velocity| (always positive)"
    - "Displacement ≠ Total distance (must account for direction changes)"
    - "v = 0 means momentarily at rest, not stopped forever"

### Slide 22: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "For $s(t) = t^2 - 6t$, find when the particle is speeding up on $[0, 5]$."
  - Hint: "Find v(t) and a(t), then compare signs"

### Slide 23: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Related Rates"
  - Secondary: "When multiple quantities change together, how do their rates connect?"

---

## D3 Visualization Specifications

### Visualization 1: Motion Simulator (Slide 5)

```javascript
// Interactive particle motion visualization
// Features:
// - Number line with particle marker
// - Time slider controls t from 0 to 5
// - Three aligned graphs below: s(t), v(t), a(t)
// - Vertical time indicator line on all graphs
// - Current values displayed: s(t), v(t), a(t) with units
// - Direction arrow on particle

// Color scheme:
// - Particle: var(--theme-color) #059669
// - Position graph: #60a5fa (blue)
// - Velocity graph: #a78bfa (purple)
// - Acceleration graph: #f97316 (orange)
// - Time line: #fbbf24 (gold)

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Speeding Up/Slowing Down Grid (Slide 9)

```javascript
// 2x2 grid showing motion scenarios
// Features:
// - Four quadrants based on signs of v and a
// - Each quadrant: small animation of particle
// - Direction arrow and acceleration arrow
// - Clear labels: "Speeding up" or "Slowing down"
// - Color-coded: same sign = green, opposite = red

// Animation: Brief loop showing particle behavior in each case
```

### Visualization 3: Distance vs. Displacement (Slide 15)

```javascript
// Number line animation showing particle path
// Features:
// - Animated particle tracing path
// - Trail showing path history (color-coded by direction)
// - Running totals: displacement and distance
// - Final comparison at end of animation

// Path: s(0)=2 → s(1)=6 → s(3)=2 → s(4)=6
// Show particle reversing direction at t=1 and t=3
```

### Visualization 4: Triple Graph Stack (Slide 20)

```javascript
// Three aligned graphs showing s, v, a
// Features:
// - Vertically stacked with shared x-axis (time)
// - Draggable vertical line selecting time t
// - At selected t:
//   - Mark point on each curve
//   - Show tangent line on s graph (slope = v value)
//   - Show tangent line on v graph (slope = a value)
// - Display: "slope of s = [value] = v(t)" etc.

// Demonstrates derivative relationships visually
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-4-context: #059669` for accents
- Motion simulator should be smooth (60fps if possible)
- Sign charts should be clearly formatted with +/- symbols
- Include Rule of Four: graphical (triple graphs), numerical (calculations), analytical (derivatives), verbal (interpretations)
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
