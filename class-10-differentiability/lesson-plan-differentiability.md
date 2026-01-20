# Lesson Plan: Differentiability and Continuity

## Class 10 | Unit 2: Differentiation Fundamentals

---

## Overview

This session establishes the precise relationship between differentiability and continuity. Students will learn the fundamental theorem that differentiability implies continuity, explore why the converse is false through canonical counterexamples, and develop skills in identifying non-differentiable points from both graphical and algebraic perspectives.

**CED Topic:** 2.4 - Connecting Differentiability and Continuity

---

## Learning Objectives

By the end of this class, students will be able to:

1. State and explain the theorem: differentiability implies continuity
2. Explain why continuity does NOT imply differentiability using counterexamples
3. Identify the four failure modes of differentiability: corners, cusps, vertical tangents, and discontinuities
4. Determine differentiability at a point using left-hand and right-hand derivatives
5. Analyze piecewise functions to find points of non-differentiability

---

## Prior Knowledge Required

- Definition of the derivative as a limit (Class 9)
- Definition of continuity at a point (Unit 1)
- Limit evaluation techniques (Unit 1)
- Absolute value function properties

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators
- Student devices for Desmos exploration
- Failure mode reference cards (optional handout)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Connection to Derivative Definition**

Quick review:
> "Last class we defined the derivative as a limit. Today we ask: Can we ALWAYS find a derivative?"

Display the absolute value function graph.

**Guiding Question:** "At x = 0, what would the slope of the tangent line be? Can you draw a single tangent line there?"

Allow brief discussion. Students should notice the ambiguity at the corner.

### The Theorem: Differentiability Implies Continuity (10 min)

**State the Theorem**

$$\text{If } f \text{ is differentiable at } x = a, \text{ then } f \text{ is continuous at } x = a.$$

**Proof Sketch:**

If $f'(a)$ exists, then:
$$f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a}$$

We can write:
$$f(x) - f(a) = \frac{f(x) - f(a)}{x - a} \cdot (x - a)$$

Taking the limit as $x \to a$:
$$\lim_{x \to a} [f(x) - f(a)] = \lim_{x \to a} \frac{f(x) - f(a)}{x - a} \cdot \lim_{x \to a}(x - a) = f'(a) \cdot 0 = 0$$

Therefore $\lim_{x \to a} f(x) = f(a)$, which is the definition of continuity.

**Key Insight:** Emphasize the DIRECTION of the implication:
- Differentiable $\Rightarrow$ Continuous: TRUE
- Continuous $\Rightarrow$ Differentiable: ???

**Contrapositive:** If $f$ is NOT continuous at $a$, then $f$ is NOT differentiable at $a$.

### Counterexamples: Continuous but NOT Differentiable (15 min)

**The Big Question:** Does continuity imply differentiability?

**The Canonical Counterexample: f(x) = |x| at x = 0**

1. **Show continuity:**
   - $\lim_{x \to 0} |x| = 0 = f(0)$ ✓
   - No breaks, no jumps, continuous everywhere

2. **Check differentiability using left and right derivatives:**

   Left-hand derivative:
   $$f'_-(0) = \lim_{h \to 0^-} \frac{|0 + h| - |0|}{h} = \lim_{h \to 0^-} \frac{|h|}{h} = \lim_{h \to 0^-} \frac{-h}{h} = -1$$

   Right-hand derivative:
   $$f'_+(0) = \lim_{h \to 0^+} \frac{|0 + h| - |0|}{h} = \lim_{h \to 0^+} \frac{|h|}{h} = \lim_{h \to 0^+} \frac{h}{h} = +1$$

3. **Conclusion:** Since $f'_-(0) \neq f'_+(0)$, the derivative does not exist at $x = 0$.

**Interactive Visualization:** Show secant lines approaching from left (slope $\to -1$) and right (slope $\to +1$).

**The Four Failure Modes Gallery:**

| Mode | Example | What Happens |
|------|---------|--------------|
| **Corner** | $f(x) = \|x\|$ at $x = 0$ | Left and right derivatives are finite but different |
| **Cusp** | $f(x) = x^{2/3}$ at $x = 0$ | Derivatives approach $\pm\infty$ from different sides |
| **Vertical Tangent** | $f(x) = x^{1/3}$ at $x = 0$ | Derivatives approach the same $\pm\infty$ |
| **Discontinuity** | Piecewise with jump | Continuity fails, so differentiability fails |

**Key Point:** The first three are continuous but not differentiable. The fourth fails because the prerequisite (continuity) fails.

### Interactive Exploration (10 min)

**D3 Visualization: Differentiability Explorer**

Students explore functions using the interactive tool:
1. Select a function type (corner, cusp, vertical tangent)
2. Observe secant lines approaching from left and right
3. See left and right derivative values displayed
4. Determine if the point is differentiable

**Practice Problems:**

