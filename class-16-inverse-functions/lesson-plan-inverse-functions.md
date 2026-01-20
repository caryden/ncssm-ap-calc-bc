# Lesson Plan: Differentiating Inverse Functions

## Class Information
- **Class Number:** 16
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **Topic:** Differentiating Inverse Functions
- **CED Topic:** 3.3
- **Duration:** 50 minutes
- **Date:** March 3, 2026

---

## Learning Objectives

By the end of this lesson, students will be able to:
1. Understand the relationship between a function and its inverse graphically
2. Apply implicit differentiation to derive the inverse function derivative formula
3. Use the formula (f^(-1))'(a) = 1/f'(f^(-1)(a)) to find derivatives
4. Calculate derivatives of inverse functions at specific points

---

## Standards Alignment

### AP Calculus BC CED
- **3.3:** Differentiating Inverse Functions
- **Learning Objective FUN-3.E:** Calculate derivatives of inverse functions

### Mathematical Practices
- **Practice 1:** Implementing Mathematical Processes
- **Practice 2:** Connecting Representations

---

## Materials Needed
- Interactive presentation with D3 visualizations
- Graphing calculators
- Desmos for inverse function exploration
- Practice worksheet

---

## Lesson Outline

### Opening (5 minutes)

**Warm-Up:**
If f(x) = x^3 + 2x - 1, find f(1) and f'(1).
- f(1) = 1 + 2 - 1 = 2
- f'(x) = 3x^2 + 2, so f'(1) = 5

**Question:** If f(1) = 2, then f^(-1)(2) = 1. What is (f^(-1))'(2)?

---

### Core Instruction (25 minutes)

#### Part 1: Inverse Functions Review (5 minutes)

**Key Properties:**
- f(f^(-1)(x)) = x and f^(-1)(f(x)) = x
- Graphically: reflection across y = x
- (a, b) on f means (b, a) on f^(-1)

**Graphical Insight:** Slopes are reciprocals (with appropriate adjustments)

#### Part 2: Deriving the Formula (10 minutes)

**Using Implicit Differentiation:**
Start with f(f^(-1)(x)) = x

Let y = f^(-1)(x), so f(y) = x

Differentiate both sides with respect to x:
f'(y) · (dy/dx) = 1

Therefore: dy/dx = 1/f'(y) = 1/f'(f^(-1)(x))

**The Inverse Function Derivative Formula:**
$$(f^{-1})'(a) = \frac{1}{f'(f^{-1}(a))}$$

**Verbal Version:** "The derivative of the inverse at a equals 1 over the derivative of f at the corresponding point"

#### Part 3: Examples (10 minutes)

**Example 1:** If f(x) = x^3 + 2x - 1, find (f^(-1))'(2).

Solution:
- We need f^(-1)(2), i.e., what x gives f(x) = 2?
- f(1) = 1 + 2 - 1 = 2, so f^(-1)(2) = 1
- f'(x) = 3x^2 + 2, so f'(1) = 5
- (f^(-1))'(2) = 1/f'(1) = 1/5

**Example 2:** If f(x) = x^5 + x + 1, find (f^(-1))'(3).
- Need f^(-1)(3): what x gives f(x) = 3?
- f(1) = 1 + 1 + 1 = 3, so f^(-1)(3) = 1
- f'(x) = 5x^4 + 1, so f'(1) = 6
- (f^(-1))'(3) = 1/6

**Example 3:** Given table of values, find (f^(-1))'(5).

| x | f(x) | f'(x) |
|---|------|-------|
| 2 | 5    | 3     |
| 5 | 8    | 4     |

- f(2) = 5 means f^(-1)(5) = 2
- (f^(-1))'(5) = 1/f'(2) = 1/3

---

### Active Practice (15 minutes)

#### Guided Practice (5 minutes)
Work through: If f(x) = 2x + sin(x), find (f^(-1))'(0).

#### Independent Practice (7 minutes)
1. If f(x) = x^3 - x + 2, find (f^(-1))'(2).
2. If g(2) = 5 and g'(2) = 3, find (g^(-1))'(5).
3. If h(x) = e^x + x, find (h^(-1))'(1).

#### Discussion (3 minutes)
Common errors and clarifications

---

### Closing (5 minutes)

**Exit Ticket:**
If f(x) = x^5 + 3x - 2 and f(1) = 2, find (f^(-1))'(2).

**Preview:**
Tomorrow: Derivatives of inverse trigonometric functions

---

## Differentiation Strategies

### For Struggling Learners
- Focus on table-based problems first
- Create step-by-step checklist
- Emphasize the reciprocal relationship graphically

### For Advanced Learners
- Explore the geometric proof
- Derive formulas for specific inverse functions
- Consider higher derivatives of inverse functions

---

## Common Misconceptions

1. **Confusing f^(-1)(a) with 1/f(a):** Inverse notation vs. reciprocal
2. **Wrong evaluation point:** Must evaluate f' at f^(-1)(a), not at a
3. **Forgetting to find f^(-1)(a) first:** Students try to use a directly

---

## Assessment Notes

**Formative:**
- Monitor problem-solving process
- Check for correct identification of f^(-1)(a)

**Key Questions:**
- "What point on f corresponds to this point on f^(-1)?"
- "Where do we evaluate f'?"

---

## Connections

**Prior Knowledge:**
- Inverse functions from precalculus
- Implicit differentiation
- Chain rule

**Future Topics:**
- Inverse trig derivatives (next class)
- Integration by parts
- Logarithmic differentiation
