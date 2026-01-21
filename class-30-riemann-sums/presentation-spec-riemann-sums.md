# Presentation Spec: Riemann Sums and Accumulation

## Class 30 | Unit 6: Integration and Accumulation of Change
## CED Topics 6.1, 6.2

---

## Overview

This presentation introduces integration through the lens of accumulation, using the velocity-distance relationship as a concrete foundation. Students discover that area under a curve can be approximated using rectangles, with better approximations from more rectangles. Interactive D3 visualizations allow students to explore left, right, and midpoint Riemann sums and observe convergence as n increases.

**Theme Color:** `#d4a028` (Unit 6 Gold)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 6: Integration and Accumulation of Change"
  - Title: "Riemann Sums"
  - Subtitle: "Approximating Area Through Accumulation"
  - Meta: "Class 30 | CED 6.1, 6.2 | NCSSM"

### Slide 1: The Velocity Problem
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "A car's velocity changes every second. How far did it travel?"
  - Secondary: "If velocity were constant, this would be easy. But it's changing!"
- **Notes:** This connects to students' physics intuition and motivates the need for integration

### Slide 2: Discrete Velocity Data
- **Type:** `slide-visual`
- **Section:** Opening Hook
- **Content:**
  - Title: "Velocity Readings"
  - Table display:
    - t = 0, 1, 2, 3, 4, 5 seconds
    - v = 10, 15, 18, 20, 21, 22 m/s
  - Question: "Total distance = ?"
- **Notes:** Tabular data is common on AP FRQ

### Slide 3: The Key Insight
- **Type:** `slide-two-part`
- **Section:** Conceptual Foundation
- **Content:**
  - Primary: "For constant velocity: distance = velocity x time"
  - Secondary: "For changing velocity: break into small intervals where velocity is *approximately* constant"
- **Notes:** This is the fundamental approximation idea

### Slide 4: Small Intervals Strategy
- **Type:** `slide-visual`
- **Section:** Conceptual Foundation
- **Content:**
  - Title: "Approximate with Small Pieces"
  - Diagram showing velocity-time graph divided into intervals
  - Each rectangle: height = v(t_i), width = delta-t
  - Labels: "Small distance = v(t_i) * delta-t"
- **Notes:** Introduce the rectangle approximation visually

### Slide 5: The Sum of Small Distances
- **Type:** `slide-visual`
- **Section:** Conceptual Foundation
- **Content:**
  - Title: "Total Distance = Sum of Pieces"
  - Math display: $$\text{Total distance} \approx \sum_{i=1}^{n} v(t_i) \cdot \Delta t$$
  - Caption: "This sum of small pieces is called a Riemann sum"
- **Notes:** First introduction of the Riemann sum concept

### Slide 6: Area Under the Curve
- **Type:** `slide-visual`
- **Section:** Area Connection
- **Content:**
  - Title: "Distance = Area Under Velocity Curve"
  - **D3 Visualization:** Velocity-time graph with rectangles showing area
  - Caption: "Each rectangle's area represents distance traveled in that interval"
- **Visualization Details:**
  - Show v(t) curve
  - Overlay rectangles with base = delta-t, height = v(t_i)
  - Shade rectangles in theme color
  - Display sum value

### Slide 7: From Velocity to General Functions
- **Type:** `slide-statement`
- **Section:** Area Connection
- **Content:**
  - Statement: "The same idea works for any function: the area under a curve can be approximated by rectangles"
  - Secondary: "3Blue1Brown: 'The sum of many small things approaches an integral as the number of things grows'"

### Slide 8: Setting Up the Problem
- **Type:** `slide-visual`
- **Section:** Formal Notation
- **Content:**
  - Title: "Setting Up a Riemann Sum"
  - For function f(x) on interval [a, b]:
  - Step 1: Divide into n equal subintervals
  - Step 2: Width of each: $\Delta x = \frac{b-a}{n}$
  - Step 3: Choose sample points in each subinterval

### Slide 9: Three Types of Riemann Sums
- **Type:** `slide-comparison`
- **Section:** Types of Sums
- **Content:**
  - Title: "Choosing Sample Points"
  - Column 1: Left Riemann Sum
    - Use left endpoint of each subinterval
    - Formula preview
  - Column 2: Right Riemann Sum
    - Use right endpoint of each subinterval
    - Formula preview
  - Column 3: Midpoint Sum
    - Use center of each subinterval
    - Formula preview

### Slide 10: Left Riemann Sum
- **Type:** `slide-visual`
- **Section:** Types of Sums
- **Content:**
  - Title: "Left Riemann Sum"
  - **D3 Visualization:** Function with left-endpoint rectangles
  - Formula: $$L_n = \sum_{i=0}^{n-1} f(x_i) \Delta x \text{ where } x_i = a + i \cdot \Delta x$$
  - Caption: "Height is function value at LEFT edge of each subinterval"
