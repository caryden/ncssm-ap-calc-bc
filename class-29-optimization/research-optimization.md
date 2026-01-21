# Research: Optimization Problems

## Overview

This document summarizes research on how expert educators teach optimization problems in calculus. It informs the lesson plan and presentation spec for Class 29.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: The Power of Calculus in Optimization

**Source:** [3blue1brown.com](https://www.3blue1brown.com/)

**Core Pedagogical Strategy:**

Optimization is where calculus becomes truly powerful - it lets us find the best possible outcome by setting the derivative to zero. The key insight is that maxima and minima occur where the rate of change is zero.

**Key Teaching Moves:**

1. **Real-world motivation** - What's the fastest route? The most efficient design? The maximum profit?
2. **Translate to math** - Convert the verbal problem to a function to optimize
3. **Single-variable reduction** - Use constraints to reduce to one variable
4. **Apply calculus** - Find critical points, test for max/min

**Conceptual Anchor:**

> "The derivative being zero at optimal points is not just a computational trick - it's because at the best point, any small change would make things worse, which means the rate of change must be zero."

### Professor Leonard: Optimization

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Extensive emphasis on problem setup
- Systematic 5-step procedure
- Multiple classic optimization problems worked in detail
- Emphasis on understanding the constraint equation

**Approach:**

1. **Draw a picture:** Visualize the situation
2. **Identify quantities:** What are we maximizing/minimizing? What are the variables?
3. **Write equations:** Primary equation (what to optimize) and constraint equation
4. **Reduce to one variable:** Use constraint to eliminate a variable
5. **Apply calculus:** Find critical points, test, answer the question

**Strengths:**
- Very systematic approach
- Extensive practice with classic problem types
- Emphasis on "answering the question asked"

### Khan Academy: Optimization Problems

**Source:** [Khan Academy - Optimization](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-11)

**Key Teaching Points:**

1. **Problem Types:**
   - Maximize area given perimeter constraint
   - Minimize material given volume constraint
   - Maximize revenue/profit
   - Minimize distance or time

2. **The Constraint is Key:**
   - Most problems have a constraint relating variables
   - Use constraint to express one variable in terms of another
   - Substitute into the objective function

3. **Don't Forget to Answer:**
   - Finding the critical point is not the final answer
   - Must compute the quantity asked for (area, volume, etc.)
   - Include units in final answer

### Paul's Online Math Notes: Optimization

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/CalcI/Optimization.aspx)

**Key Insights:**

> "The hardest part of optimization problems is often just setting up the problem correctly. Once you have the function to optimize, the calculus is usually straightforward."

**Common Problem Categories:**
1. **Geometric:** Fencing, containers, distances
2. **Business:** Revenue, cost, profit
3. **Physical:** Time, velocity, angles
4. **Algebraic:** Numbers with constraints

**Critical Tip:**
After finding critical points, verify you've found the correct type of extremum (max vs. min) - often using the Second Derivative Test or closed interval analysis.

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Dynamic Diagrams** | Show shape changing while meeting constraint | Visualizes the optimization space |
| **Objective Function Graph** | Plot the quantity being optimized vs. the free variable | Shows where max/min occurs |
| **Constraint Visualization** | Show how constraint limits possibilities | Clarifies the feasible region |
| **Before/After Comparison** | Show non-optimal and optimal solutions side by side | Emphasizes the improvement |
| **Slider Exploration** | Let user adjust variable and see quantity change | Builds intuition before calculus |
| **Step-by-Step Reveal** | Show problem setup in stages | Models the thought process |

### Recommended D3 Visualization

