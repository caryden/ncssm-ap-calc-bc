# Research: Separation of Variables

## Overview

This document summarizes research on how expert educators teach separation of variables as a technique for solving differential equations. It informs the lesson plan and presentation spec for Class 42.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Solving Differential Equations

**Source:** [3blue1brown.com](https://www.3blue1brown.com/)

**Core Pedagogical Strategy:**

Grant Sanderson presents separation of variables as an algebraic rearrangement that allows us to "collect" all the y-terms on one side and all the x-terms on the other, then integrate both sides independently.

**Key Teaching Moves:**

1. **Separability as structure** - Not all differential equations can be separated; recognizing the form is key
2. **Algebraic manipulation** - Treat dy/dx as a ratio that can be separated
3. **Integration with +C** - One constant is enough; don't put +C on both sides

**Why Separation Works:**

> "When dy/dx = f(x)g(y), we can rewrite as dy/g(y) = f(x)dx. Both sides are now integrable because each involves only one variable."

**Conceptual Anchor:**

The method works because we can view dy and dx as "differential quantities" that can be manipulated algebraically. While this is technically informal, it leads to correct results and builds intuition.

**Visualization Techniques:**
- Side-by-side integration showing both antiderivatives
- Graphs of solution families with different C values
- Connecting solution curves to the slope field

### Professor Leonard: Separation of Variables

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Extremely thorough, step-by-step approach
- Strong emphasis on recognizing when separation is possible
- Multiple worked examples with increasing complexity
- Careful attention to algebraic manipulation

**Approach to Separation of Variables:**

1. Identify the form: dy/dx = f(x)g(y) or dy/dx = h(x)/k(y)
2. Algebraically separate: get all y-terms with dy, all x-terms with dx
3. Integrate both sides
4. Apply initial condition if given (after integrating!)
5. Solve for y if possible (and if requested)

**Strengths:**
- Methodical identification of separable equations
- Extensive practice with algebraic separation
- Emphasis on when to apply initial conditions
- Discussion of implicit vs. explicit solutions

**Key Insight:**

> "The +C goes on one side only. Why? Because if you put +C on both sides, the difference would just be another constant. Keep it simple."

### Khan Academy: Separation of Variables

**Source:** [Khan Academy - Separation of Variables](https://www.khanacademy.org/math/ap-calculus-ab/ab-differential-equations-new/ab-7-6/v/separable-differential-equations-introduction)

**Key Teaching Points:**

1. **Recognition:** dy/dx = f(x) * g(y) is separable
2. **Separation:** (1/g(y)) dy = f(x) dx
3. **Integration:** Integrate both sides, add one +C
4. **Initial conditions:** Use to find specific C value
5. **Explicit form:** Solve for y when possible and required

**Process Emphasis:**

Khan Academy presents a clear checklist:
1. Is it separable? Can we write dy/dx = f(x) * g(y)?
2. Separate: dy/g(y) = f(x) dx
3. Integrate: integral of 1/g(y) dy = integral of f(x) dx + C
4. Apply initial condition: plug in (x_0, y_0) to find C
5. Solve for y if needed and possible

**Interactive Practice:**
- Identifying separable equations
- Performing separation and integration
- Finding particular solutions with initial conditions

### Paul's Online Math Notes: Separable Equations

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/DE/Separable.aspx)

**Key Insights:**

> "Separable equations are the most common type of first-order differential equation that we can actually solve. The technique is straightforward: separate and integrate."

**Important Details:**
- Some solutions may be implicit (can't solve for y)
- Watch for division by zero when separating (may lose solutions)
- Logarithms in the solution often require absolute values
- Don't forget +C or the initial condition

**Division by Zero Warning:**
When we divide by g(y) to separate, if g(y_0) = 0 for some y_0, then y = y_0 may be a constant (equilibrium) solution that we lose during the separation process. Check for equilibrium solutions separately.

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Algebraic Separation Animation** | Show dy and dx moving to opposite sides | Makes the "separation" literal and visual |
| **Side-by-Side Integration** | Show both antiderivatives being computed simultaneously | Emphasizes that each integral involves one variable |
| **Solution Family** | Graph multiple solutions with different C values | Shows the general solution as a family of curves |
| **Initial Condition Focus** | Highlight how one point determines one curve | Connects initial condition to particular solution |
| **Slope Field Overlay** | Show solution curves on top of slope field | Verifies that solutions follow the field |
| **Equilibrium Solution Check** | Highlight constant solutions lost in separation | Addresses the division-by-zero caveat |

### Recommended D3 Visualization

**Separation of Variables Explorer:**
1. Display equation: dy/dx = f(x) * g(y)
2. Animate the separation: terms moving to opposite sides
3. Show the integrals forming
4. Display general solution with parameter C
5. Slider to vary C: watch solution curves shift
6. Click to set initial point: highlight the specific curve through that point
7. Background slope field to verify solutions follow the field

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Put +C on both sides"** | Students add constants to both integrals | Only ONE +C is needed. Two constants would just combine into one. Show: (integral + C1) = (integral + C2) implies C1 - C2 = constant. |
| **"Apply initial condition before integrating"** | Trying to use (x_0, y_0) too early | The initial condition picks out one solution from the family. You need the general solution (with C) first, then substitute. |
| **"All DEs can be separated"** | Assuming every equation is separable | Show counterexample: dy/dx = x + y cannot be written as f(x) * g(y). Not all equations separate. |
| **"Solve for y is always required"** | Thinking explicit solution is mandatory | Implicit solutions like y^2 + x^2 = C are valid. Solve for y only if explicitly asked or if it's straightforward. |
| **"The constant disappears in particular solutions"** | Not substituting C back into the general solution | After finding C = 3, write the particular solution with C = 3 explicitly substituted. |
| **"Logarithms don't need absolute values"** | Writing ln(y) instead of ln|y| | integral of 1/y dy = ln|y| + C. The absolute value matters when y could be negative. |

### Misconception-Busting Exercises

1. **One +C Only:**
   - Suppose we put +C on both sides: ln|y| + C_1 = x^2 + C_2
   - Rearrange: ln|y| = x^2 + (C_2 - C_1) = x^2 + C
   - The two constants collapsed into one. Save effort: use one from the start.

2. **When to Apply Initial Condition:**
   - Solve dy/dx = y, then apply y(0) = 2
   - Step 1: dy/y = dx, so ln|y| = x + C, so y = Ae^x
   - Step 2: y(0) = Ae^0 = A = 2
   - Step 3: Particular solution is y = 2e^x
   - NOT: plug in y = 2, x = 0 before integrating

3. **Non-Separable Equations:**
   - dy/dx = x + y: Can we write this as f(x) * g(y)? No!
   - dy/dx = xy: Yes! f(x) = x, g(y) = y
   - Recognition is a skill to practice

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 42 lesson should:

### Opening (5 min)
- Recall: We've visualized DEs (slope fields) and approximated solutions (Euler)
- Now: How do we find EXACT solutions?
- Present: dy/dx = 2xy. "Can we find a formula for y(x)?"

### What Makes an Equation Separable? (8 min)

**Definition:**
A first-order differential equation dy/dx = F(x, y) is separable if we can write it in the form:
dy/dx = f(x) * g(y)

**Examples:**
- dy/dx = x^2 * y^3: Separable! f(x) = x^2, g(y) = y^3
- dy/dx = (y + 1)/x: Separable! f(x) = 1/x, g(y) = y + 1
- dy/dx = x + y: NOT separable (cannot factor into f(x) * g(y))
- dy/dx = xy + x: Separable! Factor: dy/dx = x(y + 1)

**Recognition Practice:**
Have students identify which equations are separable and find f(x) and g(y).

### The Separation Process (10 min)

**Step-by-Step Method:**
1. **Check separability:** Write dy/dx = f(x) * g(y)
2. **Separate:** Move y-terms to left, x-terms to right:
   (1/g(y)) dy = f(x) dx
3. **Integrate both sides:**
   integral of (1/g(y)) dy = integral of f(x) dx + C
4. **Simplify:** The result is often implicit; solve for y if possible

**Worked Example 1:** dy/dx = x/y

Step 1: Separable with f(x) = x, g(y) = 1/y (or rewrite as dy/dx = x * (1/y))
Step 2: y dy = x dx
Step 3: integral of y dy = integral of x dx + C
        (1/2)y^2 = (1/2)x^2 + C
Step 4: y^2 - x^2 = 2C = K (new constant)
        y^2 - x^2 = K (family of hyperbolas!)

**Visualization:** Show family of hyperbolas on slope field for dy/dx = x/y.

### Worked Example with Initial Condition (10 min)

**Example:** dy/dx = y * cos(x), y(0) = 3

Step 1: Separable with f(x) = cos(x), g(y) = y
Step 2: (1/y) dy = cos(x) dx
Step 3: ln|y| = sin(x) + C
Step 4: |y| = e^{sin(x) + C} = e^C * e^{sin(x)} = A * e^{sin(x)}

Since y(0) = 3 > 0, we have y = A * e^{sin(x)}
Apply initial condition: y(0) = A * e^{sin(0)} = A * e^0 = A = 3

**Particular solution:** y = 3e^{sin(x)}

**Verification:** Check that this satisfies the original equation and initial condition.

### Finding Equilibrium Solutions (5 min)

**Warning:** When we divide by g(y), we might lose solutions where g(y) = 0.

**Example:** dy/dx = y(1 - y)
- Equilibrium solutions: dy/dx = 0 when y = 0 or y = 1
- These are constant solutions: y(x) = 0 and y(x) = 1 for all x
- After separating and solving, check that you haven't lost these!

**Process:**
1. Before separating, find where g(y) = 0
2. These give constant (equilibrium) solutions
3. Then proceed with separation for the non-equilibrium solutions

### Practice Problems (8 min)

**Problem 1:** Solve dy/dx = x^2 * y
- Answer: y = Ce^{x^3/3}

**Problem 2:** Solve dy/dx = y/x, y(1) = 2
- Answer: y = 2x

**Problem 3:** Solve dy/dx = (1 + y^2), y(0) = 0
- Hint: integral of 1/(1 + y^2) dy = arctan(y)
- Answer: y = tan(x)

### Closing (4 min)
- Exit ticket: Solve dy/dx = 2xy, y(0) = 1
- Key insight: Separation of variables converts a DE problem into two integration problems
- Preview: Exponential and logistic models (applications of separation)

### Key Principles Throughout

1. **Recognition first:** Before separating, verify the equation IS separable
2. **One constant:** Only one +C is needed
3. **Initial conditions come after integration:** Find general solution first
4. **Check for equilibria:** Don't lose constant solutions when dividing
5. **Implicit solutions are OK:** Not everything solves for y explicitly

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **7.6:** Finding General Solutions Using Separation of Variables
- **7.7:** Finding Particular Solutions Using Initial Conditions and Separation of Variables

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (separation and integration)
- **MP 3:** Justification (explaining why separation works)
- **MP 4:** Communication (showing organized work)
- **MP 5:** Building Notational Fluency (differential notation)

### AP Exam Connection
- Free-response questions frequently ask for separation of variables
- Must show clear separation step (points for setup even if algebra fails)
- Initial conditions must be applied AFTER finding general solution
- Common prompts:
  - "Find the general solution"
  - "Find the particular solution satisfying y(0) = k"
  - "Find the solution in explicit form y = f(x)"

### Scoring Rubric Priorities
1. Correctly identifying/setting up the separable form
2. Correct separation (y-terms with dy, x-terms with dx)
3. Correct antiderivatives (with +C)
4. Correct application of initial condition
5. Correct explicit solution (if requested)

### Common AP Errors to Address
- Omitting +C in general solution
- Applying initial condition before integrating
- Sign errors in integration
- Not solving for y when explicitly requested
- Forgetting absolute value with logarithms

### Fluency Goals
By the end of this class, students should:
- Recognize separable differential equations
- Perform the separation and integration correctly
- Apply initial conditions to find particular solutions
- Identify equilibrium solutions before separating
- Present solutions in implicit or explicit form as appropriate

---

## Sources

- [3Blue1Brown: Differential Equations](https://www.3blue1brown.com/)
- [Khan Academy: Separation of Variables](https://www.khanacademy.org/math/ap-calculus-ab/ab-differential-equations-new/ab-7-6/v/separable-differential-equations-introduction)
- [Professor Leonard: Separation of Variables](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Separable Equations](https://tutorial.math.lamar.edu/Classes/DE/Separable.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
