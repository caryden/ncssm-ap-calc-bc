# Lesson Plan: Implicit Differentiation

## Class Information
- **Class Number:** 15
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **Topic:** Implicit Differentiation
- **CED Topic:** 3.2
- **Duration:** 50 minutes
- **Date:** February 28, 2026

---

## Learning Objectives

By the end of this lesson, students will be able to:
1. Distinguish between explicit and implicit functions
2. Apply implicit differentiation to find dy/dx
3. Use the chain rule when differentiating y terms
4. Find slopes of tangent lines to implicitly defined curves

---

## Standards Alignment

### AP Calculus BC CED
- **3.2:** Implicit Differentiation
- **Learning Objective FUN-3.D:** Calculate derivatives of implicitly defined functions

### Mathematical Practices
- **Practice 1:** Implementing Mathematical Processes
- **Practice 3:** Justification

---

## Materials Needed
- Interactive presentation with D3 visualizations
- Graphing calculators
- Desmos for exploring implicit curves
- Practice worksheet

---

## Lesson Outline

### Opening (5 minutes)

**Warm-Up Problem:**
Given x^2 + y^2 = 25, solve for y and find dy/dx at the point (3, 4).

*Discussion:*
- y = sqrt(25 - x^2) gives only the top half
- What about points on the bottom half?
- What if we can't solve for y explicitly?

**Hook:** The equation x^2 + y^2 = 25 describes a circle. Can we find the slope anywhere without solving for y?

---

### Core Instruction (25 minutes)

#### Part 1: Explicit vs. Implicit Functions (5 minutes)

**Key Definitions:**
- **Explicit:** y = f(x) - y is isolated
  - Examples: y = x^2, y = sin(x)
- **Implicit:** F(x, y) = 0 - y mixed with x
  - Examples: x^2 + y^2 = 25, xy + y^3 = 1

**Discussion:** Many important curves (circles, ellipses, more complex curves) are most naturally described implicitly.

#### Part 2: The Implicit Differentiation Process (10 minutes)

**Key Insight:** Think of y as a function of x: y = y(x)

**The Process:**
1. Differentiate both sides with respect to x
2. When differentiating a term with y, use the chain rule: d/dx[y^n] = n·y^(n-1)·(dy/dx)
3. Collect all dy/dx terms on one side
4. Factor out dy/dx and solve

**Example 1:** x^2 + y^2 = 25
- d/dx[x^2] + d/dx[y^2] = d/dx[25]
- 2x + 2y·(dy/dx) = 0
- 2y·(dy/dx) = -2x
- dy/dx = -x/y

**Verification:** At (3, 4): dy/dx = -3/4 (matches geometric intuition - negative slope in Q1)

#### Part 3: More Complex Examples (10 minutes)

**Example 2:** xy + y^3 = 1
- Product rule on xy: d/dx[xy] = x·(dy/dx) + y·1
- d/dx[y^3] = 3y^2·(dy/dx)
- x·(dy/dx) + y + 3y^2·(dy/dx) = 0
- (dy/dx)(x + 3y^2) = -y
- dy/dx = -y/(x + 3y^2)

**Example 3:** sin(xy) = y
- Chain rule: cos(xy)·(y + x·dy/dx) = dy/dx
- y·cos(xy) + x·cos(xy)·(dy/dx) = dy/dx
- y·cos(xy) = dy/dx - x·cos(xy)·(dy/dx)
- y·cos(xy) = dy/dx(1 - x·cos(xy))
- dy/dx = y·cos(xy)/(1 - x·cos(xy))

---

### Active Practice (15 minutes)

#### Guided Practice (5 minutes)
Work through together: x^3 + y^3 = 6xy (folium of Descartes)

#### Independent Practice (7 minutes)
Students work on:
1. x^2 - y^2 = 16 (hyperbola)
2. y^2 = x^3 (semicubical parabola)
3. e^y = x + y
4. Find the slope of x^2 + xy + y^2 = 7 at (2, 1)

#### Discussion (3 minutes)
- Share solutions
- Discuss when dy/dx is undefined (vertical tangent)
- Connect to geometry of curves

---

### Closing (5 minutes)

**Exit Ticket:**
Use implicit differentiation to find dy/dx: x^2y + y^2 = 5

**Preview:**
Tomorrow we'll apply these techniques to inverse functions.

---

## Differentiation Strategies

### For Struggling Learners
- Color-code y terms to identify where chain rule is needed
- Provide step-by-step templates
- Start with simpler equations before products

### For Advanced Learners
- Challenge with second derivatives of implicit functions
- Explore when implicit curves have horizontal/vertical tangents
- Derive equations of tangent lines to conics

---

## Common Misconceptions

1. **Forgetting the chain rule:** Writing d/dx[y^2] = 2y instead of 2y·(dy/dx)
2. **Treating y as a constant:** Not recognizing y depends on x
3. **Algebraic errors:** Mistakes when solving for dy/dx

---

## Assessment Notes

**Formative:**
- Monitor during practice
- Exit ticket analysis

**Check for Understanding Questions:**
- "Why do we need dy/dx when differentiating y?"
- "What does dy/dx represent geometrically?"
- "When would dy/dx be undefined?"

---

## Connections

**Prior Knowledge:**
- Chain rule (essential!)
- Product and quotient rules
- Algebraic manipulation

**Future Topics:**
- Related rates (implicit differentiation with respect to t)
- Differentiating inverse functions
- Analysis of implicitly defined curves

---

## Homework Assignment

AP Classroom: Topic Questions 3.2
Additional Problems: Implicit Differentiation Practice Set (problems 1-15)
