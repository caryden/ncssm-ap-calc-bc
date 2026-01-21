# Lesson Plan: Fundamental Theorem of Calculus Part 2

## Class 33 | Unit 6: Integration and Accumulation of Change

---

## Overview

This session delivers the computational power of the Fundamental Theorem. Students will learn that definite integrals can be evaluated by finding any antiderivative and computing F(b) - F(a), eliminating the need for limits of Riemann sums. The net change interpretation connects this theorem to real-world rate problems.

**CED Topic:** 6.7 - The Fundamental Theorem of Calculus and Definite Integrals

---

## Learning Objectives

By the end of this class, students will be able to:

1. State and apply FTC Part 2: $\int_a^b f(x)\,dx = F(b) - F(a)$ where $F' = f$
2. Use evaluation bar notation: $F(x)\big|_a^b$ or $[F(x)]_a^b$
3. Evaluate definite integrals using antiderivatives and FTC Part 2
4. Explain why any antiderivative works (the +C cancels)
5. Interpret $\int_a^b f(x)\,dx$ as the net change in F from a to b

---

## Prior Knowledge Required

- FTC Part 1: $\frac{d}{dx}\left[\int_a^x f(t)\,dt\right] = f(x)$ (Class 32)
- Definition of antiderivative: F is an antiderivative of f if $F' = f$
- Basic antiderivative formulas (power rule, trig, exponential)
- Properties of definite integrals

---

## Materials Needed

- Presentation slides with FTC Part 2 visualization
- D3 dual-graph showing area = height difference
- Graphing calculators
- FTC Part 2 evaluation practice worksheet

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Recall FTC Part 1**

Quick review: What did we discover yesterday?
> The derivative of $\int_a^x f(t)\,dt$ is $f(x)$. This means the accumulation function is an antiderivative of f.

**Today's question:** How does knowing antiderivatives help us actually EVALUATE integrals?

**The payoff:** We're about to eliminate the need for Riemann sum limits entirely!

### Deriving FTC Part 2 (10 min)

**Building from Part 1**

From FTC Part 1, we know: If $F(x) = \int_a^x f(t)\,dt$, then $F'(x) = f(x)$.

This means F is an antiderivative of f.

**Key observations:**
1. $F(a) = \int_a^a f(t)\,dt = 0$ (area from a to a is zero)
2. $F(b) = \int_a^b f(t)\,dt$ (this IS the integral we want!)

**What about other antiderivatives?**

If G is any other antiderivative of f, then $G(x) = F(x) + C$ for some constant C.

Therefore:
$$G(b) - G(a) = [F(b) + C] - [F(a) + C] = F(b) - F(a) = \int_a^b f(t)\,dt$$

The constants cancel!

**The Fundamental Theorem of Calculus, Part 2:**

$$\int_a^b f(x)\,dx = F(b) - F(a) \text{ where } F' = f$$

**In words:** To evaluate a definite integral, find ANY antiderivative, evaluate at the bounds, and subtract.

**3Blue1Brown insight:**
> "The fundamental theorem turns an incredibly difficult problem - adding up infinitely many infinitesimally small quantities - into a simple subtraction problem."

### Evaluation Bar Notation (5 min)

**Notation Options**

All of these mean "F(b) - F(a)":

$$F(x)\Big|_a^b \qquad [F(x)]_a^b \qquad \left.F(x)\right|_{x=a}^{x=b}$$

**The Evaluation Process:**

1. Find an antiderivative F(x)
2. Write $F(x)\big|_a^b$
3. Substitute: $F(b) - F(a)$
4. Compute

**Important:** No +C is needed! The constant cancels in the subtraction.

**Visualization:** Show dual graph with:
- f(x) on bottom with shaded area from a to b
- F(x) on top with points F(a) and F(b) marked
- Vertical distance F(b) - F(a) equals the shaded area

### Worked Examples (15 min)

**Example 1:** Basic Polynomial
$$\int_0^3 2x\,dx = x^2\Big|_0^3 = 3^2 - 0^2 = 9 - 0 = 9$$

**Verification:** Area of triangle with base 3 and height 6 is $\frac{1}{2}(3)(6) = 9$ ✓

**Example 2:** Power Rule
$$\int_1^4 \sqrt{x}\,dx = \int_1^4 x^{1/2}\,dx = \frac{x^{3/2}}{3/2}\Big|_1^4 = \frac{2}{3}x^{3/2}\Big|_1^4$$
$$= \frac{2}{3}(4)^{3/2} - \frac{2}{3}(1)^{3/2} = \frac{2}{3}(8) - \frac{2}{3}(1) = \frac{16}{3} - \frac{2}{3} = \frac{14}{3}$$

**Example 3:** Trigonometric
$$\int_0^\pi \cos(x)\,dx = \sin(x)\Big|_0^\pi = \sin(\pi) - \sin(0) = 0 - 0 = 0$$

**Discussion:** Why is this zero? The positive area from 0 to π/2 cancels the negative area from π/2 to π.

**Example 4:** Exponential
$$\int_0^1 e^x\,dx = e^x\Big|_0^1 = e^1 - e^0 = e - 1$$

**Example 5:** Natural Log
$$\int_1^e \frac{1}{x}\,dx = \ln|x|\Big|_1^e = \ln(e) - \ln(1) = 1 - 0 = 1$$

**Example 6:** Combined
$$\int_0^2 (3x^2 - 4x + 1)\,dx = \left[x^3 - 2x^2 + x\right]_0^2$$
$$= (8 - 8 + 2) - (0 - 0 + 0) = 2 - 0 = 2$$

