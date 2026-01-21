# Lesson Plan: Slope Fields

## Class 40 | Unit 7: Differential Equations

---

## Overview

This class introduces slope fields (direction fields) as a visual tool for understanding differential equations. Students will learn to construct slope fields from differential equations, sketch solution curves, and reason about solution behavior without solving algebraically. The slope field provides a bridge between the abstract equation and the concrete solution curves.

**CED Topics:** 7.3 - Sketching Slope Fields, 7.4 - Reasoning Using Slope Fields

---

## Learning Objectives

By the end of this class, students will be able to:

1. Explain what a slope field represents and how it relates to a differential equation
2. Construct a slope field by calculating slopes at grid points
3. Sketch solution curves that follow a slope field starting from a given initial condition
4. Match slope fields to differential equations by analyzing key features
5. Predict long-term behavior of solutions from slope field analysis

---

## Prior Knowledge Required

- Understanding of differential equations and what solutions are (Class 39)
- Slope as rise over run
- Evaluating functions at specific points
- Concept of tangent lines to curves

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graph paper for manual slope field construction (optional)
- Student devices for interactive slope field exploration
- Printed slope field matching activity (4 equations, 4 fields)
- Exit ticket handouts

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Visual Puzzle**

Display a slope field without revealing the equation. Ask:
> "If a particle starts at this point and always moves in the direction shown by the line segments, where does it go?"

Let students trace paths with their fingers or on paper.

**Key Insight:** This is what a slope field does - it shows the "instructions" at every point. Solutions are curves that follow these instructions.

### What is a Slope Field? (10 min)

**Definition:**
A slope field (or direction field) for the differential equation dy/dx = f(x, y) is a visual representation showing the slope of the solution at each point (x, y).

**The Big Idea:**
- At any point (x, y), the differential equation dy/dx = f(x, y) tells us the slope a solution would have if it passed through that point
- We draw a short line segment with that slope at each point
- The collection of these segments is the slope field

**Construction Process (Rule of Four - Analytical to Graphical):**

For dy/dx = x (slope depends only on x):

| Point | Slope = x |
|-------|-----------|
| (-2, any y) | -2 (steep down) |
| (-1, any y) | -1 (45 degrees down) |
| (0, any y) | 0 (horizontal) |
| (1, any y) | 1 (45 degrees up) |
| (2, any y) | 2 (steep up) |

**Key Observation:** When dy/dx depends only on x, all points in a vertical line have the same slope - creating "vertical stripes" in the field.

**Interactive Visualization:** Use D3 to show the slope field for dy/dx = x being constructed point by point.

### Building a Slope Field (10 min)

**Worked Example: dy/dx = y**

Calculate slopes at key points:

| Point | y | Slope = y |
|-------|---|-----------|
| (any x, -2) | -2 | -2 |
| (any x, -1) | -1 | -1 |
| (any x, 0) | 0 | 0 (horizontal) |
| (any x, 1) | 1 | 1 |
| (any x, 2) | 2 | 2 |

**Key Observation:** When dy/dx depends only on y, all points in a horizontal line have the same slope - creating "horizontal stripes" in the field.

**Interactive D3 Visualization:**
1. Display the equation dy/dx = y
2. Show the grid being populated with slope marks
3. Identify patterns: horizontal line at y = 0 has all horizontal segments
4. Above y = 0: positive slopes (solutions increase)
5. Below y = 0: negative slopes (solutions decrease)

**Introduce Isoclines:**
- An isocline is a curve where dy/dx = constant
- For dy/dx = y, the isocline for slope k is the line y = k
- Isoclines help identify structure in the field

**Example: dy/dx = x + y**
- Where is dy/dx = 0? When x + y = 0, or y = -x
- This diagonal line is the nullcline (isocline for slope 0)
- Above this line: positive slopes; below: negative slopes

### Sketching Solution Curves (10 min)

**Process:**
1. Plot the initial point (x_0, y_0)
2. At that point, read the slope from the field
3. Draw a short curve segment in that direction
4. Move to the new point and repeat
5. The solution curve is always tangent to the slope marks

**Worked Example:**
For dy/dx = y with initial condition (0, 1):
- At (0, 1): slope = 1, move up-right
- At (0.5, ~1.6): slope = 1.6, steeper up-right
- The solution curves upward, accelerating (exponential growth)

**Multiple Initial Conditions:**
Show the same slope field with solutions starting from:
- (0, 2): curves upward faster
- (0, 1): curves upward
- (0, -1): curves downward
- (0, 0): stays at zero! (equilibrium)

**Critical Concept - Uniqueness:**
> "Solution curves through different points NEVER cross each other (except at equilibrium points)."

This is the existence and uniqueness theorem visualized. If two curves crossed, the slope at the crossing point would need to point in two different directions - impossible for a well-defined dy/dx.

### Reasoning with Slope Fields (10 min)

**Matching Fields to Equations:**

Present 4 slope fields and 4 equations. Students match by analyzing:

Strategy 1: Check specific points
- At (1, 1), what is the slope in each equation?
- Compare with the field

