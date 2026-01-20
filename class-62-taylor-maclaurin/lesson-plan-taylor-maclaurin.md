# Lesson Plan: Taylor and Maclaurin Series

## Class 62 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This session extends Taylor polynomials to infinite Taylor series and establishes the essential Maclaurin series that students must know. Students will understand that a Taylor series represents a function as an infinite polynomial (when it converges), and learn to derive new series from known ones using substitution, differentiation, and integration. These manipulation techniques are more efficient than computing derivatives from scratch and are essential for AP exam success.

**CED Topic:** 10.14 - Finding Taylor or Maclaurin Series for a Function

---

## Learning Objectives

By the end of this class, students will be able to:

1. Extend Taylor polynomials to infinite Taylor series
2. State the Maclaurin series for $e^x$, $\sin(x)$, $\cos(x)$, $1/(1-x)$, and $\ln(1+x)$
3. Generate new series from known series using substitution
4. Apply term-by-term differentiation and integration to find series
5. Recognize when series manipulation is more efficient than direct computation

---

## Materials Needed

- Presentation slides with D3 visualizations (series convergence explorer)
- Essential Maclaurin series reference card (to be memorized)
- Graphing calculators
- Student devices for Desmos exploration

---

## Class Structure (50 minutes)

### Opening (5 min)

**Recall:** Taylor polynomial $P_n(x)$ approximates $f(x)$ using $n$ derivatives.

**Question:** What happens if we let $n \to \infty$?

**Preview:** The Taylor series—an infinite polynomial that might EQUAL $f(x)$, not just approximate it.

### From Polynomial to Series (8 min)

**The Transition**

Taylor polynomial: $P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x-a)^k$

Taylor series: $\sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n$

Same formula, but the sum goes to infinity.

**The Convergence Questions**

Two separate questions:
1. Does the series converge for a given $x$?
2. If it converges, does it converge to $f(x)$?

For "nice" functions (analytic functions like $e^x$, $\sin$, $\cos$, polynomials), the answer to both is YES within the interval of convergence.

**Taylor's Theorem (Intuition)**

If $f$ is infinitely differentiable and the remainder $R_n(x) \to 0$ as $n \to \infty$, then:
$$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n$$

The function equals its Taylor series!

### The Essential Maclaurin Series (15 min)

**Students must memorize these series (they appear on the AP formula sheet for reference):**

**Series 1: $e^x$**

All derivatives of $e^x$ equal $e^x$, and $e^0 = 1$.

$$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots$$

Converges for all $x \in (-\infty, \infty)$.

**Series 2: $\sin(x)$**

Derivatives at 0 cycle: $0, 1, 0, -1, 0, 1, \ldots$

