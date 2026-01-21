# Lesson Plan: Optimization Problems

## Class 29 | Unit 5: Analytical Applications of Differentiation

---

## Overview

This capstone session applies all differentiation techniques to solve optimization problems - finding the maximum or minimum value of a quantity subject to constraints. Students will learn a systematic procedure for translating verbal problems into mathematical functions, using constraints to reduce to single-variable calculus, and applying derivative tests to find optimal values.

**CED Topics:** 5.10 - Introduction to Optimization Problems; 5.11 - Solving Optimization Problems

---

## Learning Objectives

By the end of this class, students will be able to:

1. Translate verbal optimization problems into mathematical expressions
2. Identify the objective function (quantity to optimize) and constraint equation
3. Use constraints to express the objective function in terms of a single variable
4. Apply derivative techniques to find critical points
5. Verify that a critical point gives a maximum or minimum (not just any extremum)
6. Interpret results in the context of the original problem with appropriate units

---

## Prior Knowledge Required

- Finding critical points (Class 25)
- First and Second Derivative Tests (Classes 26-27)
- Candidates Test for closed intervals (Class 25)
- Domain restrictions from physical context

---

## Materials Needed

- Presentation slides with D3 visualizations
- Student devices for Desmos exploration
- Graphing calculators
- Optimization problem templates (optional)

---

## Class Structure (50 minutes)

### Opening Hook: The Fencing Problem (5 min)

**Scenario:**
> You have 100 feet of fencing to enclose a rectangular garden. What dimensions give you the largest possible garden area?

**Quick Guesses:**
- A square? (25 × 25 = 625 sq ft)
- A long rectangle? (40 × 10 = 400 sq ft)
- Something else?

**Key Question:** How do we PROVE we've found the best answer?

**Preview:** Calculus gives us the tools to find the absolute best solution, not just a good guess.

### The Optimization Framework (10 min)

**5-Step Procedure:**

**Step 1: Draw and Label**
- Create a diagram showing all relevant quantities
- Label variables with letters (x, y, h, r, etc.)
- A picture reveals relationships and catches errors

**Step 2: Identify Variables and Goal**
- What quantity are we maximizing or minimizing? (This becomes the objective function)
- What variables can we control?
- What is given or fixed?

**Step 3: Write Equations**
- **Objective function:** The quantity to optimize (A = area, V = volume, C = cost, etc.)
- **Constraint equation:** The relationship that limits our choices (perimeter = 100, surface area = 50, etc.)

**Step 4: Reduce to One Variable**
- Solve the constraint for one variable
- Substitute into the objective function
- Result: A function of ONE variable to optimize

**Step 5: Apply Calculus**
- Find the domain (physical restrictions: x > 0, etc.)
- Take derivative and find critical points
- Verify max/min using Second Derivative Test or domain analysis
- **Answer the question asked** (give dimensions, area, etc., with units!)

**Why Constraints are Essential:**
- Without constraints, most problems have no maximum (make it infinitely big!)
- The constraint creates a bounded search space
- Example: Maximize area → could be infinite without perimeter constraint

### Classic Problem Type 1: Geometric Optimization (12 min)

**Problem:** A farmer has 400 ft of fencing to enclose a rectangular field next to a river (no fence needed along the river). What dimensions maximize the enclosed area?

**Solution:**

**Step 1: Draw and Label**
```
       River (no fence)
    ==================
    |                |
  w |                | w
    |                |
    ==================
           l
```
- w = width (perpendicular to river)
- l = length (parallel to river)

**Step 2: Identify Goal**
- Maximize: Area A = l × w
- Variables: l and w
- Given: 400 ft of fencing (for three sides)

**Step 3: Write Equations**
- Objective: A = l × w
- Constraint: 2w + l = 400 (two widths + one length)

**Step 4: Reduce to One Variable**
- From constraint: l = 400 - 2w
- Substitute: A(w) = (400 - 2w) × w = 400w - 2w^2

**Step 5: Apply Calculus**
- Domain: 0 < w < 200 (physical constraints)
- A'(w) = 400 - 4w
- Critical point: 400 - 4w = 0 → w = 100
- Verify max: A''(w) = -4 < 0, so concave down everywhere → maximum at w = 100
- Find l: l = 400 - 2(100) = 200
- Maximum area: A = 100 × 200 = 20,000 sq ft

**Answer:** The field should be 100 ft by 200 ft (with the 200 ft side along the river) for a maximum area of 20,000 square feet.

**Discussion:** Notice that the optimal rectangle is NOT a square! The river changes the constraint.

### Classic Problem Type 2: Container Optimization (10 min)

**Problem:** A rectangular box with square base and no top must have volume 32 cubic inches. Find the dimensions that minimize the surface area (material used).

**Solution:**

**Step 1: Draw and Label**
- Square base with side x
- Height h
- No top (open box)

**Step 2: Identify Goal**
- Minimize: Surface Area S = x^2 + 4xh (base + four sides)
- Variables: x and h
- Given: Volume = 32 in^3

**Step 3: Write Equations**
- Objective: S = x^2 + 4xh
- Constraint: V = x^2 × h = 32

**Step 4: Reduce to One Variable**
- From constraint: h = 32/x^2
- Substitute: S(x) = x^2 + 4x(32/x^2) = x^2 + 128/x

**Step 5: Apply Calculus**
- Domain: x > 0 (physical constraint)
- S'(x) = 2x - 128/x^2
- Critical point: 2x = 128/x^2 → x^3 = 64 → x = 4
- Verify min: S''(x) = 2 + 256/x^3; S''(4) = 2 + 4 = 6 > 0 → minimum
- Find h: h = 32/16 = 2
- Minimum surface area: S = 16 + 128/4 = 16 + 32 = 48 sq in

