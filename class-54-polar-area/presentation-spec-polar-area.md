# Presentation Spec: Polar Area

## Class 54 | Unit 9: Parametric, Polar, and Vector-Valued Functions (BC Only)
## CED Topics 9.8, 9.9

---

## Overview

This presentation derives and applies the polar area formula. Unlike Cartesian integration with vertical rectangles, polar area uses infinitesimal sectors (pie slices) radiating from the origin. Students will calculate areas enclosed by single polar curves and areas between two polar curves. Key visualizations include sector approximation animations, area accumulation displays, and inner/outer curve identification tools.

**Theme Color:** `#0891b2` (Unit 9 Cyan)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 9: Parametric, Polar, and Vector-Valued Functions"
  - Title: "Area in Polar Coordinates"
  - Subtitle: "Sectors Instead of Rectangles"
  - Meta: "Class 54 | CED 9.8, 9.9 | NCSSM"

### Slide 1: A New Kind of Area Problem
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "Find the Area Inside..."
  - **D3 Visualization:** Cardioid r = 1 + cos(theta)
  - Challenge: "This isn't bounded by vertical lines!"
  - "Can't use integral of (top - bottom) dx"
  - Caption: "We need a different approach for polar geometry"
- **Visualization Details:**
  - Show cardioid curve
  - Highlight the enclosed region
  - Show that vertical lines don't work

### Slide 2: The Key Insight
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "In polar coordinates, the natural 'slices' are SECTORS, not rectangles!"
  - Secondary: "Think pie slices, not vertical strips"

### Slide 3: Review - Sector Area
- **Type:** `slide-visual`
- **Section:** Deriving the Formula
- **Content:**
  - Title: "Area of a Circular Sector"
  - **D3 Visualization:** Sector of a circle with labeled parts
  - Formula: A_sector = (1/2)*r^2*theta
  - Derivation: "Fraction of circle: theta/(2*pi) times pi*r^2"
  - Caption: "This formula is the foundation for polar area"
- **Visualization Details:**
  - Show circular sector
  - Label radius r and angle theta
  - Show that it's a fraction of the full circle

### Slide 4: Setting Up the Integral
- **Type:** `slide-two-part`
- **Section:** Deriving the Formula
- **Content:**
  - Primary: The Setup
    - "Region bounded by r = f(theta) from theta = alpha to theta = beta"
    - "Divide angle interval into n thin sectors, each with angle d*theta"
  - Secondary: The Infinitesimal Sector
    - "At angle theta_i, radius is r(theta_i)"
    - "Thin sector area: dA approximately (1/2)*[r(theta)]^2 * d*theta"

### Slide 5: Sector Approximation Animation
- **Type:** `slide-visual`
- **Section:** Deriving the Formula
- **Content:**
  - Title: "Approximating with Sectors"
  - **D3 Visualization:** Region filled with thin sectors
  - Slider to control number of sectors n
  - Display: Sum of sector areas vs. true area
  - Caption: "As n increases, the approximation converges to the integral"
- **Visualization Details:**
  - Show polar curve enclosing region
  - Draw n thin sectors from origin
  - Running total of area
  - Convergence demonstration

### Slide 6: The Polar Area Formula
- **Type:** `slide-visual`
- **Section:** Deriving the Formula
- **Content:**
  - Title: "The Polar Area Formula"
  - Derivation summary:
    - "Total area approximately sum of (1/2)*r^2*d*theta"
    - "As d*theta approaches 0, sum becomes integral"
  - Definition box with cyan border:
    - $$A = \frac{1}{2}\int_{\alpha}^{\beta} [r(\theta)]^2\, d\theta$$
  - Caption: "Remember: SQUARE the r, include the 1/2"

### Slide 7: Three Critical Points
- **Type:** `slide-list`
- **Section:** Deriving the Formula
- **Content:**
  - Title: "Don't Forget!"
  - List items:
    - "The 1/2 factor is ESSENTIAL (from sector formula)"
    - "SQUARE r(theta) - the most common error is forgetting this!"
    - "Bounds are ANGLES (theta values), not radii"
- **Notes:** These are the three most common sources of error

### Slide 8: Example 1 - Circle Verification
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Verifying with a Circle"
  - Given: r = a (constant), theta from 0 to 2*pi
  - Calculation:
    - A = (1/2) * integral from 0 to 2*pi of a^2 d*theta
    - = (1/2) * a^2 * [theta] from 0 to 2*pi
    - = (1/2) * a^2 * 2*pi = pi*a^2
  - Result box: "Circle area = pi*a^2. It works!"

