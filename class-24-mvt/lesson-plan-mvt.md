# Lesson Plan: Mean Value Theorem

## Class 24 | Unit 5: Analytical Applications of Differentiation

---

## Overview

This session introduces the Mean Value Theorem (MVT), one of the most important theoretical results in calculus. Students will understand MVT both as a geometric statement about parallel tangent and secant lines and as a physical intuition about instantaneous and average rates of change. The lesson establishes Rolle's Theorem as a special case before generalizing to MVT.

**CED Topic:** 5.1 - Using the Mean Value Theorem

---

## Learning Objectives

By the end of this class, students will be able to:

1. State the Mean Value Theorem with both required hypotheses (continuous on [a, b], differentiable on (a, b))
2. Explain the geometric interpretation of MVT (parallel secant and tangent lines)
3. Explain the physical interpretation of MVT (average velocity equals instantaneous velocity)
4. Verify that the hypotheses of MVT are satisfied before applying it
5. Calculate the value(s) of c guaranteed by MVT when possible
6. Recognize situations where MVT does not apply due to hypothesis failure

---

## Prior Knowledge Required

- Continuity and its definition (Unit 1)
- Differentiability and its relationship to continuity (Unit 2)
- Calculating derivatives using rules (Unit 3)
- Interpreting the derivative as slope of tangent line and instantaneous rate of change

---

## Materials Needed

- Presentation slides with D3 visualizations
- Student devices for Desmos exploration
- Graphing calculators
- MVT reference cards (optional)

---

## Class Structure (50 minutes)

### Opening Hook: The Speed Trap (5 min)

**Scenario:**
> You travel 150 miles in 2 hours. The speed limit is 65 mph. Did you definitely exceed the speed limit at some point?

**Discussion:**
- Your average speed was 75 mph
- At some moment, your speedometer MUST have read exactly 75 mph
- Ask: "How do we know this for certain? Can we prove it mathematically?"

**Today's Goal:** We're going to prove this intuition with the Mean Value Theorem.

### Rolle's Theorem: A Special Case (10 min)

**Statement:**
If f is continuous on [a, b], differentiable on (a, b), and f(a) = f(b), then there exists at least one c in (a, b) such that f'(c) = 0.

**Geometric Interpretation:**
- If endpoints are at the same height, there must be a horizontal tangent somewhere between
- The function must "turn around" to return to the same height

**Visualization:**
- Show curve with f(a) = f(b)
- Draw horizontal line through endpoints
- Show tangent line sweeping until it becomes horizontal

**Example:** f(x) = x^2 - 4x + 3 on [1, 3]
1. Check continuity: Polynomial, so continuous on [1, 3]
2. Check differentiability: Polynomial, so differentiable on (1, 3)
3. Check f(a) = f(b): f(1) = 1 - 4 + 3 = 0, f(3) = 9 - 12 + 3 = 0
4. Rolle's applies! Find c: f'(x) = 2x - 4 = 0 gives c = 2
5. Verify: c = 2 is in (1, 3)

### The Mean Value Theorem (15 min)

**Statement:**
If f is continuous on [a, b] and differentiable on (a, b), then there exists at least one c in (a, b) such that:
$$f'(c) = \frac{f(b) - f(a)}{b - a}$$

**Break Down the Formula:**
- Left side: Instantaneous rate of change at some point c
- Right side: Average rate of change over the entire interval
- The theorem guarantees these are equal somewhere

**Geometric Interpretation:**
- The secant line connecting (a, f(a)) and (b, f(b)) has a certain slope
- There must be at least one point where the tangent line is parallel to this secant
- Parallel lines have equal slopes

**Physical Interpretation:**
- If you travel from point A to point B, at some instant your speedometer must show exactly your average speed
- Average velocity over the trip = instantaneous velocity at some moment

**Connection to Rolle's:**
- If f(a) = f(b), the average rate of change is 0
- MVT says f'(c) = 0 for some c, which is exactly Rolle's Theorem
- MVT generalizes Rolle's by allowing different endpoint values

**Interactive Visualization:**
- Show function with endpoints marked
- Draw secant line (show slope value)
- Drag point along curve, showing tangent line
- Highlight when tangent slope matches secant slope

### Worked Examples (12 min)

**Example 1:** f(x) = x^3 - x on [0, 2]

1. **Verify hypotheses:**
   - f is polynomial, so continuous on [0, 2]
   - f is polynomial, so differentiable on (0, 2)
   - MVT applies!

2. **Calculate average rate of change:**
   $$\frac{f(2) - f(0)}{2 - 0} = \frac{(8-2) - (0)}{2} = \frac{6}{2} = 3$$

