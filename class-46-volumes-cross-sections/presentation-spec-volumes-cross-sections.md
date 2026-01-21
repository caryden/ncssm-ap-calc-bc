# Presentation Spec: Volumes with Cross Sections

## Class 46 | Unit 8: Applications of Integration
## CED Topics 8.7, 8.8

---

## Overview

This presentation introduces the powerful technique of finding volumes of solids with known cross sections. Students extend the "slicing" concept from area between curves to three dimensions: if we know the cross-sectional area at every position, we can integrate to find volume. The lesson covers cross sections perpendicular to both the x-axis and y-axis, with shapes including squares, rectangles, semicircles, and equilateral triangles. Key visualizations include 3D solid renderings, animated cross-section sliders, and area formula references.

**Theme Color:** `#e11d48` (Unit 8 Rose)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 8: Applications of Integration"
  - Title: "Volumes with Cross Sections"
  - Subtitle: "When You Know the Shape of Every Slice"
  - Meta: "Class 46 | CED 8.7, 8.8 | NCSSM"

### Slide 1: The Bread Loaf Analogy
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "How Do You Find the Volume of a Loaf?"
  - Image/illustration of sliced bread loaf
  - Question: "If you knew the area of each slice, how would you find the total volume?"
  - Answer: "Add up all the slice areas!"
- **Notes:** Physical intuition before formulas

### Slide 2: From 2D to 3D
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Just as area is the integral of height, volume is the integral of area."
  - Secondary: "V = ∫ A(x) dx"
- **Notes:** Key conceptual bridge

### Slide 3: The General Principle
- **Type:** `slide-two-part`
- **Section:** The Volume Formula
- **Content:**
  - Title: "Volume by Slicing"
  - Primary (Formula box):
    - "If a solid extends from x = a to x = b, and the cross-sectional area at position x is A(x):"
    - $$V = \int_a^b A(x)\,dx$$
  - Secondary:
    - "Each thin slice at position x has thickness dx and area A(x)"
    - "Volume of slice ≈ A(x) · dx"
    - "Total volume = sum of all slices = integral"

### Slide 4: Cavalieri's Principle
- **Type:** `slide-two-part`
- **Section:** The Volume Formula
- **Content:**
  - Title: "Why This Works: Cavalieri's Principle"
  - Primary:
    - "If two solids have the same cross-sectional area at every height, they have the same volume"
  - Secondary:
    - Image showing two different solids with same cross-section areas
    - "This justifies our approach regardless of cross-section shape"

### Slide 5: The Key Step
- **Type:** `slide-list`
- **Section:** The Volume Formula
- **Content:**
  - Title: "Finding A(x): The Process"
  - List (numbered):
    - "1. Identify the base region in the xy-plane"
    - "2. At position x, find the relevant dimension (usually f(x) - g(x))"
    - "3. This dimension becomes the side/radius/base of the cross section"
    - "4. Apply the geometric formula for that shape's area"
  - Caption: "Getting A(x) right is the hard part. The integral is usually straightforward."

### Slide 6: Cross Section Types Overview
- **Type:** `slide-visual`
- **Section:** Area Formulas
- **Content:**
  - Title: "Common Cross Section Shapes"
  - **Visual:** Grid of 6 shapes with formulas
    - Square: A = s²
    - Rectangle: A = bh
    - Equilateral Triangle: A = (√3/4)s²
    - Isosceles Right Triangle: A = (1/2)s²
    - Semicircle: A = (π/8)d²
    - Circle: A = (π/4)d²
  - Caption: "Memorize these area formulas!"

### Slide 7: Perpendicular to x-axis Setup
- **Type:** `slide-visual`
- **Section:** Cross Sections ⊥ x-axis
- **Content:**
  - Title: "Cross Sections Perpendicular to x-axis"
  - **D3 Visualization:** 3D view of base region with cross sections
    - Base region in xy-plane
    - Cross sections standing up perpendicular to x-axis
    - One cross section highlighted
  - Caption: "Slices are vertical planes at each x-position"

### Slide 8: Example 1 - Square Cross Sections
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Square Cross Sections"
  - Problem: "Base: y = x² and y = 4 from x = -2 to x = 2. Cross sections perpendicular to x-axis are squares."
  - Setup:
    - "At position x, region extends from y = x² to y = 4"
    - "Side of square: s = 4 - x²"
    - "Area: A(x) = s² = (4 - x²)²"

### Slide 9: Example 1 - Visualization
- **Type:** `slide-visual`
- **Section:** Worked Examples
- **Content:**
  - Title: "Visualizing the Square Cross Sections"
  - **D3 Visualization:** 3D solid with square cross sections
    - Base region: parabola and line
    - Square cross sections visible
    - Slider to move through the solid
    - Display: "At x = [value], side = [4-x²], area = [(4-x²)²]"
  - Caption: "Squares get larger toward the middle where the base is wider"

