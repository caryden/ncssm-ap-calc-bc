# Lesson Plan: Fundamental Theorem of Calculus Part 1

## Class 32 | Unit 6: Integration and Accumulation of Change

---

## Overview

This landmark session reveals one of mathematics' most beautiful results: differentiation and integration are inverse operations. Students will understand accumulation functions, discover that the derivative of an accumulation function equals the original function, and learn to apply FTC Part 1 including cases requiring the chain rule. This theorem transforms integration from a limiting process into a practical computational tool.

**CED Topics:** 6.4 - The Fundamental Theorem of Calculus and Accumulation Functions, 6.5 - Interpreting Accumulation Functions Involving Area

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define and interpret the accumulation function $F(x) = \int_a^x f(t)\,dt$
2. State and apply FTC Part 1: $\frac{d}{dx}\left[\int_a^x f(t)\,dt\right] = f(x)$
3. Explain why the derivative of the area function equals the original function (conceptually)
4. Apply FTC Part 1 with the chain rule when the upper bound is a function of x
5. Connect the sign of f(x) to the increasing/decreasing behavior of F(x)

---

## Prior Knowledge Required

- Definite integral notation and interpretation (Class 31)
- Derivative rules including chain rule
- Understanding that derivatives measure rate of change
- Graphical analysis of functions (increasing/decreasing, extrema)

---

## Materials Needed

- Presentation slides with dual-graph F and f visualization
- D3 interactive accumulation function explorer
- Graphing calculators
- FTC Part 1 practice worksheet

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Deep Question**

Pose the mystery:
> "We've learned two seemingly unrelated operations: finding slopes (derivatives) and finding areas (integrals). Finding slopes involves limits of difference quotients. Finding areas involves limits of rectangle sums. Why would these have anything to do with each other?"

**Today's revelation:** These operations are inverses of each other! Differentiation undoes integration, and vice versa.

**Preview:** This connection, the Fundamental Theorem of Calculus, is why calculus is so powerful.

### Building the Accumulation Function (12 min)

**Defining F(x)**

Consider a function $f(t)$ on an interval. Define a new function:
$$F(x) = \int_a^x f(t)\,dt$$

**Interpretation:** $F(x)$ gives the signed area under $f$ from the fixed point $a$ to the variable point $x$.

**Key insight:** This is a function of $x$ - as $x$ changes, the accumulated area changes.

**Physical Example:**
- If $v(t)$ = velocity, then $\int_0^x v(t)\,dt$ = position at time $x$
- The accumulated "velocity × time" gives displacement

**Interactive Visualization:**
1. Display $f(t)$ with shaded region from $a$ to $x$
2. Use slider to change $x$
3. Watch shaded area grow/shrink
4. Plot $F(x)$ values on a second graph as $x$ changes

**Observations from the Visualization:**
- When $f(t) > 0$: F is increasing (adding positive area)
- When $f(t) < 0$: F is decreasing (adding negative area)
- When $f(t) = 0$: F has a horizontal tangent

**Key question:** What is the rate of change of $F(x)$? How fast is area accumulating?

### Discovering FTC Part 1 (10 min)

**The Tiny Rectangle Argument**

Consider: When $x$ increases by a small amount $\Delta x$, how much does $F(x)$ change?

The additional area is approximately a rectangle:
- Width: $\Delta x$
- Height: $f(x)$ (the function value at the right edge)
- Additional area: $\Delta F \approx f(x) \cdot \Delta x$

Therefore:
$$\frac{\Delta F}{\Delta x} \approx f(x)$$

Taking the limit as $\Delta x \to 0$:
$$F'(x) = \lim_{\Delta x \to 0} \frac{\Delta F}{\Delta x} = f(x)$$

**The Fundamental Theorem of Calculus, Part 1:**

$$\frac{d}{dx}\left[\int_a^x f(t)\,dt\right] = f(x)$$

**In words:** The derivative of the area function is the original function!

**Why this is profound (3Blue1Brown insight):**
> "If you want to find an antiderivative of f, look for a function whose derivative is f. The accumulation function is exactly that function."

### Connecting f and F Graphically (8 min)

**The f and F Relationship**

| When f(x)... | F(x)... | Because... |
|--------------|---------|------------|
| f(x) > 0 | F is increasing | Adding positive area |
| f(x) < 0 | F is decreasing | Adding negative area |
| f(x) = 0 | F has a critical point | Rate of accumulation is zero |
| f changes sign | F has local extremum | Accumulation switches direction |

**This is exactly the f and f' relationship from differentiation!**

Show dual-graph visualization:
- Bottom: Graph of $f(t)$
- Top: Graph of $F(x) = \int_0^x f(t)\,dt$
- Highlight: zeros of $f$ align with critical points of $F$
- Highlight: where $f > 0$, $F$ slopes upward

**Student activity:** Given a graph of $f$, sketch the accumulation function $F$.

### FTC Part 1 with Chain Rule (10 min)

**When the Upper Bound is a Function of x**