3. **Find c:**
   - f'(x) = 3x^2 - 1
   - Set f'(c) = 3: 3c^2 - 1 = 3
   - 3c^2 = 4, so c^2 = 4/3
   - c = 2/sqrt(3) ≈ 1.15 (take positive root since c must be in (0, 2))

4. **Verify:** c ≈ 1.15 is indeed in (0, 2)

**Example 2:** When MVT Doesn't Apply

f(x) = |x| on [-1, 1]

1. **Check continuity:** f is continuous on [-1, 1] (V-shaped graph with no breaks)
2. **Check differentiability:** f is NOT differentiable at x = 0 (corner point)
3. **Conclusion:** MVT does NOT guarantee existence of c
4. **Discussion:** The average rate of change is 0, but there's no horizontal tangent on the graph

**Example 3:** Multiple Values of c

f(x) = sin(x) on [0, 2π]

1. **Hypotheses satisfied** (sine is smooth everywhere)
2. **Average rate:** (sin(2π) - sin(0))/(2π - 0) = 0/2π = 0
3. **Find c:** sin'(c) = cos(c) = 0
4. **Solutions:** c = π/2 and c = 3π/2 (both in (0, 2π))
5. **Key insight:** "at least one c" can mean multiple values!

### Applications and Implications (5 min)

**Speed Trap Application:**
- If you travel 120 miles in 90 minutes, average speed = 80 mph
- MVT guarantees: at some instant, speedometer showed exactly 80 mph
- If speed limit is 70 mph, you definitely exceeded it at some point!

**Theoretical Importance:**
- MVT is used to prove many calculus results
- Foundation for relationship between f' and increasing/decreasing behavior
- Underpins L'Hopital's Rule and the Fundamental Theorem of Calculus

### Closing (3 min)

**Exit Ticket:**
For f(x) = x^2 on [1, 3]:
1. Verify MVT hypotheses
2. Find the value of c guaranteed by MVT

**Key Takeaways:**
- MVT is an EXISTENCE theorem - it guarantees c exists without telling us how to find it
- Always check BOTH hypotheses: continuous on [a, b], differentiable on (a, b)
- Geometric interpretation: parallel secant and tangent lines
- Physical interpretation: average rate = instantaneous rate somewhere

**Preview:** Tomorrow we'll use these ideas to find maximum and minimum values (Extreme Value Theorem).

---

## Differentiation Strategies

### For students who need more support:
- Provide a hypothesis checklist to verify before applying MVT
- Focus on physical interpretation (speed analogy) before geometric
- Use numerical examples with graphing calculator verification
- Pair with stronger students during practice problems

### For advanced students:
- Explore the proof of MVT using Rolle's Theorem
- Challenge: Use MVT to prove that if f'(x) = 0 for all x, then f is constant
- Investigate: Can there be infinitely many values of c?
- Research: What other theorems follow from MVT?

---

## Common Misconceptions to Address

1. **"MVT tells us HOW to find c"**
   - Address: MVT guarantees EXISTENCE. Finding c explicitly is a separate task that isn't always possible.

2. **"There's exactly one c"**
   - Address: The theorem says "at least one." Show the sine example with two values.

3. **"Continuous is enough"**
   - Address: Show |x| on [-1, 1] - continuous but not differentiable at 0, MVT doesn't apply.

4. **"The c must be at the midpoint"**
   - Address: Show asymmetric examples where c ≠ (a+b)/2.

5. **"MVT fails if f(a) = f(b)"**
   - Address: When f(a) = f(b), MVT still works - it becomes Rolle's Theorem!

6. **"Check hypotheses after calculating"**
   - Address: ALWAYS verify continuity and differentiability FIRST before applying MVT.

---

## Assessment Notes

- Monitor understanding during the hypothesis verification steps
- Exit ticket provides formative data on procedural fluency
- Note which students struggle with the distinction between existence and computation
- Check that students can articulate both geometric and physical interpretations

---

## Connections

**Prior knowledge:**
- Continuity and limits (Unit 1)
- Differentiability and derivative rules (Units 2-3)
- Derivative as slope and rate of change (Unit 2)

**Future connections:**
- Extreme Value Theorem and critical points (Class 25)
- First Derivative Test for monotonicity (Class 26)
- Second Derivative Test (Class 27)
- Justification of increasing/decreasing behavior

---

## Notation Notes

**Key Terms:**
- **Rolle's Theorem:** Special case of MVT when f(a) = f(b)
- **Mean Value Theorem:** The general case
- **Hypothesis:** A condition that must be satisfied before a theorem applies
- **Existence theorem:** A theorem that guarantees something exists without providing a method to find it

**AP Exam Language:**
- "Verify that the hypotheses of MVT are satisfied"
- "Explain why MVT guarantees..."
- "Find the value of c guaranteed by MVT"
