# Lesson Plan: Euler's Method

## Class 41 | Unit 7: Differential Equations (BC Only)

---

## Overview

This class introduces Euler's method as a numerical technique for approximating solutions to differential equations. Students will connect Euler's method to the slope field concept (following local directions) and to linearization (tangent line approximation). The emphasis is on understanding why the method works, executing it accurately with organized calculations, and recognizing its limitations.

**CED Topic:** 7.5 - Approximating Solutions Using Euler's Method (BC only)

---

## Learning Objectives

By the end of this class, students will be able to:

1. Explain the connection between Euler's method, slope fields, and local linearization
2. Apply the Euler iteration formulas to approximate solution values
3. Organize Euler's method calculations in a clear, systematic table
4. Explain how step size affects accuracy and why smaller steps are more accurate
5. Compare Euler approximations with exact solutions when available

---

## Prior Knowledge Required

- Slope fields and how solution curves follow them (Class 40)
- Local linearization: L(x) = f(a) + f'(a)(x - a)
- Differential equations and their solutions (Class 39)
- Basic algebraic computation skills

---

## Materials Needed

- Presentation slides with D3 visualizations
- Calculators for arithmetic
- Euler's method table templates (printed or projected)
- Student devices for interactive exploration
- Exit ticket with one complete Euler problem

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Challenge**

Present the problem:
> "Solve dy/dx = x + y with y(0) = 1. Find y(1)."

Ask: "Can we separate this equation?"
- dy/dx = x + y cannot be written as f(x) * g(y)
- Separation of variables doesn't work here

**The Dilemma:**
> "Most differential equations cannot be solved by any formula. So how do we find solutions?"

**The Answer:**
> "We approximate numerically. Euler's method is the simplest approach - and it's built on ideas you already know."

### The Idea Behind Euler's Method (10 min)

**Connection to Linearization:**

Recall from earlier: near a point x = a, a function is approximately linear:
$$f(x) \approx f(a) + f'(a)(x - a)$$

This is the tangent line approximation. It's good for small steps away from a.

**Connection to Slope Fields:**

The slope field shows us the direction (slope) at every point. A solution curve follows these directions. What if we:
1. Start at our initial point
2. Find the slope there from the differential equation
3. Take a small step in that direction
4. Repeat?

This is exactly Euler's method - "walking" through the slope field numerically.

**The Euler Step (Visual):**

At point (x_n, y_n):
- The differential equation gives slope: m = f(x_n, y_n)
- If we step h units in the x-direction...
- The tangent line predicts: y_{n+1} = y_n + m * h

**D3 Visualization:**
Show a slope field with:
1. Initial point marked
2. Tangent line segment drawn
3. Step to next point
4. Repeat, showing the approximation building

### The Euler Iteration Formulas (8 min)

**The Algorithm:**

Given: dy/dx = f(x, y) with initial condition y(x_0) = y_0

Step size: h (given in the problem)

**Iteration formulas:**
$$x_{n+1} = x_n + h$$
$$y_{n+1} = y_n + h \cdot f(x_n, y_n)$$

**In words:**
- New x = old x + step size
- New y = old y + (step size) × (slope at current point)

**Critical Point:**
> "We calculate the slope at the CURRENT point (x_n, y_n), then use it to step to the NEXT point. We don't use the slope at the new point - that's what makes this Euler's method (forward Euler)."

**Setting Up the Table:**

| n | x_n | y_n | f(x_n, y_n) | y_{n+1} = y_n + h·f |
|---|-----|-----|-------------|---------------------|
| 0 | x_0 | y_0 | compute | compute |
| 1 | x_0 + h | y_1 | compute | compute |
| ... | ... | ... | ... | ... |

### Worked Example with Full Table (12 min)

**Example:** dy/dx = x + y, y(0) = 1, find y(1) using h = 0.25

**Setup:**
- f(x, y) = x + y
- Initial: x_0 = 0, y_0 = 1
- Step size: h = 0.25
- Target: x = 1 (need 4 steps: 0 → 0.25 → 0.5 → 0.75 → 1)

**Table:**

| n | x_n | y_n | f(x_n, y_n) = x_n + y_n | y_{n+1} = y_n + 0.25·f |
|---|-----|-----|--------------------------|-------------------------|
| 0 | 0 | 1 | 0 + 1 = 1 | 1 + 0.25(1) = 1.25 |
| 1 | 0.25 | 1.25 | 0.25 + 1.25 = 1.5 | 1.25 + 0.25(1.5) = 1.625 |
| 2 | 0.50 | 1.625 | 0.50 + 1.625 = 2.125 | 1.625 + 0.25(2.125) ≈ 2.156 |
| 3 | 0.75 | 2.156 | 0.75 + 2.156 = 2.906 | 2.156 + 0.25(2.906) ≈ 2.883 |
| 4 | 1.00 | **2.883** | — | — |

