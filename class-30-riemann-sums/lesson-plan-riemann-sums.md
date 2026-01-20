# Lesson Plan: Accumulation and Riemann Sums

## Class 30 | Unit 6: Integration and Accumulation of Change

---

## Overview

This foundational session introduces integration through the lens of accumulation. Students will discover that the area under a curve can be approximated using rectangles, and that better approximations come from using more rectangles. The focus is on building conceptual understanding of why integration exists and how Riemann sums provide a systematic method for approximating area.

**CED Topics:** 6.1 - Exploring Accumulations of Change, 6.2 - Approximating Areas with Riemann Sums

---

## Learning Objectives

By the end of this class, students will be able to:

1. Explain how accumulation of change connects to area under a curve
2. Set up and compute left, right, and midpoint Riemann sums for a given function
3. Use proper summation notation for Riemann sums: $\sum_{i=1}^{n} f(x_i) \Delta x$
4. Determine whether a Riemann sum overestimates or underestimates based on function behavior
5. Recognize that increasing the number of rectangles improves the approximation

---

## Prior Knowledge Required

- Understanding of area formulas (rectangles, triangles)
- Familiarity with summation notation ($\Sigma$)
- Function evaluation at specific points
- Concept of rate of change from differentiation unit

---

## Materials Needed

- Presentation slides with D3 Riemann sum visualization
- Graphing calculators
- Student devices for interactive exploration
- Riemann sum worksheet with tabular data problems

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Velocity Problem**

Present this scenario:
> A car's velocity is recorded every second for 5 seconds: v(0) = 10 m/s, v(1) = 15 m/s, v(2) = 18 m/s, v(3) = 20 m/s, v(4) = 21 m/s.
> How far did the car travel?

**Discussion:** If velocity were constant, distance = velocity × time. But velocity is changing!

**Key insight:** We can approximate by assuming velocity is roughly constant over each 1-second interval. This is the essence of Riemann sums.

### Conceptual Foundation: Accumulation (10 min)

**From Velocity to Distance**

- For constant velocity: $d = v \cdot t$
- For changing velocity: break into small intervals where velocity is "approximately constant"
- Each small distance $\approx v(t_i) \cdot \Delta t$
- Total distance $\approx \sum v(t_i) \cdot \Delta t$

**The Area Connection**

Show velocity-time graph with rectangles:
- Base of each rectangle = $\Delta t$ (time interval)
- Height of each rectangle = $v(t_i)$ (velocity at sample point)
- Area of each rectangle = $v(t_i) \cdot \Delta t$ (distance traveled in that interval)
- Total area = total distance traveled

**Key insight from 3Blue1Brown:**
> "The sum of many small things approaches an integral as the number of things grows."

### Riemann Sum Notation and Types (12 min)

**Setting Up the Problem**

For a function $f(x)$ on interval $[a, b]$:
1. Divide into $n$ equal subintervals
2. Width of each: $\Delta x = \frac{b-a}{n}$
3. Choose sample points in each subinterval

**Three Types of Riemann Sums**

| Method | Sample Point | Formula |
|--------|--------------|---------|
| Left Riemann Sum | Left endpoint | $\sum_{i=0}^{n-1} f(x_i) \Delta x$ where $x_i = a + i \cdot \Delta x$ |
| Right Riemann Sum | Right endpoint | $\sum_{i=1}^{n} f(x_i) \Delta x$ where $x_i = a + i \cdot \Delta x$ |
| Midpoint Sum | Center of subinterval | $\sum_{i=1}^{n} f(\bar{x}_i) \Delta x$ where $\bar{x}_i = a + (i - \frac{1}{2}) \Delta x$ |

**Interactive Visualization:** Use D3 visualization to show:
1. Start with $n = 4$ rectangles under $f(x) = x^2$ on $[0, 2]$
2. Toggle between left, right, and midpoint
3. Increase $n$ to 8, 16, 32 - observe approximation improving
4. Display running sum and compare to "true" area

### Over/Under Estimation Analysis (5 min)

**When does left/right overestimate or underestimate?**

For **increasing functions**:
- Left Riemann sum: underestimate (rectangles below curve)
- Right Riemann sum: overestimate (rectangles above curve)

For **decreasing functions**:
- Left Riemann sum: overestimate
- Right Riemann sum: underestimate

Show visualization with contrasting colors for gaps (underestimate) and overlap (overestimate).

### Worked Example (10 min)

**Problem:** Approximate $\int_0^2 x^2 \, dx$ using $n = 4$ subintervals with left and right Riemann sums.

**Setup:**
- $\Delta x = \frac{2-0}{4} = 0.5$
- Subintervals: $[0, 0.5], [0.5, 1], [1, 1.5], [1.5, 2]$

