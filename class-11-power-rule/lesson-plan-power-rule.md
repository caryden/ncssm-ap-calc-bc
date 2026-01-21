# Lesson Plan: Power Rule and Basic Derivative Rules

## Class 11 | Unit 2: Differentiation Fundamentals

---

## Overview

This session introduces the first major derivative shortcuts: the power rule and the basic rules for constants, sums, differences, and constant multiples. Rather than memorizing formulas, students will develop geometric intuition for WHY the power rule works before practicing efficient differentiation of polynomials and rational expressions.

**CED Topics:** 2.5 - Applying the Power Rule, 2.6 - Derivative Rules: Constant, Sum, Difference, and Constant Multiple

---

## Learning Objectives

By the end of this class, students will be able to:

1. Apply the power rule to differentiate functions of the form $x^n$ for any real exponent $n$
2. Apply the constant rule, constant multiple rule, and sum/difference rules
3. Rewrite radical and rational expressions in power form before differentiating
4. Differentiate polynomial functions efficiently without using the limit definition
5. Recognize when the power rule does NOT apply (exponential functions with variable exponents)

---

## Prior Knowledge Required

- Definition of the derivative as a limit (Class 9)
- Differentiability requirements (Class 10)
- Laws of exponents (prerequisite algebra)
- Converting radicals to fractional exponents
- Converting fractions to negative exponents

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators
- Student devices for Desmos exploration
- Power rule reference cards (optional handout)
- Expanding square/cube visual aids

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Motivation: The Tedium Problem**

> "Last class we saw that the limit definition of the derivative works... but it's slow and algebraically tedious."

Quick example: "Using the limit definition, finding the derivative of $f(x) = x^5$ would require expanding $(x+h)^5$. That's painful."

**Today's Promise:** "By the end of class, you'll differentiate $x^5$ in two seconds, and you'll understand WHY the shortcut works."

### Geometric Intuition: Why the Power Rule Works (10 min)

**The Expanding Square (3Blue1Brown approach)**

Start with $f(x) = x^2$, interpreted as the area of a square with side length $x$.

**Visualization:**
1. Draw a square with side $x$ (area = $x^2$)
2. Let the side grow by a tiny amount $dx$
3. The new area is $(x + dx)^2$

**What's the change in area?**

Show the expanded square with three new regions:
- Right strip: $x \cdot dx$
- Top strip: $x \cdot dx$
- Corner square: $(dx)^2$

Total change: $\Delta A = 2x \cdot dx + (dx)^2$

**The Key Insight:** As $dx \to 0$, the corner $(dx)^2$ becomes negligibly small compared to $2x \cdot dx$.

So: $\frac{dA}{dx} = 2x$

Therefore: $\frac{d}{dx}(x^2) = 2x$

**The Expanding Cube (brief)**

For $f(x) = x^3$ (volume of a cube):
- When side grows by $dx$, three faces of area $x^2$ each gain a "slab" of thickness $dx$
- Volume change $\approx 3x^2 \cdot dx$
- Therefore: $\frac{d}{dx}(x^3) = 3x^2$

**The Pattern Emerges:**

| Function | Derivative |
|----------|------------|
| $x^1$ | $1$ |
| $x^2$ | $2x$ |
| $x^3$ | $3x^2$ |
| $x^4$ | $4x^3$ |
| $x^n$ | $nx^{n-1}$ |

### The Power Rule and Basic Rules (15 min)

**The Power Rule**

$$\frac{d}{dx}(x^n) = nx^{n-1}$$

**Verbal procedure:** "Bring down the exponent as a coefficient, then subtract one from the exponent."

**The Constant Rule**

$$\frac{d}{dx}(c) = 0$$

**Why?** A constant function is a horizontal line. Horizontal lines have slope 0.

Example: $\frac{d}{dx}(7) = 0$, $\frac{d}{dx}(\pi) = 0$, $\frac{d}{dx}(e) = 0$

**The Constant Multiple Rule**

$$\frac{d}{dx}[c \cdot f(x)] = c \cdot f'(x)$$

**Why?** Constants "factor out" of the derivative.

Example: $\frac{d}{dx}(5x^3) = 5 \cdot \frac{d}{dx}(x^3) = 5 \cdot 3x^2 = 15x^2$

**The Sum and Difference Rules**

$$\frac{d}{dx}[f(x) \pm g(x)] = f'(x) \pm g'(x)$$

