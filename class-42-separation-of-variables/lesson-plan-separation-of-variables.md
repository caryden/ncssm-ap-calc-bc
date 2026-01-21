# Lesson Plan: Separation of Variables

## Class 42 | Unit 7: Differential Equations

---

## Overview

This class introduces separation of variables as a technique for finding exact analytical solutions to certain differential equations. Students will learn to recognize separable equations, perform the separation and integration process, and apply initial conditions correctly. This technique transforms a differential equation problem into two standard integration problems, making it accessible with skills from Unit 6.

**CED Topics:** 7.6 - Finding General Solutions Using Separation of Variables, 7.7 - Finding Particular Solutions Using Initial Conditions and Separation of Variables

---

## Learning Objectives

By the end of this class, students will be able to:

1. Identify whether a first-order differential equation is separable
2. Perform algebraic separation to isolate y-terms with dy and x-terms with dx
3. Integrate both sides to find the general solution
4. Apply initial conditions to find particular solutions
5. Identify equilibrium solutions that may be lost during separation

---

## Prior Knowledge Required

- Differential equations and what solutions mean (Class 39)
- Integration techniques from Unit 6 (including u-substitution)
- Logarithm and exponential properties
- Algebraic manipulation skills

---

## Materials Needed

- Presentation slides with D3 visualizations
- Integration reference sheet (basic antiderivatives)
- Whiteboard for detailed algebraic work
- Student devices for solution verification
- Exit ticket with one separable equation

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Goal: Exact Solutions**

Recall our journey:
- Class 39: We learned to write and verify differential equations
- Class 40: We visualized solutions with slope fields
- Class 41: We approximated solutions with Euler's method

**Today's Question:**
> "When CAN we find an exact formula for the solution?"

Present: dy/dx = 2xy

> "This equation has a special structure. Can you see it?"

The right side is a product: (function of x) × (function of y)

This structure lets us find an exact solution.

### Recognizing Separable Equations (8 min)

**Definition:**
A first-order differential equation is **separable** if we can write it in the form:
$$\frac{dy}{dx} = f(x) \cdot g(y)$$

The key: the right side factors into a function of x only times a function of y only.

**Examples - Identify f(x) and g(y):**

| Equation | Separable? | f(x) | g(y) |
|----------|-----------|------|------|
| dy/dx = x²y³ | Yes | x² | y³ |
| dy/dx = (y+1)/x | Yes | 1/x | y+1 |
| dy/dx = x + y | **No** | — | — |
| dy/dx = xy + x | Yes! | x | y+1 |
| dy/dx = eˣ sin(y) | Yes | eˣ | sin(y) |
| dy/dx = x² + y² | **No** | — | — |

**Key Move for #4:**
dy/dx = xy + x = x(y + 1)

Factor when possible!

**Practice: Which are separable?**
1. dy/dx = y/x     → Yes: f(x) = 1/x, g(y) = y
2. dy/dx = x - y   → No (cannot factor)
3. dy/dx = y cos(x) → Yes: f(x) = cos(x), g(y) = y
4. dy/dx = x²y + x²  → Yes: x²(y + 1)

### The Separation Process (12 min)

**Step-by-Step Method:**

Given dy/dx = f(x) · g(y):

**Step 1:** Separate - move all y-terms to the left, all x-terms to the right
$$\frac{1}{g(y)} \, dy = f(x) \, dx$$

**Step 2:** Integrate both sides
$$\int \frac{1}{g(y)} \, dy = \int f(x) \, dx + C$$

**Step 3:** Simplify (solve for y if possible/required)

