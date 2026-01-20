# Presentation Spec: Definite Integrals and Notation

## Class 31 | Unit 6: Integration and Accumulation of Change
## CED Topic 6.3

---

## Overview

This presentation formalizes the definite integral as the limit of Riemann sums and introduces integral notation. Students learn that the integral symbol represents "sum," understand each component of integral notation, and interpret definite integrals as signed (net) area. Key properties of definite integrals enable algebraic manipulation. Visualizations demonstrate the transition from discrete sums to continuous integrals and clarify signed area concepts.

**Theme Color:** `#d4a028` (Unit 6 Gold)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 6: Integration and Accumulation of Change"
  - Title: "The Definite Integral"
  - Subtitle: "From Riemann Sums to Exact Area"
  - Meta: "Class 31 | CED 6.3 | NCSSM"

### Slide 1: Recall - Riemann Sums
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Yesterday: Riemann sums approximate area using rectangles"
  - Secondary: "Today: What happens when we use infinitely many infinitely thin rectangles?"
- **Notes:** Connect to previous class

### Slide 2: The Limiting Question
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "As n Approaches Infinity..."
  - **D3 Visualization:** Animation showing rectangles becoming thinner and more numerous
  - Display: Riemann sum value converging to a specific number
  - Caption: "The approximation becomes exact!"
- **Visualization Details:**
  - Show n = 4, 8, 16, 32, 64, ... in sequence
  - Display sum values converging

### Slide 3: The Definition
- **Type:** `slide-visual`
- **Section:** The Definite Integral
- **Content:**
  - Title: "The Definite Integral"
  - Definition box with gold border:
    - $$\int_a^b f(x)\,dx = \lim_{n \to \infty} \sum_{i=1}^{n} f(x_i) \Delta x$$
  - Caption: "The definite integral is DEFINED as the limit of Riemann sums"
- **Notes:** Emphasize this is a definition, not a theorem

### Slide 4: The Integral Symbol
- **Type:** `slide-visual`
- **Section:** Notation Breakdown
- **Content:**
  - Title: "The Integral Symbol: An Elongated S"
  - Large display of the integral sign with annotation
  - Historical note: "Leibniz chose this because it represents 'Sum'"
  - Visual: Show Sigma morphing into integral sign
- **Notes:** 3Blue1Brown: "The integral sign is an elongated S for sum"

### Slide 5: Components of Integral Notation
- **Type:** `slide-visual`
- **Section:** Notation Breakdown
- **Content:**
  - Title: "Reading Integral Notation"
  - Annotated formula: $$\int_a^b f(x)\,dx$$
  - Arrows pointing to each part:
    - $\int$ = "sum" (elongated S)
    - $a$ = "lower bound (where we start)"
    - $b$ = "upper bound (where we stop)"
    - $f(x)$ = "integrand (the function)"
    - $dx$ = "differential (infinitesimal width)"
  - Color-coded for clarity

### Slide 6: What Each Part Means
- **Type:** `slide-list`
- **Section:** Notation Breakdown
- **Content:**
  - Title: "Component by Component"
  - Table format:
    | Symbol | Meaning | Origin |
    |--------|---------|--------|
    | $\int$ | "Sum" | Replaces $\Sigma$ in the limit |
    | $a$ | Lower bound | Where we start summing |
    | $b$ | Upper bound | Where we stop summing |
    | $f(x)$ | Integrand | The function being integrated (height) |
    | $dx$ | Differential | Infinitesimal width, replaces $\Delta x$ |

### Slide 7: Reading Integrals Aloud
- **Type:** `slide-two-part`
- **Section:** Notation Breakdown
- **Content:**
  - Title: "How to Read Integrals"
  - Primary: $$\int_0^5 x^2\,dx$$
  - Secondary: "The integral from zero to five of x squared, dx"
  - Alternative: "The integral of x squared from zero to five"
- **Notes:** Practice reading aloud builds fluency

### Slide 8: The dx Is Not Just Decoration
- **Type:** `slide-statement`
- **Section:** Notation Breakdown
- **Content:**
  - Statement: "The dx tells us which variable we're integrating with respect to"
  - Secondary: "It represents the infinitesimal width - the limiting form of delta-x"
- **Notes:** Address misconception that dx is just notation

