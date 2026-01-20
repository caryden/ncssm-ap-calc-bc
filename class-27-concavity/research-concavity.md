# Research: Concavity and Second Derivative Test

## Overview

This document summarizes research on how expert educators teach concavity, inflection points, and the Second Derivative Test. It informs the lesson plan and presentation spec for Class 27.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Second Derivatives

**Source:** [3blue1brown.com](https://www.3blue1brown.com/)

**Core Pedagogical Strategy:**

The second derivative measures how the first derivative is changing - it's the "rate of change of the rate of change." When f'' > 0, the slope is increasing (concave up); when f'' < 0, the slope is decreasing (concave down).

**Key Teaching Moves:**

1. **Physical interpretation** - Acceleration is the derivative of velocity (second derivative of position)
2. **Slope of the slope** - f'' tells us whether f' is increasing or decreasing
3. **Visual shape** - Concave up curves are "bowl-shaped" (hold water), concave down are "arch-shaped"

**Conceptual Anchor:**

> "The second derivative tells you about the rate of change of the slope. If f'' > 0, the tangent lines are getting steeper; if f'' < 0, the tangent lines are getting less steep."

### Professor Leonard: Concavity and Second Derivative Test

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Extensive visualization of concave up vs. concave down
- Clear connection between f'' sign and concavity
- Systematic inflection point identification
- Comparison between First and Second Derivative Tests

**Approach:**

1. Define concavity using the second derivative
2. Show how to find concavity intervals (sign of f'')
3. Define inflection points as where concavity changes
4. Present Second Derivative Test as alternative to First Derivative Test

**Strengths:**
- Multiple visual examples
- Clear algorithmic procedures
- Comparison helps students choose appropriate test

### Khan Academy: Concavity and Inflection Points

**Source:** [Khan Academy - Concavity](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-6)

**Key Teaching Points:**

1. **Concavity Definition:**
   - Concave up: f''(x) > 0 (slope increasing, cup shape)
   - Concave down: f''(x) < 0 (slope decreasing, cap shape)

2. **Inflection Points:**
   - Points where concavity changes
   - f''(x) = 0 or undefined, AND concavity actually changes

3. **Second Derivative Test:**
   - If f'(c) = 0 and f''(c) > 0, then local min at c
   - If f'(c) = 0 and f''(c) < 0, then local max at c
   - If f''(c) = 0, the test is inconclusive

### Paul's Online Math Notes: Second Derivative Test

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/CalcI/ShapeofGraphPtII.aspx)

**Key Insights:**

> "Concave up means the function is curving upward, like a smile. Concave down means the function is curving downward, like a frown."