### Slide 10: Example 1 - Evaluation
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Square Cross Sections (completed)"
  - Setup: A(x) = (4 - x²)² = 16 - 8x² + x⁴
  - Evaluation:
    - $$V = \int_{-2}^{2} (16 - 8x^2 + x^4)\,dx$$
    - $$= \left[16x - \frac{8x^3}{3} + \frac{x^5}{5}\right]_{-2}^{2}$$
    - $$= 2\left(32 - \frac{64}{3} + \frac{32}{5}\right) = 2 \cdot \frac{256}{15} = \frac{512}{15}$$
  - Result box: V = 512/15 cubic units

### Slide 11: Example 2 - Semicircular Cross Sections
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Semicircular Cross Sections"
  - Problem: "Base: y = √x, y = 0, x = 0 to x = 4. Cross sections are semicircles with diameter on the base."
  - Setup:
    - "At position x, diameter = √x - 0 = √x"
    - "Radius: r = √x / 2"
    - "Area: A(x) = (1/2)πr² = (1/2)π(√x/2)² = πx/8"

### Slide 12: Example 2 - Evaluation
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Semicircular Cross Sections (completed)"
  - Evaluation:
    - $$V = \int_0^4 \frac{\pi x}{8}\,dx$$
    - $$= \frac{\pi}{8} \left[\frac{x^2}{2}\right]_0^4$$
    - $$= \frac{\pi}{8} \cdot 8 = \pi$$
  - Result box: V = π cubic units
  - Note: "Beautifully clean answer!"

### Slide 13: Example 3 - Equilateral Triangle
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Equilateral Triangle Cross Sections"
  - Problem: "Base: y = x and y = 0 from x = 0 to x = 3. Cross sections are equilateral triangles with one side on the base."
  - Setup:
    - "At position x, side of triangle: s = x"
    - "Area of equilateral triangle: A(x) = (√3/4)s² = (√3/4)x²"
  - Note: "Remember: height of equilateral triangle = (√3/2)s, so A = (1/2)·s·(√3/2)s = (√3/4)s²"

### Slide 14: Example 3 - Evaluation
- **Type:** `slide-example`
- **Section:** Worked Examples
- **Content:**
  - Title: "Example: Equilateral Triangle (completed)"
  - Evaluation:
    - $$V = \int_0^3 \frac{\sqrt{3}}{4}x^2\,dx$$
    - $$= \frac{\sqrt{3}}{4} \left[\frac{x^3}{3}\right]_0^3$$
    - $$= \frac{\sqrt{3}}{4} \cdot 9 = \frac{9\sqrt{3}}{4}$$
  - Result box: V = 9√3/4 cubic units

### Slide 15: Perpendicular to y-axis
- **Type:** `slide-two-part`
- **Section:** Cross Sections ⊥ y-axis
- **Content:**
  - Title: "Cross Sections Perpendicular to y-axis"
  - Primary:
    - "When the base region is easier to describe as x = f(y), x = g(y):"
    - $$V = \int_c^d A(y)\,dy$$
  - Secondary:
    - "Horizontal slicing planes at each y-position"
    - "Same process: find dimension from base, apply area formula"

### Slide 16: Example 4 - ⊥ to y-axis
- **Type:** `slide-example`
- **Section:** Cross Sections ⊥ y-axis
- **Content:**
  - Title: "Example: Cross Sections ⊥ to y-axis"
  - Problem: "Base: x = y² and x = 4 from y = -2 to y = 2. Cross sections perpendicular to y-axis are squares."
  - Setup:
    - "At position y, width = 4 - y²"
    - "Side of square: s = 4 - y²"
    - "Area: A(y) = (4 - y²)²"
  - Note: "Same as Example 1 by symmetry!"
  - $$V = \int_{-2}^{2} (4-y^2)^2\,dy = \frac{512}{15}$$

### Slide 17: Cross Section Formula Reference
- **Type:** `slide-comparison`
- **Section:** Summary
- **Content:**
  - Title: "Area Formulas Quick Reference"
  - Column 1: Polygons
    - "Square: A = s²"
    - "Rectangle: A = bh"
    - "Equilateral Δ: A = (√3/4)s²"
    - "Isosceles Right Δ: A = (1/2)s²"
  - Column 2: Circular
    - "Semicircle (diameter d): A = (π/8)d²"
    - "Full Circle (diameter d): A = (π/4)d²"
    - "Note: If given diameter, r = d/2"

### Slide 18: Common Errors
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Avoid These Mistakes"
  - List:
    - "Using wrong area formula (equilateral vs. isosceles right triangle)"
    - "Forgetting to square for square cross sections"
    - "Confusing diameter and radius for semicircles"
    - "Using f(x) alone instead of f(x) - g(x) for the dimension"
    - "Not matching integration variable (dx vs. dy) to slice orientation"

