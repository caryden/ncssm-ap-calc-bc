# Research: Increasing/Decreasing Intervals and First Derivative Test

## Overview

This document summarizes research on how expert educators teach the connection between the first derivative and increasing/decreasing behavior, along with the First Derivative Test for classifying local extrema. It informs the lesson plan and presentation spec for Class 26.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Derivatives and Function Behavior

**Source:** [3blue1brown.com](https://www.3blue1brown.com/)

**Core Pedagogical Strategy:**

The derivative tells us about the rate of change. When the derivative is positive, the function is increasing; when negative, decreasing. This simple idea unlocks powerful analysis techniques.

**Key Teaching Moves:**

1. **Rate of change interpretation** - f'(x) > 0 means f is increasing at x
2. **Sign analysis** - Study where f' is positive vs. negative
3. **Critical point classification** - Sign changes in f' indicate local extrema

**Conceptual Anchor:**

> "The derivative is positive when the function is rising from left to right. The derivative is negative when the function is falling. This is the fundamental connection between f' and the behavior of f."

### Professor Leonard: First Derivative Test

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Rigorous sign chart construction
- Multiple examples of increasing/decreasing analysis
- Systematic First Derivative Test application
- Emphasis on checking ALL intervals created by critical points

**Approach:**

1. Find critical points (where f' = 0 or undefined)
2. Create number line divided by critical points
3. Test sign of f' in each interval
4. Apply First Derivative Test: sign change in f' indicates local extremum
5. Classify: + to - is local max, - to + is local min

**Strengths:**
- Very systematic, students can follow the algorithm
- Sign chart provides visual organization
- Emphasis on complete analysis (all intervals)

### Khan Academy: Analyzing Functions with Calculus

**Source:** [Khan Academy - First Derivative Test](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-4)

**Key Teaching Points:**

1. **Increasing/Decreasing Theorem:**
   - f'(x) > 0 on interval implies f is increasing on that interval
   - f'(x) < 0 on interval implies f is decreasing on that interval

2. **First Derivative Test:**
   - If f' changes from + to - at c, then f has local max at c
   - If f' changes from - to + at c, then f has local min at c
   - If f' doesn't change sign at c, then c is not a local extremum

3. **Why It Works:**
   - Increasing before c and decreasing after c means c is the highest point nearby (local max)
   - Decreasing before c and increasing after c means c is the lowest point nearby (local min)

### Paul's Online Math Notes: First Derivative Test

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/CalcI/ShapeofGraphPtI.aspx)

**Key Insights:**

> "The first derivative test gives us a way of classifying critical points as relative minima, relative maxima or neither."

**Connection to MVT:**
The increasing/decreasing theorem is actually proven using the Mean Value Theorem:
- If f'(x) > 0 for all x in (a, b), then for any x1 < x2 in (a, b), MVT gives:
  f(x2) - f(x1) = f'(c)(x2 - x1) for some c
- Since f'(c) > 0 and x2 - x1 > 0, we have f(x2) > f(x1)
- Therefore f is increasing

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Sign Chart** | Number line with +/- in each interval | Organizes information systematically |
| **Tangent Line Slopes** | Show tangent lines tilting right (positive) or left (negative) | Visual connection to derivative sign |
| **Rising/Falling Arrows** | Arrow pointing up where increasing, down where decreasing | Clear directional indicator |
| **f and f' Side by Side** | Show function and its derivative aligned vertically | Connect derivative features to function behavior |
| **Sign Change Animation** | Show derivative crossing zero, function switching direction | Visualizes First Derivative Test |
| **Hilltop/Valley Analogy** | Physical representation of local max/min | Intuitive mental model |

### Recommended D3 Visualization

**Increasing/Decreasing Analyzer:**
1. Display function f(x) on top graph
2. Display f'(x) on bottom graph, aligned vertically
3. Shade regions where f' > 0 (green) and f' < 0 (red)
4. Corresponding regions on f graph show up/down arrows
5. Mark critical points where f' = 0 or undefined
6. Highlight local max (f' changes + to -) and local min (f' changes - to +)
7. Interactive: user can modify function and see analysis update

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"f'(x) = 0 means f has an extremum"** | Not checking for sign change | Show f(x) = x^3: f'(0) = 0 but no sign change, so no extremum |
| **"Increasing on [a, c] and [c, b] means increasing on [a, b]"** | Thinking continuity preserves monotonicity | This IS true for continuous functions; the interval endpoints must be considered carefully |
| **"Test points can be anywhere"** | Choosing test points carelessly | Test points must be in the correct interval, strictly between critical points |
| **"Critical point must be in increasing or decreasing interval"** | Including critical points in intervals | Technically, "f is increasing on (a, b)" excludes points where f' = 0 from the interior |
| **"First derivative test always works"** | Expecting definitive answers always | If f' doesn't change sign (e.g., f(x) = x^3), the test is inconclusive for that point |
| **"f'(x) > 0 at a point means f is increasing"** | Confusing point vs. interval | Increasing/decreasing is defined on INTERVALS, not at single points |
| **"Check sign of f(x), not f'(x)"** | Confusing the function with its derivative | Common calculation error; always compute and analyze f' |

### Misconception-Busting Exercises

1. **No Sign Change = No Extremum:**
   - f(x) = x^3, f'(x) = 3x^2
   - f'(x) >= 0 for all x, equals 0 only at x = 0
   - No sign change at x = 0, so x = 0 is NOT a local extremum
   - The graph just flattens momentarily (inflection point)

2. **Sign Chart Construction:**
   - f(x) = x^3 - 3x, f'(x) = 3x^2 - 3 = 3(x^2 - 1) = 3(x-1)(x+1)
   - Critical points: x = -1, x = 1
   - Intervals: (-inf, -1), (-1, 1), (1, inf)
   - Test points: x = -2, x = 0, x = 2
   - f'(-2) = 9 > 0, f'(0) = -3 < 0, f'(2) = 9 > 0
   - Signs: +, -, +
   - Local max at x = -1 (+ to -), local min at x = 1 (- to +)

3. **Test Point Selection:**
   - Critical points divide the real line into intervals
   - Choose ONE test point per interval
   - The test point must be strictly inside the interval
   - Evaluate f' (not f) at the test point

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 26 lesson should:

### Opening (5 min)
- Warm-up: Given a graph of f', identify where f is increasing/decreasing
- Key question: "How does the sign of f' tell us about the behavior of f?"
- Preview: Today we'll use f' to completely analyze function behavior

### Increasing/Decreasing Intervals (12 min)

**Theorem:**
Let f be continuous on [a, b] and differentiable on (a, b).
- If f'(x) > 0 for all x in (a, b), then f is increasing on [a, b]
- If f'(x) < 0 for all x in (a, b), then f is decreasing on [a, b]
- If f'(x) = 0 for all x in (a, b), then f is constant on [a, b]

**Intuition:**
- Positive derivative = positive rate of change = function going up
- Negative derivative = negative rate of change = function going down
- Zero derivative = zero rate of change = function staying flat

**Visualization:**
- Show function with tangent lines
- When tangent tilts up (positive slope), function rises
- When tangent tilts down (negative slope), function falls

**Procedure to Find Intervals:**
1. Find all critical points (where f' = 0 or undefined)
2. Create intervals using critical points as boundaries
3. Test the sign of f' in each interval using a test point
4. Conclude: f' > 0 means increasing, f' < 0 means decreasing

**Example:** f(x) = x^3 - 12x
1. f'(x) = 3x^2 - 12 = 3(x^2 - 4) = 3(x-2)(x+2)
2. Critical points: x = -2, x = 2
3. Intervals: (-inf, -2), (-2, 2), (2, inf)
4. Test points: x = -3, x = 0, x = 3
   - f'(-3) = 3(9) - 12 = 15 > 0
   - f'(0) = -12 < 0
   - f'(3) = 27 - 12 = 15 > 0
5. Conclusion:
   - f is increasing on (-inf, -2] and [2, inf)
   - f is decreasing on [-2, 2]

### First Derivative Test (15 min)

**Theorem (First Derivative Test):**
Suppose c is a critical point of a continuous function f.

1. If f' changes from positive to negative at c, then f has a **local maximum** at c
2. If f' changes from negative to positive at c, then f has a **local minimum** at c
3. If f' does not change sign at c, then f has **no local extremum** at c

**Why It Works:**
- + to -: f increases up to c, then decreases after c (hilltop)
- - to +: f decreases down to c, then increases after c (valley bottom)
- No change: f continues in same direction (no turning point)

**Visual Demonstration:**
Show animation of function with:
- Local max: rising then falling (hill)
- Local min: falling then rising (valley)
- Neither: continuously rising or falling through the point

**Complete Analysis Example:** f(x) = 2x^3 - 9x^2 + 12x - 4
1. f'(x) = 6x^2 - 18x + 12 = 6(x^2 - 3x + 2) = 6(x-1)(x-2)
2. Critical points: x = 1, x = 2
3. Sign chart:
   | Interval | Test Point | f'(test) | Sign |
   |----------|------------|----------|------|
   | (-inf, 1) | x = 0 | 6(1)(2) = 12 | + |
   | (1, 2) | x = 1.5 | 6(0.5)(-0.5) = -1.5 | - |
   | (2, inf) | x = 3 | 6(2)(1) = 12 | + |

4. First Derivative Test:
   - At x = 1: f' changes + to -, so LOCAL MAXIMUM
   - At x = 2: f' changes - to +, so LOCAL MINIMUM

5. Function values:
   - f(1) = 2 - 9 + 12 - 4 = 1 (local max value)
   - f(2) = 16 - 36 + 24 - 4 = 0 (local min value)

### Practice and Applications (13 min)

**Practice Problem 1:** f(x) = x^4 - 4x^3
- f'(x) = 4x^3 - 12x^2 = 4x^2(x - 3)
- Critical points: x = 0, x = 3
- Sign chart: +, -, + (actually: -, -, + since x^2 is always positive)
- Wait - let's be careful: 4x^2 >= 0, so sign depends on (x-3)
- f'(x) < 0 when x < 3 (and x != 0), f'(x) > 0 when x > 3
- At x = 0: no sign change (both sides negative), so no extremum
- At x = 3: sign changes - to +, so local minimum

**Practice Problem 2:** Find where f(x) = sin(x) + cos(x) is increasing on [0, 2pi]
- f'(x) = cos(x) - sin(x)
- f'(x) = 0 when cos(x) = sin(x), so tan(x) = 1
- Solutions in [0, 2pi]: x = pi/4, x = 5pi/4
- Test: f'(0) = 1 > 0, f'(pi) = -1 < 0, f'(3pi/2) = 1 > 0
- Increasing on [0, pi/4] and [5pi/4, 2pi]

**Application: Revenue Analysis**
If R(x) = revenue from selling x units, when is revenue increasing?
- Find R'(x), determine where R'(x) > 0
- Business interpretation: more sales = more revenue in those regions

### Closing (5 min)
- Exit ticket: Given f'(x) = (x-1)^2(x-3), classify critical points
- Key insight: Sign CHANGE is what matters, not just where f' = 0
- Summary: f' > 0 means increasing, f' < 0 means decreasing
- Preview: Second Derivative Test and concavity

### Key Principles Throughout

1. **Derivative sign determines behavior:** f' > 0 increasing, f' < 0 decreasing
2. **Sign chart is essential:** Organize analysis systematically
3. **Test points must be correct:** One per interval, strictly inside
4. **Sign change required for extremum:** No change = no local extremum
5. **Include endpoints appropriately:** Increasing on [a, b] includes endpoints

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **5.3:** Determining Intervals on Which a Function Is Increasing or Decreasing
- **5.4:** Using the First Derivative Test to Determine Relative Extrema

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (systematic analysis)
- **MP 2:** Connecting Representations (f and f' graphs)
- **MP 3:** Justification (explaining conclusions using derivative signs)
- **MP 4:** Communication (sign charts, clear conclusions)

### AP Exam Connection
- FRQs commonly ask "on what intervals is f increasing?"
- Must justify answer using derivative sign
- First Derivative Test appears in extrema classification problems
- Common errors:
  - Forgetting to find ALL critical points
  - Not testing each interval
  - Concluding extremum without verifying sign change

### Fluency Goal
By the end of this class, students should:
- Construct accurate sign charts for f'
- Determine increasing/decreasing intervals
- Apply First Derivative Test correctly
- Distinguish between local max, local min, and neither
- Recognize when f' = 0 does NOT indicate an extremum

---

## Sources

- [Khan Academy: First Derivative Test](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-4)
- [Professor Leonard: First Derivative Test](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: First Derivative Test](https://tutorial.math.lamar.edu/Classes/CalcI/ShapeofGraphPtI.aspx)
- [MIT OpenCourseWare: Single Variable Calculus](https://ocw.mit.edu/courses/mathematics/18-01-single-variable-calculus-fall-2006/)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
