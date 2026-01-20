# Lesson Plan: Increasing/Decreasing Intervals and First Derivative Test

## Class 26 | Unit 5: Analytical Applications of Differentiation

---

## Overview

This session establishes the fundamental connection between the sign of the first derivative and the behavior of a function. Students will learn that f'(x) > 0 implies f is increasing and f'(x) < 0 implies f is decreasing. The First Derivative Test provides a method to classify local extrema by examining sign changes in f'.

**CED Topics:** 5.3 - Determining Intervals on Which a Function Is Increasing or Decreasing; 5.4 - Using the First Derivative Test to Determine Relative Extrema

---

## Learning Objectives

By the end of this class, students will be able to:

1. State the theorem connecting the sign of f' to increasing/decreasing behavior
2. Construct a sign chart for f' to analyze function behavior
3. Determine intervals where a function is increasing or decreasing
4. Apply the First Derivative Test to classify critical points as local max, local min, or neither
5. Recognize that a critical point without a sign change in f' is NOT an extremum
6. Connect graphical behavior of f with the sign of f'

---

## Prior Knowledge Required

- Finding critical points (Class 25)
- Calculating derivatives using rules (Units 2-3)
- Mean Value Theorem (Class 24)
- Understanding of intervals and inequalities

---

## Materials Needed

- Presentation slides with D3 visualizations
- Student devices for Desmos exploration
- Graphing calculators
- Sign chart templates (optional)

---

## Class Structure (50 minutes)

### Opening Hook: Graph Reading (5 min)

**Activity:**
Display a graph of f'(x) (NOT f!) and ask:
> "Where is the original function f increasing? Decreasing? Where might f have a maximum or minimum?"

