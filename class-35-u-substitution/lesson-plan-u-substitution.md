# Lesson Plan: U-Substitution

## Class 35 | Unit 6: Integration and Accumulation of Change

---

## Overview

This session introduces u-substitution as the "chain rule in reverse." Students will learn to recognize composite function structures in integrands, perform substitution to simplify integrals, and handle both indefinite and definite integrals using this technique. The emphasis is on pattern recognition and complete substitution.

**CED Topic:** 6.9 - Integrating Using Substitution

---

## Learning Objectives

By the end of this class, students will be able to:

1. Explain u-substitution as the reverse of the chain rule
2. Identify appropriate u-substitutions by recognizing composite function structures
3. Perform complete u-substitution: replace all x-expressions with u-expressions
4. Evaluate indefinite integrals using u-substitution with proper back-substitution
5. Evaluate definite integrals using u-substitution (changing bounds or back-substituting)

---

## Prior Knowledge Required

- Basic antiderivative rules (Class 34)
- Chain rule for differentiation: $\frac{d}{dx}[F(g(x))] = F'(g(x)) \cdot g'(x)$
- Composition of functions
- Definite integral evaluation using FTC

---

## Materials Needed

- Presentation slides with u-substitution visualization
- Chain rule reversal diagrams
- U-substitution practice worksheet
- Graphing calculators for verification

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A Problem We Can't Solve (Yet)**

Present: $\int 2x \cdot \cos(x^2)\,dx$

None of our basic rules apply directly:
- It's not just $\cos x$
- It's a product, but not obviously separable
- What should we do?

**The key observation:** This looks like something the chain rule would produce!

If we differentiated $\sin(x^2)$:
$$\frac{d}{dx}[\sin(x^2)] = \cos(x^2) \cdot 2x$$

That's exactly our integrand! So $\int 2x \cdot \cos(x^2)\,dx = \sin(x^2) + C$

**Today:** We systematize this "reverse chain rule" process.

### Why U-Substitution Works (10 min)

**The Chain Rule Connection**

Recall the chain rule: $\frac{d}{dx}[F(g(x))] = F'(g(x)) \cdot g'(x)$

If we let $f = F'$, this becomes: $\frac{d}{dx}[F(g(x))] = f(g(x)) \cdot g'(x)$

**Reversing it:**
$$\int f(g(x)) \cdot g'(x)\,dx = F(g(x)) + C$$

**The Substitution:**
Let $u = g(x)$, then $du = g'(x)\,dx$

The integral transforms:
$$\int f(g(x)) \cdot g'(x)\,dx \to \int f(u)\,du = F(u) + C$$

**The complete process:**
1. Identify $u = g(x)$ (the "inner" function)
2. Compute $du = g'(x)\,dx$
3. Substitute: replace all x-expressions with u-expressions
4. Integrate in terms of u
5. Back-substitute: replace u with $g(x)$

**3Blue1Brown insight:**
> "We're recognizing that a complex-looking integral has a composition structure that the chain rule would create."

### The U-Substitution Procedure (12 min)

**Detailed Steps:**

**Step 1: Identify u**
Look for:
- The "inside" function (in a composition)
- A function whose derivative appears elsewhere in the integrand
- The more complicated factor

**Step 2: Compute du**
Differentiate u with respect to x, multiply by dx:
$$du = \frac{du}{dx} \cdot dx = u'(x)\,dx$$

**Step 3: Solve for dx (or a product)**
Express dx in terms of du, or match products like $x\,dx = \frac{1}{2}du$

**Step 4: Substitute Everything**
ALL x's must become u's before integrating

**Step 5: Integrate**
Now we have $\int f(u)\,du$ which should be easier

**Step 6: Back-Substitute**
Replace u with the original expression $g(x)$

**Step 7: Check**
Differentiate your answer to verify it equals the original integrand

### Worked Examples (15 min)

**Example 1:** Basic U-Substitution
$$\int (2x+1)^5\,dx$$

- Let $u = 2x + 1$
- $du = 2\,dx$, so $dx = \frac{du}{2}$
- $\int u^5 \cdot \frac{du}{2} = \frac{1}{2} \cdot \frac{u^6}{6} + C = \frac{(2x+1)^6}{12} + C$

**Check:** $\frac{d}{dx}\left[\frac{(2x+1)^6}{12}\right] = \frac{6(2x+1)^5 \cdot 2}{12} = (2x+1)^5$ ✓

**Example 2:** Adjusting for Constants
$$\int x \cdot \sqrt{x^2 + 4}\,dx$$

- Let $u = x^2 + 4$
- $du = 2x\,dx$, so $x\,dx = \frac{du}{2}$
- $\int \sqrt{u} \cdot \frac{du}{2} = \frac{1}{2} \cdot \frac{u^{3/2}}{3/2} + C = \frac{1}{3}(x^2+4)^{3/2} + C$

**Example 3:** Exponential
$$\int e^{\sin x} \cdot \cos x\,dx$$

- Let $u = \sin x$
- $du = \cos x\,dx$ (this appears exactly!)
- $\int e^u\,du = e^u + C = e^{\sin x} + C$

**Example 4:** Natural Log Pattern
$$\int \tan x\,dx = \int \frac{\sin x}{\cos x}\,dx$$