**Answer:** y(1) ≈ 2.883 (using Euler's method with h = 0.25)

**Visualization:** Show these 4 steps on the slope field, connected by line segments.

**Note on Exact Solution:**
This equation can actually be solved (it's linear). The exact solution is:
$$y = 2e^x - x - 1$$
$$y(1) = 2e - 2 \approx 3.437$$

Our Euler approximation (2.883) underestimates by about 16%. We'll see how to improve this.

### Step Size and Accuracy (8 min)

**Comparing Step Sizes:**

Same problem with different h values:

| Step Size h | Number of Steps | y(1) Approximation |
|-------------|-----------------|-------------------|
| h = 0.5 | 2 steps | ≈ 2.500 |
| h = 0.25 | 4 steps | ≈ 2.883 |
| h = 0.1 | 10 steps | ≈ 3.187 |
| h = 0.01 | 100 steps | ≈ 3.410 |
| Exact | — | ≈ 3.437 |

**D3 Visualization:**
Show all three approximations (h = 0.5, 0.25, 0.1) overlaid on the exact solution curve.

**Key Observations:**

1. **Smaller h = more accurate** - We recalculate the slope more often
2. **Smaller h = more work** - More steps to reach the target
3. **Error accumulates** - Each step introduces a small error; errors compound
4. **The tradeoff** - In practice, balance accuracy vs. computation time

**Why Smaller Steps Work Better:**

The tangent line approximation is good only near the point. If we take a big step, we've wandered far from where the approximation is valid. Small steps keep us close to the true solution curve.

### Practice Problems (5 min)

**Problem 1: Quick Computation**
dy/dx = 2x, y(0) = 1. Find y(1) with h = 0.5.

| n | x_n | y_n | f(x_n, y_n) = 2x_n | y_{n+1} |
|---|-----|-----|-------------------|---------|
| 0 | 0 | 1 | 0 | 1 |
| 1 | 0.5 | 1 | 1 | 1.5 |
| 2 | 1.0 | **1.5** | — | — |

Check: Exact solution is y = x² + 1, so y(1) = 2. Euler gives 1.5 (underestimate).

**Problem 2: AP-Style**
Given dy/dx = y with y(0) = 1 and h = 0.1:
a) Set up the first 3 rows of the Euler table
b) Approximate y(0.2)

### Closing (2 min)

**Exit Ticket:**
Complete a 4-step Euler table for:
dy/dx = -y, y(0) = 4, h = 0.5
Find y(2).

**Key Takeaways:**
- Euler's method is repeated tangent line approximation
- Organize work in a clear table
- Smaller step size = more accurate (but more work)
- We can approximate solutions even when we can't solve analytically

**Preview:**
Next class - Separation of variables: when we CAN find exact solutions, how do we do it?

---

## Differentiation Strategies

### For students who need more support:
- Provide pre-formatted table templates with columns labeled
- Start with equations where f(x, y) is simpler (f = x only, or f = y only)
- Do one row of the table together, then let students complete the rest
- Emphasize the pattern: "compute slope, multiply by h, add to current y"
- Allow calculator use for arithmetic (but require showing the setup)

### For advanced students:
- Challenge: Implement Euler's method in a spreadsheet or simple program
- Explore: What happens with negative h (going backward in x)?
- Investigate: Compare Euler with improved Euler (Heun's method) or RK4
- Research: Why is error O(h) for Euler? What does this mean?
- Discuss: For what types of equations does Euler perform well or poorly?

---

## Common Misconceptions to Address

1. **"Euler gives the exact answer"**
   - Address: Euler's method gives APPROXIMATIONS. Always say "approximately" and compare with exact solutions when possible.

2. **"Use the slope at the NEW point"**
   - Address: This is the most common computational error. We use f(x_n, y_n), NOT f(x_{n+1}, y_{n+1}). The slope is calculated where we ARE, not where we're GOING.

3. **"Smaller h is always better"**
   - Address: Smaller h is more accurate, but requires more calculation. On the AP exam, h is given. In practice, there's a balance between accuracy and computational cost.

4. **"The steps are the solution"**
   - Address: The Euler points approximate the solution at discrete x-values. The true solution is a continuous curve; we're just sampling points along it.

5. **"One big step = multiple small steps"**
   - Address: No! Taking h = 1 once is NOT the same as h = 0.5 twice. With smaller steps, we recalculate the slope more often, giving a better approximation.

6. **"Errors stay constant"**
   - Address: Errors ACCUMULATE. Each step introduces new error and carries forward previous errors. This is why many steps can lead to significant total error.

---

## Assessment Notes

- **Formative:** Watch for correct slope calculations (most common error source)
- **Exit Ticket:** Complete problem tests full process - setup, iteration, final answer
- **Look for:**
  - Correct table setup with labeled columns
  - Slope computed at current (not next) point
  - Proper use of h in the iteration formula
  - Clear final answer with "approximately"

---

## Connections

**Prior knowledge:**
- Class 40: Slope fields - Euler's method "walks" through the field
- Linearization: Each step uses tangent line approximation
- Class 39: What it means for a function to solve a differential equation

**Future connections:**
- Class 42: Separation of variables (exact solutions to compare)
- Class 43: Exponential/logistic (where Euler can verify behavior)
- AP Exam: BC free-response often includes Euler's method

---

## Calculator and AP Exam Notes

**Calculator Use:**
- Euler's method often appears on calculator-active sections
- Students may use calculators for arithmetic
- Must still show the table setup and process for full credit
- Some graphing calculators have built-in Euler programs - verify AP policy

**AP Exam Expectations:**
- Typically 3-5 steps with h = 0.1, 0.2, or 0.25
- Must show organized table with intermediate values
- Scoring rubric awards points for:
  - Correct setup with initial condition (1 point)
  - Correct method/formula (1-2 points)
  - Correct arithmetic (1 point)
  - Clear communication of answer (1 point)

**Common Scoring Note:**
Process points can be earned even with arithmetic errors. Show your method clearly!

---

## Table Template for Students

**Euler's Method Table**

Differential equation: dy/dx = _______________

Initial condition: y(____) = ____

Step size: h = ____

Target x-value: ____

| Step n | x_n | y_n | Slope f(x_n, y_n) | y_{n+1} = y_n + h · (slope) |
|--------|-----|-----|-------------------|---------------------------|
| 0 | | | | |
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |
| 4 | | | | |

**Approximate value: y(____) ≈ ____**