**Left Riemann Sum:**
$$L_4 = f(0) \cdot 0.5 + f(0.5) \cdot 0.5 + f(1) \cdot 0.5 + f(1.5) \cdot 0.5$$
$$= (0 + 0.25 + 1 + 2.25) \cdot 0.5 = 3.5 \cdot 0.5 = 1.75$$

**Right Riemann Sum:**
$$R_4 = f(0.5) \cdot 0.5 + f(1) \cdot 0.5 + f(1.5) \cdot 0.5 + f(2) \cdot 0.5$$
$$= (0.25 + 1 + 2.25 + 4) \cdot 0.5 = 7.5 \cdot 0.5 = 3.75$$

**Analysis:**
- Since $f(x) = x^2$ is increasing on $[0, 2]$: $L_4 < \text{true area} < R_4$
- True area (we'll verify later): $\frac{8}{3} \approx 2.67$
- Indeed: $1.75 < 2.67 < 3.75$ ✓

### Guided Practice (5 min)

**Quick Practice:** Set up (but don't fully compute) a midpoint Riemann sum for $f(x) = \sin(x)$ on $[0, \pi]$ with $n = 6$.

- $\Delta x = \frac{\pi - 0}{6} = \frac{\pi}{6}$
- Midpoints: $\frac{\pi}{12}, \frac{3\pi}{12}, \frac{5\pi}{12}, \frac{7\pi}{12}, \frac{9\pi}{12}, \frac{11\pi}{12}$
- Sum: $M_6 = \frac{\pi}{6}\left[\sin\frac{\pi}{12} + \sin\frac{3\pi}{12} + \sin\frac{5\pi}{12} + \sin\frac{7\pi}{12} + \sin\frac{9\pi}{12} + \sin\frac{11\pi}{12}\right]$

### Closing (3 min)

**Exit Ticket:** A table gives velocity values at times $t = 0, 2, 4, 6, 8$ seconds. Set up a left Riemann sum to estimate total distance traveled.

**Preview:** Tomorrow we define the definite integral as the limit of Riemann sums - the exact area when we use infinitely many rectangles.

---

## Differentiation Strategies

### For students who need more support:
- Provide a step-by-step template for setting up Riemann sums
- Use tables to organize sample points and function values
- Focus on the geometric interpretation (counting rectangles) before notation
- Start with $n = 2$ or $n = 3$ to reduce arithmetic complexity
- Pair students for the practice problems

### For advanced students:
- Challenge: What happens to $R_n - L_n$ as $n \to \infty$ for a continuous function?
- Explore: How does the trapezoidal approximation compare to midpoint?
- Investigate: For what types of functions is midpoint always more accurate than left/right?
- Calculate Riemann sums with unequal subinterval widths

---

## Common Misconceptions to Address

1. **"More rectangles always means overestimate"**
   - Address: Over/underestimation depends on whether the function is increasing or decreasing, not on the number of rectangles. More rectangles means better approximation, not larger estimate.

2. **"Riemann sums ARE the integral"**
   - Address: Riemann sums APPROXIMATE the integral. The integral is what the sums APPROACH as $n \to \infty$. Be precise with language.

3. **"Area is always positive"**
   - Address: When the function is negative, the "area" contributes negatively. This represents things like a car moving backward or money being spent rather than earned.

4. **"Only use equal-width rectangles"**
   - Address: Equal widths are standard and simplest, but unequal partitions also work. The key insight is that all widths must approach zero.

5. **"The function must be positive for Riemann sums"**
   - Address: Riemann sums work for any continuous function. Negative function values give negative contributions (signed area).

---

## Assessment Notes

- Monitor student setup of Riemann sums during the worked example
- Check that students correctly identify sample points for left vs. right sums
- Exit ticket assesses ability to apply Riemann sums to tabular data (common AP FRQ format)
- Note which students struggle with notation vs. conceptual understanding

---

## Connections

**Prior knowledge:**
- Area formulas from geometry
- Summation notation from pre-calculus
- Rates of change from differentiation unit
- Velocity and position relationship from physics

**Future connections:**
- Definite integrals as limits of Riemann sums (Class 31)
- Fundamental Theorem of Calculus (Classes 32-33)
- Applications: area, volume, average value (Unit 8)
- Numerical integration methods on AP exam

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Rectangles under curve, visualizing over/underestimation |
| **Numerical** | Computing sums from tabular velocity data |
| **Analytical** | Summation notation $\sum_{i=1}^{n} f(x_i) \Delta x$ |
| **Verbal** | "Total distance traveled," "accumulation of small changes" |
