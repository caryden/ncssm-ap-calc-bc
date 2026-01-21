# Lesson Plan: Partial Fractions (BC)

## Class 37 | Unit 6: Integration and Accumulation of Change

---

## Overview

This BC-only session teaches partial fraction decomposition as a technique for integrating rational functions. Students will learn to decompose fractions with linear factors (distinct and repeated), find unknown constants using strategic substitution or coefficient matching, and integrate the resulting simple fractions. The focus is on linear factors only, as quadratic factors are not tested on the AP exam.

**CED Topic:** 6.12 - Integrating Using Linear Partial Fractions (BC Only)

---

## Learning Objectives

By the end of this class, students will be able to:

1. Recognize when partial fraction decomposition applies (proper rational function with factorable denominator)
2. Set up the correct decomposition form for distinct and repeated linear factors
3. Solve for unknown constants using substitution or coefficient matching
4. Integrate each partial fraction term to obtain logarithmic and power functions
5. Apply long division when the rational function is improper

---

## Prior Knowledge Required

- Integration by parts (Class 36)
- Factoring polynomials (difference of squares, grouping)
- The integral $\int \frac{1}{x}\,dx = \ln|x| + C$
- Polynomial long division
- Solving systems of linear equations

---

## Materials Needed

- Presentation slides with decomposition templates
- Partial fraction procedure flowchart
- Polynomial long division review
- Practice worksheet with varied denominator types

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A Rational Function We Can't Integrate Directly**

Present: $\int \frac{2x + 3}{x^2 + 3x + 2}\,dx$

- U-substitution doesn't work (the numerator isn't the derivative of the denominator)
- Integration by parts doesn't apply (no obvious product structure)

**The key insight:** What if we could break this into simpler fractions?

Notice: $\frac{1}{x+1} + \frac{1}{x+2} = \frac{(x+2) + (x+1)}{(x+1)(x+2)} = \frac{2x+3}{x^2+3x+2}$

So: $\int \frac{2x+3}{x^2+3x+2}\,dx = \int \frac{1}{x+1}\,dx + \int \frac{1}{x+2}\,dx = \ln|x+1| + \ln|x+2| + C$

**Today:** Learn to systematically "un-add" fractions.

### Motivating Partial Fractions (8 min)

**The Reverse of Adding Fractions**

When we add fractions, we combine them:
$$\frac{1}{x-1} + \frac{1}{x+1} = \frac{(x+1) + (x-1)}{(x-1)(x+1)} = \frac{2x}{x^2-1}$$

**Partial fractions reverses this:** Given $\frac{2x}{x^2-1}$, find the original simpler pieces.

**Why it helps integration:**
- $\int \frac{2x}{x^2-1}\,dx$ is not immediately obvious
- $\int \frac{1}{x-1}\,dx + \int \frac{1}{x+1}\,dx$ is easy: $\ln|x-1| + \ln|x+1| + C$

**Key Integration Result:**
$$\int \frac{A}{x-a}\,dx = A\ln|x-a| + C$$

### The Partial Fractions Algorithm (12 min)

**Prerequisites:**

1. **Must be proper:** degree(numerator) < degree(denominator)
   - If not, use long division first
2. **Denominator must be factored:** Factor completely into linear factors

**Decomposition Forms for Linear Factors:**

| Denominator Factor | Decomposition Terms |
|-------------------|---------------------|
| Distinct linear: $(x-a)(x-b)$ | $\frac{A}{x-a} + \frac{B}{x-b}$ |
| Repeated linear: $(x-a)^2$ | $\frac{A}{x-a} + \frac{B}{(x-a)^2}$ |
| Repeated linear: $(x-a)^3$ | $\frac{A}{x-a} + \frac{B}{(x-a)^2} + \frac{C}{(x-a)^3}$ |
| Mixed: $(x-a)(x-b)^2$ | $\frac{A}{x-a} + \frac{B}{x-b} + \frac{C}{(x-b)^2}$ |

