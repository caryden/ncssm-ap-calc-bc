# Research: Curve Sketching and Connecting f, f', f''

## Overview

This document summarizes research on how expert educators teach comprehensive curve sketching and the connections between a function and its first and second derivatives. It informs the lesson plan and presentation spec for Class 28.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Understanding Function Behavior

**Source:** [3blue1brown.com](https://www.3blue1brown.com/)

**Core Pedagogical Strategy:**

Curve sketching is about telling the complete story of a function. The first derivative tells us WHERE the function is going (increasing/decreasing), and the second derivative tells us HOW it's getting there (curving up/down).

**Key Teaching Moves:**

1. **Narrative approach** - The function "climbs" to a peak, "descends" into a valley
2. **Three-level analysis** - f (position), f' (velocity), f'' (acceleration)
3. **Transfer between representations** - Move fluidly between f and f' graphs

**Conceptual Anchor:**

> "When you see a graph of f', you can reconstruct the qualitative behavior of f. Where f' is positive, f rises. Where f' crosses zero from positive to negative, f has a local maximum."

### Professor Leonard: Curve Sketching

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Comprehensive checklist approach
- Systematic "12-step" curve sketching procedure
- Emphasis on putting all information together
- Multiple worked examples from start to finish

**Approach:**

1. Domain and continuity
2. Intercepts (x and y)
3. Symmetry (even, odd, periodic)
4. Asymptotes (vertical, horizontal, oblique)
5. First derivative analysis (increasing/decreasing, extrema)
6. Second derivative analysis (concavity, inflection points)
7. Plot key points and connect

**Strengths:**
- Nothing gets overlooked
- Students develop systematic habits
- Builds confidence for complex functions

### Khan Academy: Connecting f, f', and f''

**Source:** [Khan Academy - Analyzing Functions](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-9)

**Key Teaching Points:**

1. **From f to f':**
   - f increasing where f' > 0
   - f decreasing where f' < 0
   - f has extremum where f' = 0 (with sign change)

2. **From f' to f'':**
   - f' increasing where f'' > 0 (f concave up)
   - f' decreasing where f'' < 0 (f concave down)
   - f' has extremum where f'' = 0 (inflection point of f)

3. **Inverse Reconstruction:**
   - Given graph of f', sketch qualitative graph of f
   - Given graph of f'', infer behavior of f' and f

### Paul's Online Math Notes: Curve Sketching Summary

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/CalcI/CurveSketching.aspx)

**Key Insights:**

> "Putting all of this information together will give us a fairly good sketch of the graph of a function. We'll use a checklist approach."

**The Complete Picture:**
- Domain tells us where the function exists
- Asymptotes show end behavior
- First derivative gives direction and turning points
- Second derivative gives shape and inflection points
- Key points (intercepts, extrema, inflection) anchor the sketch

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Triple Graph Stack** | f, f', f'' aligned vertically with shared x-axis | Shows direct correspondence |
| **Color Coordination** | Same color for related features (e.g., f' positive = green on both f' graph and f increasing region) | Reduces cognitive load |
| **Feature Transfer** | Highlight a feature on one graph, show corresponding feature on another | Builds connection skills |
| **Checklist Annotation** | Annotate sketch with symbols for each analyzed feature | Systematic completion |
| **Build-Up Animation** | Add features one at a time to final sketch | Shows how analysis becomes picture |
| **Given/Deduce Problems** | Given one graph, sketch the others | Tests understanding of relationships |

### Recommended D3 Visualization

**Triple Function Analyzer:**
1. Three aligned graphs: f, f', f''
2. Vertical line that user can drag across all three
3. When line is at x = a:
   - Show f(a), f'(a), f''(a) values
   - Mark corresponding points on all three graphs
   - Annotate: "At x = a: f increasing (f' > 0), concave down (f'' < 0)"
