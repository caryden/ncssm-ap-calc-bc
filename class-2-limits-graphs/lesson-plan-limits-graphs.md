# Lesson Plan: Estimating Limits from Graphs

## Class 2 | February 6, 2026 | Unit 1: Limits and Continuity

---

## Overview

This lesson develops students' ability to estimate limits by analyzing graphs of functions. Students will learn to read limit behavior visually, distinguish between left-hand and right-hand limits, identify when limits do not exist, and understand the relationship between limits and function values at a point.

**CED Topic:** 1.3 - Estimating Limit Values from Graphs

---

## Learning Objectives

By the end of this class, students will be able to:

1. Estimate the value of a limit from a graph
2. Determine left-hand and right-hand limits from graphical representations
3. Identify when a limit does not exist based on graphical behavior
4. Distinguish between the limit of a function at a point and the function's value at that point
5. Recognize different types of discontinuities graphically

---

## Materials Needed

- Presentation slides with interactive D3 visualizations
- Student devices for Desmos exploration
- Practice worksheet with various graph types
- Exit ticket

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Visual Challenge**

Display a complex piecewise graph and ask students to identify:
- What happens as x approaches 2 from the left?
- What happens as x approaches 2 from the right?
- Does the limit exist at x = 2?

This sets up the visual analysis skills needed for the lesson.

### Core Concept: Reading Limits from Graphs (15 min)

**Key Skills to Develop:**

1. **Tracing the curve** - Follow the function's path as x approaches a value
2. **Approaching from both sides** - Check left-hand and right-hand behavior
3. **Noting holes vs. jumps** - Removable vs. jump discontinuities

**Interactive Demonstration:**

Use the D3 visualization to show various function graphs:
- Continuous function at the point
- Function with a hole (removable discontinuity)
- Function with a jump discontinuity
- Function with unbounded behavior

**Critical Questions to Ask:**
- "Where is the function heading, not where it lands"
- "What y-value are we approaching?"
- "Do both sides agree?"

### Graphical Cases for Limits (12 min)

**Case 1: Limit Exists and Equals f(a)**
- Continuous at the point
- Both one-sided limits agree with function value
- Example: f(x) = x² at x = 2

**Case 2: Limit Exists but f(a) is Different**
- Hole in the graph
- One-sided limits agree but f(a) ≠ L
- Example: f(x) with f(2) redefined

**Case 3: Limit Exists but f(a) is Undefined**
- Removable discontinuity
- One-sided limits agree, but no function value
- Example: f(x) = (x² - 4)/(x - 2)

**Case 4: Limit Does Not Exist (Jump)**
- Left and right limits differ
- Example: Piecewise functions with jumps

**Case 5: Limit Does Not Exist (Unbounded)**
- Function approaches ±∞
- Example: f(x) = 1/x near x = 0

**Case 6: Limit Does Not Exist (Oscillation)**
- Function oscillates without settling
- Example: f(x) = sin(1/x) near x = 0

### Guided Practice (10 min)

**Interactive Graph Analysis**

Present 4-5 different graphs and have students determine:
- \(\lim_{x \to a^-} f(x)\)
- \(\lim_{x \to a^+} f(x)\)
- \(\lim_{x \to a} f(x)\)
- f(a)

Work through first two examples together, then have students work in pairs on remaining problems.

### Common Mistakes to Address (5 min)

1. **Confusing f(a) with the limit** - The solid dot shows f(a), but we want where the curve is heading
2. **Only checking one side** - Must verify both left and right limits
3. **Missing open circles** - Open circles indicate the function is NOT defined there
4. **Reading the wrong scale** - Always check axis labels

### Closing (3 min)

**Exit Ticket:** Given a graph, identify:
- The left-hand limit at x = 3
- The right-hand limit at x = 3
- Whether the two-sided limit exists
- The value of f(3)

**Preview:** Tomorrow we'll see how to estimate limits numerically using tables of values.

---

## Differentiation Strategies

### For students who need more support:
- Provide a checklist for analyzing limits graphically
- Use color-coding: blue for left approach, red for right approach
- Start with simpler, continuous functions before discontinuities

### For advanced students:
- Challenge: Sketch a function satisfying given limit conditions
- Extension: Explore oscillating functions like sin(1/x)
- Connect: How might we determine limits algebraically?

---

## Common Misconceptions to Address

1. **"The limit is where the dot is"**
   - Address: The limit is about approach, not arrival. Trace the curve, don't look for the dot.

2. **"If f(a) is undefined, the limit doesn't exist"**
   - Address: The limit can exist even when f(a) is undefined (holes).

3. **"The limit from the left means negative infinity"**
   - Address: Left/right refer to direction of approach on x-axis, not y-values.

4. **"Open circles mean the limit doesn't exist"**
   - Address: Open circles show where f is undefined, but limits concern approach.

---

## Assessment Notes

- Monitor student reasoning during partner work
- Exit ticket assesses all four key values from a graph
- Note which cases students find most challenging

---

## Connections

**Prior knowledge:**
- Function notation and evaluation
- Reading graphs
- Class 1: Definition of limits and notation

**Future connections:**
- Class 3: Numerical estimation of limits (tables)
- Unit 2: Derivative as limit of slopes

---

## Reflection Questions (for instructor)

After class, consider:
1. Did students consistently confuse f(a) with the limit?
2. Which discontinuity type caused the most confusion?
3. Were the visualizations effective for all learners?
4. Did partner work produce good mathematical discussions?