**Discussion:**
- When f' is above the x-axis, what is f doing?
- When f' crosses the x-axis, what happens to f?
- This reversal (reading f from f') is a crucial skill

**Preview:** Today we'll formalize this connection between f' and f.

### Increasing/Decreasing Theorem (12 min)

**Theorem:**
Let f be continuous on [a, b] and differentiable on (a, b).
- If f'(x) > 0 for all x in (a, b), then f is **increasing** on [a, b]
- If f'(x) < 0 for all x in (a, b), then f is **decreasing** on [a, b]
- If f'(x) = 0 for all x in (a, b), then f is **constant** on [a, b]

**Intuition:**
- Positive derivative = positive rate of change = function going UP
- Negative derivative = negative rate of change = function going DOWN
- Zero derivative = zero rate of change = function staying FLAT

**Visual Demonstration:**
- Show function with tangent lines at various points
- When tangent tilts upward (positive slope), function rises
- When tangent tilts downward (negative slope), function falls

**Connection to MVT:**
This theorem is actually proven using the Mean Value Theorem:
- If f'(x) > 0 on (a, b), then for any x1 < x2, MVT gives f(x2) - f(x1) = f'(c)(x2 - x1)
- Since f'(c) > 0 and x2 - x1 > 0, we have f(x2) > f(x1)
- This means f is increasing!

**Procedure to Find Increasing/Decreasing Intervals:**
1. Find all critical points (where f' = 0 or undefined)
2. Create intervals using critical points as boundaries
3. Test the sign of f' in each interval using ONE test point per interval
4. Conclude: f' > 0 means increasing, f' < 0 means decreasing

**Example:** f(x) = x^3 - 12x

1. **Find f'(x):** f'(x) = 3x^2 - 12 = 3(x^2 - 4) = 3(x - 2)(x + 2)

2. **Find critical points:** f'(x) = 0 when x = -2 or x = 2

3. **Create intervals:** (-∞, -2), (-2, 2), (2, ∞)

4. **Test each interval:**

   | Interval | Test Point | f'(test point) | Sign |
   |----------|------------|----------------|------|
   | (-∞, -2) | x = -3 | 3(9) - 12 = 15 | + |
   | (-2, 2) | x = 0 | 3(0) - 12 = -12 | - |
   | (2, ∞) | x = 3 | 3(9) - 12 = 15 | + |

5. **Conclusion:**
   - f is increasing on (-∞, -2] and [2, ∞)
   - f is decreasing on [-2, 2]

### First Derivative Test (15 min)

**Theorem (First Derivative Test):**
Suppose c is a critical point of a continuous function f.

1. If f' changes from **positive to negative** at c, then f has a **local maximum** at c
2. If f' changes from **negative to positive** at c, then f has a **local minimum** at c
3. If f' **does not change sign** at c, then f has **no local extremum** at c

**Why It Works:**
- **+ to -:** Function increases up to c, then decreases after c = hilltop (local max)
- **- to +:** Function decreases down to c, then increases after c = valley bottom (local min)
- **No change:** Function continues in same direction through c (no turning point)

**Visual Animation:**
- Show function with tangent lines showing slope change
- Local max: tangent rotates from upward to horizontal to downward
- Local min: tangent rotates from downward to horizontal to upward

**Complete Analysis Example:** f(x) = 2x^3 - 9x^2 + 12x - 4

1. **Find f'(x):** f'(x) = 6x^2 - 18x + 12 = 6(x^2 - 3x + 2) = 6(x - 1)(x - 2)

2. **Critical points:** x = 1 and x = 2

3. **Sign chart:**

   | Interval | Test Point | f'(test) | Sign |
   |----------|------------|----------|------|
   | (-∞, 1) | x = 0 | 6(1)(2) = 12 | + |
   | (1, 2) | x = 1.5 | 6(0.5)(-0.5) = -1.5 | - |
   | (2, ∞) | x = 3 | 6(2)(1) = 12 | + |

4. **Apply First Derivative Test:**
   - At x = 1: f' changes from + to -, so **LOCAL MAXIMUM**
   - At x = 2: f' changes from - to +, so **LOCAL MINIMUM**

5. **Find function values (optional but useful):**
   - f(1) = 2 - 9 + 12 - 4 = 1 (local max value)
   - f(2) = 16 - 36 + 24 - 4 = 0 (local min value)

**Critical Example: No Sign Change**

f(x) = x^4

1. f'(x) = 4x^3
2. Critical point: x = 0 (where f'(0) = 0)
3. Sign chart: f'(-1) = -4 < 0, f'(1) = 4 > 0
4. Wait! Both sides of x = 0:
   - f'(-0.1) = 4(-0.001) = -0.004 < 0
   - f'(0.1) = 4(0.001) = 0.004 > 0
5. Sign changes from - to +, so x = 0 is a local minimum.

**Another Example: f(x) = x^3**

1. f'(x) = 3x^2
2. Critical point: x = 0
3. Sign: f'(-1) = 3 > 0, f'(1) = 3 > 0
4. Both sides positive - NO sign change
5. x = 0 is NOT a local extremum (it's an inflection point)

### Practice and Applications (13 min)

**Practice Problem 1:** f(x) = x^4 - 4x^3

1. f'(x) = 4x^3 - 12x^2 = 4x^2(x - 3)
2. Critical points: x = 0, x = 3
3. Sign analysis: Need to be careful about x^2 factor!
   - 4x^2 ≥ 0 always, so sign depends entirely on (x - 3)
   - For x < 3: (x - 3) < 0, so f' < 0 (when x ≠ 0)
   - For x > 3: (x - 3) > 0, so f' > 0
4. At x = 0: Sign is - on both sides (f' < 0 for small negative x, f' < 0 for small positive x)
   - No sign change at x = 0, so NOT an extremum
5. At x = 3: Sign changes from - to +
   - LOCAL MINIMUM at x = 3

**Practice Problem 2:** f(x) = sin(x) + cos(x) on [0, 2π]

1. f'(x) = cos(x) - sin(x)
2. f'(x) = 0 when cos(x) = sin(x), i.e., tan(x) = 1
3. Solutions in [0, 2π]: x = π/4 and x = 5π/4
4. Test: f'(0) = 1 - 0 = 1 > 0
5. f'(π) = -1 - 0 = -1 < 0
6. f'(3π/2) = 0 - (-1) = 1 > 0
7. Increasing on [0, π/4] and [5π/4, 2π]
8. Decreasing on [π/4, 5π/4]
9. Local max at x = π/4, local min at x = 5π/4

**Application: Revenue Analysis**

If R(x) = 100x - x^2 represents revenue from selling x units:
- R'(x) = 100 - 2x
- R'(x) > 0 when x < 50 (revenue increasing)
- R'(x) < 0 when x > 50 (revenue decreasing)
- Maximum revenue at x = 50 units

### Closing (5 min)

**Exit Ticket:**
Given f'(x) = (x - 1)^2(x - 3), find:
1. All critical points
2. Intervals where f is increasing/decreasing
3. Classify each critical point (local max, local min, or neither)

**Key Takeaways:**
- f' > 0 means f increasing; f' < 0 means f decreasing
- Sign chart is the essential organizational tool
- First Derivative Test: look for sign CHANGE to classify extrema
- No sign change at critical point = NOT an extremum

**Preview:** Tomorrow we'll explore what the SECOND derivative tells us about function behavior (concavity).

---

## Differentiation Strategies

### For students who need more support:
- Provide sign chart templates with clear sections
- Practice factoring derivatives before sign analysis
- Use graphing calculator to verify results visually
- Focus on polynomial examples first

### For advanced students:
- Analyze functions with rational or trigonometric derivatives
- Explore: Why does (x - c)^(even power) in f' mean no sign change at c?
- Challenge: Find all functions with f' > 0 everywhere
- Investigate piecewise functions and their derivative analysis

---

## Common Misconceptions to Address

1. **"f'(x) = 0 means f has an extremum"**
   - Address: Show f(x) = x^3, where f'(0) = 0 but no sign change occurs.

2. **"Test points can be anywhere"**
   - Address: Test points must be in the correct interval, strictly between critical points.

3. **"f'(x) > 0 at a point means f is increasing"**
   - Address: Increasing/decreasing is defined on INTERVALS, not at single points.

4. **"Check the sign of f(x), not f'(x)"**
   - Address: Common error - emphasize we analyze f', not f.

5. **"Include critical points in increasing intervals"**
   - Address: Technically "f is increasing on (a, b)" refers to the open interval, but we can include endpoints if continuous.

6. **"First Derivative Test always gives definitive answer"**
   - Address: True! Unlike the Second Derivative Test, it's never inconclusive (as long as we can determine signs).

---

## Assessment Notes

- Monitor sign chart construction during practice
- Exit ticket tests understanding of the "no sign change" case
- Note which students confuse f and f'
- Check that students correctly identify all critical points before analyzing

---

## Connections

**Prior knowledge:**
- Critical points (Class 25)
- Derivative calculations (Units 2-3)
- Mean Value Theorem (Class 24)

**Future connections:**
- Second Derivative Test (Class 27)
- Concavity and inflection points (Class 27)
- Curve sketching (Class 28)
- Optimization problems (Class 29)

---

## Notation Notes

**Sign Chart Format:**
```
Critical points: x = c1, x = c2
        (-∞, c1)    (c1, c2)    (c2, ∞)
f':        +           -           +
f:        inc        dec         inc
```

**AP Exam Language:**
- "On what intervals is f increasing?"
- "Justify your answer using the first derivative"
- "Does f have a local maximum, minimum, or neither at x = c? Justify."