**Mnemonic Devices:**
- Concave up: "holds water" or "smile" :)
- Concave down: "spills water" or "frown" :(

**When to Use Which Test:**
- Second Derivative Test is often faster (no sign chart needed)
- But it can be inconclusive (f''(c) = 0)
- First Derivative Test always gives definitive answer
- Choice depends on computational convenience

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Tangent Line Animation** | Show tangent lines rotating as x moves | Visualizes derivative changing (f'' concept) |
| **Bowl vs. Arch** | Compare concave up (bowl) to concave down (arch) | Intuitive physical analogy |
| **Smile/Frown Mnemonic** | :) for concave up, :( for concave down | Easy to remember |
| **f, f', f'' Triple Graph** | Three aligned graphs showing all derivatives | Shows relationships between all three |
| **Inflection Point Zoom** | Zoom into point where concavity changes | Highlights the transition |
| **Water Test** | Imagine pouring water - does it collect or spill? | Physical intuition |

### Recommended D3 Visualization

**Concavity Analyzer:**
1. Display function f(x) in main graph
2. Show f'(x) in second graph (aligned)
3. Show f''(x) in third graph (aligned)
4. Color code f graph: green where concave up, red where concave down
5. Mark inflection points (where f'' changes sign)
6. Show tangent lines animating along curve, demonstrating slope changes
7. Interactive: user can trace x-value and see all three function values update

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"f''(c) = 0 means inflection point"** | Not checking for sign change | Show f(x) = x^4: f''(0) = 0 but NO inflection point (stays concave up) |
| **"Concave up means increasing"** | Confusing first and second derivative | Show f(x) = x^2 on (-inf, 0): concave up but DECREASING |
| **"Inflection point must be where f''(x) = 0"** | Forgetting f'' undefined case | Show f(x) = x^(1/3): inflection at x = 0 where f'' is undefined |
| **"Second Derivative Test always works"** | Not knowing when it's inconclusive | If f''(c) = 0, test is inconclusive - must use First Derivative Test |
| **"Concave up/down at a single point"** | Concavity is interval property | Concavity describes shape over an interval, not at a point |
| **"f'' > 0 everywhere means no local max"** | Forgetting endpoints | On closed interval, endpoints can be local max even if f'' > 0 everywhere |
| **"Only check where f'' = 0 for concavity changes"** | Missing discontinuities in f'' | Check where f'' is undefined too |

### Misconception-Busting Exercises

1. **f''(c) = 0 but No Inflection:**
   - f(x) = x^4, f'(x) = 4x^3, f''(x) = 12x^2
   - f''(0) = 0, but f''(x) >= 0 for all x
   - No sign change in f'', so no inflection point at x = 0
   - The curve is concave up everywhere

2. **Concave Up but Decreasing:**
   - f(x) = x^2 on [-2, 0]
   - f'(x) = 2x < 0 on (-2, 0), so decreasing
   - f''(x) = 2 > 0, so concave up
   - The left side of a parabola is decreasing but concave up!

3. **Inflection Where f'' Undefined:**
   - f(x) = x^(1/3), f'(x) = (1/3)x^(-2/3), f''(x) = (-2/9)x^(-5/3)
   - f''(0) is undefined
   - For x < 0: f'' > 0 (concave up)
   - For x > 0: f'' < 0 (concave down)
   - Concavity changes at x = 0, so it IS an inflection point

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 27 lesson should:

### Opening (5 min)
- Recall: First derivative tells us increasing/decreasing
- Key question: "The first derivative tells us about direction. What does the second derivative tell us?"
- Preview: Shape of the curve - how it bends

### Concavity (12 min)

**Definition:**
- f is **concave up** on an interval if f' is increasing on that interval (equivalently, f'' > 0)
- f is **concave down** on an interval if f' is decreasing on that interval (equivalently, f'' < 0)

**Visual Interpretation:**
- Concave up: curve bends upward, like a bowl or smile :)
- Concave down: curve bends downward, like an arch or frown :(

**Tangent Line Perspective:**
- Concave up: tangent lines rotate counterclockwise as you move right (slope increases)
- Concave down: tangent lines rotate clockwise as you move right (slope decreases)

**Theorem:**
- If f''(x) > 0 for all x in (a, b), then f is concave up on (a, b)
- If f''(x) < 0 for all x in (a, b), then f is concave down on (a, b)

**Procedure to Find Concavity:**
1. Find f''(x)
2. Find where f''(x) = 0 or undefined (potential inflection points)
3. Test sign of f'' in each interval
4. f'' > 0 means concave up, f'' < 0 means concave down

**Example:** f(x) = x^3 - 6x^2 + 9x + 1
1. f'(x) = 3x^2 - 12x + 9
2. f''(x) = 6x - 12
3. f''(x) = 0 when x = 2
4. Sign chart for f'':
   - x < 2: f''(1) = -6 < 0 (concave down)
   - x > 2: f''(3) = 6 > 0 (concave up)
5. Conclusion: Concave down on (-inf, 2), concave up on (2, inf)

### Inflection Points (10 min)

**Definition:**
An **inflection point** is a point where the concavity of f changes.

**Requirements:**
1. f''(c) = 0 or f''(c) is undefined
2. f'' changes sign at c
3. The point (c, f(c)) must exist (f(c) must be defined)

**Caution:** f''(c) = 0 is NECESSARY but NOT SUFFICIENT for an inflection point!

**Finding Inflection Points:**
1. Find all values where f''(x) = 0 or undefined
2. Test for sign change in f'' around each value
3. If sign changes, it's an inflection point

**Example:** f(x) = x^4
1. f'(x) = 4x^3, f''(x) = 12x^2
2. f''(x) = 0 at x = 0
3. Sign: f''(-1) = 12 > 0, f''(1) = 12 > 0
4. NO sign change at x = 0
5. x = 0 is NOT an inflection point (despite f''(0) = 0)

**Counterexample with Inflection:** f(x) = x^3
1. f'(x) = 3x^2, f''(x) = 6x
2. f''(x) = 0 at x = 0
3. Sign: f''(-1) = -6 < 0, f''(1) = 6 > 0
4. Sign DOES change at x = 0
5. x = 0 IS an inflection point

### Second Derivative Test (13 min)

**Theorem (Second Derivative Test):**
Suppose f'(c) = 0 (c is a critical point where derivative is zero).

1. If f''(c) > 0, then f has a **local minimum** at c
2. If f''(c) < 0, then f has a **local maximum** at c
3. If f''(c) = 0, the test is **inconclusive** (use First Derivative Test)

**Why It Works:**
- f''(c) > 0 means concave up at c: the critical point is a "valley bottom"
- f''(c) < 0 means concave down at c: the critical point is a "hilltop"

**Comparison with First Derivative Test:**

| Feature | First Derivative Test | Second Derivative Test |
|---------|----------------------|----------------------|
| What to compute | Sign chart for f' | Single value f''(c) |
| When to use | Always works | Only at critical points where f'(c) = 0 |
| Can be inconclusive? | No | Yes (when f''(c) = 0) |
| Complexity | More steps | Often faster |

**Worked Example:** f(x) = x^3 - 3x^2 - 9x + 5
1. f'(x) = 3x^2 - 6x - 9 = 3(x^2 - 2x - 3) = 3(x-3)(x+1)
2. Critical points: x = -1, x = 3
3. f''(x) = 6x - 6
4. Second Derivative Test:
   - f''(-1) = -12 < 0, so LOCAL MAXIMUM at x = -1
   - f''(3) = 12 > 0, so LOCAL MINIMUM at x = 3

**When Second Derivative Test Fails:** f(x) = x^4
1. f'(x) = 4x^3 = 0 at x = 0
2. f''(x) = 12x^2, so f''(0) = 0
3. Second Derivative Test is INCONCLUSIVE
4. Use First Derivative Test: f'(-1) = -4 < 0, f'(1) = 4 > 0
5. Sign changes - to +, so LOCAL MINIMUM at x = 0

### Practice and Integration (5 min)

**Complete Analysis Example:** f(x) = x^4 - 4x^3
1. f'(x) = 4x^3 - 12x^2 = 4x^2(x - 3)
   - Critical points: x = 0, x = 3
2. f''(x) = 12x^2 - 24x = 12x(x - 2)
   - Possible inflection points: x = 0, x = 2
3. Second Derivative Test:
   - f''(0) = 0 (inconclusive)
   - f''(3) = 36 > 0 (local min at x = 3)
4. First Derivative Test at x = 0:
   - f'(-1) = -16 < 0, f'(1) = -8 < 0
   - No sign change, so x = 0 is NOT an extremum
5. Inflection points:
   - At x = 0: f''(-1) = 36 > 0, f''(1) = -12 < 0 (sign change, YES)
   - At x = 2: f''(1) = -12 < 0, f''(3) = 36 > 0 (sign change, YES)
   - Inflection points at x = 0 and x = 2

### Closing (5 min)
- Exit ticket: Given f''(x) = x^2 - 4, find concavity intervals and inflection points
- Key insight: f'' tells us about shape (concavity), f' tells us about direction
- Summary: Concave up (f'' > 0), concave down (f'' < 0), inflection (f'' changes sign)
- Preview: Curve sketching putting it all together

### Key Principles Throughout

1. **Second derivative = rate of change of slope:** f'' tells us how f' is changing
2. **Sign of f'' determines concavity:** f'' > 0 concave up, f'' < 0 concave down
3. **Inflection requires sign change:** f''(c) = 0 alone is not enough
4. **Second Derivative Test can be inconclusive:** When f''(c) = 0, use First Derivative Test
5. **Concavity and direction are independent:** A function can be increasing AND concave down

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **5.6:** Determining Concavity of Functions over Their Domains
- **5.7:** Using the Second Derivative Test to Determine Extrema

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (systematic analysis)
- **MP 2:** Connecting Representations (f, f', f'' graphs)
- **MP 3:** Justification (explaining concavity using f'')
- **MP 4:** Communication (clear classification of points)

### AP Exam Connection
- FRQs often ask about concavity and inflection points
- Must justify using the second derivative
- Second Derivative Test commonly appears
- Common errors:
  - Claiming inflection point without verifying sign change
  - Confusing concavity with increasing/decreasing
  - Forgetting that Second Derivative Test can be inconclusive

### Fluency Goal
By the end of this class, students should:
- Determine concavity from the sign of f''
- Find and verify inflection points
- Apply the Second Derivative Test correctly
- Know when to use First vs. Second Derivative Test
- Connect f, f', and f'' behavior

---

## Sources

- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Khan Academy: Concavity and Second Derivative Test](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-6)
- [Professor Leonard: Concavity and Second Derivative Test](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Second Derivative Test](https://tutorial.math.lamar.edu/Classes/CalcI/ShapeofGraphPtII.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
