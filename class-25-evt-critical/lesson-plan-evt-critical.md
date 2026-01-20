# Lesson Plan: Extreme Value Theorem and Critical Points

## Class 25 | Unit 5: Analytical Applications of Differentiation

---

## Overview

This session introduces the Extreme Value Theorem (EVT), which guarantees that continuous functions on closed intervals attain maximum and minimum values. Students will learn to distinguish between local and global extrema, identify critical points, and apply the Candidates Test (Closed Interval Method) to find absolute extrema systematically.

**CED Topic:** 5.2 - Extreme Value Theorem, Global vs. Local Extrema, Critical Points

---

## Learning Objectives

By the end of this class, students will be able to:

1. State the Extreme Value Theorem with its required condition (continuous on closed interval)
2. Distinguish between local (relative) and global (absolute) extrema
3. Define critical points as values where f'(x) = 0 or f'(x) is undefined
4. Identify all critical points of a given function
5. Apply the Candidates Test to find absolute maximum and minimum values on a closed interval
6. Recognize situations where EVT does not apply

---

## Prior Knowledge Required

- Continuity and its definition (Unit 1)
- Differentiability and calculating derivatives (Units 2-3)
- Mean Value Theorem (Class 24)
- Interpretation of derivative as slope of tangent line

---

## Materials Needed

- Presentation slides with D3 visualizations
- Student devices for Desmos exploration
- Graphing calculators
- Candidates Test reference cards (optional)

---

## Class Structure (50 minutes)

### Opening Hook: The Mountain Hike (5 min)

**Scenario:**
> You're hiking a trail that starts at 1000 ft elevation and ends at 1500 ft elevation. The trail is continuous (no teleportation!). What can you say about the highest and lowest points on your hike?

**Discussion:**
- There MUST be a highest point and a lowest point
- They might be at the trailhead, the end, or somewhere in the middle
- Key question: "How do we find these points mathematically?"

**Preview:** Today we'll prove this intuition and develop a systematic method to find extreme values.

### The Extreme Value Theorem (10 min)

**Statement:**
If f is continuous on the closed interval [a, b], then f attains both an absolute maximum value and an absolute minimum value on [a, b].

**Unpack the Statement:**
- "Continuous on [a, b]" - No breaks, jumps, or holes
- "Closed interval" - Includes both endpoints a and b
- "Attains" - The function actually reaches these values (not just approaches them)

**Visual Interpretation:**
- A continuous curve on a closed interval has no "escape routes"
- The curve must have a highest point and a lowest point somewhere
- These might be at critical points OR at endpoints

**Why the Conditions Matter:**

*Continuity Violation:*
- f(x) = 1/x on [-1, 1] is not continuous at x = 0
- The function has no maximum (approaches infinity near 0)
- EVT does not apply!

*Open Interval Violation:*
- f(x) = x on (0, 1) - continuous but open interval
- f approaches 0 and 1 but never attains these values
- No absolute max or min exists!

**Interactive Visualization:**
- Show continuous function on closed interval
- Highlight the highest and lowest points
- Vary the function to show extrema at different locations

### Local vs. Global Extrema (8 min)

**Definitions:**

**Local (Relative) Maximum:**
f(c) is a local maximum if f(c) >= f(x) for all x NEAR c

**Local (Relative) Minimum:**
f(c) is a local minimum if f(c) <= f(x) for all x NEAR c

**Global (Absolute) Maximum:**
f(c) is a global maximum if f(c) >= f(x) for ALL x in the domain

**Global (Absolute) Minimum:**
f(c) is a global minimum if f(c) <= f(x) for ALL x in the domain

**Key Relationships:**
- Every global extremum is also a local extremum
- Local extrema are NOT necessarily global extrema
- A function on [a, b] has exactly one global max value and one global min value (by EVT)
- A function may have multiple local maxima and minima

**Visual Example:** f(x) = x^3 - 3x + 1 on [-2, 3]
- Show graph with multiple "hills" and "valleys"
- Point out local max and local min
- Identify which one is the global max/min
- Emphasize that global max might be at an endpoint

### Critical Points (12 min)

**Definition:**
A critical point of f is a value x = c in the domain of f where either:
1. f'(c) = 0 (stationary point - horizontal tangent)
2. f'(c) does not exist (singular point - cusp, corner, vertical tangent)

**Why Critical Points Matter:**
If f has a local extremum at c and c is in the interior of the domain, then c must be a critical point.

**IMPORTANT: The Converse is FALSE!**
- Not every critical point is an extremum
- Example: f(x) = x^3 has f'(0) = 0, but x = 0 is neither max nor min
- Critical point is NECESSARY but not SUFFICIENT for extremum

**Finding Critical Points - Procedure:**
1. Compute f'(x)
2. Find where f'(x) = 0 (solve the equation)
3. Find where f'(x) is undefined (but f(x) IS defined)
4. List all critical points

**Example 1:** f(x) = x^3 - 6x^2 + 9x + 1
1. f'(x) = 3x^2 - 12x + 9 = 3(x^2 - 4x + 3) = 3(x-1)(x-3)
2. f'(x) = 0 when x = 1 or x = 3
3. f'(x) is defined everywhere (polynomial)
4. Critical points: x = 1 and x = 3

**Example 2:** f(x) = x^(2/3)
1. f'(x) = (2/3)x^(-1/3) = 2/(3x^(1/3))
2. f'(x) = 0: Never! (numerator is constant 2)
3. f'(x) undefined when x = 0 (denominator is 0)
4. f(0) = 0 is defined, so x = 0 IS a critical point
5. Critical point: x = 0 (where derivative is undefined)