**Why?** Differentiate each term separately.

Example: $\frac{d}{dx}(x^3 + x^2) = 3x^2 + 2x$

**Worked Examples (graduated difficulty):**

1. $f(x) = x^5$
   - $f'(x) = 5x^4$ ✓

2. $f(x) = 3x^4$
   - $f'(x) = 3 \cdot 4x^3 = 12x^3$ ✓

3. $f(x) = 2x^3 - 5x + 7$
   - $f'(x) = 2(3x^2) - 5(1) + 0 = 6x^2 - 5$ ✓

4. $f(x) = 4x^3 - 2x^2 + x - 9$
   - $f'(x) = 12x^2 - 4x + 1$ ✓

### Rewriting: Radicals and Negative Exponents (10 min)

**Critical Skill:** ALWAYS rewrite before differentiating!

**Radicals to Fractional Exponents:**

| Original | Rewritten |
|----------|-----------|
| $\sqrt{x}$ | $x^{1/2}$ |
| $\sqrt[3]{x}$ | $x^{1/3}$ |
| $\sqrt[n]{x}$ | $x^{1/n}$ |

**Example:** Find $\frac{d}{dx}(\sqrt{x})$

$$\frac{d}{dx}(\sqrt{x}) = \frac{d}{dx}(x^{1/2}) = \frac{1}{2}x^{-1/2} = \frac{1}{2\sqrt{x}}$$

**Fractions to Negative Exponents:**

| Original | Rewritten |
|----------|-----------|
| $\frac{1}{x}$ | $x^{-1}$ |
| $\frac{1}{x^2}$ | $x^{-2}$ |
| $\frac{1}{x^n}$ | $x^{-n}$ |

**Example:** Find $\frac{d}{dx}\left(\frac{1}{x^3}\right)$

$$\frac{d}{dx}\left(\frac{1}{x^3}\right) = \frac{d}{dx}(x^{-3}) = -3x^{-4} = -\frac{3}{x^4}$$

**Common Pitfall Alert:** Negative exponent subtraction

For $x^{-3}$: The new exponent is $-3 - 1 = -4$, NOT $-2$!

**Practice:** Differentiate $f(x) = 2\sqrt{x} - \frac{3}{x^2}$

Step 1: Rewrite: $f(x) = 2x^{1/2} - 3x^{-2}$

Step 2: Differentiate: $f'(x) = 2 \cdot \frac{1}{2}x^{-1/2} - 3(-2)x^{-3} = x^{-1/2} + 6x^{-3}$

Step 3: Simplify: $f'(x) = \frac{1}{\sqrt{x}} + \frac{6}{x^3}$

**When Power Rule Does NOT Apply:**

The power rule requires:
- Variable base ($x$)
- CONSTANT exponent ($n$)

**Does NOT work for:**
- $e^x$ (constant base, variable exponent) - NOT a power function!
- $2^x$ (constant base, variable exponent)
- $x^x$ (variable base AND exponent) - requires logarithmic differentiation

### Guided Practice (5 min)

**Independent Practice Problems:**

1. $f(x) = x^7 - 3x^5 + 2x - 8$
   - Answer: $f'(x) = 7x^6 - 15x^4 + 2$

2. $f(x) = \frac{4}{x} + \sqrt[3]{x}$
   - Rewrite: $f(x) = 4x^{-1} + x^{1/3}$
   - Answer: $f'(x) = -4x^{-2} + \frac{1}{3}x^{-2/3} = -\frac{4}{x^2} + \frac{1}{3\sqrt[3]{x^2}}$

3. Find the slope of the tangent line to $y = x^3 - 4x$ at $x = 2$
   - $y' = 3x^2 - 4$
   - $y'(2) = 3(4) - 4 = 8$
   - Answer: Slope = 8

**Verification:** Have one student verify problem 1 using the limit definition for $x^2$ term to show the shortcut works!

### Closing (5 min)

**Summary Table:**

| Rule | Statement |
|------|-----------|
| Power Rule | $\frac{d}{dx}(x^n) = nx^{n-1}$ |
| Constant Rule | $\frac{d}{dx}(c) = 0$ |
| Constant Multiple | $\frac{d}{dx}(cf) = c \cdot f'$ |
| Sum/Difference | $\frac{d}{dx}(f \pm g) = f' \pm g'$ |

**Exit Ticket:**