**Important Notes:**
- Only ONE +C is needed (if you put C on both sides, they combine into one constant)
- The result may be implicit (can't always solve for y)
- This process treats dy/dx as a "separable fraction" - technically informal but works

**Worked Example 1: dy/dx = x/y**

Step 1: Separate
$$y \, dy = x \, dx$$

Step 2: Integrate
$$\int y \, dy = \int x \, dx + C$$
$$\frac{y^2}{2} = \frac{x^2}{2} + C$$

Step 3: Simplify
$$y^2 - x^2 = 2C = K$$ (new constant)

**Solution:** y² - x² = K (family of hyperbolas)

**Visualization:** Show the family of hyperbolas overlaid on the slope field for dy/dx = x/y.

**Worked Example 2: dy/dx = y**

Step 1: Separate
$$\frac{1}{y} \, dy = dx$$

Step 2: Integrate
$$\int \frac{1}{y} \, dy = \int dx + C$$
$$\ln|y| = x + C$$

Step 3: Solve for y
$$|y| = e^{x+C} = e^C \cdot e^x = A \cdot e^x$$

**General Solution:** y = Aeˣ (where A = ±eᶜ, can be positive or negative)

### Applying Initial Conditions (10 min)

**When to Apply Initial Conditions:**
> After finding the general solution, substitute (x₀, y₀) to find the specific constant.

**Worked Example: dy/dx = y cos(x), y(0) = 3**

Step 1: Separate
$$\frac{1}{y} \, dy = \cos(x) \, dx$$

Step 2: Integrate
$$\ln|y| = \sin(x) + C$$

Step 3: Solve for y
$$|y| = e^{\sin(x) + C} = Ae^{\sin(x)}$$

Since y(0) = 3 > 0, we take y = Ae^{sin(x)}

Step 4: Apply initial condition
$$y(0) = A \cdot e^{\sin(0)} = A \cdot e^0 = A = 3$$

**Particular Solution:** y = 3e^{sin(x)}

**Verification:** Check that dy/dx = y cos(x)
- dy/dx = 3e^{sin(x)} · cos(x)
- y · cos(x) = 3e^{sin(x)} · cos(x) ✓

### Finding Equilibrium Solutions (5 min)

**Warning: Division Can Lose Solutions**

When we divide by g(y), we're assuming g(y) ≠ 0. But if g(y₀) = 0 for some y₀, then y = y₀ is a constant (equilibrium) solution!

**Example:** dy/dx = y(1 - y)

**Find equilibria first:**
Set dy/dx = 0:
- y = 0 → dy/dx = 0 → y(x) = 0 is a solution
- y = 1 → dy/dx = 0 → y(x) = 1 is a solution

**Then separate for non-equilibrium solutions:**
$$\frac{1}{y(1-y)} \, dy = dx$$

Use partial fractions: 1/(y(1-y)) = 1/y + 1/(1-y)

$$\int \left(\frac{1}{y} + \frac{1}{1-y}\right) dy = \int dx + C$$

This gives the logistic solution family (we'll see more in Class 43).

**Key Practice:**
Always check: Where does g(y) = 0? These are equilibrium solutions.

### Practice Problems (7 min)

**Problem 1:** Solve dy/dx = x²y
- Separate: dy/y = x² dx
- Integrate: ln|y| = x³/3 + C
- Solution: y = Ae^{x³/3}

**Problem 2:** Solve dy/dx = y/x with y(1) = 2
- Separate: dy/y = dx/x
- Integrate: ln|y| = ln|x| + C
- Simplify: y = Ax
- Apply y(1) = 2: A = 2
- Solution: y = 2x

**Problem 3:** Solve dy/dx = 1 + y² with y(0) = 0
- Separate: dy/(1 + y²) = dx
- Integrate: arctan(y) = x + C
- Apply y(0) = 0: arctan(0) = 0 = C
- Solution: y = tan(x)

### Closing (3 min)

**Exit Ticket:**
Solve dy/dx = 2xy with y(0) = 1.
(Answer: y = e^{x²})

**Key Takeaways:**
- Separable equations: dy/dx = f(x) · g(y)
- Separate, integrate, apply initial condition
- Check for equilibrium solutions before separating
- One +C is enough

**Preview:**
Next class - exponential and logistic models, the most important applications of separation of variables.

---

## Differentiation Strategies

### For students who need more support:
- Provide a step-by-step checklist for the separation process
- Start with simpler separations (dy/dx = x, dy/dx = y)
- Review integration techniques before starting separation
- Use color-coding: red for y-terms, blue for x-terms
- Provide worked examples with blanks to fill in

### For advanced students:
- Challenge: Solve dy/dx = (y² - 1)/(x² - 1)
- Explore: What if we can't solve for y explicitly? (implicit solutions)
- Investigate: Why does treating dy/dx as a fraction work?
- Research: What other methods exist for non-separable equations?
- Prove: Show that the general solution to dy/dx = ky is always y = Ceᵏˣ

---

## Common Misconceptions to Address

1. **"Put +C on both sides"**
   - Address: If we have ∫f dy + C₁ = ∫g dx + C₂, then C₂ - C₁ is just another constant. Use ONE +C on either side (typically the right).

2. **"Apply initial condition before integrating"**
   - Address: We need the general solution (with C) first. Initial condition finds C. You can't apply y(0) = 3 until you have a formula with C in it.

3. **"All differential equations are separable"**
   - Address: Show counterexample: dy/dx = x + y cannot be factored as f(x)g(y). Not all equations separate.

4. **"Must always solve for y"**
   - Address: Implicit solutions like y² + x² = C are perfectly valid. Solve for y only if explicitly requested or straightforward.

5. **"The constant disappears in particular solutions"**
   - Address: C doesn't disappear - it gets a specific value. Write y = 3eˣ, not y = Ceˣ with "C = 3" unstated.

6. **"Forget absolute values with logarithms"**
   - Address: ∫(1/y)dy = ln|y| + C. The absolute value matters when y could be negative.

---

## Assessment Notes

- **Formative:** Watch for correct separation (common error: wrong terms on wrong side)
- **Exit Ticket:** Tests full process from separation through initial condition
- **Look for:**
  - Correct identification of separable form
  - Proper placement of terms with dy and dx
  - Correct integration (including +C)
  - Proper application of initial condition (after integration)

---

## Connections

**Prior knowledge:**
- Unit 6: Integration techniques (u-substitution, basic antiderivatives)
- Class 39: Differential equations and verification
- Class 40: Slope fields (solutions should match the field)
- Logarithm and exponential properties

**Future connections:**
- Class 43: Exponential and logistic models use separation of variables
- AP Exam: Separation of variables is the primary solving technique tested
- Later mathematics: More solving techniques (integrating factors, exact equations)

---

## Common Integration Patterns in Separation

| Integral | Result |
|----------|--------|
| ∫(1/y) dy | ln\|y\| + C |
| ∫y dy | y²/2 + C |
| ∫yⁿ dy | y^{n+1}/(n+1) + C (n ≠ -1) |
| ∫1/(1+y²) dy | arctan(y) + C |
| ∫1/√(1-y²) dy | arcsin(y) + C |
| ∫eʸ dy | eʸ + C |
| ∫cos(y) dy | sin(y) + C |
| ∫sin(y) dy | -cos(y) + C |

---

## Worked Solution Template

**Problem:** Solve dy/dx = [equation] with y(x₀) = y₀

**Step 1: Check separability**
- Can we write dy/dx = f(x) · g(y)?
- Identify f(x) = ___ and g(y) = ___

**Step 2: Check for equilibria**
- Set g(y) = 0. Solve for y.
- These are constant solutions: y = ___

**Step 3: Separate**
$$\frac{1}{g(y)} \, dy = f(x) \, dx$$

**Step 4: Integrate both sides**
$$\int \frac{1}{g(y)} \, dy = \int f(x) \, dx + C$$

**Step 5: Simplify**
- Solve for y if possible

**Step 6: Apply initial condition**
- Substitute x = x₀, y = y₀
- Solve for C

**Step 7: Write particular solution**
- Replace C with its value

**Step 8: Verify (optional but recommended)**
- Check that the solution satisfies the original equation and initial condition