**Visual:** Show the cusp at x = 0 for x^(2/3) - the tangent is vertical there.

### The Candidates Test (Closed Interval Method) (10 min)

**Procedure for finding absolute extrema of f on [a, b]:**
1. Verify f is continuous on [a, b]
2. Find all critical points of f in the open interval (a, b)
3. Evaluate f at each critical point AND at the endpoints a and b
4. The largest value is the absolute maximum
5. The smallest value is the absolute minimum

**Why "Candidates Test":**
- Critical points and endpoints are the ONLY candidates for absolute extrema
- We evaluate f at each candidate and simply compare values
- The largest wins (absolute max), the smallest wins (absolute min)

**Worked Example:** f(x) = x^3 - 3x + 1 on [-2, 2]

1. **Continuity:** f is polynomial, so continuous on [-2, 2]

2. **Critical points:**
   - f'(x) = 3x^2 - 3 = 3(x^2 - 1) = 3(x-1)(x+1)
   - f'(x) = 0 when x = -1 or x = 1
   - Both are in (-2, 2)

3. **Evaluate at all candidates:**

   | Candidate | f(x) Value |
   |-----------|------------|
   | x = -2 (endpoint) | (-2)^3 - 3(-2) + 1 = -8 + 6 + 1 = -1 |
   | x = -1 (critical) | (-1)^3 - 3(-1) + 1 = -1 + 3 + 1 = 3 |
   | x = 1 (critical) | (1)^3 - 3(1) + 1 = 1 - 3 + 1 = -1 |
   | x = 2 (endpoint) | (2)^3 - 3(2) + 1 = 8 - 6 + 1 = 3 |

4. **Identify extrema:**
   - Largest value: 3 (occurs at x = -1 AND x = 2)
   - Smallest value: -1 (occurs at x = -2 AND x = 1)

5. **Conclusion:**
   - Absolute maximum = 3, occurring at x = -1 and x = 2
   - Absolute minimum = -1, occurring at x = -2 and x = 1

**Key Observation:** The same extreme value can occur at multiple points!

### Closing (5 min)

**Exit Ticket:**
For f(x) = x^4 - 2x^2 on [-1, 2]:
1. Find all critical points
2. List all candidates for absolute extrema
3. Find the absolute maximum and minimum values

**Key Takeaways:**
- EVT guarantees absolute max and min exist for continuous functions on closed intervals
- Critical points are where f' = 0 OR f' is undefined
- Not every critical point is an extremum!
- The Candidates Test: evaluate f at all critical points and endpoints, then compare

**Preview:** Tomorrow we'll learn the First Derivative Test to classify local extrema without evaluating the function.

---

## Differentiation Strategies

### For students who need more support:
- Provide a step-by-step Candidates Test checklist
- Focus on polynomial examples where f' is always defined
- Use graphing calculators to verify answers visually
- Pair with stronger students during practice

### For advanced students:
- Explore what happens when critical points are outside [a, b]
- Challenge: Find absolute extrema for functions with multiple critical points
- Investigate: What if f has a discontinuity inside [a, b]?
- Prove: Why must a local extremum in the interior be a critical point?

---

## Common Misconceptions to Address

1. **"Every critical point is an extremum"**
   - Address: Show f(x) = x^3, where f'(0) = 0 but x = 0 is neither max nor min.

2. **"Extrema only occur where f'(x) = 0"**
   - Address: Show f(x) = |x| on [-1, 2], where min is at x = 0 (f' undefined) and max is at endpoint x = 2.

3. **"Local max is the same as global max"**
   - Address: Show f(x) = x^3 - 3x on [-2, 4], where local max at x = -1 is NOT the global max.

4. **"EVT applies to any function"**
   - Address: Show f(x) = 1/x on [-1, 1] (discontinuous) - no max exists.

5. **"Open intervals have absolute extrema"**
   - Address: Show f(x) = x on (0, 1) - approaches but never attains 0 and 1.

6. **"Plug critical points into f'(x)"**
   - Address: We evaluate f (the function), not f' (the derivative), at critical points.

---

## Assessment Notes

- Monitor understanding during critical point identification
- Exit ticket provides formative data on the complete Candidates Test procedure
- Note which students forget endpoints or singular critical points
- Check that students understand "critical point" vs. "extremum"

---

## Connections

**Prior knowledge:**
- Continuity concepts (Unit 1)
- Derivative calculations (Units 2-3)
- Mean Value Theorem (Class 24)

**Future connections:**
- First Derivative Test to classify extrema (Class 26)
- Second Derivative Test (Class 27)
- Optimization problems (Class 29)
- Applications in related rates and applied max/min

---

## Notation Notes

**Key Terms:**
- **Extreme Value Theorem (EVT):** Guarantees existence of absolute max and min
- **Critical point:** Where f' = 0 or f' is undefined (but f is defined)
- **Stationary point:** Critical point where f' = 0 (horizontal tangent)
- **Singular point:** Critical point where f' is undefined (cusp, corner, vertical tangent)
- **Candidates Test / Closed Interval Method:** Procedure to find absolute extrema

**AP Exam Language:**
- "Find the absolute maximum and minimum values of f on [a, b]"
- "Identify all critical values of f"
- "Justify your answer" - requires showing all candidate evaluations
