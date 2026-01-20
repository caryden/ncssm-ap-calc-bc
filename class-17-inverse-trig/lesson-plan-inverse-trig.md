# Lesson Plan: Inverse Trigonometric Derivatives

## Class Information
- **Class Number:** 17
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **Topic:** Differentiating Inverse Trigonometric Functions
- **CED Topic:** 3.4
- **Duration:** 50 minutes
- **Date:** March 4, 2026

---

## Learning Objectives

By the end of this lesson, students will be able to:
1. State the derivatives of arcsin(x), arccos(x), and arctan(x)
2. Derive these formulas using implicit differentiation
3. Apply the chain rule with inverse trig functions
4. Recognize when inverse trig derivatives appear in applications

---

## Standards Alignment

### AP Calculus BC CED
- **3.4:** Differentiating Inverse Trigonometric Functions
- **Learning Objective FUN-3.E:** Calculate derivatives of inverse trigonometric functions

---

## Materials Needed
- Interactive presentation with D3 visualizations
- Inverse trig derivative reference card
- Practice worksheet

---

## Lesson Outline

### Opening (5 minutes)

**Warm-Up:**
Using the inverse function derivative formula, if f(x) = sin(x), what is (f^(-1))'(x)?

Recall: (f^(-1))'(a) = 1/f'(f^(-1)(a))

---

### Core Instruction (25 minutes)

#### Part 1: Deriving d/dx[arcsin(x)] (8 minutes)

Let y = arcsin(x), so sin(y) = x where -pi/2 <= y <= pi/2

Differentiate implicitly:
cos(y) · (dy/dx) = 1
dy/dx = 1/cos(y)

Since sin^2(y) + cos^2(y) = 1 and cos(y) >= 0 on this interval:
cos(y) = sqrt(1 - sin^2(y)) = sqrt(1 - x^2)

**Result:** d/dx[arcsin(x)] = 1/sqrt(1 - x^2)

#### Part 2: Deriving d/dx[arctan(x)] (7 minutes)

Let y = arctan(x), so tan(y) = x

Differentiate: sec^2(y) · (dy/dx) = 1
dy/dx = 1/sec^2(y) = cos^2(y)

Using tan(y) = x and sec^2(y) = 1 + tan^2(y):
dy/dx = 1/(1 + tan^2(y)) = 1/(1 + x^2)

**Result:** d/dx[arctan(x)] = 1/(1 + x^2)

#### Part 3: Complete List and d/dx[arccos(x)] (5 minutes)

**The Six Inverse Trig Derivatives:**
- d/dx[arcsin(x)] = 1/sqrt(1 - x^2)
- d/dx[arccos(x)] = -1/sqrt(1 - x^2)
- d/dx[arctan(x)] = 1/(1 + x^2)
- d/dx[arccot(x)] = -1/(1 + x^2)
- d/dx[arcsec(x)] = 1/(|x|sqrt(x^2 - 1))
- d/dx[arccsc(x)] = -1/(|x|sqrt(x^2 - 1))

**Note:** Focus on arcsin, arccos, arctan for AP exam.

#### Part 4: Chain Rule Applications (5 minutes)

**Example 1:** d/dx[arcsin(2x)]
= 1/sqrt(1 - (2x)^2) · 2 = 2/sqrt(1 - 4x^2)

**Example 2:** d/dx[arctan(x^2)]
= 1/(1 + (x^2)^2) · 2x = 2x/(1 + x^4)

**Example 3:** d/dx[arccos(e^x)]
= -1/sqrt(1 - e^(2x)) · e^x = -e^x/sqrt(1 - e^(2x))

---

### Active Practice (15 minutes)

#### Practice Problems (10 minutes)
1. d/dx[arcsin(3x)]
2. d/dx[arctan(sqrt(x))]
3. d/dx[x · arctan(x)]
4. d/dx[arcsin(x)/x]
5. d/dx[arccos(1/x)]

#### Discussion (5 minutes)
- Review solutions
- Discuss where these appear (related rates, integration)

---

### Closing (5 minutes)

**Exit Ticket:**
Find d/dx[arctan(2x)]

**Preview:**
Tomorrow: Higher-order derivatives and selecting differentiation procedures

---

## Differentiation Strategies

### For Struggling Learners
- Provide formula sheet during practice
- Focus on three main formulas
- Use pattern recognition

### For Advanced Learners
- Derive arcsec derivative
- Explore integration connections
- Challenge with composite functions

---

## Common Misconceptions

1. **Sign confusion with arccos:** Remember arccos has a negative derivative
2. **Forgetting chain rule:** Must apply inner derivative
3. **Domain issues:** These formulas have restrictions

---

## Homework Assignment

AP Classroom: Topic Questions 3.4
Practice: Inverse Trig Derivatives worksheet