### Slide 19: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problem: "Set up (but do not evaluate) the integral for the volume where:"
    - "Base: y = x, y = 0, x = 4"
    - "Cross sections perpendicular to x-axis are isosceles right triangles with legs on the base"
  - Hints:
    - "What is the leg length at position x?"
    - "What is the area formula for isosceles right triangle?"
  - Time: "3 minutes"

### Slide 20: Practice Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - Steps:
    - "At position x, the base extends from y = 0 to y = x"
    - "Leg length: s = x"
    - "Area of isosceles right triangle: A(x) = (1/2)s² = (1/2)x²"
    - Setup: $$V = \int_0^4 \frac{1}{2}x^2\,dx$$
  - Evaluation (bonus):
    - "= (1/2)[x³/3]₀⁴ = (1/2)(64/3) = 32/3"

### Slide 21: Interactive Exploration
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Cross Section Explorer"
  - **D3 Visualization:** Interactive cross section viewer
    - Base region displayed
    - Dropdown to select cross section type
    - 3D rendering updates with selection
    - Slider to view cross section at different positions
  - Caption: "Explore how different cross section shapes create different solids"

### Slide 22: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Volume = ∫ A(x) dx (or ∫ A(y) dy)"
    - "The key challenge is setting up A(x) correctly"
    - "Process: (1) Identify base, (2) Find dimension at x, (3) Apply area formula, (4) Integrate"
    - "Different shapes require different area formulas - memorize them!"
    - "Cross sections can be perpendicular to x-axis (dx) or y-axis (dy)"

### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "A solid has base bounded by y = √x, y = 0, and x = 9. Cross sections perpendicular to the x-axis are squares. Write A(x) and set up the volume integral."
  - Expected answer: s = √x, A(x) = x, V = ∫₀⁹ x dx

### Slide 24: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Disc and Washer Methods"
  - Secondary: "A special case where cross sections are circles - volumes of revolution!"

---

## D3 Visualization Specifications

### Visualization 1: 3D Cross Section Overview (Slide 7)

```javascript
// 3D visualization showing base region with standing cross sections
// Features:
// - Base region in xy-plane (2D view looking down)
// - Cross sections shown as rectangles/shapes standing perpendicular
// - Perspective view to show 3D nature
// - One cross section highlighted

// Implementation:
// - Use isometric or oblique projection
// - Draw base region first (filled polygon)
// - Draw multiple cross section outlines at intervals
// - Highlight one with fill and dimension labels

// Color scheme:
// - Base region: var(--theme-color) #e11d48 with 0.3 opacity
// - Cross sections outline: var(--color-function) #60a5fa
// - Highlighted cross section: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Square Cross Section Slider (Slide 9)

```javascript
// Interactive 3D solid with moveable cross section
// Features:
// - Show solid built from square cross sections
// - Slider moves highlighted cross section through solid
// - Display: current x position, side length, area
// - Formula updates in real-time

// Interaction:
// - Slider controls x position from -2 to 2
// - Cross section at x is highlighted
// - Display: "x = [val], side = [4-x²], A(x) = [(4-x²)²]"

// Visual elements:
// - 3D solid rendered with transparency
// - Highlighted cross section opaque with dimensions
// - Grid lines on base region

// Color scheme:
// - Solid: var(--theme-color) #e11d48 with 0.4 opacity
// - Highlighted section: var(--color-highlight) #fbbf24
// - Dimension labels: white on dark background

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 3: Cross Section Type Selector (Slide 21)

```javascript
// Interactive visualization with cross section dropdown
// Features:
// - Base region: y = √x from 0 to 4
// - Dropdown: Square, Semicircle, Equilateral Triangle, Isosceles Right Triangle
// - 3D solid updates when selection changes
// - Display area formula and volume integral

// Interaction:
// - Select cross section type from dropdown
// - Solid morphs to new shape (300ms transition)
// - Formula display updates
// - Slider to view individual cross section

// Visual elements:
// - Base region always visible
// - 3D solid with selected cross section type
// - Area formula displayed prominently

// Color scheme:
// - Base: var(--color-function) #60a5fa with 0.3 opacity
// - Solid: var(--theme-color) #e11d48 with 0.5 opacity
// - Selected cross section: var(--color-highlight) #fbbf24

// Font sizes: minimum 1.25rem for all labels
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-8-int-apps: #e11d48` for accents
- 3D visualizations use isometric projection or pseudo-3D techniques
- Consider using CSS 3D transforms for simple rotations
- All visualizations must work without WebGL (use SVG-based 3D approximations)
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Test 3D views on projector - ensure depth is perceivable
- Include static fallback images if 3D rendering fails