### Slide 9: Geometric Meaning
- **Type:** `slide-visual`
- **Section:** Interpretation
- **Content:**
  - Title: "Geometric Interpretation"
  - **D3 Visualization:** Function with shaded region
  - Text: "When $f(x) \geq 0$: The definite integral equals the area under the curve"
  - Display: Shaded region from a to b under positive function
- **Notes:** Start with the simplest case

### Slide 10: But What About Negative Values?
- **Type:** `slide-visual`
- **Section:** Signed Area
- **Content:**
  - Title: "Signed Area"
  - **D3 Visualization:** Function that crosses x-axis
  - Above axis: shaded blue (positive)
  - Below axis: shaded red (negative)
  - Formula: "Area above - Area below = Signed Area"

### Slide 11: Signed Area Definition
- **Type:** `slide-two-part`
- **Section:** Signed Area
- **Content:**
  - Title: "The Definite Integral as Signed Area"
  - Primary: $$\int_a^b f(x)\,dx = \text{(Area above x-axis)} - \text{(Area below x-axis)}$$
  - Secondary: "This is also called NET area"
- **Notes:** Critical concept for AP exam

### Slide 12: Signed Area Example
- **Type:** `slide-visual`
- **Section:** Signed Area
- **Content:**
  - Title: "Example: Signed Area"
  - **D3 Visualization:** $f(x) = x$ on $[-1, 2]$
  - Triangle below axis (area = 0.5) in red
  - Triangle above axis (area = 2) in blue
  - Calculation: $\int_{-1}^2 x\,dx = 2 - 0.5 = 1.5$

### Slide 13: Physical Interpretation
- **Type:** `slide-comparison`
- **Section:** Interpretation
- **Content:**
  - Title: "Physical Meaning"
  - Column 1: Velocity Example
    - "If $f(t)$ = velocity"
    - "Then $\int_a^b f(t)\,dt$ = displacement"
    - "Positive velocity = forward"
    - "Negative velocity = backward"
  - Column 2: Note
    - "Displacement can be negative!"
    - "Different from total distance traveled"

### Slide 14: Properties Introduction
- **Type:** `slide-statement`
- **Section:** Properties
- **Content:**
  - Statement: "Definite integrals have useful properties that enable computation"
  - Secondary: "These follow from the limit definition"

### Slide 15: Additivity Property
- **Type:** `slide-visual`
- **Section:** Properties
- **Content:**
  - Title: "Property 1: Additivity over Intervals"
  - Formula: $$\int_a^c f(x)\,dx = \int_a^b f(x)\,dx + \int_b^c f(x)\,dx$$
  - **D3 Visualization:** Region split at point b
  - Caption: "You can split an integral at any point and add the pieces"

### Slide 16: Constant Multiple Property
- **Type:** `slide-visual`
- **Section:** Properties
- **Content:**
  - Title: "Property 2: Constant Multiple"
  - Formula: $$\int_a^b c \cdot f(x)\,dx = c \int_a^b f(x)\,dx$$
  - Caption: "Constants can be factored out of the integral"

### Slide 17: Sum/Difference Property
- **Type:** `slide-visual`
- **Section:** Properties
- **Content:**
  - Title: "Property 3: Sum and Difference"
  - Formula: $$\int_a^b [f(x) \pm g(x)]\,dx = \int_a^b f(x)\,dx \pm \int_a^b g(x)\,dx$$
  - Caption: "The integral of a sum equals the sum of the integrals"

### Slide 18: Reversed Bounds Property
- **Type:** `slide-visual`
- **Section:** Properties
- **Content:**
  - Title: "Property 4: Reversed Bounds"
  - Formula: $$\int_a^b f(x)\,dx = -\int_b^a f(x)\,dx$$
  - Caption: "Reversing the bounds negates the integral"
- **Notes:** This follows from the direction of integration

### Slide 19: Same Bounds Property
- **Type:** `slide-statement`
- **Section:** Properties
- **Content:**
  - Title: "Property 5: Same Bounds"
  - Statement: $$\int_a^a f(x)\,dx = 0$$
  - Secondary: "There's no width, so there's no area"

### Slide 20: Properties Summary
- **Type:** `slide-list`
- **Section:** Properties
- **Content:**
  - Title: "Properties at a Glance"
  - List:
    1. Additivity: $\int_a^c = \int_a^b + \int_b^c$
    2. Constant multiple: $\int c \cdot f = c \int f$
    3. Sum/difference: $\int (f \pm g) = \int f \pm \int g$
    4. Reversed bounds: $\int_a^b = -\int_b^a$
    5. Same bounds: $\int_a^a = 0$

