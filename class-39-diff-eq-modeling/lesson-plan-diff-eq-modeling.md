# Lesson Plan: Modeling with Differential Equations

## Class 39 | Unit 7: Differential Equations

---

## Overview

This class introduces differential equations as the mathematical language for describing change. Students will learn to translate verbal descriptions of real-world phenomena into mathematical equations and verify whether proposed functions are solutions. The focus is on conceptual understanding: what a differential equation represents, what it means to "solve" one, and how initial conditions determine specific solutions from a family.

**CED Topics:** 7.1 - Modeling Situations with Differential Equations, 7.2 - Verifying Solutions for Differential Equations

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define what a differential equation is and identify its order
2. Translate verbal descriptions into first-order differential equations
3. Verify whether a given function is a solution to a differential equation
4. Distinguish between general and particular solutions
5. Use initial conditions to find particular solutions from general solutions

---

## Prior Knowledge Required

- Derivative notation and computation
- Antiderivative/indefinite integral concepts (from Unit 6)
- Familiarity with exponential functions
- Understanding that derivatives represent rates of change

---

## Materials Needed

- Presentation slides with D3 visualizations
- Student devices for exploration activities
- Whiteboard for worked examples
- Exit ticket handouts (or digital submission)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Coffee Cooling Problem**

Present the scenario:
> "A cup of coffee cools at a rate proportional to the difference between its temperature and room temperature."

