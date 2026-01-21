# Lesson Plan: Power Series and Error Bounds

## Class 63 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This capstone session for Unit 10 addresses three interconnected topics: power series convergence (radius and interval), the alternating series error bound, and the Lagrange error bound. Students will learn to determine where a power series converges using the ratio test, how to test endpoints separately, and how to bound the error when using Taylor polynomials as approximations. These error bounds are essential for answering "how many terms do I need?" questions that appear frequently on the AP exam.

**CED Topics:** 10.10 - Alternating Series Error Bound; 10.12 - Radius and Interval of Convergence of Power Series; 10.13 - Lagrange Error Bound

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define power series and determine radius of convergence using the ratio test
2. Test convergence at endpoints to find the complete interval of convergence
3. Apply the alternating series error bound to estimate accuracy
4. Apply the Lagrange error bound for general Taylor polynomial approximations
5. Determine the number of terms needed to achieve a specified accuracy

---

## Materials Needed

- Presentation slides with D3 visualizations (interval of convergence visualizer)
- Graphing calculators
- Student devices for Desmos exploration
- Error bound reference sheet
- Convergence test summary chart (complete)

---

## Class Structure (50 minutes)

### Opening (5 min)

**Recall:** We've built Taylor series for various functions.

**Questions:**
1. For what values of $x$ does a given series converge?
2. If we use a finite approximation, how accurate is it?

**Today's Goal:** Answer both questions with precision.

### Power Series and Radius of Convergence (15 min)

**Power Series Definition**

A power series centered at $a$ has the form:
$$\sum_{n=0}^{\infty} c_n(x-a)^n = c_0 + c_1(x-a) + c_2(x-a)^2 + \cdots$$

The coefficients $c_n$ are constants; $x$ is the variable.

**Three Convergence Possibilities:**

1. Converges only at $x = a$ (radius $R = 0$)
2. Converges for all $x$ (radius $R = \infty$)
3. Converges for $|x-a| < R$, diverges for $|x-a| > R$ (finite $R$)

**Finding R Using the Ratio Test**

For $\sum c_n(x-a)^n$, apply ratio test:
$$L = \lim_{n \to \infty} \left|\frac{c_{n+1}(x-a)^{n+1}}{c_n(x-a)^n}\right| = |x-a| \cdot \lim_{n \to \infty}\left|\frac{c_{n+1}}{c_n}\right|$$

Series converges when $L < 1$:
$$|x-a| < \frac{1}{\lim|c_{n+1}/c_n|} = R$$

**Example 1: $\sum \frac{x^n}{n!}$ (exponential series)**

$\left|\frac{a_{n+1}}{a_n}\right| = \frac{|x|^{n+1}/(n+1)!}{|x|^n/n!} = \frac{|x|}{n+1}$

$L = \lim \frac{|x|}{n+1} = 0$ for any $x$

$L < 1$ for ALL $x$, so $R = \infty$.

**Example 2: $\sum n! \cdot x^n$**

$\left|\frac{a_{n+1}}{a_n}\right| = \frac{(n+1)!|x|^{n+1}}{n!|x|^n} = (n+1)|x|$

$L = \lim (n+1)|x| = \infty$ for any $x \neq 0$

$L < 1$ only when $x = 0$, so $R = 0$.

**Example 3: $\sum \frac{x^n}{n}$**

$\left|\frac{a_{n+1}}{a_n}\right| = \frac{|x|^{n+1}/(n+1)}{|x|^n/n} = |x| \cdot \frac{n}{n+1}$

$L = |x| \cdot 1 = |x|$

$L < 1$ when $|x| < 1$, so $R = 1$.

**Endpoint Testing (Critical!)**

The ratio test is inconclusive at $x = a \pm R$. Must test each endpoint separately with other tests.

For $\sum \frac{x^n}{n}$ with $R = 1$:
- At $x = 1$: $\sum \frac{1}{n}$ = harmonic series → **Diverges**
- At $x = -1$: $\sum \frac{(-1)^n}{n}$ = alternating harmonic → **Converges** (AST)

**Interval of Convergence: $[-1, 1)$**

### Alternating Series Error Bound (8 min)

**The Bound**