### Slide 21: Using Geometry to Evaluate
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Evaluate Using Geometry"
  - Problem: Evaluate $\int_0^3 (2x + 1)\,dx$
  - Graph shows trapezoid with:
    - Left height: 1 (at x = 0)
    - Right height: 7 (at x = 3)
    - Base: 3
  - Solution: Area = $\frac{1}{2}(1 + 7)(3) = 12$

### Slide 22: Signed Area Practice
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Signed Area Example"
  - Problem: Evaluate $\int_0^{2\pi} \sin(x)\,dx$
  - Graph shows sine wave with equal positive and negative areas
  - Calculation: "Area above (0 to pi) = 2, Area below (pi to 2pi) = 2"
  - Result: $\int_0^{2\pi} \sin(x)\,dx = 2 - 2 = 0$
  - Caption: "The areas cancel exactly!"

### Slide 23: Exit Ticket Setup
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Given graph with:
    - Triangular region above x-axis from x = 0 to x = 4, area = 6
    - Triangular region below x-axis from x = 4 to x = 7, area = 3
  - Question: "Find $\int_0^7 f(x)\,dx$"

### Slide 24: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "The definite integral is the limit of Riemann sums"
    - "The integral symbol is an elongated S for 'sum'"
    - "The integral gives SIGNED (net) area, not total area"
    - "Properties let us manipulate integrals algebraically"
    - "dx tells us the variable of integration"

### Slide 25: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: The Fundamental Theorem of Calculus"
  - Secondary: "The surprising connection between derivatives and integrals!"

---

## D3 Visualization Specifications

### Visualization 1: Rectangle Convergence Animation (Slide 2)

```javascript
// Animation showing Riemann sums converging as n increases
// Features:
// - Function curve f(x) = x^2 on [0, 2]
// - Animate through n = 4, 8, 16, 32, 64, 128
// - Display sum value updating
// - Show convergence to 8/3 = 2.667
// - Pause between each n value for clarity

// Implementation:
// - Use setInterval or requestAnimationFrame
// - Smooth transition between rectangle counts
// - Display: "n = [value], Sum = [value]"
// - Highlight when |Sum - 8/3| < 0.01
```

### Visualization 2: Signed Area Interactive (Slides 10, 12)

```javascript
// Function crossing x-axis with signed area display
// Features:
// - Function: f(x) = x on [-1, 2]
// - Shade above-axis region in positive color (blue)
// - Shade below-axis region in negative color (red)
// - Display area calculations for each region
// - Show net area calculation

// Color scheme:
// - Positive region: rgba(59, 130, 246, 0.5) (blue)
// - Negative region: rgba(239, 68, 68, 0.5) (red)
// - Function curve: #60a5fa
```

### Visualization 3: Notation Breakdown Animation (Slide 5)

```javascript
// Animated annotation of integral components
// Features:
// - Display integral formula large and centered
// - Sequentially highlight each component
// - Arrow and label appear for each part
// - Color-code: bounds in blue, integrand in purple, dx in orange
// - After all shown, display complete reading

// Animation timing:
// - 2 seconds per component
// - Fade in labels with slight bounce
```

### Visualization 4: Additivity Property Visual (Slide 15)

```javascript
// Region split at interior point
// Features:
// - Function with shaded area from a to c
// - Slider or animation to split at point b
// - Two regions shown in different shades
// - Display: "Total area = Left piece + Right piece"
// - Formula updates to show equality

// Interactive element:
// - Drag point b between a and c
// - Areas update in real-time
```

### Visualization 5: Geometric Evaluation Helper (Slides 21, 22)

```javascript
// Help visualize geometric shapes under curves
// Features:
// - For y = 2x + 1: show trapezoid with dimensions labeled
// - For y = sin(x): show positive and negative lobes with areas
// - Highlight that geometric formulas apply

// Labels all minimum 1.25rem
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-6-integration: #d4a028` for accents
- Signed area visualizations use consistent color coding throughout
- Properties can use subtle animations to reinforce meaning
- Notation breakdown animation key for building fluency
- All D3 text minimum 1.25rem
- TOC sections: Opening, The Definite Integral, Notation Breakdown, Interpretation, Signed Area, Properties, Practice, Summary