Ask students:
- What quantity is changing? (Temperature)
- What do we know about how fast it changes? (It's proportional to the temperature difference)
- How would we write this mathematically?

Guide toward: dT/dt = -k(T - T_room)

**Key Message:** Differential equations arise naturally when we describe how things change.

### What is a Differential Equation? (10 min)

**Definition:**
A differential equation is an equation that relates a function to one or more of its derivatives.

**Key Examples (Rule of Four - Verbal to Analytical):**

| Verbal Description | Differential Equation |
|-------------------|----------------------|
| "Rate of change proportional to current value" | dy/dt = ky |
| "Velocity is the derivative of position" | ds/dt = v(t) |
| "Acceleration is constant" | d^2s/dt^2 = -g |

**Classification by Order:**
- First-order: highest derivative is first derivative (dy/dx)
- Second-order: highest derivative is second derivative (d^2y/dx^2)
- Focus for AP BC: First-order equations

**Discussion:** Why do we call these "equations"? Because we're stating a relationship that must be satisfied.

### Modeling: From Words to Equations (12 min)

**The Modeling Process:**
1. Identify the quantity (dependent variable) and what it depends on (independent variable)
2. Express the relationship in words: "rate of change of ___ is ___"
3. Translate each part into mathematical symbols
4. Write the complete differential equation

**Worked Example 1: Population Growth**

Verbal: "A bacteria population grows at a rate proportional to its current size."

- Let P = population, t = time
- "rate of growth" → dP/dt
- "proportional to current size" → kP (where k > 0)
- Equation: **dP/dt = kP**

**Worked Example 2: Newton's Law of Cooling**

Verbal: "Temperature changes at a rate proportional to the difference from ambient temperature."

- Let T = temperature, A = ambient (room) temperature
- "rate of change" → dT/dt
- "proportional to difference from ambient" → k(T - A)
- The negative sign (cooling, not heating): **dT/dt = -k(T - A)**

**Guided Practice:**
Write a differential equation for: "The velocity of a falling object decreases at a rate proportional to its current velocity due to air resistance."

Answer: dv/dt = -kv

### What is a Solution? (10 min)

**Definition:**
A solution to a differential equation is a function that, when substituted into the equation, makes it true.

**Verification Process (Worked Example):**

Given: dy/dt = 2y. Is y = 3e^{2t} a solution?

Step 1: Calculate the left side (the derivative)
- dy/dt = d/dt(3e^{2t}) = 6e^{2t}

Step 2: Calculate the right side
- 2y = 2(3e^{2t}) = 6e^{2t}

Step 3: Compare
- Both sides equal 6e^{2t} ✓
- **Yes, y = 3e^{2t} is a solution**

**General vs. Particular Solutions:**

- **General solution:** Contains an arbitrary constant C (represents a family of solutions)
  - Example: y = Ce^{2t} is the general solution to dy/dt = 2y

- **Particular solution:** A specific solution with a determined value of C
  - Example: y = 3e^{2t} is a particular solution (C = 3)

**Initial Conditions:**

An initial condition like y(0) = 3 determines the specific value of C:
- y(0) = Ce^{2(0)} = Ce^0 = C = 3
- Therefore, the particular solution is y = 3e^{2t}

### Practice Problems (8 min)

**Problem 1: Write a Differential Equation**
"Radioactive decay occurs at a rate proportional to the amount remaining."
- Answer: dA/dt = -kA (negative because decaying)

**Problem 2: Verify a Solution**
Is y = x^2 + 1 a solution to dy/dx = 2x?
- dy/dx = 2x ✓
- Yes, it is a solution

**Problem 3: Find a Particular Solution**
Given: dy/dt = y, general solution y = Ce^t
If y(0) = 5, find the particular solution.
- C = 5, so y = 5e^t

### Closing (5 min)

**Exit Ticket:**
Write a differential equation for: "The rate of decay of a radioactive substance is proportional to the amount remaining."

Then verify: Is y = 100e^{-0.5t} a solution if k = 0.5?

**Preview:**
Next class we'll visualize differential equations using slope fields - a graphical way to see all possible solutions at once.

---

## Differentiation Strategies

### For students who need more support:
- Provide a word-to-symbol translation reference sheet
- Start with simpler examples where only one derivative appears
- Focus on the verification process before modeling
- Use physical analogies (filling tanks, growing populations) extensively
- Pair with stronger students during practice

### For advanced students:
- Challenge: Write a differential equation for a scenario where rate of change depends on two factors (e.g., predator-prey)
- Explore: Can you find a differential equation that has y = sin(x) as a solution?
- Research: What makes a differential equation "linear" vs. "nonlinear"?
- Introduce the concept of autonomous vs. non-autonomous equations

---

## Common Misconceptions to Address

1. **"The solution is a number"**
   - Address: Solutions to differential equations are FUNCTIONS, not numbers. y = Ce^{kt} is a function that tells us y for any t.

2. **"Just integrate to solve"**
   - Address: When dy/dt = f(y) depends on y, simple integration doesn't work. Show that dy/dt = y cannot be solved by integrating both sides with respect to t.

3. **"Initial conditions are optional"**
   - Address: Without an initial condition, we have infinitely many solutions (the general solution). Initial conditions pin down a specific solution.

4. **"Verify by solving first"**
   - Address: You can verify a solution by direct substitution WITHOUT knowing how to solve the equation. Plug in and check.

5. **"Differential equations are artificial constructs"**
   - Address: Every time you describe a rate of change, you're stating a differential equation. Newton's second law F = ma is a differential equation!

6. **"General solution means approximate"**
   - Address: "General" means "containing all specific solutions" (via the constant C). It's complete, not imprecise.

---

## Assessment Notes

- **Formative:** Monitor student work during the guided practice
- **Diagnostic:** The opening discussion reveals prior knowledge about rates of change
- **Exit Ticket:** Assesses both modeling (writing the equation) and verification skills
- **Look for:** Students who can translate verbal descriptions but struggle with verification, or vice versa

---

## Connections

**Prior knowledge:**
- Unit 1-2: Derivatives as rates of change
- Unit 6: Antiderivatives and the +C concept
- Exponential functions and their derivatives

**Future connections:**
- Class 40: Slope fields (visual representation of differential equations)
- Class 41: Euler's method (numerical approximation of solutions)
- Class 42: Separation of variables (analytical solving technique)
- Class 43: Exponential and logistic models (applications)
- AP Exam: Free-response questions frequently require setting up differential equations from verbal descriptions

---

## Notation Notes

**Common notations for differential equations:**

| Notation | Example | When Used |
|----------|---------|-----------|
| dy/dx = f(x,y) | dy/dx = x + y | Leibniz notation, emphasizes variables |
| y' = f(x,y) | y' = xy | Lagrange notation, compact |
| Dy = f(x,y) | Dy = x^2y | Operator notation (less common) |

**Key vocabulary:**
- **Differential equation:** An equation involving a function and its derivatives
- **Order:** The highest derivative that appears
- **Solution:** A function that satisfies the equation when substituted
- **General solution:** The family of all solutions (contains arbitrary constant)
- **Particular solution:** One specific solution (constant determined by initial condition)
- **Initial condition:** A point (x_0, y_0) that the solution must pass through