### Net Change Interpretation (7 min)

**The Big Idea**

If $f = F'$, then:
$$\int_a^b f(x)\,dx = F(b) - F(a) = \text{net change in } F \text{ from } a \text{ to } b$$

**Applications:**

| If f represents... | Then ∫f dx represents... |
|-------------------|-------------------------|
| Velocity | Displacement (change in position) |
| Rate of population growth | Change in population |
| Marginal cost | Change in total cost |
| Rate of temperature change | Change in temperature |
| Flow rate | Total volume |

**Example:** A tank is being filled at a rate of $r(t) = 2t$ gallons per minute. How much water enters from $t = 0$ to $t = 5$ minutes?

$$\int_0^5 2t\,dt = t^2\Big|_0^5 = 25 - 0 = 25 \text{ gallons}$$

**Key insight:** Integrating a rate gives total change.

### Closing (8 min)

**Common Error Prevention:**

1. **Don't write +C** for definite integrals - it cancels!
2. **Don't compute F(b-a)** - evaluate F at b AND at a separately, then subtract
3. **Watch the order:** F(b) - F(a), upper minus lower

**Guided Practice:**

Evaluate: $\int_1^2 (x^3 - 2\sin x + 1)\,dx$

Solution:
$$= \left[\frac{x^4}{4} + 2\cos x + x\right]_1^2$$
$$= \left(\frac{16}{4} + 2\cos 2 + 2\right) - \left(\frac{1}{4} + 2\cos 1 + 1\right)$$
$$= (4 + 2\cos 2 + 2) - (0.25 + 2\cos 1 + 1)$$
$$= 6 + 2\cos 2 - 1.25 - 2\cos 1 = 4.75 + 2\cos 2 - 2\cos 1$$

**Exit Ticket:** Evaluate $\int_0^4 (2x - 3)\,dx$ and interpret if $f(x) = 2x - 3$ represents velocity.

**Preview:** Tomorrow we build our toolkit of antiderivatives with basic integration rules.

---

## Differentiation Strategies

### For students who need more support:
- Provide an antiderivative reference chart
- Practice the evaluation process with simple polynomials first
- Emphasize the "substitute, then subtract" procedure step by step
- Use visual verification with geometric areas when possible
- Create a checklist: (1) Find antiderivative, (2) Evaluate at upper bound, (3) Evaluate at lower bound, (4) Subtract

### For advanced students:
- Explore: Prove that any two antiderivatives differ by a constant
- Challenge: What if F has a discontinuity in [a, b]?
- Connect to physics: Derive kinematic equations using FTC Part 2
- Investigate: Average value of a function using FTC Part 2

---

## Common Misconceptions to Address

1. **"Need +C for definite integrals"**
   - Address: Show explicitly that $[F(x) + C]_a^b = (F(b) + C) - (F(a) + C) = F(b) - F(a)$. The constant cancels, so we omit it.

2. **"F(b) - F(a) is just F(b-a)"**
   - Address: Counterexample: $\int_1^2 x^2\,dx$. Wrong: $(2-1)^2 = 1$. Right: $\frac{8}{3} - \frac{1}{3} = \frac{7}{3}$. Must evaluate F at each bound separately.

3. **"Reverse the subtraction order"**
   - Address: Mnemonic: "Upper minus Lower" or "b - a order." If the integral should be positive (area above axis), check that your answer is positive.

4. **"Forget to distribute the negative"**
   - Address: Common error with trig: $[-\cos x]_0^\pi = -\cos(\pi) - (-\cos(0)) = -(-1) - (-1) = 1 + 1 = 2$. Model careful arithmetic.

5. **"Confuse definite and indefinite integrals"**
   - Address: Definite integral $\int_a^b f\,dx$ gives a NUMBER. Indefinite integral $\int f\,dx$ gives a FUNCTION (family of antiderivatives). Different notation, different results.

---

## Assessment Notes

- Watch for arithmetic errors in evaluation (very common)
- Check proper notation: evaluation bar with correct bounds
- Exit ticket tests both computation and interpretation
- Note students who struggle with antiderivatives vs. those who struggle with evaluation

---

## Connections

**Prior knowledge:**
- FTC Part 1: $\frac{d}{dx}\int_a^x f(t)\,dt = f(x)$ (Class 32)
- Antiderivative concept
- Derivative rules (to reverse for antiderivatives)
- Definite integral as signed area

**Future connections:**
- Antiderivative rules (Class 34)
- Integration techniques (Classes 35-38)
- Applications: area, volume, average value (Unit 8)
- Differential equations solutions (Unit 7)

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Area under f equals vertical distance on F |
| **Numerical** | F(b) - F(a) computed from antiderivative values |
| **Analytical** | $\int_a^b f(x)\,dx = F(b) - F(a)$ where $F' = f$ |
| **Verbal** | "The integral of a rate gives the total change" |

---

## The Evaluation Procedure

**Step-by-Step Process for $\int_a^b f(x)\,dx$:**

1. **Find an antiderivative:** Determine F(x) such that F'(x) = f(x)
2. **Write evaluation notation:** $F(x)\big|_a^b$
3. **Evaluate at upper bound:** Compute F(b)
4. **Evaluate at lower bound:** Compute F(a)
5. **Subtract:** F(b) - F(a)
6. **Simplify:** Compute the numerical result

**Remember:**
- No +C needed (it cancels)
- Upper minus lower
- Evaluate THEN subtract (not subtract then evaluate)
