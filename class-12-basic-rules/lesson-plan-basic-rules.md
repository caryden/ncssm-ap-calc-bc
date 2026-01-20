# Lesson Plan: Basic Differentiation Rules

## Class 12 | Unit 2: Differentiation Fundamentals

---

## Overview

This session introduces the fundamental differentiation rules that replace the limit definition with efficient patterns. Students will learn and apply the constant rule, power rule, constant multiple rule, and sum/difference rules—the foundation for all future derivative calculations.

**CED Topics:**
- 2.5 - Applying the Power Rule
- 2.6 - Derivative Rules: Constant, Sum, Difference, and Constant Multiple

---

## Learning Objectives

By the end of this class, students will be able to:

1. Apply the constant rule: d/dx[c] = 0
2. Apply the power rule: d/dx[x^n] = nx^(n-1)
3. Apply the constant multiple rule: d/dx[cf(x)] = c·f'(x)
4. Apply the sum and difference rules
5. Combine rules to differentiate polynomial functions efficiently

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators
- Practice worksheet with polynomial functions
- Student devices for derivative verification

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Freedom from Limits!**

Display:
> Using the limit definition, find d/dx[x^5]

Let students groan at the prospect of expanding (x+h)^5.

**Reveal:** There's a pattern! The derivative is 5x^4. Today we learn WHY and discover rules that make derivatives almost instant.

### Core Concept: The Basic Rules (20 min)

**Rule 1: Constant Rule**

$$\frac{d}{dx}[c] = 0$$

- If f(x) = 7, then f'(x) = 0
- Geometric interpretation: Horizontal line has zero slope everywhere
- Proof: lim[h→0] (c - c)/h = lim[h→0] 0/h = 0

**Rule 2: Power Rule**

$$\frac{d}{dx}[x^n] = nx^{n-1}$$

- Works for ANY real number n (integers, fractions, negatives)
- Examples:
  - d/dx[x^3] = 3x^2
  - d/dx[x^(-2)] = -2x^(-3)
  - d/dx[x^(1/2)] = (1/2)x^(-1/2)

**Pattern Recognition:** Show the pattern emerging from derivatives calculated with limits:
- d/dx[x^2] = 2x = 2x^1
- d/dx[x^3] = 3x^2
- d/dx[x^4] = 4x^3

**Visualization:** Animate the tangent line slopes on power functions to show they match the power rule formula.

**Rule 3: Constant Multiple Rule**

$$\frac{d}{dx}[cf(x)] = c \cdot f'(x)$$

- Constants "factor out" of the derivative
- Example: d/dx[5x^3] = 5 · d/dx[x^3] = 5 · 3x^2 = 15x^2

**Rule 4: Sum and Difference Rules**

$$\frac{d}{dx}[f(x) + g(x)] = f'(x) + g'(x)$$
$$\frac{d}{dx}[f(x) - g(x)] = f'(x) - g'(x)$$

- "The derivative of a sum is the sum of the derivatives"
- Differentiate term by term

### Combining the Rules (10 min)

**Polynomials:** Apply all rules together

Example 1: f(x) = 3x^4 - 5x^2 + 7x - 2
- f'(x) = 12x^3 - 10x + 7

Example 2: g(x) = (2x^3 + 1)/x = 2x^2 + x^(-1)
- g'(x) = 4x - x^(-2)

**Key Strategy:** Rewrite before differentiating
- Convert radicals to fractional exponents
- Simplify fractions to remove denominators when possible

### Practice Problems (12 min)

**Quick Practice:** (Individual, 2 min each)

1. f(x) = x^8 → f'(x) = 8x^7
2. g(x) = 4x^3 - 2x + 5 → g'(x) = 12x^2 - 2
3. h(x) = √x → h'(x) = (1/2)x^(-1/2) = 1/(2√x)
4. p(x) = 3/x^2 = 3x^(-2) → p'(x) = -6x^(-3) = -6/x^3

**Verification Activity:**
Have students verify one result using the limit definition to see why we love these rules!

### Closing (3 min)

**Exit Ticket:** Find f'(x) for f(x) = 2x^5 - 3x^2 + 4x - 7

**Preview:** Tomorrow we tackle products of functions. The derivative of f(x)·g(x) is NOT just f'(x)·g'(x)!

---

## Differentiation Strategies

### For students who need more support:
- Focus on integer powers first before fractional/negative exponents
- Provide a rule card for reference during practice
- Color-code terms to track through differentiation

### For advanced students:
- Challenge: Derive the power rule for n=3 using limits
- Explore: Does the power rule work for irrational exponents like x^π?
- Investigate: What is d/dx[e^x]? (Foreshadowing exponential derivatives)

---

## Common Misconceptions to Address

1. **"The derivative of x^n is x^(n-1)"**
   - Address: Don't forget to multiply by n!

2. **"The power rule only works for positive integers"**
   - Address: Works for ALL real exponents (fractions, negatives)

3. **"You need to use the limit definition every time"**
   - Address: These rules ARE derived from limits; using them is valid

4. **"d/dx[2^x] = x·2^(x-1)"**
   - Address: Power rule is for x^n (variable base), not for a^x (variable exponent)

---

## Assessment Notes

- Monitor ability to apply power rule with fractional/negative exponents
- Check that students combine multiple rules correctly
- Verify students can rewrite expressions before differentiating

---

## Connections

**Prior knowledge:**
- Definition of the derivative (Class 9)
- Limit calculation techniques (Unit 1)
- Exponent rules from algebra

**Future connections:**
- Product rule (Class 13) for products we can't expand
- Chain rule (Unit 3) for compositions
- All applied derivative problems (Units 4-5)

---

## Vocabulary

- **Power rule:** d/dx[x^n] = nx^(n-1)
- **Constant rule:** The derivative of a constant is zero
- **Constant multiple rule:** Constants factor out of derivatives
- **Sum/Difference rule:** Derivatives distribute over addition/subtraction
- **Polynomial:** A function of the form a_n·x^n + ... + a_1·x + a_0
