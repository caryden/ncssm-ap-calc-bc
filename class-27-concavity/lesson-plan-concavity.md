# Lesson Plan: Concavity and Second Derivative Test

## Class 27 | Unit 5: Analytical Applications of Differentiation

---

## Overview

This session explores what the second derivative reveals about function behavior. Students will learn that f'' controls concavity (the "shape" of the curve) and that inflection points occur where concavity changes. The Second Derivative Test provides an alternative method to classify critical points, often more efficient than the First Derivative Test.

**CED Topics:** 5.6 - Determining Concavity of Functions over Their Domains; 5.7 - Using the Second Derivative Test to Determine Extrema

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define concave up and concave down using the second derivative
2. Determine intervals of concavity using sign analysis of f''
3. Define inflection points as locations where concavity changes
4. Verify inflection points by checking for sign change in f''
5. Apply the Second Derivative Test to classify critical points
6. Recognize when the Second Derivative Test is inconclusive and revert to First Derivative Test

---

## Prior Knowledge Required

- First Derivative Test (Class 26)
- Finding critical points (Class 25)
- Calculating first and second derivatives (Units 2-3)
- Sign chart construction (Class 26)

---

## Materials Needed

- Presentation slides with D3 visualizations
- Student devices for Desmos exploration
- Graphing calculators
- Concavity reference cards (optional)

---

## Class Structure (50 minutes)

### Opening Hook: Beyond Direction (5 min)

**Recall:** Yesterday we learned that f' tells us the DIRECTION of f (increasing or decreasing).

**Question:** Two different functions can both be increasing. What makes them different?

**Visual:** Show two increasing functions:
- One curving upward (like x^2 for x > 0)
- One curving downward (like sqrt(x))

**Key Insight:** Both are increasing, but they have different SHAPES. Today we'll analyze shape using the second derivative.

### Concavity (12 min)

**Definitions:**
- f is **concave up** on an interval if f' is increasing on that interval (equivalently, f'' > 0)
- f is **concave down** on an interval if f' is decreasing on that interval (equivalently, f'' < 0)

**Visual Interpretations:**

*Concave Up:*
- Curve bends upward, like a bowl or smile :)
- "Holds water"
- Tangent lines rotate counterclockwise (slope increases)
- The curve lies above its tangent lines