For an alternating series $\sum (-1)^n b_n$ that satisfies the AST:
$$|S - S_n| \leq b_{n+1}$$

The error after $n$ terms is at most the absolute value of the $(n+1)$th term.

**Why It Works**

Partial sums oscillate around the true value. Each step overshoots by less than the step size.

**Example: Approximate $\ln 2$**

$\ln 2 = \sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots$

To find $\ln 2$ within 0.01 accuracy:
- Need $b_{n+1} = \frac{1}{n+1} < 0.01$
- So $n+1 > 100$, meaning $n \geq 100$
- Use $S_{100}$ for error < 0.01

**Example: Approximate $\cos(1)$**

$\cos(1) = 1 - \frac{1}{2!} + \frac{1}{4!} - \frac{1}{6!} + \cdots$

To find $\cos(1)$ within 0.0001:
- Terms: $1, 0.5, 0.0417, 0.00139, 0.0000248...$
- $b_5 = 1/6! \approx 0.00139 > 0.0001$
- $b_6 = 1/8! \approx 0.0000248 < 0.0001$
- Use 5 terms (through $1/8!$) for error < 0.0001

### Lagrange Error Bound (12 min)

**The Bound**

For Taylor polynomial $P_n(x)$ of $f$ centered at $a$:
$$|R_n(x)| = |f(x) - P_n(x)| \leq \frac{M \cdot |x-a|^{n+1}}{(n+1)!}$$

where $M = \max|f^{(n+1)}(t)|$ for $t$ between $a$ and $x$.

**When to Use**

- When alternating series bound doesn't apply
- When series is not alternating
- When you need guaranteed accuracy

**Key Challenge: Finding M**

$M$ must bound $|f^{(n+1)}(t)|$ for ALL $t$ between $a$ and $x$, not just at $a$.

**Example 1: Error in $e^x$ approximation**

Approximate $e^{0.5}$ using $P_4(x)$ centered at 0.

- $f(x) = e^x$, so $f^{(5)}(x) = e^x$
- For $t \in [0, 0.5]$: max of $e^t$ is at $t = 0.5$
- $M = e^{0.5} \approx 1.65$ (or use $M = 2$ for easier bound)
- $|R_4(0.5)| \leq \frac{2 \cdot (0.5)^5}{5!} = \frac{2 \cdot 0.03125}{120} \approx 0.00052$

So $P_4(0.5)$ approximates $e^{0.5}$ within 0.00052.

**Example 2: How many terms for $\sin(1)$?**

How many terms of the Maclaurin series needed for $\sin(1)$ within 0.0001?

- $f(x) = \sin(x)$; all derivatives bounded by 1
- $M = 1$ works for any $n$
- Need: $\frac{1 \cdot 1^{n+1}}{(n+1)!} < 0.0001$
- $(n+1)! > 10000$
- $7! = 5040 < 10000$
- $8! = 40320 > 10000$ ✓
- So $n+1 = 8$, meaning $n = 7$: use $P_7(x)$

**Comparing the Bounds**

| Bound | When to Use | Formula | Notes |
|-------|-------------|---------|-------|
| Alternating | Series alternates, AST applies | $|S - S_n| \leq b_{n+1}$ | Usually tighter |
| Lagrange | General case | $|R_n| \leq \frac{M|x-a|^{n+1}}{(n+1)!}$ | Must find $M$ |

For alternating series, the alternating bound is usually MUCH simpler and tighter.

### Integration Application (5 min)

**Example: Approximate $\int_0^1 e^{-x^2}\,dx$ within 0.001**

Step 1: Find series
$e^{-x^2} = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{n!} = 1 - x^2 + \frac{x^4}{2!} - \frac{x^6}{3!} + \cdots$

Step 2: Integrate term by term
$\int_0^1 e^{-x^2}\,dx = \left[x - \frac{x^3}{3} + \frac{x^5}{5 \cdot 2!} - \frac{x^7}{7 \cdot 3!} + \cdots\right]_0^1$
$= 1 - \frac{1}{3} + \frac{1}{10} - \frac{1}{42} + \frac{1}{216} - \cdots$

