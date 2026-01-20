# Lesson Plan: The Product Rule

## Class 13 | Unit 2: Differentiation Fundamentals

---

## Overview

This session introduces the product rule for differentiating products of functions. Students will discover why d/dx[f·g] ≠ f'·g', derive the product rule, and apply it to various function types.

**CED Topics:**
- 2.7 - Derivatives of cos x, sin x, e^x, and ln x
- Focus: Product Rule

---

## Learning Objectives

By the end of this class, students will be able to:

1. Recognize that the derivative of a product is NOT the product of derivatives
2. State and apply the product rule: d/dx[f·g] = f'·g + f·g'
3. Identify when the product rule is necessary vs. when expansion is simpler
4. Apply the product rule to polynomial, exponential, and trigonometric functions

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators
- Practice worksheet
- Student devices for verification

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Naive Guess**

Present: "If d/dx[f + g] = f' + g', what about d/dx[f · g]?"

Let students guess. Most will suggest f' · g'.

**Counterexample:** Let f(x) = x and g(x) = x
- f(x)·g(x) = x² → derivative = 2x
- f'(x)·g'(x) = 1·1 = 1

They're NOT equal! So what's the rule?

### Core Concept: The Product Rule (15 min)

**The Product Rule**

$$\frac{d}{dx}[f(x) \cdot g(x)] = f'(x) \cdot g(x) + f(x) \cdot g'(x)$$

**Memory Aids:**
- "First times derivative of second, plus second times derivative of first"
- "f'g + fg'" (pronounced "eff prime gee plus eff gee prime")

**Visual Intuition:** Think of a rectangle with sides f(x) and g(x)
- Area = f(x)·g(x)
- As x changes, both sides change
- Rate of change of area involves both rates

**Proof Sketch (Optional):**
$$\frac{d}{dx}[fg] = \lim_{h \to 0} \frac{f(x+h)g(x+h) - f(x)g(x)}{h}$$

Add and subtract f(x)g(x+h):
$$= \lim_{h \to 0} \frac{f(x+h)g(x+h) - f(x)g(x+h) + f(x)g(x+h) - f(x)g(x)}{h}$$

Factor:
$$= \lim_{h \to 0} \left[ g(x+h) \cdot \frac{f(x+h) - f(x)}{h} + f(x) \cdot \frac{g(x+h) - g(x)}{h} \right]$$

$$= g(x) \cdot f'(x) + f(x) \cdot g'(x)$$

### Worked Examples (15 min)

**Example 1: Two Polynomials**
$$h(x) = (3x^2)(x^3 + 1)$$

Method 1 (Product Rule):
- f = 3x², f' = 6x
- g = x³ + 1, g' = 3x²
- h'(x) = (6x)(x³ + 1) + (3x²)(3x²)
- h'(x) = 6x⁴ + 6x + 9x⁴ = 15x⁴ + 6x

Method 2 (Expand first):
- h(x) = 3x⁵ + 3x²
- h'(x) = 15x⁴ + 6x ✓

Note: Both methods work! Choose the easier one.

**Example 2: Polynomial times √x**
$$h(x) = (x^2 + 1)\sqrt{x}$$

- f = x² + 1, f' = 2x
- g = x^(1/2), g' = (1/2)x^(-1/2)
- h'(x) = (2x)(x^(1/2)) + (x² + 1)(1/2)x^(-1/2)
- h'(x) = 2x^(3/2) + (x² + 1)/(2√x)

**Example 3: Exponential and Polynomial (Preview)**
$$h(x) = x^2 e^x$$

- f = x², f' = 2x
- g = e^x, g' = e^x (special rule we'll learn!)
- h'(x) = (2x)(e^x) + (x²)(e^x)
- h'(x) = e^x(2x + x²) = x e^x(2 + x)

### When to Use Product Rule? (5 min)

**Use Product Rule when:**
- Functions can't easily be multiplied out
- One factor is transcendental (e^x, sin x, ln x)
- Expansion would be tedious

**Just Expand when:**
- Both factors are simple polynomials
- Expansion is quick and easy

### Practice Problems (8 min)

**Individual Practice:**

1. d/dx[(x² + 3)(x³ - 2)]
2. d/dx[x√x] (Can also be done without product rule!)
3. d/dx[(2x + 1)(3x² - x)]

**Solutions:**
1. f'g + fg' = (2x)(x³ - 2) + (x² + 3)(3x²) = 2x⁴ - 4x + 3x⁴ + 9x² = 5x⁴ + 9x² - 4x
2. Using product rule: (1)(x^(1/2)) + (x)(1/2)x^(-1/2) = √x + x/(2√x) = (3/2)√x
   Or rewrite: x·x^(1/2) = x^(3/2), derivative = (3/2)x^(1/2) ✓
3. (2)(3x² - x) + (2x + 1)(6x - 1) = 6x² - 2x + 12x² + 4x - 1 = 18x² + 2x - 1

### Closing (2 min)

**Exit Ticket:** Find d/dx[(x³ - 1)(x² + 4)] using the product rule.

**Preview:** Tomorrow: What about quotients like f(x)/g(x)?

---

## Differentiation Strategies

### For students who need more support:
- Emphasize the mnemonic "first d-second plus second d-first"
- Use a template: f = ___, f' = ___, g = ___, g' = ___
- Always verify by expanding when possible

### For advanced students:
- Extend to products of three functions: d/dx[fgh] = f'gh + fg'h + fgh'
- Explore why the product rule has this form using differential approximation
- Connect to logarithmic differentiation (preview of later topics)

---

## Common Misconceptions to Address

1. **"d/dx[fg] = f' · g'"**
   - Address: This is the most common error! Always use the full formula.

2. **"The order matters in the product rule"**
   - Address: f'g + fg' = fg' + f'g (addition is commutative)

3. **"I must always use the product rule for products"**
   - Address: Sometimes expansion is easier; choose wisely

4. **"The product rule only works for two terms"**
   - Address: It works for any two factors; for more, apply repeatedly

---

## Assessment Notes

- Monitor correct identification of f, f', g, g'
- Check for the common error of using f' · g'
- Verify algebraic simplification after applying the rule

---

## Connections

**Prior knowledge:**
- Basic differentiation rules (Class 12)
- Definition of derivative as limit (Class 9)
- Algebraic expansion

**Future connections:**
- Quotient rule (Class 14) - derived from product rule
- Chain rule (Unit 3) - often combined with product rule
- Integration by parts (BC topic) - "reverse" product rule

---

## Vocabulary

- **Product rule:** d/dx[f·g] = f'·g + f·g'
- **First function:** The f in f·g (your choice)
- **Second function:** The g in f·g (your choice)