**Optimization Explorer:**
1. Classic "box with no top" problem
2. Show 3D box that user can reshape by adjusting cut size
3. Display volume in real-time as cut size changes
4. Plot volume vs. cut size graph below
5. Mark the optimal cut size where volume is maximum
6. Show constraint: total material is fixed
7. Animation: sweep through all possible cuts, pause at maximum

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"The critical point is the answer"** | Students stop after finding x | Emphasize: the question asks for a QUANTITY (area, volume, etc.), not just x |
| **"There's only one variable"** | Ignoring constraint | Show how constraint CREATES the single-variable function |
| **"Set the function equal to zero"** | Confusing f(x) = 0 with f'(x) = 0 | We set the DERIVATIVE to zero, not the function |
| **"All critical points are optima"** | Not testing for max/min | Verify using Second Derivative Test or domain analysis |
| **"Maximum value is x = ..."** | Confusing where vs. what | "Maximum occurs at x = 3" is different from "Maximum value is f(3) = 27" |
| **"Ignore the domain"** | Not considering physical constraints | Physical problems have implied domain restrictions (x > 0, etc.) |
| **"Skip the picture"** | Jumping straight to equations | A diagram reveals relationships and catches errors |

### Misconception-Busting Exercises

1. **Answer the Actual Question:**
   Problem: Find the dimensions that maximize area
   - Wrong answer: "x = 5"
   - Right answer: "The rectangle should be 5 ft by 10 ft for maximum area of 50 sq ft"

2. **Domain Matters:**
   Problem: Cut squares from corners of 20x20 sheet to make box
   - Constraint: cut size x must satisfy 0 < x < 10
   - Critical point outside domain is not valid!

3. **Verify Max vs. Min:**
   - f'(c) = 0 could be max, min, or neither
   - Use f''(c) or compare endpoint values
   - Physical reasoning: "We want MAXIMUM volume, does this make sense?"

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 29 lesson should:

### Opening (5 min)
- Present real scenario: "You have 100 ft of fencing. What's the largest rectangular area you can enclose?"
- Students guess: Square? Rectangle? What dimensions?
- Reveal: Calculus gives us the exact answer!

### The Optimization Framework (10 min)

**5-Step Procedure:**

1. **Draw and Label:** Create a diagram showing all quantities
2. **Identify Variables:** What are we optimizing? What quantities can vary?
3. **Write Equations:**
   - **Objective function:** The quantity to maximize or minimize
   - **Constraint equation:** The relationship that limits our choices
4. **Reduce to One Variable:** Use constraint to eliminate a variable from the objective function
5. **Apply Calculus:**
   - Find critical points (set derivative = 0)
   - Verify max/min (Second Derivative Test or domain analysis)
   - Answer the question asked (often need to compute the optimal value)

**Why Constraints Matter:**
- Without constraint, most optimization problems have no maximum (make it infinitely big!)
- The constraint creates a bounded search space
- Example: Maximize area with given perimeter - without perimeter constraint, area could be infinite

### Classic Problem Type 1: Geometric (12 min)

**Problem:** A farmer has 400 ft of fencing to enclose a rectangular field next to a river (no fence needed along river). What dimensions maximize the area?

**Solution:**

1. **Draw:** Rectangle with three fenced sides (width, length, width)

2. **Variables:**
   - Let w = width (perpendicular to river)
   - Let l = length (parallel to river)
   - Optimize: Area A = l * w

3. **Equations:**
   - Objective: A = l * w
   - Constraint: 2w + l = 400 (only three sides fenced)

4. **Reduce:** From constraint: l = 400 - 2w
   Substitute: A(w) = (400 - 2w) * w = 400w - 2w^2

5. **Calculus:**
   - A'(w) = 400 - 4w
   - Set A'(w) = 0: 400 - 4w = 0 gives w = 100
   - A''(w) = -4 < 0, so w = 100 gives a maximum
   - l = 400 - 2(100) = 200
   - Maximum area: A = 100 * 200 = 20,000 sq ft

**Answer:** The field should be 100 ft by 200 ft for a maximum area of 20,000 square feet.

**Variation:** What if the field is against a building (three sides fenced but different layout)?

### Classic Problem Type 2: Container (10 min)

**Problem:** A rectangular box with square base and no top is to have volume 32 cubic inches. Find the dimensions that minimize surface area.

**Solution:**

1. **Draw:** Box with square base (side x) and height h

2. **Variables:**
   - x = side of square base
   - h = height
   - Minimize: Surface Area S = x^2 + 4xh (base + four sides)

