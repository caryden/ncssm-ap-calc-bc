# Lesson Plan: Algebraic Manipulation for Limits

## Class 5 | February 11, 2026 | Unit 1: Limits and Continuity

---

## Overview

This lesson teaches students algebraic techniques for evaluating limits that produce the indeterminate form 0/0. Students will learn to use factoring, expanding, and rationalizing to simplify expressions before applying direct substitution.

**CED Topic:** 1.6 - Determining Limits Using Algebraic Manipulation

---

## Learning Objectives

By the end of this class, students will be able to:

1. Recognize when algebraic manipulation is needed (0/0 form)
2. Use factoring to simplify rational expressions and evaluate limits
3. Use conjugate multiplication (rationalizing) to evaluate limits with radicals
4. Combine multiple techniques to evaluate complex limits
5. Select appropriate strategies based on the form of the expression

---

## Materials Needed

- Presentation slides with D3 visualizations
- Practice worksheet with varied problem types
- Exit ticket

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Problem We Couldn't Solve**

Return to yesterday's unsolved limit:
\[\lim_{x \to 2} \frac{x^2 - 4}{x - 2}\]

Direct substitution gave 0/0. Today we'll fix it.

**Key Insight:** Factor the numerator: \(x^2 - 4 = (x-2)(x+2)\)

### Core Technique 1: Factoring (15 min)

**The Factoring Method**

When 0/0 occurs, both numerator and denominator share a common factor containing (x - a). Cancel it!

**Example 1:** \(\lim_{x \to 2} \frac{x^2 - 4}{x - 2}\)

1. Factor: \(\frac{(x-2)(x+2)}{x-2}\)
2. Cancel: \(x + 2\) (when x ≠ 2)
3. Substitute: \(2 + 2 = 4\)

**Important:** Cancellation is valid because the limit concerns x *approaching* 2, not x *equal to* 2.

**Example 2:** \(\lim_{x \to 3} \frac{x^2 - 9}{x - 3}\)

1. Factor: \(\frac{(x-3)(x+3)}{x-3}\)
2. Cancel: \(x + 3\)
3. Substitute: \(3 + 3 = 6\)

**Example 3:** \(\lim_{x \to -1} \frac{x^2 + 3x + 2}{x + 1}\)

1. Factor numerator: \(x^2 + 3x + 2 = (x+1)(x+2)\)
2. Cancel: \(\frac{(x+1)(x+2)}{x+1} = x + 2\)
3. Substitute: \(-1 + 2 = 1\)

### Core Technique 2: Rationalizing (15 min)

**The Conjugate Method**

When the expression involves square roots and 0/0 occurs, multiply by the conjugate.

**The Conjugate:** For \(\sqrt{a} - b\), the conjugate is \(\sqrt{a} + b\)

**Example 4:** \(\lim_{x \to 0} \frac{\sqrt{x+4} - 2}{x}\)

1. Check: Direct substitution gives \(\frac{2-2}{0} = \frac{0}{0}\)
2. Multiply by conjugate: \(\frac{\sqrt{x+4} - 2}{x} \cdot \frac{\sqrt{x+4} + 2}{\sqrt{x+4} + 2}\)
3. Simplify numerator: \((\sqrt{x+4})^2 - 4 = x + 4 - 4 = x\)
4. Result: \(\frac{x}{x(\sqrt{x+4} + 2)} = \frac{1}{\sqrt{x+4} + 2}\)
5. Substitute x = 0: \(\frac{1}{2 + 2} = \frac{1}{4}\)

**Example 5:** \(\lim_{x \to 9} \frac{\sqrt{x} - 3}{x - 9}\)

1. Multiply by conjugate: \(\frac{\sqrt{x} - 3}{x - 9} \cdot \frac{\sqrt{x} + 3}{\sqrt{x} + 3}\)
2. Numerator: \(x - 9\)
3. Result: \(\frac{x - 9}{(x-9)(\sqrt{x} + 3)} = \frac{1}{\sqrt{x} + 3}\)
4. Substitute: \(\frac{1}{3 + 3} = \frac{1}{6}\)

### Guided Practice (10 min)

Students work in pairs on:

1. \(\lim_{x \to 4} \frac{x^2 - 16}{x - 4}\) (Factoring)

2. \(\lim_{x \to 1} \frac{x^3 - 1}{x - 1}\) (Factoring sum of cubes)

3. \(\lim_{h \to 0} \frac{\sqrt{9+h} - 3}{h}\) (Rationalizing)

### Strategy Selection (3 min)

**How to Choose Your Technique:**

- **Polynomial fraction?** Try factoring
- **Square roots involved?** Try rationalizing
- **Complex fractions?** Simplify by multiplying
- **Still stuck?** Try expanding, combining fractions

### Closing (2 min)

**Exit Ticket:** Evaluate \(\lim_{x \to 5} \frac{x^2 - 25}{x - 5}\)

**Preview:** Next class we'll explore the Squeeze Theorem for limits we can't evaluate directly.

---

## Differentiation Strategies

### For students who need more support:
- Provide a factoring patterns reference sheet
- Break conjugate multiplication into more explicit steps
- Start with simpler factoring before complex patterns

### For advanced students:
- Challenge: \(\lim_{x \to 0} \frac{\sqrt{1+x} - \sqrt{1-x}}{x}\)
- Extension: When might rationalizing not work?
- Connect: Why does factoring work for 0/0?

---

## Common Misconceptions to Address

1. **"I can cancel the zeros"**
   - Address: We're canceling the factors (x - a), not the zeros themselves.

2. **"The function equals the simplified form"**
   - Address: They're equal everywhere *except* at x = a. The limit doesn't require equality at a.

3. **"Conjugate means opposite sign"**
   - Address: Conjugate changes only the sign between terms, keeping everything else the same.

4. **"Multiply by 1 changes nothing"**
   - Address: Right! That's why conjugate/conjugate works—it's just a clever form of 1.

---

## Assessment Notes

- Monitor factoring technique during guided practice
- Note students struggling with radical manipulation
- Exit ticket checks basic factoring application

---

## Connections

**Prior knowledge:**
- Class 4: Limit laws and direct substitution
- Factoring polynomials (prerequisite algebra)
- Conjugates from complex numbers or rationalization

**Future connections:**
- Class 6: Squeeze Theorem for more complex limits
- Unit 2: Derivative definition requires these techniques

---

## Key Factoring Patterns to Review

1. **Difference of squares:** \(a^2 - b^2 = (a-b)(a+b)\)
2. **Sum/difference of cubes:**
   - \(a^3 - b^3 = (a-b)(a^2 + ab + b^2)\)
   - \(a^3 + b^3 = (a+b)(a^2 - ab + b^2)\)
3. **Quadratic trinomial:** \(x^2 + bx + c = (x + m)(x + n)\) where mn = c, m + n = b

---

## Reflection Questions (for instructor)

After class, consider:
1. Did students recognize when to factor vs. rationalize?
2. Were conjugate multiplications executed correctly?
3. Is additional factoring review needed?
4. Are students ready for Squeeze Theorem?