Differentiate: $f(x) = 4x^3 - 2\sqrt{x} + 5$

Expected answer: $f'(x) = 12x^2 - x^{-1/2} = 12x^2 - \frac{1}{\sqrt{x}}$

**Preview:** "These rules handle polynomial-style functions. Next time: derivatives of trigonometric functions, where new rules are needed."

---

## Differentiation Strategies

### For students who need more support:
- Provide step-by-step template: (1) Rewrite, (2) Apply power rule, (3) Simplify
- Create exponent subtraction practice (especially with negatives)
- Use the verbal mnemonic: "Bring down, subtract one"
- Allow calculator verification of answers
- Pair algebraic work with graphing to see tangent line slopes

### For advanced students:
- Challenge: Prove the power rule using the limit definition and binomial theorem
- Explore: What is $\frac{d}{dx}(x^e)$? What about $\frac{d}{dx}(x^\pi)$?
- Investigate: Find ALL functions $f$ where $f'(x) = f(x)$ (preview of exponentials)
- Research: Why doesn't power rule work for $e^x$?

---

## Common Misconceptions to Address

1. **"Subtract first, then multiply"**
   - Address: The correct order is "bring down (multiply), THEN subtract one." Practice verbally.

2. **"Negative exponent goes positive after subtracting"**
   - Address: For $x^{-4}$, compute $-4 - 1 = -5$. Use a number line visualization.

3. **"Power rule works on $e^x$"**
   - Address: $e^x$ has a constant base and variable exponent. Power rule requires constant exponent. We'll learn the correct rule later.

4. **"The derivative of $\pi^3$ involves $x$"**
   - Address: $\pi^3 \approx 31$ is just a constant number. $\frac{d}{dx}(\pi^3) = 0$.

5. **"$\sqrt{x}$ becomes $\frac{1}{2}\sqrt{x}$"**
   - Address: You MUST rewrite first: $\sqrt{x} = x^{1/2}$, then $\frac{1}{2}x^{-1/2}$, which equals $\frac{1}{2\sqrt{x}}$.

6. **"Constants multiply everything"**
   - Address: For $5x^3 + 2$, the 5 only multiplies the $x^3$ term: $\frac{d}{dx}(5x^3 + 2) = 15x^2$, not $5(3x^2 + 0)$.

7. **"Sum rule means distribute the d/dx across parentheses differently"**
   - Address: Each term differentiates independently. Show: $\frac{d}{dx}(f + g) = f' + g'$, not $\frac{d}{dx}(f + g) = (\frac{d}{dx})(f + g)$.

---

## Assessment Notes

- Monitor rewriting skills (radicals, negative exponents)
- Watch for sign errors with negative exponents
- Exit ticket assesses combined skill: rewriting + differentiating
- Note which students need algebra support vs. calculus support
- Fluency goal: students should differentiate polynomials quickly by end of class

---

## Connections

**Prior knowledge:**
- Derivative definition as a limit (Class 9)
- Differentiability requirements (Class 10)
- Exponent laws: $x^a \cdot x^b = x^{a+b}$, $(x^a)^b = x^{ab}$
- Radical to exponent conversion: $\sqrt[n]{x} = x^{1/n}$
- Negative exponents: $x^{-n} = \frac{1}{x^n}$

**Future connections:**
- Product and quotient rules (Class 12) - when power rule alone isn't enough
- Chain rule (Class 13) - for compositions like $(x^2 + 1)^5$
- Trigonometric derivatives (Class 12) - new rules for sin, cos, etc.
- Exponential derivatives (Class 12) - $\frac{d}{dx}(e^x) = e^x$
- Applications: finding tangent lines, velocity, optimization
- Antiderivatives (Unit 6) - reversing these rules

---

## Notation Notes

**Equivalent expressions for the derivative:**

All of these mean the same thing:
- $f'(x)$ - Lagrange notation
- $\frac{dy}{dx}$ - Leibniz notation (treat as a ratio symbolically)
- $\frac{d}{dx}[f(x)]$ - Operator notation
- $Df(x)$ - Euler notation (less common)

**Reading $\frac{d}{dx}$:**

- "$\frac{d}{dx}$" is an operator meaning "take the derivative with respect to $x$"
- Read "$\frac{d}{dx}(x^3)$" as "the derivative of $x$ cubed with respect to $x$"

Students should be comfortable with all notations as AP problems use them interchangeably.
