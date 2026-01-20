# Lesson Plan: Curve Sketching and Connecting f, f', f''

## Class 28 | Unit 5: Analytical Applications of Differentiation

---

## Overview

This synthesis session brings together all derivative analysis techniques to sketch curves and transfer fluently between f, f', and f'' representations. Students will master the relationships between these three functions and develop systematic curve sketching skills that integrate domain analysis, asymptotes, monotonicity, concavity, and key points.

**CED Topics:** 5.8 - Sketching Graphs of Functions and Their Derivatives; 5.9 - Connecting a Function, Its First Derivative, and Its Second Derivative

---

## Learning Objectives

By the end of this class, students will be able to:

1. Transfer information between f, f', and f'' graphs in both directions
2. Identify function behavior (increasing/decreasing, concavity) from derivative graphs
3. Match scrambled graphs of f, f', and f''
4. Execute a systematic curve sketching procedure using derivative analysis
5. Locate all key features of a function (intercepts, extrema, inflection points)
6. Sketch accurate qualitative graphs from derivative information

---

## Prior Knowledge Required

- First Derivative Test (Class 26)
- Concavity and Second Derivative Test (Class 27)
- Critical points and inflection points (Classes 25, 27)
- Sign chart construction (Class 26)

---

## Materials Needed

- Presentation slides with D3 visualizations
- Student devices for Desmos exploration
- Graphing calculators
- Curve sketching checklist handout

---

## Class Structure (50 minutes)

### Opening Challenge: Reverse Engineering (5 min)

**Activity:**
Display a graph of f'(x) only and ask:
> "Without seeing f(x), describe everything you can about the original function."