1. Is $f(x) = |x - 2|$ differentiable at $x = 2$? Why or why not?
   - Answer: No, corner at $x = 2$

2. Where is $f(x) = |x^2 - 4|$ not differentiable?
   - Answer: At $x = -2$ and $x = 2$ (corners where $x^2 - 4 = 0$)

3. For the piecewise function:
   $$f(x) = \begin{cases} x^2 & x \leq 1 \\ 2x - 1 & x > 1 \end{cases}$$
   Is $f$ differentiable at $x = 1$?
   - Check continuity: $\lim_{x \to 1^-} x^2 = 1$, $\lim_{x \to 1^+} (2x-1) = 1$, $f(1) = 1$ ✓
   - Left derivative: $2x$ at $x = 1$ gives $2$
   - Right derivative: $2$ (constant)
   - Answer: Yes! Both derivatives equal $2$.

### Application and Assessment (5 min)

**AP-Style Practice:**

"The graph of a function $f$ is shown. At which labeled points is $f$ continuous but NOT differentiable?"

Display a graph with:
- A smooth portion
- A corner at point A
- A cusp at point B
- A vertical tangent at point C
- A jump discontinuity at point D

Students identify: A, B, and C are continuous but not differentiable. D is not even continuous.

### Closing (5 min)

**The Hierarchy Diagram:**

Draw nested sets:
- All functions (outer)
- Continuous functions (middle)
- Differentiable functions (inner)

**Key Takeaway:**
$$\text{Differentiable} \Rightarrow \text{Continuous} \quad \text{but} \quad \text{Continuous} \not\Rightarrow \text{Differentiable}$$

**Exit Ticket:** "Give an example of a function that is continuous at $x = 0$ but not differentiable there, and explain why."

**Preview:** "Now that we know WHEN derivatives exist, we need efficient ways to FIND them. Tomorrow: the Power Rule and basic derivative shortcuts."

---

## Differentiation Strategies

### For students who need more support:
- Focus on the visual "corner test" before algebraic verification
- Use the physical analogy: "Can you trace the graph without lifting your pencil? (continuous) Can you do it without suddenly changing direction? (differentiable)"
- Provide a flowchart: First check continuity, then check left/right derivatives
- Use graphing technology to visualize functions before algebraic analysis

### For advanced students:
- Challenge: Prove the cusp case ($f(x) = x^{2/3}$) is continuous but not differentiable
- Explore: Is there a function that is continuous everywhere but differentiable nowhere? (Weierstrass function)
- Research: What are smooth ($C^\infty$) functions?
- Investigate: When is a piecewise function differentiable at the transition point?

---

## Common Misconceptions to Address

1. **"Continuous means differentiable"**
   - Address: The absolute value function is the perfect counterexample. Continuous (no breaks), but not differentiable (corner)

2. **"The graph must be 'broken' to fail differentiability"**
   - Address: Corners, cusps, and vertical tangents are all unbroken but not differentiable

3. **"Corners are discontinuities"**
   - Address: Trace your finger along $|x|$. You never lift it (continuous), but you do change direction abruptly (not differentiable)

4. **"Vertical tangent means undefined function"**
   - Address: $f(x) = x^{1/3}$ is defined at $x = 0$ ($f(0) = 0$), but the tangent line is vertical (slope is infinite)

5. **"The derivative equals infinity at a cusp"**
   - Address: Distinguish: corners have finite but different one-sided slopes; cusps have infinite slopes from both sides

6. **"If left and right limits exist, the function is differentiable"**
   - Address: The left and right DERIVATIVES must be equal, not just the function limits

---

## Assessment Notes

- Monitor understanding during the |x| analysis (can students compute one-sided derivatives?)
- Check for correct logical reasoning about the theorem direction
- Exit ticket reveals if students can produce their own counterexamples
- Note which students struggle with algebraic verification vs. graphical identification

---

## Connections

**Prior knowledge:**
- Limit definition of the derivative (Class 9)
- One-sided limits (Unit 1)
- Continuity definition and types of discontinuities (Unit 1)
- Absolute value function properties (prerequisite)

**Future connections:**
- Power Rule (Class 11) - applies when differentiability is established
- Implicit differentiation - requires differentiability assumption
- Mean Value Theorem (Unit 5) - requires differentiability on interval
- L'Hopital's Rule - requires differentiable functions
- Optimization problems - derivatives exist at critical points (except endpoints and non-differentiable points)

---

## Notation Notes

**Notation for one-sided derivatives:**
- $f'_-(a)$ or $f'(a^-)$: left-hand derivative at $a$
- $f'_+(a)$ or $f'(a^+)$: right-hand derivative at $a$

**Definition recap:**
- $f'_-(a) = \lim_{h \to 0^-} \frac{f(a+h) - f(a)}{h}$
- $f'_+(a) = \lim_{h \to 0^+} \frac{f(a+h) - f(a)}{h}$

$f'(a)$ exists if and only if $f'_-(a) = f'_+(a)$.