4. Highlight regions:
   - Green where f increasing (where f' > 0)
   - Concave up shading where f'' > 0
5. Mark special points:
   - Extrema of f (where f' = 0 with sign change)
   - Inflection points of f (where f'' = 0 with sign change)
   - Extrema of f' (where f'' = 0)

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"f' = 0 means f = 0"** | Confusing the function with its derivative | Emphasize: f' = 0 means f has HORIZONTAL tangent, not that f equals zero |
| **"f' max/min corresponds to f max/min"** | Confusing derivative extrema | f' has a maximum where f'' = 0 (inflection of f), not where f has max |
| **"Can't sketch without formula"** | Over-reliance on computation | Practice sketching from derivative information alone |
| **"Inflection point is where f' = 0"** | Confusing critical point with inflection | Inflection is where f'' = 0 (and changes sign), which is where f' has an extremum |
| **"Concave up means above x-axis"** | Confusing concavity with sign | Concave up means curving upward, regardless of whether f is positive or negative |
| **"f' negative means f negative"** | Confusing sign of derivative with sign of function | f' < 0 means f is DECREASING, not that f < 0 |
| **"Sketch must be precise"** | Perfectionism blocks understanding | Qualitative accuracy matters more than exact coordinates |

### Misconception-Busting Exercises

1. **f' Extrema vs. f Extrema:**
   - f(x) = x^3 has f' = 3x^2 with minimum at x = 0
   - But f(x) = x^3 has NO extremum at x = 0 (inflection point)
   - f' extremum corresponds to f inflection point!

2. **Sketching from f' Only:**
   Given: f'(x) = (x-1)(x-3)
   - f'(x) = 0 at x = 1 and x = 3
   - f'(x) > 0 on (-inf, 1) and (3, inf)
   - f'(x) < 0 on (1, 3)
   - Conclusion: f has local max at x = 1, local min at x = 3
   - f is increasing, then decreasing, then increasing

3. **f'' to f' to f:**
   Given: f''(x) = 2 (constant positive)
   - f' is always increasing (linear)
   - f is always concave up (parabola)
   - Example: f(x) = x^2 + bx + c

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 28 lesson should:

### Opening (5 min)
- Present a graph of f'(x) (not f!)
- Challenge: "What does the original function f look like?"
- This reverses the usual direction and builds transfer skills

### Connecting f and f' (12 min)

**Key Relationships:**

| f behavior | f' behavior |
|------------|-------------|
| f increasing | f' > 0 (above x-axis) |
| f decreasing | f' < 0 (below x-axis) |
| f has local max | f' = 0 and changes + to - (crosses x-axis going down) |
| f has local min | f' = 0 and changes - to + (crosses x-axis going up) |
| f has horizontal tangent | f' = 0 (touches or crosses x-axis) |

**Transfer Practice 1:** Given graph of f, sketch f'
1. Where is f increasing? (f' will be positive there)
2. Where is f decreasing? (f' will be negative there)
3. Where are local max/min? (f' = 0 there)
4. Where is f steepest? (f' has largest magnitude there)

**Transfer Practice 2:** Given graph of f', sketch f
1. Where is f' > 0? (f is increasing there)
2. Where is f' < 0? (f is decreasing there)
3. Where does f' cross zero? (f has critical point, check for extremum)
4. Where is f' largest? (f is steepest increasing there)

### Connecting f' and f'' (10 min)

**Key Relationships:**

| f' behavior | f'' behavior | f behavior |
|-------------|--------------|------------|
| f' increasing | f'' > 0 | f concave up |
| f' decreasing | f'' < 0 | f concave down |
| f' has local max | f'' = 0, changes + to - | f has inflection point |
| f' has local min | f'' = 0, changes - to + | f has inflection point |

**The Correspondence:**
- f' extrema = f inflection points
- This is because f'' controls concavity of f, and f'' = 0 (with sign change) means concavity changes

**Triple Transfer:** Given f'', deduce f' behavior, then f behavior

**Example:** f''(x) = x - 2
- f''(x) = 0 at x = 2
- f'' < 0 for x < 2, f'' > 0 for x > 2
- Therefore f' is decreasing then increasing (has minimum at x = 2)
- Therefore f is concave down then concave up (has inflection at x = 2)

### Curve Sketching Procedure (15 min)

**Complete Checklist:**

1. **Domain:** Where is f defined?
2. **Intercepts:** Where does f cross the axes?
3. **Symmetry:** Is f even (symmetric about y-axis), odd (symmetric about origin), or periodic?
4. **Asymptotes:**
   - Vertical: Where does f blow up?
   - Horizontal: What happens as x goes to +/- infinity?
5. **First Derivative Analysis:**
   - Find f'(x)
   - Find critical points (f' = 0 or undefined)
   - Sign chart for f'
   - Identify increasing/decreasing intervals
   - Classify extrema using First (or Second) Derivative Test
6. **Second Derivative Analysis:**
   - Find f''(x)
   - Find potential inflection points (f'' = 0 or undefined)
   - Sign chart for f''
   - Identify concave up/down intervals
   - Verify inflection points (sign change in f'')
7. **Plot Key Points:**
   - Intercepts
   - Local maxima and minima (with y-values)
   - Inflection points (with y-values)
8. **Connect:** Draw smooth curve through points, respecting monotonicity and concavity

**Worked Example:** f(x) = x^3 - 3x^2 + 4

1. **Domain:** All real numbers
2. **Intercepts:**
   - y-intercept: f(0) = 4
   - x-intercepts: Solve x^3 - 3x^2 + 4 = 0 (factor: (x+1)(x-2)^2 = 0, so x = -1, x = 2)
3. **Symmetry:** Neither even nor odd
4. **Asymptotes:** None (polynomial)
5. **First Derivative:**
   - f'(x) = 3x^2 - 6x = 3x(x - 2)
   - Critical points: x = 0, x = 2
   - Sign chart: + on (-inf, 0), - on (0, 2), + on (2, inf)
   - Local max at x = 0: f(0) = 4
   - Local min at x = 2: f(2) = 0
6. **Second Derivative:**
   - f''(x) = 6x - 6 = 6(x - 1)
   - Potential inflection: x = 1
   - Sign chart: - on (-inf, 1), + on (1, inf)
   - Inflection point at x = 1: f(1) = 2
7. **Key Points:**
   - (0, 4) local max
   - (2, 0) local min
   - (1, 2) inflection point
   - (-1, 0) x-intercept
8. **Sketch:** Connect points with curve that is:
   - Increasing and concave down on (-inf, 0)
   - Decreasing and concave down on (0, 1)
   - Decreasing and concave up on (1, 2)
   - Increasing and concave up on (2, inf)

### Practice (3 min)

**Quick Practice:** Given f'(x) = x^2 - 4 and f(0) = 0, sketch f(x)
- f' = 0 at x = +/- 2
- f' > 0 on (-inf, -2) and (2, inf)
- f' < 0 on (-2, 2)
- Local max at x = -2, local min at x = 2
- f''(x) = 2x, so inflection at x = 0

### Closing (5 min)
- Exit ticket: Match graphs of f, f', f'' given in scrambled order
- Key insight: f, f', and f'' form a connected system - information about any one tells you about the others
- Summary: f' sign -> f direction; f'' sign -> f concavity; f' extrema -> f inflection
- Preview: Optimization problems (using everything we've learned)

### Key Principles Throughout

1. **f' positive = f increasing:** Above the x-axis in f' graph means rising in f graph
2. **f'' positive = f concave up:** f' is itself increasing
3. **f' zeros (with sign change) = f extrema:** Crossing x-axis in f' graph
4. **f'' zeros (with sign change) = f inflection = f' extrema:** Triple connection
5. **Sketch qualitatively:** Exact values less important than correct shape and features

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **5.8:** Sketching Graphs of Functions and Their Derivatives
- **5.9:** Connecting a Function, Its First Derivative, and Its Second Derivative

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (systematic curve sketching)
- **MP 2:** Connecting Representations (f, f', f'' graphs)
- **MP 3:** Justification (explaining feature correspondences)
- **MP 4:** Communication (clear graphical communication)

### AP Exam Connection
- Multiple choice: Given one graph, identify corresponding f, f', or f''
- FRQ: Often provide f' or f'' graph and ask about f behavior
- Must be able to transfer in both directions
- Common prompts:
  - "On what intervals is f concave up? Justify using f''."
  - "Given the graph of f', find where f has local extrema."
  - "Sketch a possible graph of f given the graph of f'."

### Fluency Goal
By the end of this class, students should:
- Transfer between f, f', and f'' graphs in both directions
- Complete a systematic curve sketch using all derivative information
- Identify all key features from derivative analysis
- Match scrambled f, f', f'' graphs correctly

---

## Sources

- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Khan Academy: Connecting f, f', and f''](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-9)
- [Professor Leonard: Curve Sketching](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Curve Sketching](https://tutorial.math.lamar.edu/Classes/CalcI/CurveSketching.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
