# Research: Extreme Value Theorem and Critical Points

## Overview

This document summarizes research on how expert educators teach the Extreme Value Theorem, global versus local extrema, and critical points. It informs the lesson plan and presentation spec for Class 25.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Thinking About Extrema

**Source:** [3blue1brown.com](https://www.3blue1brown.com/)

**Core Pedagogical Strategy:**

Extrema are where functions reach their highest or lowest values. The key insight is that at interior extrema, the derivative must be zero (or undefined). This connects calculus to the ancient optimization problems.

**Key Teaching Moves:**

1. **Visual intuition first** - Show that hilltops and valley bottoms have horizontal tangent lines
2. **Why derivatives matter** - At a maximum, the function stops increasing; at a minimum, it stops decreasing
3. **Boundary awareness** - Extrema can also occur at endpoints, where derivative information doesn't help

**Conceptual Anchor:**

> "The places where a function might achieve extreme values are limited: endpoints, where f'(x) = 0, or where f'(x) doesn't exist."

### Professor Leonard: Finding Absolute Extrema

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Clear distinction between local (relative) and global (absolute) extrema
- Systematic approach: find all critical points, evaluate at endpoints, compare values
- Multiple examples with polynomial, rational, and transcendental functions
- Emphasis on the "closed interval method" (Candidates Test)

**Approach to Extrema:**

1. State EVT: continuous function on closed interval attains max and min
2. Define critical points: where f'(x) = 0 OR f'(x) undefined
3. Present the Candidates Test: evaluate f at all critical points and endpoints
4. The largest value is the absolute max; the smallest is the absolute min

**Strengths:**
- Very systematic, algorithmic approach students can follow
- Emphasizes that critical points are CANDIDATES, not guaranteed extrema
- Clear worked examples with all types of critical points

### Khan Academy: Extreme Value Theorem and Critical Points

**Source:** [Khan Academy - Extreme Value Theorem](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-2)

**Key Teaching Points:**

1. **EVT Statement:** A continuous function on [a, b] must attain both a maximum and minimum value
2. **Critical Points:** Points where f'(x) = 0 (stationary points) OR f'(x) undefined (singular points)
3. **Local vs. Global:** Local extrema are relative to nearby points; global extrema are the overall largest/smallest

**Critical Point Classification:**

Khan Academy emphasizes three types of critical points:
- Stationary points (f'(x) = 0): horizontal tangent
- Singular points (f'(x) undefined): cusps, corners, vertical tangents
- Neither type is guaranteed to be an extremum

### Paul's Online Math Notes: Absolute Extrema

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/CalcI/AbsoluteExtrema.aspx)

**Key Insights:**

> "Finding the absolute extrema of a continuous function on a closed interval is now reduced to finding all critical points, evaluating the function at these points and the endpoints, and then identifying the largest and smallest values."

**Procedure (Candidates Test):**
1. Verify f is continuous on [a, b]
2. Find all critical points of f in (a, b)
3. Evaluate f at all critical points and at endpoints a and b
4. Identify the largest value (absolute max) and smallest value (absolute min)

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Mountain Landscape** | Show peaks (maxima) and valleys (minima) with tangent lines | Intuitive connection to physical extrema |
| **Tangent Line Animation** | Show tangent becoming horizontal at local extrema | Visualizes f'(x) = 0 condition |
| **Endpoint Highlighting** | Emphasize endpoints as potential extrema | Shows EVT includes boundary |
| **Cusp/Corner Examples** | Show points where f'(x) DNE but extrema occur | Addresses "derivative undefined" critical points |
| **Local vs. Global Comparison** | Show multiple local maxima, one global max | Clarifies the distinction |
| **Candidates Checklist** | Display all candidates with their values, highlight winner | Models the systematic approach |

### Recommended D3 Visualization

**Extrema Finder Interactive:**
1. Display continuous function on [a, b]
2. Show all critical points (where f'(x) = 0 or undefined) marked
3. Show endpoints marked
4. Display function values at each candidate point
5. Highlight the global max (highest) and global min (lowest)
6. Toggle to show local extrema vs. global extrema
7. User can adjust function to see how extrema change

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Every critical point is an extremum"** | Students assume f'(c) = 0 means max or min | Show f(x) = x^3: f'(0) = 0 but x = 0 is neither max nor min |
| **"Extrema only occur where f'(x) = 0"** | Forgetting endpoints and undefined derivatives | Show f(x) = |x| on [-1, 2]: min at x = 0 where f' undefined; max at endpoint x = 2 |
| **"Local max is the same as global max"** | Confusing local and global | Show f(x) = x^3 - 3x on [-2, 4]: local max at x = -1 is NOT global max |
| **"EVT applies to any function"** | Ignoring continuity requirement | Show f(x) = 1/x on [-1, 1]: discontinuous at 0, no max or min exists |
| **"Open intervals have absolute extrema"** | EVT requires closed interval | Show f(x) = x on (0, 1): no absolute max or min (approaches but never reaches 0 and 1) |
| **"Plug critical points directly into f'(x)"** | Confusing f and f' | Evaluate f (the function), not f' (the derivative), at critical points |
| **"Singular critical points aren't important"** | Only looking for f'(x) = 0 | Show f(x) = x^(2/3): f'(0) undefined, but x = 0 is a minimum |

### Misconception-Busting Exercises

1. **Not All Critical Points Are Extrema:**
   - f(x) = x^3: f'(x) = 3x^2 = 0 at x = 0
   - But f(x) is increasing through x = 0 (inflection point)
   - Critical point is necessary but not sufficient for extremum

2. **Extrema at Non-Differentiable Points:**
   - f(x) = |x| on [-1, 1]: f'(0) undefined (corner)
   - Yet x = 0 is the absolute minimum
   - Critical point includes where f' doesn't exist

3. **Endpoint Extrema:**
   - f(x) = x^2 on [-1, 3]
   - f'(x) = 2x = 0 at x = 0 (critical point)
   - Candidates: f(-1) = 1, f(0) = 0, f(3) = 9
   - Absolute max at x = 3 (endpoint), absolute min at x = 0 (critical point)

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 25 lesson should:

### Opening (5 min)
- Present a mountain hiking scenario: "What's the highest point on this trail?"
- Show a graph: how do we find the highest and lowest points?
- Key question: "Can we always find a maximum and minimum?"

### Extreme Value Theorem (10 min)

**Statement:**
If f is continuous on the closed interval [a, b], then f attains both an absolute maximum value and an absolute minimum value on [a, b].

**Visual Interpretation:**
- A continuous function on a closed interval has no "escape routes"
- The curve must have a highest point and a lowest point
- These might be at critical points OR at endpoints

**Why the Conditions Matter:**
1. **Continuity:** If there's a discontinuity, the function might jump over a potential max/min
2. **Closed interval:** Open intervals allow values to approach but never reach limits

**Counterexamples:**
- f(x) = 1/x on (0, 1]: Not continuous at 0, no maximum
- f(x) = x on (0, 1): Open interval, no max or min attained

### Local vs. Global Extrema (8 min)

**Definitions:**
- **Local (relative) maximum:** f(c) >= f(x) for all x NEAR c
- **Local (relative) minimum:** f(c) <= f(x) for all x NEAR c
- **Global (absolute) maximum:** f(c) >= f(x) for ALL x in domain
- **Global (absolute) minimum:** f(c) <= f(x) for ALL x in domain

**Key Insight:**
- Every global extremum is also a local extremum
- But local extrema are not necessarily global extrema
- A function on [a, b] has exactly one global max and one global min (by EVT)
- A function may have multiple local maxima and minima

**Visual Example:**
Show f(x) = x^3 - 3x + 1 on [-2, 3]:
- Local max at x = -1
- Local min at x = 1
- Global max at x = 3 (endpoint)
- Global min at x = 1 (also a local min)

### Critical Points (12 min)

**Definition:**
A critical point of f is a value x = c in the domain of f where either:
1. f'(c) = 0 (stationary point - horizontal tangent)
2. f'(c) does not exist (singular point - cusp, corner, vertical tangent)

**Why Critical Points Matter:**
If f has a local extremum at c and c is in the interior of the domain, then c must be a critical point.

**Converse is FALSE:**
Not every critical point is an extremum (x = 0 for f(x) = x^3)

**Finding Critical Points:**
1. Compute f'(x)
2. Solve f'(x) = 0 for stationary points
3. Find where f'(x) is undefined (but f(x) IS defined)

**Example 1:** f(x) = x^3 - 6x^2 + 9x + 1
- f'(x) = 3x^2 - 12x + 9 = 3(x^2 - 4x + 3) = 3(x-1)(x-3)
- f'(x) = 0 when x = 1 or x = 3
- Critical points: x = 1, x = 3

**Example 2:** f(x) = x^(2/3)
- f'(x) = (2/3)x^(-1/3) = 2/(3x^(1/3))
- f'(x) = 0: never (numerator is constant 2)
- f'(x) undefined: when x = 0 (denominator is 0)
- f(0) = 0 is defined, so x = 0 is a critical point

### The Candidates Test (Closed Interval Method) (10 min)

**Procedure for finding absolute extrema of f on [a, b]:**
1. Verify f is continuous on [a, b]
2. Find all critical points of f in the open interval (a, b)
3. Evaluate f at each critical point and at the endpoints a and b
4. The largest value is the absolute maximum
5. The smallest value is the absolute minimum

**Worked Example:** f(x) = x^3 - 3x + 1 on [-2, 2]
1. f is polynomial, so continuous everywhere
2. f'(x) = 3x^2 - 3 = 3(x^2 - 1) = 3(x-1)(x+1) = 0
   Critical points: x = -1 and x = 1 (both in (-2, 2))
3. Evaluate:
   - f(-2) = (-8) - (-6) + 1 = -1
   - f(-1) = (-1) - (-3) + 1 = 3
   - f(1) = (1) - (3) + 1 = -1
   - f(2) = (8) - (6) + 1 = 3
4. Largest value: 3 (at x = -1 and x = 2)
5. Smallest value: -1 (at x = -2 and x = 1)

**Conclusion:** Absolute max = 3 at x = -1 and x = 2; Absolute min = -1 at x = -2 and x = 1

### Closing (5 min)
- Exit ticket: Given a function on a closed interval, list all candidates for absolute extrema
- Key insight: Critical points and endpoints are the ONLY candidates for absolute extrema
- Preview: First Derivative Test to classify local extrema

### Key Principles Throughout

1. **EVT requires conditions:** Continuous on CLOSED interval [a, b]
2. **Critical points are candidates:** Not all critical points are extrema
3. **Don't forget endpoints:** Absolute extrema can occur at boundaries
4. **Two types of critical points:** f'(x) = 0 OR f'(x) undefined
5. **Systematic approach:** The Candidates Test is foolproof when applied correctly

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **5.2:** Extreme Value Theorem, Global vs. Local Extrema, Critical Points

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (Candidates Test)
- **MP 2:** Connecting Representations (graphical and analytical)
- **MP 3:** Justification (explaining why EVT applies or doesn't)
- **MP 4:** Communication (precise definitions)

### AP Exam Connection
- FRQs often ask for absolute max/min on a closed interval
- Must show all candidate evaluations for full credit
- "Justify your answer" requires explaining why those are the only candidates
- Common errors:
  - Forgetting to check endpoints
  - Forgetting critical points where f' is undefined
  - Not verifying hypotheses of EVT

### Fluency Goal
By the end of this class, students should:
- State the Extreme Value Theorem with conditions
- Distinguish local from global extrema
- Find all critical points of a function
- Apply the Candidates Test to find absolute extrema on [a, b]
- Recognize when EVT does not apply

---

## Sources

- [Khan Academy: Extreme Value Theorem](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-2)
- [Professor Leonard: Finding Absolute Extrema](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Absolute Extrema](https://tutorial.math.lamar.edu/Classes/CalcI/AbsoluteExtrema.aspx)
- [Paul's Online Math Notes: Critical Points](https://tutorial.math.lamar.edu/Classes/CalcI/CriticalPoints.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
