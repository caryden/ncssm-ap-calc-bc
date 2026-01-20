# Lesson Plan: Estimating Limits from Tables

## Class 3 | February 7, 2026 | Unit 1: Limits and Continuity

---

## Overview

This lesson develops students' ability to estimate limits numerically using tables of function values. Students will create tables approaching target values from both sides, recognize patterns indicating limit behavior, and understand the limitations and precision issues inherent in numerical estimation.

**CED Topic:** 1.4 - Estimating Limit Values from Tables

---

## Learning Objectives

By the end of this class, students will be able to:

1. Construct a table of values to estimate a limit numerically
2. Choose appropriate x-values that approach the target from both sides
3. Identify the pattern in function values as x approaches a
4. Recognize when a table suggests the limit does not exist
5. Understand precision limitations of numerical approaches

---

## Materials Needed

- Presentation slides with interactive visualizations
- Student calculators (TI-84 or equivalent)
- Desmos for real-time table generation
- Practice worksheet with table templates
- Exit ticket

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Connection to Graphs**

"Yesterday we traced curves visually. Today we'll use numbers to tell the same story."

Display a function graph and its corresponding table side by side. Ask students:
- What does the table tell us that matches the graph?
- How do the y-values change as x gets closer to 2?

### Core Concept: Building Tables (15 min)

**The Numerical Approach**

Present the strategy for creating limit tables:

1. **Choose x-values approaching from the left** (e.g., 1.9, 1.99, 1.999, 1.9999)
2. **Choose x-values approaching from the right** (e.g., 2.1, 2.01, 2.001, 2.0001)
3. **Calculate f(x) for each value**
4. **Look for the pattern** - what value are we approaching?

**Key Principle:** Get closer by factors of 10 (adding 9s after the decimal)

**Interactive Demonstration:**

Using \(f(x) = \frac{x^2 - 4}{x - 2}\), build the table together:

| x | f(x) |
|---|------|
| 1.9 | 3.9 |
| 1.99 | 3.99 |
| 1.999 | 3.999 |
| 2.001 | 4.001 |
| 2.01 | 4.01 |
| 2.1 | 4.1 |

**Conclusion:** The limit appears to be 4.

### When Tables Reveal Problems (10 min)

**Case 1: Limit Exists**
- Values from both sides converge to the same number
- Pattern becomes clear as x approaches a

**Case 2: One-Sided Limits Differ**
- Left side approaches one value
- Right side approaches a different value
- Two-sided limit DNE

**Case 3: Unbounded Behavior**
- Values grow without bound (→ ∞ or → -∞)
- Look for values like 100, 1000, 10000...

**Case 4: Oscillation**
- Values jump around without settling
- No clear pattern emerges
- Example: sin(1/x) near x = 0

### Calculator/Desmos Skills (8 min)

**TI-84 Table Feature:**
1. Enter function in Y=
2. 2nd → TABLE to see values
3. Set TblStart and ΔTbl for precise exploration

**Desmos Table Feature:**
1. Create function f(x) = ...
2. Create table with specific x-values
3. Watch y-values update automatically

**Practice:** Have students use their calculators to build a table for:
\[\lim_{x \to 1} \frac{x^3 - 1}{x - 1}\]

### Precision and Limitations (5 min)

**Important Cautions:**

1. **Calculator precision** - Eventually, round-off errors appear
2. **"Close enough" is not proof** - Tables suggest, don't prove
3. **Hidden behavior** - Some functions behave unexpectedly very close to a
4. **Algebraic verification** - Always confirm numerically estimated limits

**Example of precision issues:** Try computing \(\frac{\sin(0.0000001)}{0.0000001}\) on a calculator

### Guided Practice (5 min)

Students work in pairs to estimate:
1. \(\lim_{x \to 3} \frac{x^2 - 9}{x - 3}\)
2. \(\lim_{x \to 0} \frac{|x|}{x}\)

First problem: limit exists (= 6)
Second problem: limit DNE (left = -1, right = 1)

### Closing (2 min)

**Exit Ticket:** Given a partially completed table, determine what value the limit appears to approach.

**Preview:** Tomorrow we'll move from estimation to exact answers using algebraic techniques.

---

## Differentiation Strategies

### For students who need more support:
- Provide pre-formatted table templates
- Start with simpler polynomial functions
- Use Desmos to reduce calculation burden

### For advanced students:
- Challenge: Explore limits of \(\frac{\sin x}{x}\) numerically
- Extension: What happens to precision as we get very close?
- Connect: Why might numerical methods fail?

---

## Common Misconceptions to Address

1. **"The table proves the limit"**
   - Address: Tables provide evidence, not proof. Algebraic methods give certainty.

2. **"I should evaluate at x = a"**
   - Address: We never plug in the target value; we approach it.

3. **"More decimal places is always better"**
   - Address: Calculator precision limits make very small steps unreliable.

4. **"If f(a) exists, that's the limit"**
   - Address: The function value and limit are separate concepts.

---

## Assessment Notes

- Monitor calculator usage during practice
- Check table construction methodology
- Exit ticket assesses pattern recognition from partial data

---

## Connections

**Prior knowledge:**
- Class 2: Graphical estimation of limits
- Calculator skills for evaluating functions

**Future connections:**
- Class 4: Algebraic limit techniques
- Unit 2: Derivative as limit of difference quotient

---

## Rule of Four Connection

This lesson emphasizes the **Numerical (N)** perspective:
- **Graphically (G):** Yesterday's visual approach
- **Numerically (N):** Today's table approach
- **Analytically (A):** Next class - algebraic techniques
- **Verbally (W):** Describing patterns in words

---

## Reflection Questions (for instructor)

After class, consider:
1. Did students successfully use their calculators for table generation?
2. Could students identify when limits did/didn't exist from tables?
3. Did the precision discussion resonate with students?
4. Were the practice problems at appropriate difficulty?