### Slide 9: Example 2 - Cardioid Setup
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "Area Inside a Cardioid"
  - **D3 Visualization:** Cardioid with region shaded
  - Given: r = 1 + cos(theta)
  - Bounds: theta from 0 to 2*pi (curve traced once)
  - Setup: A = (1/2) * integral from 0 to 2*pi of (1 + cos(theta))^2 d*theta
  - Caption: "First step: expand the integrand"
- **Visualization Details:**
  - Show cardioid
  - Shade enclosed area
  - Mark the bounds

### Slide 10: Cardioid Calculation
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Cardioid Area: The Calculation"
  - Expand: (1 + cos(theta))^2 = 1 + 2*cos(theta) + cos^2(theta)
  - Use identity: cos^2(theta) = (1 + cos(2*theta))/2
  - = 3/2 + 2*cos(theta) + (1/2)*cos(2*theta)
  - Integrate from 0 to 2*pi:
    - [3*theta/2 + 2*sin(theta) + (1/4)*sin(2*theta)] from 0 to 2*pi
    - = 3*pi - 0 = 3*pi
  - Final: A = (1/2)(3*pi) = **3*pi/2**

### Slide 11: Cardioid Visualization
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "Cardioid Area = 3*pi/2"
  - **D3 Visualization:** Cardioid with area filling animation
  - Show sectors filling the region as theta increases
  - Running total approaching 3*pi/2
  - Caption: "Watch the area accumulate sector by sector"
- **Visualization Details:**
  - Animate sectors being added
  - Display running integral value
  - Final shaded region

### Slide 12: Example 3 - Rose Petal
- **Type:** `slide-visual`
- **Section:** Examples
- **Content:**
  - Title: "Area of ONE Rose Petal"
  - **D3 Visualization:** r = sin(2*theta) with one petal highlighted
  - Given: r = sin(2*theta)
  - Finding bounds:
    - r = 0 when sin(2*theta) = 0
    - 2*theta = 0, pi, 2*pi, ... so theta = 0, pi/2, pi, ...
    - First petal: theta from 0 to pi/2
  - Caption: "Identify where the petal starts and ends"
- **Visualization Details:**
  - Show 4-petal rose
  - Highlight first petal
  - Mark theta = 0 and theta = pi/2

### Slide 13: Rose Petal Calculation
- **Type:** `slide-example`
- **Section:** Examples
- **Content:**
  - Title: "Rose Petal Area"
  - Setup: A = (1/2) * integral from 0 to pi/2 of sin^2(2*theta) d*theta
  - Use identity: sin^2(u) = (1 - cos(2u))/2
  - = (1/4) * integral from 0 to pi/2 of (1 - cos(4*theta)) d*theta
  - = (1/4) * [theta - (1/4)*sin(4*theta)] from 0 to pi/2
  - = (1/4) * [pi/2 - 0] = **pi/8**
  - Total rose (4 petals): 4 * (pi/8) = **pi/2**

### Slide 14: Why Not 0 to 2*pi?
- **Type:** `slide-statement`
- **Section:** Examples
- **Content:**
  - Statement: "Warning: Don't always integrate from 0 to 2*pi!"
  - Secondary:
    - "For roses, this may overcount or undercount"
    - "Find where one petal is traced, multiply by number of petals"
    - "Check: does negative r affect the region?"

### Slide 15: Area Between Two Curves
- **Type:** `slide-statement`
- **Section:** Area Between Curves
- **Content:**
  - Statement: "What about the area BETWEEN two polar curves?"
  - Secondary: "Subtract inner from outer - but which is which?"

### Slide 16: Between Curves Formula
- **Type:** `slide-two-part`
- **Section:** Area Between Curves
- **Content:**
  - Primary: The Formula
    - "Outer curve: r_outer"
    - "Inner curve: r_inner"
    - $$A = \frac{1}{2}\int_{\alpha}^{\beta} \left([r_{outer}]^2 - [r_{inner}]^2\right)\, d\theta$$
  - Secondary: Key Considerations
    - "Which curve is outer? Check at each theta!"
    - "Find bounds: usually intersection points"
    - "Curves may switch outer/inner roles"