- Let $u = \cos x$
- $du = -\sin x\,dx$, so $\sin x\,dx = -du$
- $\int \frac{-du}{u} = -\ln|u| + C = -\ln|\cos x| + C = \ln|\sec x| + C$

**Example 5:** Definite Integral with Bound Change
$$\int_0^1 2x \cdot e^{x^2}\,dx$$

- Let $u = x^2$, $du = 2x\,dx$
- When $x = 0$: $u = 0$
- When $x = 1$: $u = 1$
- $\int_0^1 e^u\,du = e^u\Big|_0^1 = e - 1$

**Example 6:** Definite Integral with Back-Substitution
$$\int_0^2 x(x^2+1)^3\,dx$$

- Let $u = x^2 + 1$, $du = 2x\,dx$, so $x\,dx = \frac{du}{2}$
- $\int u^3 \cdot \frac{du}{2} = \frac{u^4}{8} + C = \frac{(x^2+1)^4}{8} + C$
- Evaluate: $\frac{(4+1)^4}{8} - \frac{(0+1)^4}{8} = \frac{625 - 1}{8} = 78$

### Definite Integrals: Two Approaches (5 min)

**Approach 1: Change the Bounds**
- When substituting $u = g(x)$, convert bounds: $u_{lower} = g(a)$, $u_{upper} = g(b)$
- Integrate entirely in terms of u
- No back-substitution needed

**Approach 2: Back-Substitute First**
- Find the indefinite integral in terms of x
- Then evaluate at the original bounds a and b

**Both give the same answer.** Choose based on convenience.

### Closing (3 min)

**Exit Ticket:**

Evaluate $\int x^2(x^3 - 1)^4\,dx$

**Guidelines for Choosing u:**
1. Look for a function whose derivative appears in the integrand
2. The "inside" of a composite function is often a good choice
3. Choose u so that du (or a constant multiple) is present
4. The goal is to simplify the integral

**Preview:** Tomorrow we learn integration by parts for products that don't fit the substitution pattern.

---

## Differentiation Strategies

### For students who need more support:
- Start with examples where du appears exactly (no coefficient adjustment)
- Practice identifying the "inside function" in compositions
- Use a structured worksheet with spaces for u, du, substitution, and back-substitution
- Always verify by differentiation
- Color-code: highlight u in one color, du in another

### For advanced students:
- Challenge: $\int \frac{1}{x \ln x}\,dx$ (double-nested substitution concept)
- Explore: When does u-substitution NOT work? What patterns require other techniques?
- Challenge: $\int \sqrt{1 - x^2}\,dx$ (trigonometric substitution preview)
- Investigate: Can substitution ever make an integral harder?

---

## Common Misconceptions to Address

1. **"Choose u randomly"**
   - Address: u should be the "inside" function, or a function whose derivative also appears. There's a reason for choosing u - it must simplify the integral.

2. **"Forget to convert dx to du"**
   - Address: dx is NOT just notation! If $u = x^2$, then $du = 2x\,dx$. You must replace dx in terms of du. All x's must become u's.

3. **"Forget to back-substitute"**
   - Address: For indefinite integrals, the final answer must be in terms of the original variable x. Check that no u remains.

4. **"Coefficient errors"**
   - Address: If $du = 2x\,dx$ but you only have $x\,dx$, then $x\,dx = \frac{1}{2}du$. Careful algebra with the constant.

5. **"Change bounds incorrectly"**
   - Address: When $x = a$, compute $u = g(a)$, not $u = a$. The new bounds are u-values, not x-values.

6. **"Try to substitute when not needed"**
   - Address: Some integrals don't need substitution. Recognize when direct integration works.

---

## Assessment Notes

- Monitor u-identification in practice problems
- Check for complete substitution (no mixing of x and u)
- Verify back-substitution for indefinite integrals
- Exit ticket tests the complete procedure

---

## Connections

**Prior knowledge:**
- Chain rule for differentiation (Unit 2)
- Basic antiderivative rules (Class 34)
- Definite integral evaluation with FTC (Class 33)

**Future connections:**
- Integration by parts (Class 36)
- Partial fractions (Class 37)
- Trigonometric substitution (BC extension)
- Differential equations (Unit 7)

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Chain rule structure in composition of functions |
| **Numerical** | Verification by differentiation |
| **Analytical** | $\int f(g(x)) \cdot g'(x)\,dx = F(g(x)) + C$ |
| **Verbal** | "Reverse the chain rule by substituting for the inner function" |

---

## Common U-Substitution Patterns

| Pattern | u = | Result |
|---------|-----|--------|
| $\int [f(x)]^n \cdot f'(x)\,dx$ | $f(x)$ | $\frac{[f(x)]^{n+1}}{n+1} + C$ |
| $\int e^{f(x)} \cdot f'(x)\,dx$ | $f(x)$ | $e^{f(x)} + C$ |
| $\int \frac{f'(x)}{f(x)}\,dx$ | $f(x)$ | $\ln|f(x)| + C$ |
| $\int \sin(f(x)) \cdot f'(x)\,dx$ | $f(x)$ | $-\cos(f(x)) + C$ |
| $\int \cos(f(x)) \cdot f'(x)\,dx$ | $f(x)$ | $\sin(f(x)) + C$ |

**Key:** In each pattern, the derivative of the inner function appears as a factor.
