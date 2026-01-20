# Lesson Plan: Integration by Parts (BC)

## Class 36 | Unit 6: Integration and Accumulation of Change

---

## Overview

This BC-only session introduces integration by parts as the "product rule in reverse." Students will learn to select u and dv strategically using the LIATE guideline, apply the formula systematically, and handle cases requiring multiple applications or algebraic solving for cyclic integrals. This technique expands the class of integrable functions significantly.

**CED Topic:** 6.11 - Integrating Using Integration by Parts (BC Only)

---

## Learning Objectives

By the end of this class, students will be able to:

1. Derive the integration by parts formula from the product rule
2. Apply the LIATE guideline to choose u and dv strategically
3. Execute the integration by parts procedure: $\int u\,dv = uv - \int v\,du$
4. Recognize when multiple applications of IBP are needed
5. Solve cyclic integrals algebraically when IBP returns to the original

---

## Prior Knowledge Required

- U-substitution (Class 35)
- Product rule for differentiation: $(uv)' = u'v + uv'$
- Basic antiderivative rules
- Algebraic manipulation skills

---

## Materials Needed

- Presentation slides with IBP derivation
- LIATE reference chart
- Tabular integration demonstration
- IBP practice worksheet

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A Product We Can't Substitute**

Present: $\int x \cdot e^x\,dx$

Try u-substitution:
- If $u = x$, then $du = dx$, but $e^x\,dx$ doesn't become a simple du
- If $u = e^x$, then $du = e^x\,dx$, but we can't get rid of the x

Neither choice works! We need a new technique.

**Today:** Integration by parts - the product rule running backwards.

### Deriving the Formula (8 min)

**Start with the Product Rule**

$$\frac{d}{dx}[uv] = u\frac{dv}{dx} + v\frac{du}{dx}$$

Multiply by dx:
$$d(uv) = u\,dv + v\,du$$

Rearrange:
$$u\,dv = d(uv) - v\,du$$

Integrate both sides:
$$\int u\,dv = uv - \int v\,du$$

**The Integration by Parts Formula:**

$$\boxed{\int u\,dv = uv - \int v\,du}$$

**The Trade:** We exchange the integral $\int u\,dv$ for a different integral $\int v\,du$.

**Success criterion:** The new integral should be easier than the original!

**3Blue1Brown insight:**
> "The whole point is to replace an integral we can't do with one we can. We're shifting difficulty from one factor to another."

### The LIATE Guideline (7 min)

**Choosing u and dv**

You pick **u** (the factor to differentiate) and **dv** (the factor to integrate).
Then you compute **du** (derivative of u) and **v** (antiderivative of dv).

**LIATE Priority for Choosing u:**

Choose u from the highest priority category present:

| Priority | Category | Examples |
|----------|----------|----------|
| 1 | **L**ogarithmic | $\ln x$, $\log x$ |
| 2 | **I**nverse Trigonometric | $\arctan x$, $\arcsin x$ |
| 3 | **A**lgebraic | $x$, $x^2$, polynomials |
| 4 | **T**rigonometric | $\sin x$, $\cos x$ |
| 5 | **E**xponential | $e^x$, $2^x$ |

The remaining factor becomes dv.

**Why this order?**
- L and I functions become simpler when differentiated
- E and T functions stay manageable when integrated
- A functions (polynomials) reduce degree when differentiated

**Important:** LIATE is a guideline, not a strict rule. The goal is making $\int v\,du$ easier.

### The IBP Procedure (5 min)

**Step-by-Step:**

1. **Identify the product** $\int f(x) \cdot g(x)\,dx$
2. **Choose u and dv** using LIATE
3. **Compute du and v:**
   - $du = u'\,dx$
   - $v = \int dv$
4. **Apply the formula:** $\int u\,dv = uv - \int v\,du$
5. **Evaluate the new integral** (may need basic rules, substitution, or more IBP)
6. **Verify by differentiation**

**Common Setup Format:**
$$\begin{array}{ll}
u = \_ & dv = \_ \\
du = \_ & v = \_
\end{array}$$

### Worked Examples (15 min)

**Example 1:** Basic IBP
$$\int x \cdot e^x\,dx$$

LIATE: x is Algebraic, $e^x$ is Exponential. A > E, so $u = x$.

$$\begin{array}{ll}
u = x & dv = e^x\,dx \\
du = dx & v = e^x
\end{array}$$

$$\int x \cdot e^x\,dx = x \cdot e^x - \int e^x\,dx = xe^x - e^x + C$$

**Check:** $\frac{d}{dx}[xe^x - e^x] = e^x + xe^x - e^x = xe^x$ ✓

**Example 2:** Logarithm (Must Be u)
$$\int \ln x\,dx = \int 1 \cdot \ln x\,dx$$

LIATE: $\ln x$ is Logarithmic (highest priority), 1 is Algebraic.

$$\begin{array}{ll}
u = \ln x & dv = dx \\
du = \frac{1}{x}dx & v = x
\end{array}$$

$$\int \ln x\,dx = x\ln x - \int x \cdot \frac{1}{x}\,dx = x\ln x - \int 1\,dx = x\ln x - x + C$$

**Example 3:** Multiple Applications
$$\int x^2 \cos x\,dx$$

First IBP: $u = x^2$, $dv = \cos x\,dx$
$$= x^2 \sin x - \int 2x \sin x\,dx$$