$$\sin(x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \cdots$$

Only odd powers (sine is odd). Converges for all $x \in (-\infty, \infty)$.

**Series 3: $\cos(x)$**

Derivatives at 0 cycle: $1, 0, -1, 0, 1, \ldots$

$$\cos(x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \cdots$$

Only even powers (cosine is even). Converges for all $x \in (-\infty, \infty)$.

**Series 4: $\frac{1}{1-x}$ (Geometric Series)**

$$\frac{1}{1-x} = \sum_{n=0}^{\infty} x^n = 1 + x + x^2 + x^3 + \cdots$$

Converges for $|x| < 1$ (this IS the geometric series!).

**Series 5: $\ln(1+x)$**

Obtained by integrating $\frac{1}{1+x}$:

$$\ln(1+x) = \sum_{n=1}^{\infty} \frac{(-1)^{n+1} x^n}{n} = x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \cdots$$

Converges for $-1 < x \leq 1$.

**Series 6 (Bonus): $\arctan(x)$**

$$\arctan(x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{2n+1} = x - \frac{x^3}{3} + \frac{x^5}{5} - \cdots$$

Converges for $-1 \leq x \leq 1$.

### Manipulating Series (12 min)

**Why Manipulate?**

Computing all derivatives of a new function can be tedious. Often, it's MUCH faster to start with a known series and modify it.

**Strategy 1: Substitution**

Replace $x$ with an expression.

**Example:** Find the Maclaurin series for $e^{-x^2}$.

Start with: $e^x = \sum \frac{x^n}{n!}$

Replace $x$ with $-x^2$:
$$e^{-x^2} = \sum_{n=0}^{\infty} \frac{(-x^2)^n}{n!} = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!}$$

$$= 1 - x^2 + \frac{x^4}{2!} - \frac{x^6}{3!} + \cdots$$

**Strategy 2: Differentiation**

Differentiate term by term (valid inside interval of convergence).

**Example:** Find series for $\frac{1}{(1-x)^2}$.

Start with: $\frac{1}{1-x} = \sum x^n$

Differentiate both sides:
$$\frac{d}{dx}\left[\frac{1}{1-x}\right] = \frac{1}{(1-x)^2}$$
$$\frac{d}{dx}\left[\sum x^n\right] = \sum nx^{n-1} = 1 + 2x + 3x^2 + 4x^3 + \cdots$$

So: $\frac{1}{(1-x)^2} = \sum_{n=1}^{\infty} nx^{n-1} = \sum_{n=0}^{\infty} (n+1)x^n$

**Strategy 3: Integration**

Integrate term by term (valid inside interval of convergence).

**Example:** Derive $\ln(1+x)$ from $\frac{1}{1+x}$.

Start with: $\frac{1}{1+x} = \frac{1}{1-(-x)} = \sum (-x)^n = \sum (-1)^n x^n$

Integrate both sides:
$$\int \frac{1}{1+x}\,dx = \ln(1+x) + C$$
$$\int \sum (-1)^n x^n\,dx = \sum (-1)^n \frac{x^{n+1}}{n+1} + C$$

At $x = 0$: $\ln(1) = 0$, so $C = 0$.

$$\ln(1+x) = \sum_{n=0}^{\infty} \frac{(-1)^n x^{n+1}}{n+1} = x - \frac{x^2}{2} + \frac{x^3}{3} - \cdots$$

**Strategy 4: Multiplication**

Multiply series by powers of $x$.

**Example:** Find series for $x \cdot e^x$.

$x \cdot e^x = x \cdot \sum \frac{x^n}{n!} = \sum \frac{x^{n+1}}{n!}$

### Worked Examples (5 min)

**Example 1:** Maclaurin series for $x^2 \cos(x)$

$\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \cdots$

$x^2 \cos(x) = x^2 - \frac{x^4}{2!} + \frac{x^6}{4!} - \frac{x^8}{6!} + \cdots$

**Example 2:** Series for $\frac{1}{1+x^2}$

$\frac{1}{1-x} = \sum x^n$ for $|x| < 1$

Replace $x$ with $-x^2$:
$\frac{1}{1+x^2} = \sum (-x^2)^n = \sum (-1)^n x^{2n} = 1 - x^2 + x^4 - x^6 + \cdots$

Converges for $|x| < 1$.

### Closing (5 min)

**Summary: Essential Series**

| Function | Series | Interval |
|----------|--------|----------|
| $e^x$ | $\sum x^n/n!$ | $(-\infty, \infty)$ |
| $\sin(x)$ | $\sum (-1)^n x^{2n+1}/(2n+1)!$ | $(-\infty, \infty)$ |
| $\cos(x)$ | $\sum (-1)^n x^{2n}/(2n)!$ | $(-\infty, \infty)$ |
| $1/(1-x)$ | $\sum x^n$ | $(-1, 1)$ |
| $\ln(1+x)$ | $\sum (-1)^{n+1} x^n/n$ | $(-1, 1]$ |

**Manipulation Strategies:**
1. Substitution: Replace $x$ with expression
2. Differentiation: Term by term
3. Integration: Term by term (find $C$)
4. Multiplication: By powers of $x$

**Exit Ticket:**
1. Write the first four nonzero terms of the Maclaurin series for $e^{2x}$.
2. Find the Maclaurin series for $x \sin(x)$.
3. Use the series for $1/(1-x)$ to find a series for $1/(1+x^2)$.

---

## Differentiation Strategies

### For students who need more support:
- Create flashcards for the essential series
- Practice substitution with simple replacements ($x \to 2x$) before complex ones ($x \to -x^2$)
- Verify series by checking first few terms against direct computation
- Focus on pattern recognition in series notation

### For advanced students:
- Derive the series for $\arcsin(x)$ using integration
- Explore: Euler's formula $e^{ix} = \cos(x) + i\sin(x)$ using series
- Challenge: Find the Maclaurin series for $\tan(x)$ (requires division of series)
- Research: Generating functions and their applications in combinatorics

---

## Common Misconceptions to Address

1. **"Taylor series always equals the function"**
   - Address: The series must converge, AND converge to $f(x)$. Some functions (like $f(x) = e^{-1/x^2}$ for $x \neq 0$, $f(0) = 0$) have Taylor series that converge to a different function.

2. **"Series converges for all $x$"**
   - Address: Different series have different intervals. $1/(1-x)$ series only works for $|x| < 1$; $e^x$ series works for all $x$.

3. **"Differentiation changes convergence interval"**
   - Address: Interior of interval stays same. Only endpoints might change.

4. **"Must derive every series from scratch"**
   - Address: Manipulation is MUCH faster. On AP exam, recognizing when to substitute is a key skill.

5. **"Forgetting integration constant"**
   - Address: When integrating series, determine $C$ using initial condition (often $f(0)$).

---

## Assessment Notes

- Check memorization of essential series (give quiz or quick recall)
- Verify substitution technique—students often make sign errors
- Monitor differentiation/integration of series notation
- Ensure students can verify series by checking specific values

---

## Connections

**Prior knowledge:**
- Taylor polynomials (Class 61)
- Geometric series (Class 56)
- Integration techniques (Unit 6)

**Future connections:**
- Radius and interval of convergence (Class 63)
- Error bounds (Class 63)
- Applications: approximating integrals, solving differential equations
- Physics: many phenomena are modeled using series expansions

---

## AP Exam Notes

**What's on the Formula Sheet:**

The AP exam provides Maclaurin series for $\sin(x)$, $\cos(x)$, $e^x$, and $\ln(1+x)$.

**But students must know:**
- How to USE these series (substitution, manipulation)
- The geometric series $1/(1-x)$
- How to find new series from given ones

**Common Question Types:**
1. "Write the first four nonzero terms and the general term"
2. "Use the series for ___ to find a series for ___"
3. "Find the series by differentiating/integrating a known series"

**Example AP Prompt:**

"The Maclaurin series for $e^x$ is $\sum_{n=0}^{\infty} \frac{x^n}{n!}$. Write the first four nonzero terms of the Maclaurin series for $e^{-x^2}$ and the general term."

Answer: $1 - x^2 + \frac{x^4}{2} - \frac{x^6}{6} + \cdots$; General term: $\frac{(-1)^n x^{2n}}{n!}$