**Answer:** The box should have a 4 in × 4 in base and height 2 in for a minimum surface area of 48 square inches.

### Classic Problem Type 3: Distance Optimization (8 min)

**Problem:** Find the point on the line y = 2x + 3 that is closest to the origin.

**Solution:**

**Step 1: Setup**
- A point on the line has coordinates (x, 2x + 3)
- Distance to origin: d = √(x^2 + (2x + 3)^2)

**Step 2: Simplify**
- Minimizing d is equivalent to minimizing d^2 (same optimal x, easier calculus!)
- Let D = d^2 = x^2 + (2x + 3)^2

**Step 3: Expand**
- D = x^2 + 4x^2 + 12x + 9 = 5x^2 + 12x + 9

**Step 4: Apply Calculus**
- D'(x) = 10x + 12
- Critical point: 10x + 12 = 0 → x = -6/5
- Verify min: D''(x) = 10 > 0 → concave up → minimum
- Find y: y = 2(-6/5) + 3 = -12/5 + 15/5 = 3/5

**Answer:** The closest point on the line to the origin is (-6/5, 3/5).

**Key Insight:** Minimizing distance is equivalent to minimizing distance squared - this avoids the square root and simplifies calculus.

### Common Pitfalls and Practice (5 min)

**Common Pitfalls to Emphasize:**

1. **Skipping the picture**
   - Always draw! It reveals relationships and catches errors.

2. **Forgetting the constraint**
   - Without it, the problem usually has no finite optimum.

3. **Not reducing to one variable**
   - You need a function of ONE variable to differentiate.

4. **Stopping at the critical point**
   - The question asks for DIMENSIONS or AREA, not just x.
   - Always answer what was asked!

5. **Forgetting to verify max/min**
   - You found a critical point - is it a max or min?
   - Use Second Derivative Test or domain analysis.

6. **Ignoring the domain**
   - Physical constraints matter: lengths must be positive!

7. **Omitting units**
   - "20,000" is not an answer; "20,000 square feet" is.

**Quick Practice Setup:** (Students set up, don't need to fully solve)

A poster must contain 150 sq in of printed matter, with 3 in margins on top and bottom and 2 in margins on each side. What dimensions minimize the total poster area?

- Let w = width of printed area, h = height of printed area
- Printed area: wh = 150 (constraint)
- Total dimensions: (w + 4) by (h + 6)
- Total area: A = (w + 4)(h + 6)
- Reduce: h = 150/w, so A(w) = (w + 4)(150/w + 6)

### Closing (5 min)

**Exit Ticket:**
Set up (but don't fully solve) the following optimization problem:

A cylindrical can must hold 1000 cm^3 of soup. Find the dimensions (radius and height) that minimize the amount of metal used (surface area).

Identify:
1. The objective function
2. The constraint equation
3. The single-variable function to optimize

**Key Takeaways:**
- Optimization problems follow a 5-step procedure: Draw, Identify, Write equations, Reduce, Apply calculus
- The hardest part is SETUP - the calculus is usually straightforward
- Always verify you found a max (not min) or min (not max)
- Answer the question asked, with appropriate units

**Real-World Connection:**
- Engineers design optimal structures
- Economists find profit-maximizing prices
- Biologists model resource allocation
- Calculus optimization is everywhere!

---

## Differentiation Strategies

### For students who need more support:
- Provide optimization problem templates with blanks to fill in
- Start with simpler one-constraint problems
- Emphasize the systematic 5-step procedure
- Work through the algebra step-by-step

### For advanced students:
- Introduce problems with multiple constraints or three variables
- Explore problems requiring implicit differentiation
- Challenge: Optimization with trigonometric relationships
- Investigate: What happens when the optimal point is at a domain boundary?

---

## Common Misconceptions to Address

1. **"The critical point is the answer"**
   - Address: The question asks for a QUANTITY (area, dimensions), not just x. Compute the final answer.

2. **"There's only one variable"**
   - Address: Initially there are usually two variables; the constraint lets us eliminate one.

3. **"Set the function equal to zero"**
   - Address: We set the DERIVATIVE to zero, not the function itself.

4. **"All critical points are optima"**
   - Address: Must verify using Second Derivative Test or domain analysis.

5. **"Maximum value is x = ..."**
   - Address: "Maximum occurs at x = 3" is different from "Maximum value is f(3) = 27."

6. **"Ignore the domain"**
   - Address: Physical constraints (x > 0, x < L, etc.) are essential.

---

## Assessment Notes

- Monitor problem setup during the practice problem
- Exit ticket tests ability to translate verbal problem to mathematical formulation
- Note which students struggle with identifying constraints vs. objectives
- Check that students verify their extrema (not just find critical points)

---

## Connections

**Prior knowledge:**
- All of Unit 5 (Classes 24-28)
- Derivative calculations (Units 2-3)
- Geometric formulas (area, volume, surface area)

**Future connections:**
- Related rates (Unit 4 review)
- Integral optimization (Unit 8)
- Multivariable optimization (future courses)
- Real-world applications in engineering and economics

---

## Notation Notes

**Optimization Vocabulary:**
- **Objective function:** The quantity being maximized or minimized
- **Constraint equation:** The relationship limiting the variables
- **Feasible region:** The set of values satisfying all constraints
- **Optimal solution:** The values that maximize/minimize the objective

**AP Exam Language:**
- "Find the dimensions that maximize/minimize..."
- "What is the maximum/minimum value of...?"
- "Justify that your answer is a maximum/minimum"

**Scoring Rubric Expectations:**
- Point for correct objective function
- Point for correct constraint
- Point for correct single-variable function
- Point for correct derivative
- Point for finding critical point
- Point for verifying max/min
- Point for correct final answer with units
