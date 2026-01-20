# Lesson Plan: Algebraic Properties of Limits

## Class 4 | February 10, 2026 | Unit 1: Limits and Continuity

---

## Overview

This lesson introduces the algebraic properties of limits that allow us to evaluate limits exactly without relying on graphs or tables. Students will learn the limit laws for sums, differences, products, quotients, and powers, and apply these properties to polynomial and rational functions.

**CED Topic:** 1.5 - Determining Limits Using Algebraic Properties of Limits

---

## Learning Objectives

By the end of this class, students will be able to:

1. State and apply the basic limit laws (sum, difference, product, quotient, power)
2. Evaluate limits of polynomial functions by direct substitution
3. Evaluate limits of rational functions when direct substitution works
4. Recognize when direct substitution fails (indeterminate forms)
5. Justify limit calculations using limit properties

---

## Materials Needed

- Presentation slides with D3 visualizations
- Limit Laws reference card
- Practice worksheet
- Exit ticket

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**From Estimation to Certainty**

"We've estimated limits graphically and numerically. Today we'll find them *exactly* using algebra."

Review: What limit did we estimate yesterday?
\[\lim_{x \to 3} \frac{x^2 - 9}{x - 3} \approx 6\]

Today we'll *prove* this answer is exactly 6.

### Core Concept: Limit Laws (15 min)

**The Fundamental Limit Laws**

If \(\lim_{x \to a} f(x) = L\) and \(\lim_{x \to a} g(x) = M\), then:

1. **Constant Law:** \(\lim_{x \to a} c = c\)

2. **Identity Law:** \(\lim_{x \to a} x = a\)

3. **Sum Law:** \(\lim_{x \to a} [f(x) + g(x)] = L + M\)

4. **Difference Law:** \(\lim_{x \to a} [f(x) - g(x)] = L - M\)

5. **Constant Multiple:** \(\lim_{x \to a} [c \cdot f(x)] = c \cdot L\)

6. **Product Law:** \(\lim_{x \to a} [f(x) \cdot g(x)] = L \cdot M\)

7. **Quotient Law:** \(\lim_{x \to a} \frac{f(x)}{g(x)} = \frac{L}{M}\) (if M ≠ 0)

8. **Power Law:** \(\lim_{x \to a} [f(x)]^n = L^n\)

**Key Insight:** These laws let us break complex limits into simple pieces.

### Polynomials: Direct Substitution (10 min)

**The Direct Substitution Property**

For any polynomial p(x):
\[\lim_{x \to a} p(x) = p(a)\]

**Why?** Polynomials are built from constants, x, sums, and products—all operations that preserve limits.

**Examples:**

1. \(\lim_{x \to 2} (3x^2 + 5x - 1) = 3(2)^2 + 5(2) - 1 = 12 + 10 - 1 = 21\)

2. \(\lim_{x \to -1} (x^4 - 2x^2 + 7) = (-1)^4 - 2(-1)^2 + 7 = 1 - 2 + 7 = 6\)

**Guided Practice:** Evaluate \(\lim_{x \to 3} (x^3 - 4x + 2)\)

### Rational Functions: When Direct Substitution Works (10 min)

**For Rational Functions**

If \(r(x) = \frac{p(x)}{q(x)}\) and \(q(a) \neq 0\), then:
\[\lim_{x \to a} r(x) = \frac{p(a)}{q(a)}\]

**Examples:**

1. \(\lim_{x \to 2} \frac{x + 1}{x - 1} = \frac{2 + 1}{2 - 1} = \frac{3}{1} = 3\)

2. \(\lim_{x \to 4} \frac{x^2 - 1}{x + 2} = \frac{16 - 1}{4 + 2} = \frac{15}{6} = \frac{5}{2}\)

**When Does This Fail?**

When \(q(a) = 0\), we get 0/0 or number/0.
- 0/0 is an *indeterminate form* (needs more work)
- number/0 suggests infinite behavior

### The Indeterminate Form 0/0 (8 min)

**What Happens When Both Are Zero?**

\[\lim_{x \to 2} \frac{x^2 - 4}{x - 2}\]

Direct substitution gives: \(\frac{0}{0}\) — STOP! This is indeterminate.

**The 0/0 form tells us:**
- Something interesting is happening
- We need to simplify first
- There may be a "hidden" limit

**Preview:** Tomorrow we'll learn techniques to handle 0/0.

**Important:** 0/0 does NOT mean the limit is 0 or undefined. It means we need more work.

### Closing (2 min)

**Exit Ticket:** Evaluate using limit laws:
\[\lim_{x \to 5} \frac{x^2 - 3x + 2}{x + 1}\]

**Preview:** Tomorrow we'll learn algebraic manipulation techniques for the tricky 0/0 cases.

---

## Differentiation Strategies

### For students who need more support:
- Provide a limit laws reference card
- Start with simpler polynomial examples
- Break each step into explicit law citations

### For advanced students:
- Challenge: Prove the product law using the definition of limit
- Extension: When does \(\lim \frac{f}{g} = \frac{\lim f}{\lim g}\) fail?
- Connect: Why can't we use the quotient law for 0/0?

---

## Common Misconceptions to Address

1. **"0/0 equals 0" or "0/0 equals 1"**
   - Address: 0/0 is indeterminate—it could be any value.

2. **"If the denominator is 0, the limit doesn't exist"**
   - Address: 0/0 forms often have limits; they just need more work.

3. **"I can always just plug in"**
   - Address: Direct substitution only works when the function is defined at a.

4. **"The limit laws are obvious"**
   - Address: They seem obvious but require proof; they're the foundation for all limit work.

---

## Assessment Notes

- Monitor law citation during guided practice
- Exit ticket checks quotient law application
- Note students confused by 0/0 for tomorrow's lesson

---

## Connections

**Prior knowledge:**
- Class 2-3: Graphical and numerical estimation
- Polynomial operations
- Rational expressions

**Future connections:**
- Class 5: Algebraic manipulation for 0/0 forms
- Unit 2: Derivative definition uses limits

---

## Rule of Four Connection

This lesson emphasizes the **Analytical (A)** perspective:
- **Graphically (G):** Previous lessons
- **Numerically (N):** Previous lesson
- **Analytically (A):** Today's algebraic approach
- **Verbally (W):** Stating and explaining limit laws

---

## Reflection Questions (for instructor)

After class, consider:
1. Did students understand when direct substitution applies?
2. How did students react to the 0/0 indeterminate form?
3. Were limit law citations clear and helpful?
4. Are students ready for algebraic manipulation techniques?