### Slide 17: Finding Intersections
- **Type:** `slide-two-part`
- **Section:** Area Between Curves
- **Content:**
  - Primary: Standard Method
    - "Set r_1(theta) = r_2(theta)"
    - "Solve for theta values"
    - "These are the integration bounds"
  - Secondary: Don't Forget the Origin!
    - "Both curves may pass through origin at DIFFERENT theta values"
    - "Check: does either curve have r = 0?"
    - "Origin intersections need special attention"

### Slide 18: Between Curves Example Setup
- **Type:** `slide-visual`
- **Section:** Area Between Curves
- **Content:**
  - Title: "Example: Area Inside Circle, Outside Cardioid"
  - **D3 Visualization:** Circle r = 2 and cardioid r = 2(1 - cos(theta))
  - Find intersections: 2 = 2(1 - cos(theta))
    - cos(theta) = 0
    - theta = pi/2, 3*pi/2
  - Caption: "Identify which region we want"
- **Visualization Details:**
  - Show both curves
  - Shade the desired region
  - Mark intersection points

### Slide 19: Determining Inner/Outer
- **Type:** `slide-visual`
- **Section:** Area Between Curves
- **Content:**
  - Title: "Which is Outer?"
  - **D3 Visualization:** Interactive inner/outer identification
  - Check points:
    - At theta = 0: circle r = 2, cardioid r = 0 → circle is outer
    - At theta = pi: circle r = 2, cardioid r = 4 → cardioid is outer!
  - For theta in [-pi/2, pi/2]: circle outer, cardioid inner
  - Caption: "The curves switch roles at the intersection points"
- **Visualization Details:**
  - Show both curves with color coding
  - Slider for theta to show which is larger
  - Highlight the region where circle is outer

### Slide 20: Between Curves Calculation
- **Type:** `slide-example`
- **Section:** Area Between Curves
- **Content:**
  - Title: "Setting Up the Integral"
  - Region: theta in [-pi/2, pi/2], circle outer, cardioid inner
  - A = (1/2) * integral from -pi/2 to pi/2 of [4 - 4(1 - cos(theta))^2] d*theta
  - Use symmetry: integrand is even
  - A = 2 * (1/2) * integral from 0 to pi/2 of [4 - 4(1 - cos(theta))^2] d*theta
  - Caption: "Complete this calculation for practice!"

### Slide 21: Area Accumulation Visualization
- **Type:** `slide-visual`
- **Section:** Visualization
- **Content:**
  - Title: "Watching Area Accumulate"
  - **D3 Visualization:** Interactive area accumulator
  - Features:
    - Select curve type
    - Slider for theta range
    - Sectors fill as theta increases
    - Running total of area
  - Caption: "The integral is the limit of this accumulation process"
- **Visualization Details:**
  - Multiple curve options
  - Animated sector filling
  - Display integral formula with current bounds
  - Show numerical value updating

### Slide 22: Common Errors to Avoid
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Common Errors on AP Exam"
  - List items:
    - "Forgetting the 1/2 factor"
    - "Forgetting to square r"
    - "Using r values as bounds instead of theta values"
    - "Integrating 0 to 2*pi for a rose (overcounting)"
    - "Not checking which curve is outer/inner"
    - "Missing intersection at origin"

### Slide 23: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem: "Set up (don't evaluate) the integral for the area inside r = sin(theta)"
  - Tasks:
    - a) Sketch the curve
    - b) Determine the correct bounds
    - c) Write the complete integral
  - Time: "3 minutes"
  - Hint: "This is a circle of diameter 1"

### Slide 24: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - a) Circle through origin, center at (0, 1/2), diameter 1
  - b) r = sin(theta) = 0 at theta = 0 and theta = pi
     - Curve traced for theta in [0, pi]
  - c) A = (1/2) * integral from 0 to pi of sin^2(theta) d*theta
  - Verification: This equals pi/4, which is pi*(1/2)^2 for a circle of radius 1/2