**Key Rule:** For a repeated factor $(x-a)^n$, include n terms with denominators $(x-a)^1, (x-a)^2, \ldots, (x-a)^n$.

**Finding the Constants:**

**Method 1: Strategic Substitution**
- Multiply both sides by the common denominator
- Substitute x-values that make factors zero
- Each substitution typically gives one constant directly

**Method 2: Coefficient Matching**
- Expand and collect like terms
- Match coefficients of each power of x
- Solve the resulting system of equations

### Worked Examples (15 min)

**Example 1:** Distinct Linear Factors
$$\int \frac{1}{x^2-1}\,dx = \int \frac{1}{(x-1)(x+1)}\,dx$$

**Decomposition:** $\frac{1}{(x-1)(x+1)} = \frac{A}{x-1} + \frac{B}{x+1}$

**Multiply by $(x-1)(x+1)$:**
$$1 = A(x+1) + B(x-1)$$

**Substitute $x = 1$:** $1 = A(2) + B(0) \Rightarrow A = \frac{1}{2}$

**Substitute $x = -1$:** $1 = A(0) + B(-2) \Rightarrow B = -\frac{1}{2}$

**Integrate:**
$$\int \frac{1}{x^2-1}\,dx = \int \frac{1/2}{x-1}\,dx + \int \frac{-1/2}{x+1}\,dx = \frac{1}{2}\ln|x-1| - \frac{1}{2}\ln|x+1| + C$$

**Example 2:** Three Distinct Factors
$$\int \frac{5x - 4}{(x-2)(x+1)}\,dx$$

**Decomposition:** $\frac{5x-4}{(x-2)(x+1)} = \frac{A}{x-2} + \frac{B}{x+1}$

**Multiply by $(x-2)(x+1)$:**
$$5x - 4 = A(x+1) + B(x-2)$$

**Substitute $x = 2$:** $10 - 4 = A(3) \Rightarrow A = 2$

**Substitute $x = -1$:** $-5 - 4 = B(-3) \Rightarrow B = 3$

**Integrate:**
$$\int \frac{5x-4}{(x-2)(x+1)}\,dx = 2\ln|x-2| + 3\ln|x+1| + C$$

**Example 3:** Repeated Linear Factor
$$\int \frac{x+3}{x^2(x+1)}\,dx$$

**Decomposition:** $\frac{x+3}{x^2(x+1)} = \frac{A}{x} + \frac{B}{x^2} + \frac{C}{x+1}$

**Multiply by $x^2(x+1)$:**
$$x + 3 = Ax(x+1) + B(x+1) + Cx^2$$

**Substitute $x = 0$:** $3 = B(1) \Rightarrow B = 3$

**Substitute $x = -1$:** $2 = C(1) \Rightarrow C = 2$

**Match $x^2$ coefficients:** $0 = A + C \Rightarrow A = -2$

**Integrate:**
$$\int \frac{x+3}{x^2(x+1)}\,dx = -2\ln|x| - \frac{3}{x} + 2\ln|x+1| + C$$

Note: $\int \frac{3}{x^2}\,dx = -\frac{3}{x} + C$

**Example 4:** Improper Fraction
$$\int \frac{x^2 + 1}{x^2 - 1}\,dx$$

**Check degrees:** numerator degree (2) = denominator degree (2). NOT proper!

**Long division:**
$$\frac{x^2 + 1}{x^2 - 1} = 1 + \frac{2}{x^2-1}$$

**Now integrate:**
$$\int 1\,dx + \int \frac{2}{x^2-1}\,dx = x + \ln|x-1| - \ln|x+1| + C$$

(Using the result from Example 1 with coefficient 2)

### Practice (7 min)