Strategy 2: Look for patterns
- Does slope depend on x only? y only? Both?
- Where is dy/dx = 0? (horizontal segments)
- Where is dy/dx undefined? (vertical or missing segments)

Strategy 3: Find nullclines
- Set dy/dx = 0 and solve
- This curve should have all horizontal segments

**Practice Matching:**
- dy/dx = x: vertical stripes, horizontal at x = 0
- dy/dx = y: horizontal stripes, horizontal at y = 0
- dy/dx = x + y: diagonal nullcline y = -x
- dy/dx = x - y: diagonal nullcline y = x

**Predicting Long-Term Behavior:**

For dy/dx = y - 2 with y(0) = 5:
- Equilibrium: y = 2 (where dy/dx = 0)
- For y > 2: dy/dx > 0, so y increases (away from equilibrium)
- For y < 2: dy/dx < 0, so y decreases (away from equilibrium)
- Starting at y = 5: solution increases without bound
- This equilibrium y = 2 is **unstable**

For dy/dx = 2 - y with y(0) = 5:
- Same equilibrium: y = 2
- For y > 2: dy/dx < 0, so y decreases (toward equilibrium)
- For y < 2: dy/dx > 0, so y increases (toward equilibrium)
- Starting at y = 5: solution approaches y = 2
- This equilibrium is **stable**

### Closing (5 min)

**Exit Ticket:**
Given a slope field for dy/dx = y(2 - y):
1. Sketch the solution curve through (0, 1)
2. What is the long-term behavior as x → ∞?
3. Identify the equilibrium solutions

**Key Takeaways:**
- Slope fields visualize differential equations
- Solutions follow the flow of the field
- We can predict behavior without solving algebraically

**Preview:**
Next class - Euler's method: a numerical algorithm for following the slope field step by step.

---

## Differentiation Strategies

### For students who need more support:
- Provide a slope field template with grid points labeled
- Start with simple equations where slope depends only on x
- Color-code slopes: positive = blue, negative = red, zero = green
- Focus on tracing existing solution curves before drawing new ones
- Offer a matching activity with obvious features (vertical vs. horizontal stripes)

### For advanced students:
- Challenge: Create a slope field for dy/dx = sin(xy)
- Explore: What does the slope field for d^2y/dx^2 = -y look like? (requires plotting in (y, y') plane)
- Investigate autonomous vs. non-autonomous equations
- Discuss conditions for existence and uniqueness theorem
- Connect to vector fields in physics (velocity fields, force fields)

---

## Common Misconceptions to Address

1. **"The slope marks ARE the solution"**
   - Address: The marks show DIRECTIONS. The solution is a smooth curve that is tangent to the marks at every point.

2. **"Solution curves can cross each other"**
   - Address: Due to uniqueness, two different solutions cannot pass through the same point. They never cross (except at equilibria for some interpretations).

3. **"Only look at grid points"**
   - Address: The slope field is defined EVERYWHERE, not just at grid points. The grid is a sample. Solutions are smooth curves through all points.

4. **"Slope fields are just pretty pictures"**
   - Address: Slope fields let us predict qualitative behavior (increasing/decreasing, equilibria, long-term trends) without solving. This is powerful for equations we cannot solve.

5. **"Horizontal tangent means the solution stops"**
   - Address: At an equilibrium (dy/dx = 0), the solution is constant: y stays at that value for all x. The solution EXISTS - it just doesn't change.

6. **"Steeper slopes mean the solution curve is steeper"**
   - Address: Yes, this is actually correct! Steeper slope marks indicate the solution is changing more rapidly at those points.

---

## Assessment Notes

- **Formative:** Observe students during the matching activity - do they use systematic analysis or guess-and-check?
- **Exit Ticket:** Tests ability to sketch solutions, predict behavior, and identify equilibria
- **Look for:** Students who can construct fields but struggle to sketch smooth solution curves, or who can sketch but cannot analyze behavior

---

## Connections

**Prior knowledge:**
- Class 39: Differential equations and solutions
- Slope and tangent line concepts
- Function evaluation

**Future connections:**
- Class 41: Euler's method numerically follows the slope field
- Class 42: Separation of variables (verify solutions match the field)
- Class 43: Logistic slope fields show stable equilibrium at carrying capacity
- AP Exam: Multiple-choice matching, free-response sketching

---

## Visualization Notes

**D3 Visualization Features for This Lesson:**

1. **Slope Field Constructor:**
   - Input: differential equation dy/dx = f(x, y)
   - Output: Grid of slope marks
   - Interactive: Click to add solution curves through any point

2. **Solution Curve Animator:**
   - Show point "flowing" through the slope field
   - Trace the path as it goes
   - Option to show multiple solutions simultaneously

3. **Isocline Highlighter:**
   - Toggle to show curves where dy/dx = constant
   - Especially highlight nullclines (dy/dx = 0)

4. **Equation-Field Matcher:**
   - Side-by-side comparison mode
   - Highlight specific features (nullclines, sign regions)

**Key Visual Principles:**
- Slope marks should be uniform length (only direction matters, not length)
- Use color to indicate slope sign (positive/negative/zero)
- Solutions should be smooth curves, not polygons
- Always show the underlying equation prominently