Second IBP on $\int 2x \sin x\,dx$: $u = 2x$, $dv = \sin x\,dx$
$$= x^2 \sin x - \left[-2x\cos x - \int -2\cos x\,dx\right]$$
$$= x^2 \sin x + 2x\cos x - 2\sin x + C$$

**Example 4:** Cyclic Integral
$$\int e^x \cos x\,dx$$

First IBP: $u = e^x$, $dv = \cos x\,dx$
$$= e^x \sin x - \int e^x \sin x\,dx$$

Second IBP on $\int e^x \sin x\,dx$: $u = e^x$, $dv = \sin x\,dx$
$$= e^x \sin x - \left[-e^x \cos x - \int -e^x \cos x\,dx\right]$$
$$= e^x \sin x + e^x \cos x - \int e^x \cos x\,dx$$

**We got back to the original integral!** Let $I = \int e^x \cos x\,dx$:
$$I = e^x \sin x + e^x \cos x - I$$
$$2I = e^x(\sin x + \cos x)$$
$$I = \frac{e^x(\sin x + \cos x)}{2} + C$$

### Tabular Method Preview (3 min)

For repeated IBP with polynomials times exp/trig, use a table:

$\int x^3 e^x\,dx$:

| D (u derivatives) | I (dv integrals) | Sign |
|-------------------|------------------|------|
| $x^3$ | $e^x$ | + |
| $3x^2$ | $e^x$ | - |
| $6x$ | $e^x$ | + |
| $6$ | $e^x$ | - |
| $0$ | $e^x$ | + |

Result: $x^3 e^x - 3x^2 e^x + 6xe^x - 6e^x + C$

### Closing (7 min)

**Guided Practice:**

Evaluate $\int x \sin x\,dx$

Solution:
- $u = x$, $dv = \sin x\,dx$
- $du = dx$, $v = -\cos x$
- $= -x\cos x - \int -\cos x\,dx = -x\cos x + \sin x + C$

**Exit Ticket:**

Set up (don't fully evaluate) the integration by parts for $\int x^2 e^{2x}\,dx$.
- Identify u, dv, du, v
- Write the first application of the formula

**Preview:** Tomorrow we learn partial fractions for integrating rational functions.

---

## Differentiation Strategies

### For students who need more support:
- Always write the u/dv/du/v setup box
- Practice LIATE categorization separately before combining with IBP
- Start with single-application problems before multiple applications
- Provide a flowchart for the IBP procedure
- Verify every answer by differentiation

### For advanced students:
- Derive the reduction formula: $\int x^n e^x\,dx$
- Explore: $\int \sec^3 x\,dx$ (involves cyclic resolution with substitution)
- Investigate: When would you NOT follow LIATE?
- Challenge: $\int e^x \sin(2x)\,dx$ with cyclic resolution

---

## Common Misconceptions to Address

1. **"Choose u and v directly"**
   - Address: You choose u and dv. Then you COMPUTE du (by differentiating u) and v (by integrating dv). The v comes from integration, not direct choice.

2. **"LIATE is a strict rule"**
   - Address: LIATE is a guideline. The real goal is making $\int v\,du$ easier. Sometimes breaking LIATE is appropriate.

3. **"Forget the minus sign"**
   - Address: The formula is $uv - \int v\,du$. The MINUS sign is crucial. Emphasize this consistently.

4. **"Stop after one application"**
   - Address: Some integrals need IBP twice, three times, or more. Keep going until you can evaluate the resulting integral.

5. **"Give up on cyclic integrals"**
   - Address: When you return to the original integral, call it I, set up the equation, and solve algebraically. This is a feature, not a bug!

6. **"Can't integrate dv"**
   - Address: dv must be something you CAN integrate! If you can't find v, reconsider your choice of u and dv.

---

## Assessment Notes

- Check correct identification of u and dv using LIATE
- Verify proper computation of du and v
- Monitor sign handling in the formula
- Exit ticket assesses setup (the hardest part)

---

## Connections

**Prior knowledge:**
- Product rule for differentiation (Unit 2)
- U-substitution (Class 35)
- Basic antiderivatives (Class 34)

**Future connections:**
- Partial fractions (Class 37)
- Differential equations involving products (Unit 7)
- Arc length and surface area integrals (Unit 8)
- Series solutions (Unit 10)

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Product rule structure in differentiation |
| **Numerical** | Verification by differentiation |
| **Analytical** | $\int u\,dv = uv - \int v\,du$ |
| **Verbal** | "Trade one integral for an easier one by reversing the product rule" |

---

## IBP Quick Reference

**The Formula:**
$$\int u\,dv = uv - \int v\,du$$

**LIATE Priority (for choosing u):**
1. Logarithmic
2. Inverse Trigonometric
3. Algebraic (polynomials)
4. Trigonometric
5. Exponential

**Common Integrals Requiring IBP:**
- $\int x e^x\,dx$
- $\int x \sin x\,dx$, $\int x \cos x\,dx$
- $\int \ln x\,dx$
- $\int \arctan x\,dx$, $\int \arcsin x\,dx$
- $\int e^x \sin x\,dx$, $\int e^x \cos x\,dx$ (cyclic)
- $\int x^n e^x\,dx$ (repeated)
- $\int x^n \sin x\,dx$, $\int x^n \cos x\,dx$ (repeated)
