# Research: Volumes with Disc and Washer Methods

## Overview

This document summarizes research on how expert educators teach volumes of revolution using the disc and washer methods, including rotation around the x-axis, y-axis, and other horizontal/vertical lines. It informs the lesson plan and presentation spec for Class 47.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Volumes of Revolution

**Source:** [3blue1brown.com](https://www.3blue1brown.com/)

**Core Pedagogical Strategy:**

Grant Sanderson's approach emphasizes that volumes of revolution are a special case of cross-sectional volumes where the cross sections are circles (discs) or annuli (washers). The key insight: when you rotate a region around an axis, each vertical (or horizontal) slice becomes a circular disc or washer.

**Conceptual Foundation:**

> "Rotating a region around an axis turns each slice into a circle. The area of a circle is pi*r^2, so we integrate pi*r^2 dx."

**Key Teaching Moves:**

1. **Connect to cross sections** - Disc/washer is just cross-section with A(x) = pi*r^2 or pi*(R^2 - r^2)
2. **Visualize the rotation** - See how the 2D region sweeps out a 3D solid
3. **Identify the radius** - Distance from the axis of rotation to the curve

### Professor Leonard: Disc and Washer Methods

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Extensive visualization of the rotation process
- Clear distinction between disc (solid) and washer (hollow)
- Systematic treatment of different axes of rotation
- Many worked examples with increasing complexity

**Approach:**

1. **Disc Method (Solid):**
   - Use when region is between one curve and the axis of rotation
   - V = pi * integral of [r(x)]^2 dx
   - r(x) = distance from axis to curve

2. **Washer Method (Hollow):**
   - Use when there's a "hole" in the solid (region between two curves)
   - V = pi * integral of ([R(x)]^2 - [r(x)]^2) dx
   - R(x) = outer radius, r(x) = inner radius

3. **Non-standard axes:**
   - Rotating around y = k or x = k instead of the axes
   - Adjust radius formulas: r = |curve - axis|

**Key Insight:**
"Always measure radius from the AXIS OF ROTATION to the curve, not from the x-axis."

### Khan Academy: Disc and Washer Methods

**Source:** [Khan Academy - Volumes of Revolution](https://www.khanacademy.org/math/ap-calculus-ab/ab-applications-of-integration-new/ab-8-9/v/disc-method-around-x-axis)

**Key Teaching Points:**

1. **Disc Method Setup:**
   - Rotate y = f(x) around x-axis from x = a to x = b
   - Each vertical slice becomes a disc with radius f(x)
   - V = integral from a to b of pi*[f(x)]^2 dx

2. **Washer Method Setup:**
   - Rotate region between y = f(x) and y = g(x) around x-axis, where f(x) > g(x) > 0
   - Each slice is a washer with outer radius f(x), inner radius g(x)
   - V = integral from a to b of pi*([f(x)]^2 - [g(x)]^2) dx

3. **Rotation Around y-axis:**
   - Express curves as x = f(y)
   - Integrate with respect to y
   - V = integral from c to d of pi*[f(y)]^2 dy

4. **Other Axes:**
   - Rotating around y = k: radius = f(x) - k or k - f(x)
   - Rotating around x = k: radius = f(y) - k or k - f(y)
   - Be careful about which is outer vs. inner radius

### Paul's Online Math Notes: Disc and Washer Methods

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/CalcI/VolumeWithRings.aspx)

**Comprehensive Framework:**

**Disc Method Summary:**
| Axis of Rotation | Formula | Radius |
|------------------|---------|--------|
| x-axis | V = pi * integral of [f(x)]^2 dx | r = f(x) |
| y-axis | V = pi * integral of [f(y)]^2 dy | r = f(y) |
| y = k | V = pi * integral of [f(x) - k]^2 dx | r = |f(x) - k| |
| x = k | V = pi * integral of [f(y) - k]^2 dy | r = |f(y) - k| |

**Washer Method Summary:**
V = pi * integral of (R^2 - r^2) dx (or dy)
- R = outer radius (farther from axis)
- r = inner radius (closer to axis)

**Critical Advice:**

> "Draw the region, draw the axis of rotation, and draw a sample slice. Label the inner and outer radii. This prevents most errors."

**Common Pattern:**
For rotation around y = k below the region:
- Outer radius: R = f(x) - k (top curve minus axis)
- Inner radius: r = g(x) - k (bottom curve minus axis)

For rotation around y = k above the region:
- Outer radius: R = k - g(x) (axis minus bottom)
- Inner radius: r = k - f(x) (axis minus top)

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Rotation Animation** | Animate region spinning around axis to form solid | Shows how 2D becomes 3D |
| **Cross Section Reveal** | Cut open the solid to show disc/washer slices | Connects to cross-section concept |
| **Radius Labeling** | Show radius measurement from axis to curve | Prevents radius errors |
| **Washer Decomposition** | Show washer = big disc - small disc | Explains R^2 - r^2 formula |
| **Axis Position Slider** | Move axis of rotation, see solid change | Builds intuition for non-standard axes |
| **Slice Sweep** | Animate single disc/washer sliding through solid | Shows how V = integral of A(x) dx |

### Recommended D3/Three.js Visualization

**Disc/Washer Method Explorer:**
1. Display base region (2D view)
2. Show axis of rotation (can be x-axis, y-axis, or custom line)
3. Button: "Rotate!" animates region spinning around axis
4. Display resulting 3D solid (with transparency to see inside)
5. Slider to show cross-sectional disc or washer at any x
6. Display: "R = [outer radius], r = [inner radius], A = pi(R^2 - r^2) = [value]"
7. Show integral setup and final volume

**Key Interactive Features:**
- Toggle between disc and washer regions
- Adjust axis of rotation location
- See formulas update dynamically

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Radius = f(x) always"** | Using f(x) even for non-x-axis rotation | Radius = distance from AXIS to curve. For y = k, radius = f(x) - k (or k - f(x)). |
| **"Subtract radii, then square"** | Computing pi(R - r)^2 instead of pi(R^2 - r^2) | Show: washer = big disc - small disc, so pi*R^2 - pi*r^2. Distribute pi, don't square the difference. |
| **"Outer radius is always the top function"** | Not considering which is farther from axis | Outer radius = curve FARTHER from axis of rotation. May be the "bottom" function if axis is above! |
| **"Use dx for y-axis rotation"** | Defaulting to dx regardless of axis | For rotation around y-axis, slices are perpendicular to y-axis, so use dy (or use shell method with dx). |
| **"Washers only when curves are both above axis"** | Misunderstanding when to use washer | Washer whenever region has a "hole" - i.e., there's space between region and axis of rotation. |
| **"pi goes inside the integral"** | Computational errors with constants | pi is constant, can factor out: V = pi * integral of (R^2 - r^2). Helps avoid errors. |
| **"Same formula for all rotation axes"** | Not adjusting for axis position | Each axis requires recalculating radii. Draw and measure from the actual axis! |

### Misconception-Busting Exercises

1. **Radius Measurement:**
   Region: y = x^2 from x = 0 to x = 2

   Rotate around x-axis: r = f(x) = x^2
   V = pi * integral from 0 to 2 of (x^2)^2 dx = pi * integral of x^4 dx = pi * 32/5

   Rotate around y = -1: r = f(x) - (-1) = x^2 + 1
   V = pi * integral from 0 to 2 of (x^2 + 1)^2 dx (different answer!)

   The axis position changes everything!

2. **R^2 - r^2 vs. (R - r)^2:**
   R = 5, r = 3

   CORRECT: R^2 - r^2 = 25 - 9 = 16
   WRONG: (R - r)^2 = 4

   These are NOT the same! Always subtract squares, don't square the difference.

3. **Which is Outer?**
   Region between y = sqrt(x) and y = x from x = 0 to x = 1

   Rotating around x-axis:
   At x = 0.5: sqrt(0.5) ≈ 0.71 > 0.5
   So sqrt(x) is farther from x-axis (outer), x is closer (inner)
   R = sqrt(x), r = x
   V = pi * integral from 0 to 1 of (x - x^2) dx

   Rotating around y = 2:
   Distance from y = 2 to sqrt(x) is 2 - sqrt(x)
   Distance from y = 2 to x is 2 - x
   At x = 0.5: 2 - 0.71 ≈ 1.29 < 2 - 0.5 = 1.5
   So y = x is now OUTER (farther from y = 2)!
   R = 2 - x, r = 2 - sqrt(x)

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 47 lesson should:

### Opening (5 min)
- Show animation of region rotating around x-axis to form a solid
- Question: "How would you find this volume?"
- Connect to yesterday: cross sections here are circles (discs) or rings (washers)
- Today: develop formulas for these special cases

### Disc Method - Rotation Around x-axis (10 min)

**Setup:**
Rotate y = f(x) from x = a to x = b around the x-axis.

- Each vertical slice at position x, when rotated, becomes a circular disc
- Radius of disc: r = f(x) (distance from x-axis to curve)
- Area of disc: A(x) = pi*[f(x)]^2
- Volume: V = integral from a to b of pi*[f(x)]^2 dx

$$V = \pi \int_a^b [f(x)]^2\,dx$$

**Example 1: Disc Around x-axis**
Find volume when y = sqrt(x) is rotated around x-axis from x = 0 to x = 4.

- Radius: r = sqrt(x)
- A(x) = pi*(sqrt(x))^2 = pi*x
- V = pi * integral from 0 to 4 of x dx = pi * [x^2/2] from 0 to 4 = pi * 8 = 8pi

**Visualization:** Show cone-like solid forming from the rotation.

### Disc Method - Rotation Around y-axis (8 min)

**Setup:**
Rotate x = f(y) from y = c to y = d around the y-axis.

- Horizontal slices, so integrate with respect to y
- Radius: r = f(y)
- V = pi * integral from c to d of [f(y)]^2 dy

**Example 2: Disc Around y-axis**
Find volume when y = x^2 (equivalently x = sqrt(y)) is rotated around y-axis from y = 0 to y = 4.

- Rewrite: x = sqrt(y)
- Radius: r = sqrt(y)
- V = pi * integral from 0 to 4 of (sqrt(y))^2 dy = pi * integral of y dy = pi * [y^2/2] from 0 to 4 = 8pi

### Washer Method - Introduction (10 min)

**When to Use:**
When the region has a "hole" - there's space between the region and the axis of rotation.

**Setup:**
Region between y = f(x) (outer) and y = g(x) (inner), rotated around x-axis.

- Outer radius: R = f(x)
- Inner radius: r = g(x)
- Washer area: A(x) = pi*R^2 - pi*r^2 = pi*(R^2 - r^2)
- Volume: V = pi * integral of (R^2 - r^2) dx

$$V = \pi \int_a^b \left([R(x)]^2 - [r(x)]^2\right)\,dx$$

**Example 3: Washer Around x-axis**
Find volume when region between y = x^2 and y = sqrt(x) is rotated around x-axis.

1. Find intersection: x^2 = sqrt(x) gives x^4 = x, so x(x^3 - 1) = 0, x = 0 or x = 1
2. On [0, 1]: sqrt(x) > x^2, so sqrt(x) is outer
3. R = sqrt(x), r = x^2
4. V = pi * integral from 0 to 1 of [(sqrt(x))^2 - (x^2)^2] dx = pi * integral of (x - x^4) dx
5. = pi * [x^2/2 - x^5/5] from 0 to 1 = pi * (1/2 - 1/5) = pi * 3/10 = 3pi/10

### Rotation Around Other Lines (12 min)

**Key Principle:**
Radius = distance from AXIS OF ROTATION to the curve.

**Rotation Around y = k (horizontal line):**
- If axis is BELOW region: R = f(x) - k, r = g(x) - k
- If axis is ABOVE region: R = k - g(x), r = k - f(x)

**Example 4: Rotation Around y = -1**
Same region (y = x^2 to y = sqrt(x)), rotated around y = -1.

The line y = -1 is BELOW the region.
- All distances from y = -1 are larger by 1
- Outer: R = sqrt(x) - (-1) = sqrt(x) + 1
- Inner: r = x^2 - (-1) = x^2 + 1
- V = pi * integral from 0 to 1 of [(sqrt(x) + 1)^2 - (x^2 + 1)^2] dx

Expand:
- (sqrt(x) + 1)^2 = x + 2sqrt(x) + 1
- (x^2 + 1)^2 = x^4 + 2x^2 + 1

V = pi * integral from 0 to 1 of [(x + 2sqrt(x) + 1) - (x^4 + 2x^2 + 1)] dx
= pi * integral of [x + 2sqrt(x) - x^4 - 2x^2] dx
= pi * [x^2/2 + (4/3)x^{3/2} - x^5/5 - (2/3)x^3] from 0 to 1
= pi * [1/2 + 4/3 - 1/5 - 2/3] = pi * [1/2 + 2/3 - 1/5] = pi * [15/30 + 20/30 - 6/30] = 29pi/30

**Example 5: Rotation Around x = 2**
Region between y = x and y = x^2 from x = 0 to x = 1, rotated around x = 2.

This is rotation around a VERTICAL line, so we use horizontal slices (dy).
- Rewrite: x = y (line) and x = sqrt(y) (parabola, taking positive root)
- From y = 0 to y = 1
- Axis x = 2 is to the RIGHT of the region
- Outer: R = 2 - y (distance from x = 2 to x = y)
- Inner: r = 2 - sqrt(y) (distance from x = 2 to x = sqrt(y))

V = pi * integral from 0 to 1 of [(2-y)^2 - (2-sqrt(y))^2] dy
= pi * integral of [(4 - 4y + y^2) - (4 - 4sqrt(y) + y)] dy
= pi * integral of [y^2 - 5y + 4sqrt(y)] dy
= pi * [y^3/3 - 5y^2/2 + (8/3)y^{3/2}] from 0 to 1
= pi * [1/3 - 5/2 + 8/3] = pi * [1/3 + 8/3 - 5/2] = pi * [3 - 5/2] = pi/2

### Practice (5 min)
Students work on setting up (and simplifying) volume integrals:
1. y = x^3 rotated around x-axis from x = 0 to x = 2 (disc)
2. Region between y = 4 and y = x^2 rotated around y = 5 (washer)

### Closing (5 min)
- Summary: Disc when solid core, washer when hollow
- Key insight: Radius = distance from axis to curve
- For non-standard axes: adjust radius by axis position
- Exit ticket: Which is larger, the volume of y = x rotated around x-axis or around y = -1, both from x = 0 to x = 1?
- Preview: Tomorrow, arc length (BC topic)

### Key Principles Throughout

1. **Draw the setup:** Sketch region, axis, and a sample slice
2. **Measure radius correctly:** From axis to curve, not from x-axis
3. **R^2 - r^2, not (R-r)^2:** Washer = big disc minus small disc
4. **Match integration variable to slicing direction:** Perpendicular to x-axis uses dx, perpendicular to y-axis uses dy
5. **Check which is outer:** The curve FARTHER from the axis gives the outer radius

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **8.9:** Volume with Disc Method: Revolving Around the x- or y-Axis
- **8.10:** Volume with Disc Method: Revolving Around Other Axes
- **8.11:** Volume with Washer Method: Revolving Around the x- or y-Axis
- **8.12:** Volume with Washer Method: Revolving Around Other Axes

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (setting up and evaluating volume integrals)
- **MP 2:** Connecting Representations (2D region to 3D solid)
- **MP 3:** Justification (explaining radius choices)

### AP Exam Connection

**Free Response:**
- Volumes of revolution are one of the most common FRQ topics
- Often combined with area between curves (find area, then find volume)
- May specify axis of rotation (including non-standard axes)
- Calculator-active questions often involve nastier functions

**Multiple Choice:**
- Which integral represents the volume?
- Find the volume when [region] is rotated around [axis]
- Common trap: wrong radius formula for non-standard axis

### Common AP Errors:
- Using (R - r)^2 instead of R^2 - r^2
- Measuring radius from wrong reference (x-axis instead of actual axis of rotation)
- Forgetting to square the radius: V = pi*r^2, not pi*r
- Wrong limits of integration
- Confusing dx vs. dy for different rotation axes
- Identifying outer vs. inner radius incorrectly

### Scoring Rubric Expectations:
- Point for correct limits of integration
- Point for correct outer radius
- Point for correct inner radius (or just radius for disc)
- Point for correct integral setup (pi*(R^2 - r^2))
- Point for correct antiderivative
- Point for correct final answer

### Fluency Goal
By the end of this class, students should:
- Distinguish when to use disc vs. washer method
- Set up volume integrals for rotation around x-axis, y-axis, and other lines
- Correctly identify outer and inner radii
- Evaluate volume integrals
- Visualize the 3D solid formed by rotation

---

## Sources

- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Khan Academy: Disc Method](https://www.khanacademy.org/math/ap-calculus-ab/ab-applications-of-integration-new/ab-8-9/v/disc-method-around-x-axis)
- [Khan Academy: Washer Method](https://www.khanacademy.org/math/ap-calculus-ab/ab-applications-of-integration-new/ab-8-11/v/washer-method)
- [Professor Leonard: Disc and Washer Methods](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Volume of Solids of Revolution](https://tutorial.math.lamar.edu/Classes/CalcI/VolumeWithRings.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