**Set up the decomposition (don't solve completely):**

1. $\frac{3x}{(x-1)(x+2)^2}$

   Answer: $\frac{A}{x-1} + \frac{B}{x+2} + \frac{C}{(x+2)^2}$

2. $\frac{2x+5}{x^2-4}$

   Answer: Factor first: $x^2-4 = (x-2)(x+2)$, then $\frac{A}{x-2} + \frac{B}{x+2}$

### Closing (3 min)

**Exit Ticket:**

Set up the partial fraction decomposition for $\frac{x-1}{(x+1)(x-3)}$ and find the constants A and B.

**Key Reminders:**
1. Factor the denominator completely
2. Repeated factors need multiple terms
3. Check if proper - use long division if needed
4. Verify by recombining fractions

**Preview:** Tomorrow we complete Unit 6 with improper integrals.

---

## Differentiation Strategies

### For students who need more support:
- Review factoring techniques before the lesson
- Provide decomposition templates for common denominator types
- Practice finding constants with simpler examples (two factors only)
- Use coefficient matching as a check after strategic substitution
- Work through the algebra slowly with clear organization

### For advanced students:
- Explore: What changes with irreducible quadratic factors? (not on AP BC)
- Challenge: Integrate $\int \frac{1}{x^4-1}\,dx$ (four factors)
- Investigate: When is coefficient matching more efficient than substitution?
- Derive: Show that two distinct linear factors always decompose

---

## Common Misconceptions to Address

1. **"Forget to factor completely"**
   - Address: $x^2 - 1$ must become $(x-1)(x+1)$. Partial fractions requires complete factorization. Review factoring skills.

2. **"Wrong form for repeated factors"**
   - Address: $(x-1)^2$ needs TWO terms: $\frac{A}{x-1} + \frac{B}{(x-1)^2}$, not just $\frac{A}{(x-1)^2}$. Drill this template.

3. **"Improper fractions"**
   - Address: If degree(numerator) $\geq$ degree(denominator), must do long division first. The remainder is what gets decomposed.

4. **"Integration errors with constants"**
   - Address: $\int \frac{A}{x-a}\,dx = A\ln|x-a| + C$. The constant A stays as coefficient of ln.

5. **"Missing absolute values"**
   - Address: $\int \frac{1}{x-a}\,dx = \ln|x-a| + C$. Always include absolute value in logarithms.

6. **"Arithmetic errors in finding constants"**
   - Address: Use both substitution AND coefficient matching to verify. Careful arithmetic is essential.

---

## Assessment Notes

- Monitor correct setup of decomposition templates
- Check for proper handling of repeated factors
- Verify final integration includes ln with absolute values
- Exit ticket tests both setup and solving for constants

---

## Connections

**Prior knowledge:**
- Factoring polynomials (pre-calculus)
- Integration by parts (Class 36)
- The integral $\int \frac{1}{x}\,dx = \ln|x| + C$
- Polynomial long division

**Future connections:**
- Improper integrals (Class 38)
- Differential equations (Unit 7)
- Series and convergence (Unit 10)

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Rational function as sum of simpler curves |
| **Numerical** | Verification by recombining fractions |
| **Analytical** | $\frac{P(x)}{Q(x)} = \frac{A}{x-a} + \frac{B}{x-b} + \ldots$ |
| **Verbal** | "Un-add fractions to get pieces we can integrate" |

---

## Partial Fractions Procedure Summary

**Step 1: Check Proper**
- If degree(numerator) $\geq$ degree(denominator), do long division first
- Apply partial fractions to the remainder

**Step 2: Factor Denominator**
- Factor completely into linear factors

**Step 3: Set Up Decomposition**
- Distinct factor $(x-a)$: one term $\frac{A}{x-a}$
- Repeated factor $(x-a)^n$: n terms $\frac{A_1}{x-a} + \frac{A_2}{(x-a)^2} + \ldots + \frac{A_n}{(x-a)^n}$

**Step 4: Find Constants**
- Multiply both sides by common denominator
- Use strategic substitution (set factors to zero)
- Use coefficient matching if needed

**Step 5: Integrate**
- $\int \frac{A}{x-a}\,dx = A\ln|x-a| + C$
- $\int \frac{A}{(x-a)^n}\,dx = \frac{A}{(1-n)(x-a)^{n-1}} + C$ for $n > 1$

**Step 6: Verify**
- Recombine partial fractions to check equality
- Or differentiate the answer to verify