3. **Equations:**
   - Objective: S = x^2 + 4xh
   - Constraint: V = x^2 * h = 32

4. **Reduce:** From constraint: h = 32/x^2
   Substitute: S(x) = x^2 + 4x(32/x^2) = x^2 + 128/x

5. **Calculus:**
   - S'(x) = 2x - 128/x^2
   - Set S'(x) = 0: 2x = 128/x^2 gives x^3 = 64, so x = 4
   - S''(x) = 2 + 256/x^3; S''(4) = 2 + 4 = 6 > 0, so minimum
   - h = 32/16 = 2
   - Minimum surface area: S = 16 + 128/4 = 48 sq in

**Answer:** Base is 4 in by 4 in, height is 2 in, for minimum surface area of 48 square inches.

### Classic Problem Type 3: Distance/Time (8 min)

**Problem:** Find the point on the line y = 2x + 3 closest to the origin.

**Solution:**

1. **Setup:** Point on line is (x, 2x + 3). Distance to origin is d = sqrt(x^2 + (2x+3)^2)

2. **Simplify:** Minimize d^2 instead (same optimal x): D = x^2 + (2x+3)^2 = x^2 + 4x^2 + 12x + 9 = 5x^2 + 12x + 9

3. **Calculus:**
   - D'(x) = 10x + 12
   - Set D'(x) = 0: x = -6/5
   - D''(x) = 10 > 0, so minimum

4. **Answer:** The closest point is (-6/5, 2(-6/5) + 3) = (-6/5, 3/5)

**Key Insight:** Minimizing distance is equivalent to minimizing distance squared (avoids the square root).

### Practice and Common Pitfalls (5 min)

**Quick Practice:** A poster must have 150 sq in of printed matter, with 3 in margins top and bottom, 2 in margins on sides. Find dimensions that minimize total poster area.

**Setup:**
- Printed area: w * h = 150
- Total area: A = (w + 4)(h + 6)
- Constraint: h = 150/w
- A(w) = (w + 4)(150/w + 6) = 150 + 6w + 600/w + 24

**Common Pitfalls to Emphasize:**
1. Draw a picture - always!
2. Identify what to optimize clearly
3. Find and use the constraint
4. Check that your answer makes physical sense
5. Answer what was asked (dimensions, not just x)

### Closing (5 min)
- Exit ticket: Set up (but don't solve) an optimization problem
- Key insight: The hardest part is setup; the calculus is often straightforward
- Real-world connection: Engineers, economists, and scientists use these methods daily
- Summary: Draw, identify, write equations, reduce, apply calculus, answer the question

### Key Principles Throughout

1. **Picture first:** Visualization reveals relationships
2. **Constraint is essential:** Without it, no bounded optimum
3. **Reduce to one variable:** Use constraint to substitute
4. **Verify max/min:** Don't assume - check!
5. **Answer the question:** Give the quantity asked for with units

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **5.10:** Introduction to Optimization Problems
- **5.11:** Solving Optimization Problems

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (systematic procedure)
- **MP 2:** Connecting Representations (diagram to equations)
- **MP 3:** Justification (verifying max/min)
- **MP 4:** Communication (complete answer with units)

### AP Exam Connection
- Optimization is a favorite FRQ topic
- Must show all work: setup, derivative, critical point, verification
- Common errors students make:
  - Not verifying max vs. min
  - Forgetting to answer the actual question
  - Not including units
  - Sign errors in derivative

### Scoring Rubric Expectations:
- Point for correct objective function
- Point for correct constraint
- Point for correct single-variable function
- Point for correct derivative
- Point for finding critical point
- Point for verifying max/min
- Point for correct final answer

### Fluency Goal
By the end of this class, students should:
- Set up optimization problems from verbal descriptions
- Identify and use constraint equations
- Reduce to single-variable function
- Apply calculus to find optimal values
- Verify max/min and answer the question asked

---

## Sources

- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Khan Academy: Optimization Problems](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-analytical-applications-new/ab-5-11)
- [Professor Leonard: Optimization](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Optimization](https://tutorial.math.lamar.edu/Classes/CalcI/Optimization.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