- **Visualization Details:**
  - Function: f(x) = x^2 on [0, 2]
  - Draw rectangles with left-endpoint heights
  - Display n and current sum value

### Slide 11: Right Riemann Sum
- **Type:** `slide-visual`
- **Section:** Types of Sums
- **Content:**
  - Title: "Right Riemann Sum"
  - **D3 Visualization:** Function with right-endpoint rectangles
  - Formula: $$R_n = \sum_{i=1}^{n} f(x_i) \Delta x \text{ where } x_i = a + i \cdot \Delta x$$
  - Caption: "Height is function value at RIGHT edge of each subinterval"
- **Visualization Details:**
  - Same function f(x) = x^2 on [0, 2]
  - Draw rectangles with right-endpoint heights
  - Display n and current sum value

### Slide 12: Midpoint Riemann Sum
- **Type:** `slide-visual`
- **Section:** Types of Sums
- **Content:**
  - Title: "Midpoint Riemann Sum"
  - **D3 Visualization:** Function with midpoint rectangles
  - Formula: $$M_n = \sum_{i=1}^{n} f(\bar{x}_i) \Delta x \text{ where } \bar{x}_i = a + \left(i - \frac{1}{2}\right) \Delta x$$
  - Caption: "Height is function value at CENTER of each subinterval"

### Slide 13: Interactive Riemann Sum Explorer
- **Type:** `slide-visual`
- **Section:** Exploration
- **Content:**
  - Title: "Explore: What Happens as n Increases?"
  - **D3 Visualization:** Interactive Riemann sum with controls
    - Slider for n (1 to 100)
    - Toggle for left/right/midpoint
    - Real-time sum display
    - Comparison to "true" area
  - Caption: "Watch the approximation improve as you add more rectangles"
- **Visualization Details:**
  - Function: f(x) = x^2 on [0, 2]
  - Draggable slider for n
  - Buttons for sum type
  - Display: "n = [value], Sum = [value], Error = [value]"

### Slide 14: Over and Under Estimation
- **Type:** `slide-visual`
- **Section:** Analysis
- **Content:**
  - Title: "When Do We Overestimate? Underestimate?"
  - **D3 Visualization:** Split view showing:
    - Increasing function with left/right sums
    - Gap regions highlighted in contrasting color
  - Key insight displayed below

### Slide 15: Over/Under Analysis Table
- **Type:** `slide-two-part`
- **Section:** Analysis
- **Content:**
  - Title: "Overestimate vs. Underestimate"
  - Primary (for increasing functions):
    - Left Riemann sum: UNDERESTIMATE (rectangles below curve)
    - Right Riemann sum: OVERESTIMATE (rectangles above curve)
  - Secondary (for decreasing functions):
    - Left Riemann sum: OVERESTIMATE
    - Right Riemann sum: UNDERESTIMATE
- **Notes:** This is frequently tested on AP exam

### Slide 16: Worked Example Setup
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "Example: Approximate the Area"
  - Problem box: "Approximate $\int_0^2 x^2\,dx$ using n = 4 subintervals"
  - Setup:
    - $\Delta x = \frac{2-0}{4} = 0.5$
    - Subintervals: [0, 0.5], [0.5, 1], [1, 1.5], [1.5, 2]

### Slide 17: Worked Example - Left Sum
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "Left Riemann Sum (n = 4)"
  - Sample points: x = 0, 0.5, 1, 1.5
  - Function values: f(0) = 0, f(0.5) = 0.25, f(1) = 1, f(1.5) = 2.25
  - Calculation:
    - $L_4 = (0 + 0.25 + 1 + 2.25)(0.5) = 3.5 \cdot 0.5 = 1.75$
  - Result: $L_4 = 1.75$

### Slide 18: Worked Example - Right Sum
- **Type:** `slide-example`
- **Section:** Worked Example
- **Content:**
  - Title: "Right Riemann Sum (n = 4)"
  - Sample points: x = 0.5, 1, 1.5, 2
  - Function values: f(0.5) = 0.25, f(1) = 1, f(1.5) = 2.25, f(2) = 4
  - Calculation:
    - $R_4 = (0.25 + 1 + 2.25 + 4)(0.5) = 7.5 \cdot 0.5 = 3.75$
  - Result: $R_4 = 3.75$

### Slide 19: Worked Example - Analysis
- **Type:** `slide-visual`
- **Section:** Worked Example
- **Content:**
  - Title: "Comparing Our Estimates"
  - Display: $L_4 = 1.75 < \text{True Area} < R_4 = 3.75$
  - Preview: "True area = $\frac{8}{3} \approx 2.67$"
  - Verification: $1.75 < 2.67 < 3.75$ (check mark)
  - Caption: "The true value is bounded between our estimates!"

### Slide 20: Summation Notation
- **Type:** `slide-visual`
- **Section:** Notation
- **Content:**
  - Title: "Formal Riemann Sum Notation"
  - Display: $$\sum_{i=1}^{n} f(x_i^*) \Delta x$$
  - Component breakdown:
    - $\Sigma$ = "sum from i = 1 to n"
    - $f(x_i^*)$ = "function value at sample point"
    - $\Delta x$ = "width of each subinterval"