### Slide 25: Key Formulas Summary
- **Type:** `slide-comparison`
- **Section:** Summary
- **Content:**
  - Title: "Polar Area Formulas"
  - Column 1: Single Curve
    - $$A = \frac{1}{2}\int_{\alpha}^{\beta} r^2\, d\theta$$
    - "Bounds are angles"
    - "Don't forget 1/2 and r^2"
  - Column 2: Between Two Curves
    - $$A = \frac{1}{2}\int_{\alpha}^{\beta} \left(r_{outer}^2 - r_{inner}^2\right)\, d\theta$$
    - "Identify outer and inner at each theta"
    - "Find intersections for bounds"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List items:
    - "Polar area uses SECTORS, not rectangles: dA = (1/2)*r^2*d*theta"
    - "The formula: A = (1/2) * integral of r^2 d*theta"
    - "Bounds are ANGLE values (where region starts/ends)"
    - "Between curves: (1/2) * integral of (r_outer^2 - r_inner^2)"
    - "Check intersections at r_1 = r_2 AND at origin"
    - "Use symmetry to simplify calculations"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "Find the area of one petal of r = cos(2*theta)"
  - Tasks:
    - Identify the bounds for one petal
    - Set up the integral
    - Use the identity cos^2(u) = (1 + cos(2u))/2
    - Evaluate

### Slide 28: Unit 9 Complete!
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Unit 9 Complete: Parametric, Polar, and Vector-Valued Functions"
  - Secondary: "Next: Unit 10 - Infinite Series!"
  - "Sums that go on forever... yet can have finite values"

---

## D3 Visualization Specifications

### Visualization 1: Sector Area Demonstration (Slide 3)

```javascript
// Circular sector visualization
// Features:
// - Full circle with sector highlighted
// - Adjustable angle theta
// - Radius r labeled
// - Area formula shown with current values

// Color scheme:
// - Circle outline: #e2e8f0 (light gray)
// - Sector fill: var(--theme-color) #0891b2 with 0.3 opacity
// - Radius lines: var(--theme-color) #0891b2
// - Arc: #f97316 (orange)

// Interaction:
// - Slider for theta
// - Area updates in real-time
// - Show formula A = (1/2)r^2*theta

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Sector Approximation (Slide 5)

```javascript
// Polar region filled with sectors
// Features:
// - Polar curve (cardioid or user-selectable)
// - n thin sectors from origin
// - Slider to control n
// - Display: sum of sectors, true area, error

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Sectors: var(--theme-color) #0891b2 with alternating opacity
// - Sum display: #22c55e (green)
// - Error display: #ef4444 (red)

// Animation:
// - As n increases, sectors get thinner
// - Sum converges to true area
// - Show convergence graphically
```

### Visualization 3: Area Accumulator (Slide 11, 21)

```javascript
// Interactive area accumulation
// Features:
// - Select curve type (circle, cardioid, rose, limacon)
// - Animated sector filling as theta increases
// - Running total of area
// - Display integral formula with current bounds

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Filled sectors: var(--theme-color) #0891b2
// - Current sector: #f97316 (orange)
// - Origin: #64748b (slate)

// Interaction:
// - Curve selector dropdown
// - Play/pause button
// - Theta slider for manual control
// - Speed control
```

### Visualization 4: Inner/Outer Identification (Slides 18, 19)

```javascript
// Two polar curves with inner/outer analysis
// Features:
// - Two curves displayed (e.g., circle and cardioid)
// - Slider for theta
// - At each theta, highlight which r is larger
// - Shade region between curves
// - Mark intersection points

// Color scheme:
// - Curve 1: var(--color-function) #60a5fa
// - Curve 2: #a855f7 (purple)
// - Outer indicator: #22c55e (green)
// - Inner indicator: #f97316 (orange)
// - Shaded region: var(--theme-color) #0891b2 with opacity

// Display:
// - r_1(theta) and r_2(theta) values
// - "Outer: [curve name]" label
// - Intersection points marked
```

### Visualization 5: Rose Petal Area (Slide 12)

```javascript
// Rose curve with one petal highlighted
// Features:
// - Complete rose r = sin(n*theta)
// - One petal filled/highlighted
// - Bounds marked (where r = 0)
// - Option to change n

// Color scheme:
// - Rose outline: var(--color-function) #60a5fa
// - Highlighted petal: var(--theme-color) #0891b2
// - Bound markers: #f97316 (orange)
// - Origin: #64748b (slate)

// Interaction:
// - n selector (2, 3, 4, 5)
// - Animate petal being traced
// - Display area calculation
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-9-param: #0891b2` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Animations should respect prefers-reduced-motion
- Emphasize the three common errors: 1/2, squaring r, angle bounds
- Include trig identity reference: sin^2 and cos^2 formulas
- This is a high-frequency AP exam topic - include "set up but don't evaluate" practice
- Mark this as the final class of Unit 9
