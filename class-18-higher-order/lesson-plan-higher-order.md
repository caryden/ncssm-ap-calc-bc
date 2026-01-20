# Lesson Plan: Higher-Order Derivatives & Unit 3 Review

## Class Information
- **Class Number:** 18
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **Topic:** Higher-Order Derivatives and Selecting Procedures
- **CED Topics:** 3.5, 3.6
- **Duration:** 50 minutes
- **Date:** March 6, 2026

---

## Learning Objectives

By the end of this lesson, students will be able to:
1. Calculate second and higher-order derivatives using various notations
2. Find higher derivatives of implicitly defined functions
3. Select appropriate differentiation procedures for any function
4. Synthesize all derivative rules from Units 2 and 3

---

## Standards Alignment

### AP Calculus BC CED
- **3.5:** Selecting Procedures for Calculating Derivatives
- **3.6:** Calculating Higher-Order Derivatives
- **Learning Objective FUN-3.F:** Determine higher-order derivatives

### Mathematical Practices
- **Practice 1:** Implementing Mathematical Processes
- **Practice 4:** Communication

---

## Materials Needed
- Interactive presentation with D3 visualizations
- Derivative procedure flowchart
- Unit 3 review worksheet
- Practice AP-style problems

---

## Lesson Outline

### Opening (5 minutes)

**Warm-Up:**
Find y' and y'' for y = x^3 - 2x^2 + 5x - 1

**Discussion:** What does y'' represent? (Rate of change of the rate of change!)

---

### Core Instruction - Part 1: Higher-Order Derivatives (15 minutes)

#### Notation (3 minutes)

**First Derivative:** f'(x), y', dy/dx, d/dx[f(x)]

**Second Derivative:** f''(x), y'', d²y/dx², d/dx[f'(x)]

**nth Derivative:** f^(n)(x), y^(n), d^n y/dx^n

#### Basic Examples (5 minutes)

**Example 1:** f(x) = x^5 - 3x^4 + 2x
- f'(x) = 5x^4 - 12x^3 + 2
- f''(x) = 20x^3 - 36x^2
- f'''(x) = 60x^2 - 72x
- f^(4)(x) = 120x - 72
- f^(5)(x) = 120
- f^(6)(x) = 0

**Example 2:** f(x) = sin(x)
- f'(x) = cos(x)
- f''(x) = -sin(x)
- f'''(x) = -cos(x)
- f^(4)(x) = sin(x) ... pattern repeats!

#### Implicit Second Derivatives (7 minutes)

**Example:** Find y'' for x^2 + y^2 = 25

**Step 1:** Find y'
2x + 2y(y') = 0
y' = -x/y

**Step 2:** Find y'' by differentiating y'
y'' = d/dx[-x/y] = -(y - x·y')/y² = -(y - x·(-x/y))/y²
= -(y² + x²)/(y³) = -25/y³

---

### Core Instruction - Part 2: Selecting Procedures (10 minutes)

#### Flowchart Approach
1. Is it a basic function? (power, trig, exp, log) → Use basic rules
2. Is it a product? → Product rule
3. Is it a quotient? → Quotient rule
4. Is it a composition? → Chain rule
5. Is it implicit? → Implicit differentiation
6. Is it an inverse? → Inverse function formula

#### Mixed Practice Examples
1. d/dx[x²e^x] - Product rule
2. d/dx[(3x+1)^7] - Chain rule
3. d/dx[tan(x²)] - Chain rule (trig of function)
4. d/dx[ln(cos x)] - Chain rule (log of function)
5. x²y + y² = 10 - Implicit differentiation

---

### Unit 3 Review (15 minutes)

#### Key Topics Summary
1. **Chain Rule:** d/dx[f(g(x))] = f'(g(x))·g'(x)
2. **Implicit Differentiation:** Treat y as function of x
3. **Inverse Function:** (f^(-1))'(a) = 1/f'(f^(-1)(a))
4. **Inverse Trig:** arcsin, arccos, arctan derivatives
5. **Higher-Order:** Apply derivative rules repeatedly

#### AP-Style Problems (Practice)
Mix of multiple choice and free response style

---

### Closing (5 minutes)

**Exit Ticket:**
1. Find y'' for y = e^(2x)
2. What rule(s) would you use for d/dx[x·arctan(x)]?

**Looking Ahead:**
Unit 4: Contextual Applications of Differentiation

---

## Differentiation Strategies

### For Struggling Learners
- Provide flowchart as reference
- Focus on recognizing patterns
- Step-by-step implicit second derivative process

### For Advanced Learners
- Explore Leibniz formula for nth derivatives of products
- Find patterns in higher derivatives
- Challenge with third derivatives of implicit functions

---

## Common Misconceptions

1. **Notation confusion:** d²y/dx² ≠ (dy/dx)²
2. **Implicit second derivatives:** Forgetting to substitute y' when differentiating y''
3. **Chain rule oversight:** Missing the inner derivative in compositions

---

## Assessment Notes

**Formative:**
- Monitor procedure selection reasoning
- Exit ticket analysis

**Summative:**
- Unit 3 quiz (next class or homework)

---

## Homework Assignment

AP Classroom: Topic Questions 3.5, 3.6
Unit 3 Review Problems
Prepare for Unit 4: Read about motion problems