- **Notes:** AP exam requires fluency with this notation

### Slide 21: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Prompt: "Set up a right Riemann sum for $f(x) = \sin(x)$ on $[0, \pi]$ with n = 6"
  - Hints:
    - Find $\Delta x$
    - Identify the sample points
    - Write the sum (don't need to compute)
  - Time: "3 minutes"

### Slide 22: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - $\Delta x = \frac{\pi - 0}{6} = \frac{\pi}{6}$
  - Right endpoints: $\frac{\pi}{6}, \frac{2\pi}{6}, \frac{3\pi}{6}, \frac{4\pi}{6}, \frac{5\pi}{6}, \pi$
  - Sum: $R_6 = \frac{\pi}{6}\left[\sin\frac{\pi}{6} + \sin\frac{2\pi}{6} + \sin\frac{3\pi}{6} + \sin\frac{4\pi}{6} + \sin\frac{5\pi}{6} + \sin\pi\right]$

### Slide 23: The Limit Idea
- **Type:** `slide-statement`
- **Section:** Preview
- **Content:**
  - Statement: "As n approaches infinity, Riemann sums approach the *exact* area"
  - Secondary: "Tomorrow: We define the definite integral as this limit"
  - Math preview: $$\lim_{n \to \infty} \sum_{i=1}^{n} f(x_i) \Delta x = \int_a^b f(x)\,dx$$

### Slide 24: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Riemann sums approximate area under a curve using rectangles"
    - "Three types: left, right, midpoint - differ by sample point choice"
    - "More rectangles = better approximation"
    - "$\Delta x = \frac{b-a}{n}$ is the width of each rectangle"
    - "Over/underestimation depends on whether f is increasing or decreasing"

### Slide 25: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "A table gives velocity values at t = 0, 2, 4, 6, 8 seconds. Set up a left Riemann sum to estimate total distance traveled."
  - Format: "Write using summation notation and identify all components"

---

## D3 Visualization Specifications

### Visualization 1: Velocity-Distance Rectangles (Slide 6)

```javascript
// Velocity-time graph with rectangular area approximation
// Features:
// - Plot v(t) as a curve
// - Draw rectangles showing velocity x time = distance
// - Shade rectangles in theme color with transparency
// - Display running sum

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Rectangles: var(--theme-color) #d4a028 with 0.6 opacity
// - Labels: minimum 1.25rem

// Dimensions: 600 x 400 viewBox
```

### Visualization 2: Left/Right/Midpoint Individual Views (Slides 10-12)

```javascript
// Single Riemann sum type visualization
// Features:
// - Function curve f(x) = x^2 on [0, 2]
// - Rectangles with appropriate sample point heights
// - n = 4 rectangles for clarity
// - Display sum value and formula
// - Highlight sample points on x-axis

// Color scheme:
// - Left sum rectangles: #d4a028 (theme gold)
// - Right sum rectangles: #7c3aed (purple accent)
// - Midpoint rectangles: #059669 (emerald accent)
// - All with 0.5 opacity for curve visibility
```

### Visualization 3: Interactive Riemann Sum Explorer (Slide 13)

```javascript
// Main interactive visualization for exploration
// Features:
// - Function: f(x) = x^2 on [0, 2] (or selectable functions)
// - Slider to control n (1 to 100+)
// - Toggle buttons: Left | Right | Midpoint
// - Real-time rectangle drawing
// - Display: "n = [value]", "Sum = [value]", "True area = 8/3"
// - Optional: show error |Sum - True|
// - Highlight convergence as n increases

// Implementation:
// - Use requestAnimationFrame for smooth updates
// - Debounce slider for performance at high n
// - Show "approaching exact value" message when error < 0.01

// Color scheme:
// - Rectangles: theme color with transparency
// - Curve: solid blue
// - Error region: light red for gaps, light green for overlap
```

### Visualization 4: Over/Under Estimation Comparison (Slide 14)

```javascript
// Split view showing over/underestimation
// Features:
// - Two panels side by side
// - Left panel: increasing function with left sum (gaps highlighted)
// - Right panel: increasing function with right sum (overlaps highlighted)
// - Color gaps in red (underestimate), overlaps in green (overestimate)
// - Animate to emphasize the difference

// Color scheme:
// - Underestimate gaps: rgba(239, 68, 68, 0.4) (red)
// - Overestimate overlaps: rgba(34, 197, 94, 0.4) (green)
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- Visualizations triggered via goToSlide override pattern
- All D3 text minimum 1.25rem
- Slider interactions use debouncing for performance
- Ensure viewBox responsiveness for all SVGs
- TOC sections: Opening Hook, Conceptual Foundation, Area Connection, Types of Sums, Exploration, Analysis, Worked Example, Practice, Summary