*Concave Down:*
- Curve bends downward, like an arch or frown :(
- "Spills water"
- Tangent lines rotate clockwise (slope decreases)
- The curve lies below its tangent lines

**Theorem:**
- If f''(x) > 0 for all x in (a, b), then f is concave up on (a, b)
- If f''(x) < 0 for all x in (a, b), then f is concave down on (a, b)

**Why It Works:**
- f'' > 0 means f' is increasing
- Increasing slope means the curve is bending upward
- f'' < 0 means f' is decreasing
- Decreasing slope means the curve is bending downward

**Procedure to Find Concavity Intervals:**
1. Find f''(x)
2. Find where f''(x) = 0 or undefined (potential inflection points)
3. Create intervals using these values as boundaries
4. Test sign of f'' in each interval
5. f'' > 0 means concave up, f'' < 0 means concave down

**Example:** f(x) = x^3 - 6x^2 + 9x + 1

1. f'(x) = 3x^2 - 12x + 9
2. f''(x) = 6x - 12
3. f''(x) = 0 when 6x - 12 = 0, so x = 2
4. Sign chart for f'':

   | Interval | Test Point | f''(test) | Concavity |
   |----------|------------|-----------|-----------|
   | (-∞, 2) | x = 0 | -12 | Concave down |
   | (2, ∞) | x = 3 | 6 | Concave up |

5. **Conclusion:** Concave down on (-∞, 2), concave up on (2, ∞)

### Inflection Points (10 min)

**Definition:**
An **inflection point** is a point where the concavity of f changes.

**Requirements for Inflection Point at x = c:**
1. f''(c) = 0 or f''(c) is undefined
2. f'' changes sign at c (concavity actually changes)
3. The point (c, f(c)) must exist (f(c) must be defined)

**CRITICAL CAUTION:**
f''(c) = 0 is NECESSARY but NOT SUFFICIENT for an inflection point!

**Procedure to Find Inflection Points:**
1. Find all values where f''(x) = 0 or undefined
2. Test for sign change in f'' around each value
3. If sign changes, it's an inflection point
4. Calculate f(c) to get the coordinates

**Example 1: f(x) = x^4 (NOT an inflection point)**

1. f'(x) = 4x^3, f''(x) = 12x^2
2. f''(x) = 0 at x = 0
3. Test signs: f''(-1) = 12 > 0, f''(1) = 12 > 0
4. NO sign change at x = 0
5. **Conclusion:** x = 0 is NOT an inflection point
6. The function is concave up everywhere!

**Example 2: f(x) = x^3 (IS an inflection point)**

1. f'(x) = 3x^2, f''(x) = 6x
2. f''(x) = 0 at x = 0
3. Test signs: f''(-1) = -6 < 0, f''(1) = 6 > 0
4. Sign DOES change at x = 0
5. **Conclusion:** x = 0 IS an inflection point
6. Coordinates: (0, 0)

**Example 3: Inflection Where f'' Undefined**

f(x) = x^(1/3)

1. f'(x) = (1/3)x^(-2/3)
2. f''(x) = (-2/9)x^(-5/3)
3. f''(0) is undefined (but f(0) = 0 exists)
4. For x < 0: f''(x) > 0 (concave up)
5. For x > 0: f''(x) < 0 (concave down)
6. Sign changes! So x = 0 IS an inflection point

### Second Derivative Test (13 min)

**Theorem (Second Derivative Test):**
Suppose f'(c) = 0 (c is a critical point where the derivative is zero).

1. If f''(c) > 0, then f has a **local minimum** at c
2. If f''(c) < 0, then f has a **local maximum** at c
3. If f''(c) = 0, the test is **inconclusive** (use First Derivative Test)

**Why It Works:**
- f''(c) > 0 means concave up at c: the critical point is a "valley bottom"
- f''(c) < 0 means concave down at c: the critical point is a "hilltop"

**Visual:** Show parabola-like behavior at critical points:
- Concave up at critical point = minimum
- Concave down at critical point = maximum

**Comparison with First Derivative Test:**

| Feature | First Derivative Test | Second Derivative Test |
|---------|----------------------|----------------------|
| What to compute | Sign chart for f' | Single value f''(c) |
| When to use | Always works | Only when f'(c) = 0 |
| Can be inconclusive? | No | Yes (when f''(c) = 0) |
| Complexity | More steps | Often faster |

**Worked Example:** f(x) = x^3 - 3x^2 - 9x + 5

1. **Find critical points:**
   - f'(x) = 3x^2 - 6x - 9 = 3(x^2 - 2x - 3) = 3(x - 3)(x + 1)
   - Critical points: x = -1 and x = 3

2. **Find second derivative:**
   - f''(x) = 6x - 6

3. **Apply Second Derivative Test:**
   - At x = -1: f''(-1) = 6(-1) - 6 = -12 < 0
     - f''(c) < 0, so **LOCAL MAXIMUM at x = -1**
   - At x = 3: f''(3) = 6(3) - 6 = 12 > 0
     - f''(c) > 0, so **LOCAL MINIMUM at x = 3**

4. **Verify (optional):** f(-1) = 10 (local max value), f(3) = -22 (local min value)

**When Second Derivative Test Fails:** f(x) = x^4

1. f'(x) = 4x^3 = 0 at x = 0
2. f''(x) = 12x^2, so f''(0) = 0
3. Second Derivative Test is **INCONCLUSIVE**
4. Must use First Derivative Test:
   - f'(-1) = -4 < 0, f'(1) = 4 > 0
   - Sign changes from - to +, so **LOCAL MINIMUM at x = 0**

### Closing (5 min)

**Exit Ticket:**
Given f''(x) = x^2 - 4 = (x - 2)(x + 2):
1. Find intervals where f is concave up and concave down
2. Identify all inflection points
3. If f'(0) = 0, what can you conclude about x = 0?

**Key Takeaways:**
- f'' > 0 means concave up (bowl), f'' < 0 means concave down (arch)
- Inflection point requires f'' = 0 (or undefined) AND sign change
- Second Derivative Test: f''(c) > 0 means local min, f''(c) < 0 means local max
- If f''(c) = 0, the test is inconclusive - use First Derivative Test

**Preview:** Tomorrow we'll put everything together for comprehensive curve sketching.

---

## Differentiation Strategies

### For students who need more support:
- Use the "smile/frown" mnemonic for concavity
- Practice with f''(x) that are linear (easy sign analysis)
- Provide side-by-side comparison of f, f', f'' graphs
- Focus on polynomial examples initially

### For advanced students:
- Explore functions where f''(x) = 0 at multiple points
- Challenge: Find a function with exactly two inflection points
- Investigate: What if f'' doesn't exist on part of the domain?
- Prove: Why does f''(c) > 0 at a critical point guarantee a local minimum?

---

## Common Misconceptions to Address

1. **"f''(c) = 0 means inflection point"**
   - Address: Show f(x) = x^4, where f''(0) = 0 but NO inflection point (stays concave up).

2. **"Concave up means increasing"**
   - Address: Show f(x) = x^2 on (-∞, 0), which is concave up but DECREASING.

3. **"Inflection point must be where f''(x) = 0"**
   - Address: Show f(x) = x^(1/3), with inflection at x = 0 where f'' is undefined.

4. **"Second Derivative Test always works"**
   - Address: When f''(c) = 0, the test gives no information - must use First Derivative Test.

5. **"Concavity is defined at a single point"**
   - Address: Concavity describes shape over an interval, not at individual points.

6. **"f'' > 0 everywhere means no local max"**
   - Address: True for interior, but endpoints on closed intervals can still be extrema.

---

## Assessment Notes

- Monitor understanding of the sign change requirement for inflection points
- Exit ticket tests the complete concavity analysis procedure
- Note which students confuse concavity with increasing/decreasing
- Check understanding of when Second Derivative Test is inconclusive

---

## Connections

**Prior knowledge:**
- First Derivative Test (Class 26)
- Critical points (Class 25)
- Derivative calculations (Units 2-3)

**Future connections:**
- Curve sketching synthesis (Class 28)
- Connecting f, f', f'' (Class 28)
- Optimization (Class 29)
- Applications in physics (acceleration)

---

## Notation Notes

**Key Terms:**
- **Concave up:** Curve bends upward, f'' > 0, "holds water"
- **Concave down:** Curve bends downward, f'' < 0, "spills water"
- **Inflection point:** Where concavity changes (f'' changes sign)
- **Second Derivative Test:** Classification method using f''(c)

**Physical Interpretation:**
- If s(t) = position, then s''(t) = acceleration
- s'' > 0: velocity increasing (accelerating)
- s'' < 0: velocity decreasing (decelerating)

**AP Exam Language:**
- "On what intervals is f concave up? Justify."
- "Find all inflection points of f"
- "Use the Second Derivative Test to classify the critical point"