Step 3: This is alternating! Use alternating bound.
- Need next term < 0.001
- $\frac{1}{(2n+1) \cdot n!}$: at $n=5$, term $= \frac{1}{11 \cdot 120} \approx 0.00076 < 0.001$ ✓

Step 4: Sum first 5 terms
$\approx 1 - 0.333 + 0.1 - 0.024 + 0.0046 \approx 0.747$

### Closing (5 min)

**Summary**

| Concept | Key Formula/Method |
|---------|-------------------|
| Radius of convergence | $R = 1/\lim|c_{n+1}/c_n|$ via ratio test |
| Interval of convergence | $(a-R, a+R)$ plus endpoint testing |
| Alternating error | $|S - S_n| \leq b_{n+1}$ |
| Lagrange error | $|R_n| \leq M|x-a|^{n+1}/(n+1)!$ |

**Decision Guide:**
1. For interval: ratio test for $R$, test endpoints separately
2. For error: Alternating? Use alternating bound. Otherwise: Lagrange.

**Exit Ticket:**
1. Find the radius and interval of convergence for $\sum \frac{(x-2)^n}{n^2}$.
2. How many terms of $\sum \frac{(-1)^n}{(2n+1)!}$ give $\sin(1)$ within 0.0001?
3. Use Lagrange: Bound the error when approximating $\cos(0.2)$ with $P_4(x)$ at $a = 0$.

---

## Differentiation Strategies

### For students who need more support:
- Create a clear decision tree: ratio test → find $R$ → test endpoints
- Provide step-by-step templates for each error bound
- Practice recognizing alternating series before computing bounds
- Focus on common functions where $M$ is easy ($\sin, \cos$: $M = 1$)

### For advanced students:
- Explore: Root test as alternative for finding $R$
- Derive: Why does Lagrange error bound have $(n+1)!$ in denominator?
- Challenge: Find the exact value of $\sum_{n=1}^{\infty} \frac{1}{n^2}$ (leads to $\pi^2/6$)
- Research: How GPS uses Taylor series for position calculations

---

## Common Misconceptions to Address

1. **"Radius = interval"**
   - Address: $R$ is a number (distance from center). Interval is $(a-R, a+R)$ with endpoints tested. Related but different.

2. **"Endpoints always behave the same"**
   - Address: Each endpoint must be tested SEPARATELY. One might converge, the other diverge.

3. **"Error bound equals the error"**
   - Address: Bound is an UPPER BOUND. True error is usually much smaller.

4. **"M is $f^{(n+1)}(a)$"**
   - Address: $M$ must bound $|f^{(n+1)}(t)|$ for ALL $t$ between $a$ and $x$. Not just at $a$.

5. **"Alternating bound always applies"**
   - Address: Only for series meeting AST conditions. Non-alternating series need Lagrange.

---

## Assessment Notes

- Verify students can execute the full interval of convergence procedure
- Check that endpoint testing uses appropriate series tests
- Watch for finding $M$ correctly in Lagrange bound
- Ensure students choose the appropriate error bound for each situation

---

## Connections

**Prior knowledge:**
- All convergence tests (Classes 55-60)
- Taylor series construction (Classes 61-62)
- Alternating series test (Class 59)
- Ratio test (Class 59)

**Future connections:**
- AP exam free response (frequent series questions)
- Numerical methods in future math/science courses
- Computational applications in physics and engineering
- Foundation for real analysis (for those continuing in mathematics)

---

## AP Exam Notes

**Interval of Convergence (Free Response Standard):**

Full credit requires:
1. Correct $R$ from ratio test (show work)
2. Both endpoints tested with work shown
3. Correct interval notation (parentheses vs brackets)

**Error Bound Questions:**

Common formats:
- "Show that the approximation is within ε of the actual value"
- "Find the least number of terms needed for accuracy within ε"
- "Use the Lagrange error bound to justify..."

**Scoring Notes:**
- Must identify which bound applies and why
- Show computation of the bound
- State conclusion clearly

**Formula Sheet Reminder:**

The AP formula sheet includes:
- Maclaurin series for $\sin x, \cos x, e^x, \ln(1+x)$
- Lagrange error bound formula

Students should focus on APPLICATION, not memorization.