What if we have $\int_a^{u(x)} f(t)\,dt$ where the upper bound is $u(x)$, not just $x$?

Apply the chain rule:
$$\frac{d}{dx}\left[\int_a^{u(x)} f(t)\,dt\right] = f(u(x)) \cdot u'(x)$$

**Worked Examples:**

**Example 1:** Basic FTC
$$\frac{d}{dx}\left[\int_0^x \cos(t)\,dt\right] = \cos(x)$$

**Example 2:** With Chain Rule
$$\frac{d}{dx}\left[\int_2^{x^3} \sin(t)\,dt\right] = \sin(x^3) \cdot 3x^2$$

**Example 3:** Variable in Lower Bound
$$\frac{d}{dx}\left[\int_x^5 e^t\,dt\right] = \frac{d}{dx}\left[-\int_5^x e^t\,dt\right] = -e^x$$

**Example 4:** Both Bounds Variable
$$\frac{d}{dx}\left[\int_x^{x^2} t^4\,dt\right] = (x^2)^4 \cdot 2x - x^4 \cdot 1 = 2x^9 - x^4$$

**Strategy:** Split into two integrals at a constant, then apply chain rule to each.

### Closing (5 min)

**Exit Ticket:**
1. Find $\frac{d}{dx}\left[\int_2^x (t^2 + 1)\,dt\right]$
2. Find $\frac{d}{dx}\left[\int_0^{x^2} \sqrt{t}\,dt\right]$

**Reflection Question:** Why is it remarkable that finding slopes and finding areas are connected?

**Preview:** Tomorrow we use FTC Part 2 to actually evaluate definite integrals - turning the problem into simple subtraction!

---

## Differentiation Strategies

### For students who need more support:
- Focus on the conceptual "tiny rectangle" argument before formulas
- Practice basic FTC Part 1 (upper bound is just x) extensively before chain rule
- Use the graphical f ↔ F connection to build intuition
- Provide a flowchart: "Is the upper bound just x? If yes, answer is f(x). If no, multiply by the derivative of the upper bound."

### For advanced students:
- Prove FTC Part 1 rigorously using the definition of derivative and properties of integrals
- Explore: What happens if f has a discontinuity in the interval?
- Challenge: Find $\frac{d}{dx}\left[\int_{\sin x}^{\cos x} t^3\,dt\right]$
- Connect to differential equations: If $F' = f$ and $F(a) = 0$, then $F(x) = \int_a^x f(t)\,dt$

---

## Common Misconceptions to Address

1. **"∫ₐˣ f(t)dt is a number, not a function"**
   - Address: When the upper bound is a variable (x), the integral becomes a function of x. The "t" is integrated out, leaving dependence on x through the bounds.

2. **"Can substitute x for t directly"**
   - Address: The variable t is a "dummy variable" that gets integrated out. Students should NOT write $\int_0^x f(x)\,dx$. Use a different letter inside the integral.

3. **"Forget the chain rule"**
   - Address: When the bound is $u(x)$ instead of $x$, we must multiply by $u'(x)$. Practice extensively with chain rule cases.

4. **"Sign error with lower bound"**
   - Address: When x is in the lower bound, use $\int_x^b f(t)\,dt = -\int_b^x f(t)\,dt$ first. The derivative picks up a negative sign.

5. **"F and f are the same thing"**
   - Address: f is the original function (integrand), F is its accumulation function (antiderivative). They play different roles. Be consistent with notation.

---

## Assessment Notes

- Monitor understanding of the "tiny rectangle" conceptual argument
- Check for chain rule errors in examples
- Exit ticket assesses both basic and chain rule applications
- Watch for students confusing the integral variable (t) with the bound variable (x)

---

## Connections

**Prior knowledge:**
- Definite integral notation and meaning (Class 31)
- Derivatives and the chain rule (Unit 2)
- Graphical analysis of f and f'
- Rate of change interpretation

**Future connections:**
- FTC Part 2 for evaluation (Class 33)
- Antiderivatives and indefinite integrals (Class 34)
- Differential equations (Unit 7)
- Applications involving rate functions (Unit 8)

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Dual graphs of f and F, showing increasing/decreasing connection |
| **Numerical** | Table of x-values with corresponding F(x) = accumulated area |
| **Analytical** | $\frac{d}{dx}\left[\int_a^x f(t)\,dt\right] = f(x)$ |
| **Verbal** | "The rate at which area accumulates equals the height of the function" |

---

## The Big Picture

**Why is FTC Part 1 so Important?**

1. **It connects the two main operations of calculus** - differentiation and integration are now revealed as inverse operations.

2. **It guarantees antiderivatives exist** - for any continuous function f, the accumulation function F(x) = ∫ₐˣ f(t)dt is an antiderivative of f.

3. **It bridges geometry and algebra** - the geometric process (finding area) and the algebraic process (finding antiderivatives) are the same thing.

4. **It enables computation** - as we'll see tomorrow, this connection lets us evaluate integrals without computing limits of Riemann sums.