**Guided Discussion:**
- Where is f increasing? (Where f' > 0)
- Where is f decreasing? (Where f' < 0)
- Where does f have local max/min? (Where f' crosses zero with sign change)
- What else can we deduce?

**Key Insight:** Information flows both ways between f and its derivatives. Today we master these connections.

### Connecting f and f' (12 min)

**Key Relationships Table:**

| f behavior | f' behavior |
|------------|-------------|
| f increasing | f' > 0 (above x-axis) |
| f decreasing | f' < 0 (below x-axis) |
| f has local max | f' = 0 and changes + to - |
| f has local min | f' = 0 and changes - to + |
| f has horizontal tangent | f' = 0 (touches or crosses x-axis) |
| f is steep | |f'| is large |

**Transfer Practice 1: From f to f'**

Given a graph of f, sketch f':
1. Where is f increasing? (f' will be positive there)
2. Where is f decreasing? (f' will be negative there)
3. Where are local max/min of f? (f' = 0 there)
4. Where is f steepest? (f' has largest magnitude there)
5. Where does f have horizontal tangent? (f' = 0)

**Worked Example:** Sketch f' given f(x) = x^3 - 3x
- f is increasing on (-∞, -1) and (1, ∞)
- f is decreasing on (-1, 1)
- Local max at x = -1, local min at x = 1
- Steepest at x = 0 (inflection point of f)
- f'(x) = 3x^2 - 3 = 3(x-1)(x+1)
- f' is a parabola opening up, zeros at x = ±1

**Transfer Practice 2: From f' to f**

Given a graph of f', sketch qualitative f:
1. Where is f' > 0? (f is increasing there)
2. Where is f' < 0? (f is decreasing there)
3. Where does f' cross zero from + to -? (f has local max)
4. Where does f' cross zero from - to +? (f has local min)
5. Where is f' largest positive? (f is steepest increasing)

**Worked Example:** Given f'(x) = (x - 1)(x - 3), sketch f
- f'(x) = 0 at x = 1 and x = 3
- f' > 0 on (-∞, 1) and (3, ∞) → f increasing
- f' < 0 on (1, 3) → f decreasing
- At x = 1: + to -, so local max
- At x = 3: - to +, so local min
- Sketch: rises to peak at x = 1, falls to valley at x = 3, then rises

### Connecting f' and f'' (and back to f) (10 min)

**Key Relationships:**

| f' behavior | f'' behavior | f behavior |
|-------------|--------------|------------|
| f' increasing | f'' > 0 | f concave up |
| f' decreasing | f'' < 0 | f concave down |
| f' has local max | f'' changes + to - | f has inflection point |
| f' has local min | f'' changes - to + | f has inflection point |

**The Critical Correspondence:**
- Extrema of f' correspond to inflection points of f
- f'' = 0 at extrema of f', which is where f changes concavity

**Triple Transfer Example:**

Given: f''(x) = x - 2

1. **Analyze f'':**
   - f'' = 0 at x = 2
   - f'' < 0 for x < 2 (f' decreasing, f concave down)
   - f'' > 0 for x > 2 (f' increasing, f concave up)

2. **Deduce f' behavior:**
   - f' has minimum at x = 2 (f'' changes - to +)
   - f' is decreasing then increasing

3. **Deduce f behavior:**
   - f is concave down for x < 2
   - f is concave up for x > 2
   - Inflection point at x = 2

**Matching Activity:**
Present three graphs (f, f', f'') in scrambled order. Students identify which is which using the relationships:
- f has extrema where f' = 0 (with sign change)
- f' has extrema where f'' = 0 (with sign change)
- f is concave up where f'' > 0

### Systematic Curve Sketching Procedure (15 min)

**Complete Checklist:**

1. **Domain:** Where is f defined?
2. **Intercepts:** y-intercept (plug in x = 0), x-intercepts (solve f(x) = 0)
3. **Symmetry:** Even (symmetric about y-axis), odd (symmetric about origin), or neither
4. **Asymptotes:**
   - Vertical: Where does f blow up? (denominator = 0)
   - Horizontal: What is lim(x→±∞) f(x)?
5. **First Derivative Analysis:**
   - Find f'(x)
   - Find critical points (f' = 0 or undefined)
   - Sign chart for f'
   - Determine increasing/decreasing intervals
   - Classify extrema
6. **Second Derivative Analysis:**
   - Find f''(x)
   - Find potential inflection points (f'' = 0 or undefined)
   - Sign chart for f''
   - Determine concave up/down intervals
   - Verify inflection points
7. **Plot Key Points:**
   - Intercepts
   - Local maxima and minima (with y-values)
   - Inflection points (with y-values)
8. **Connect:** Draw smooth curve through points, respecting direction and shape

**Comprehensive Worked Example:** f(x) = x^3 - 3x^2 + 4

1. **Domain:** All real numbers (polynomial)

2. **Intercepts:**
   - y-intercept: f(0) = 4
   - x-intercepts: x^3 - 3x^2 + 4 = 0
   - Factor: (x + 1)(x - 2)^2 = 0
   - x = -1 and x = 2

3. **Symmetry:** Neither even nor odd (check: f(-x) ≠ f(x) and f(-x) ≠ -f(x))

4. **Asymptotes:** None (polynomial)

5. **First Derivative:**
   - f'(x) = 3x^2 - 6x = 3x(x - 2)
   - Critical points: x = 0, x = 2
   - Sign chart:

     | Interval | Sign of f' | f behavior |
     |----------|------------|------------|
     | (-∞, 0) | + | increasing |
     | (0, 2) | - | decreasing |
     | (2, ∞) | + | increasing |

   - Local max at x = 0: f(0) = 4
   - Local min at x = 2: f(2) = 0

6. **Second Derivative:**
   - f''(x) = 6x - 6 = 6(x - 1)
   - Potential inflection: x = 1
   - Sign chart:

     | Interval | Sign of f'' | Concavity |
     |----------|-------------|-----------|
     | (-∞, 1) | - | concave down |
     | (1, ∞) | + | concave up |

   - Inflection point at x = 1: f(1) = 2

7. **Key Points:**
   - (0, 4) - local max
   - (2, 0) - local min, also x-intercept
   - (1, 2) - inflection point
   - (-1, 0) - x-intercept

8. **Sketch:**
   - Starts low, increases through (-1, 0)
   - Concave down, rises to local max at (0, 4)
   - Decreases through inflection at (1, 2)
   - Concave up, falls to local min at (2, 0)
   - Then increases and concave up to infinity

### Practice (3 min)

**Quick Practice:** Given f'(x) = x^2 - 4 and f(0) = 0, sketch f(x)

- f' = 0 at x = ±2
- f' > 0 on (-∞, -2) and (2, ∞) → f increasing
- f' < 0 on (-2, 2) → f decreasing
- Local max at x = -2, local min at x = 2
- f''(x) = 2x, so inflection at x = 0
- Passes through (0, 0)

### Closing (5 min)

**Exit Ticket:**
Given three graphs labeled A, B, C, one each of f, f', f'', identify which is which and explain your reasoning.

**Key Takeaways:**
- f' positive ↔ f increasing; f' zeros ↔ f extrema
- f'' positive ↔ f concave up; f'' zeros (with sign change) ↔ f inflection
- Extrema of f' are inflection points of f
- Systematic curve sketching: domain, intercepts, asymptotes, f' analysis, f'' analysis, plot and connect

**Preview:** Tomorrow we apply all these techniques to solve optimization problems - finding the absolute best outcome.

---

## Differentiation Strategies

### For students who need more support:
- Provide a curve sketching checklist to follow step-by-step
- Start with polynomial examples (no asymptotes)
- Use color coding to connect features across f, f', f'' graphs
- Practice one direction at a time (f to f' OR f' to f)

### For advanced students:
- Analyze rational functions with multiple asymptotes
- Sketch curves with logarithmic or exponential components
- Challenge: Given only f'', what can you determine about f?
- Investigate functions where f, f', and f'' have the same zeros

---

## Common Misconceptions to Address

1. **"f' = 0 means f = 0"**
   - Address: f' = 0 means horizontal tangent, NOT that f equals zero.

2. **"f' has max/min where f has max/min"**
   - Address: Extrema of f' correspond to inflection points of f, not extrema.

3. **"Can't sketch without exact formula"**
   - Address: Practice qualitative sketching from derivative information alone.

4. **"Inflection point is where f' = 0"**
   - Address: Inflection is where f'' = 0 (and changes sign), which is where f' has extremum.

5. **"Concave up means above x-axis"**
   - Address: Concavity is about SHAPE, not position relative to x-axis.

6. **"f' negative means f negative"**
   - Address: f' < 0 means f is DECREASING, not that f < 0.

---

## Assessment Notes

- Monitor understanding during the matching activity
- Exit ticket tests ability to connect all three graphs
- Note which students struggle with direction of transfer (f to f' vs f' to f)
- Check that systematic procedure is being followed completely

---

## Connections

**Prior knowledge:**
- All Unit 5 content (Classes 24-27)
- Derivative calculations (Units 2-3)
- Limits and asymptotes (Unit 1)

**Future connections:**
- Optimization problems (Class 29)
- Applications in physics and economics
- Integral curve sketching (Unit 6)
- AP exam free-response questions

---

## Notation Notes

**Summary of Correspondences:**

| To find... | Look at... |
|------------|-----------|
| f increasing/decreasing | Sign of f' |
| f local max/min | f' = 0 with sign change |
| f concave up/down | Sign of f'' |
| f inflection point | f'' = 0 with sign change |
| f' increasing/decreasing | Sign of f'' |
| f' local max/min | f'' = 0 with sign change |

**AP Exam Language:**
- "Sketch a possible graph of f given the graph of f'"
- "On what intervals is f both increasing and concave down?"
- "At what x-values does f have an inflection point? Justify."
