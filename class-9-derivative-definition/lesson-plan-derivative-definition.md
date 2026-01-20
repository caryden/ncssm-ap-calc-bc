# Lesson Plan: Definition of the Derivative

## Class 9 | Unit 2: Differentiation Fundamentals

---

## Overview

This pivotal session formally introduces the derivative as the limit of the difference quotient. Students will connect the intuitive concept of instantaneous rate of change from Unit 1 to the precise mathematical definition. The focus is on understanding what the derivative represents both geometrically (slope of tangent line) and physically (instantaneous rate of change).

**CED Topic:** 2.1 - Defining Average and Instantaneous Rates of Change at a Point

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define the derivative of a function at a point using the limit definition
2. Interpret the derivative geometrically as the slope of the tangent line
3. Interpret the derivative physically as the instantaneous rate of change
4. Calculate derivatives at specific points using the limit definition
5. Distinguish between average rate of change and instantaneous rate of change

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators
- Student devices for Desmos exploration
- Derivative definition reference cards (optional)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Connection to Limits**

Recall from Unit 1:
> We discovered that as the secant line's second point approaches the first, something special happens. The secant line approaches the tangent line.

Show the interactive secant-to-tangent animation from Class 0/1 as a quick refresher.

**Today's Goal:** We're going to make this idea precise with a formula.

### Core Concept: The Difference Quotient (10 min)

**From Secant to Tangent**

Start with the average rate of change formula:
$$\text{Average Rate of Change} = \frac{f(x+h) - f(x)}{h}$$

**Key Insight:** This is the slope of the secant line between $(x, f(x))$ and $(x+h, f(x+h))$.

Walk through the visualization:
1. Show two points on a curve
2. Draw the secant line between them
3. Label the horizontal distance as $h$
4. Label the vertical distance as $f(x+h) - f(x)$
5. Show how the slope formula emerges

**Discussion:** What happens as $h$ gets smaller? What does it mean for $h \to 0$?

### The Limit Definition of the Derivative (15 min)

**The Definition**

Present the formal definition:
$$f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$$

Break down each part:
- $f'(x)$: "f prime of x" - the derivative of f at x
- $\lim_{h \to 0}$: As h approaches zero...
- $\frac{f(x+h) - f(x)}{h}$: The difference quotient

**Interactive Visualization:** Use the derivative explorer to show:
1. A curve with a point selected
2. A slider controlling $h$
3. The secant line updating in real-time
4. The slope value approaching the derivative as $h \to 0$

**Alternative Form:**
$$f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a}$$

Explain when each form is useful.

### Worked Example: f(x) = x^2 (10 min)

**Step-by-step calculation:**

Find $f'(x)$ for $f(x) = x^2$

1. Write the difference quotient:
   $$\frac{f(x+h) - f(x)}{h} = \frac{(x+h)^2 - x^2}{h}$$

2. Expand the numerator:
   $$= \frac{x^2 + 2xh + h^2 - x^2}{h}$$

3. Simplify:
   $$= \frac{2xh + h^2}{h} = \frac{h(2x + h)}{h}$$

4. Cancel h (valid since $h \neq 0$ in the limit process):
   $$= 2x + h$$

5. Take the limit as $h \to 0$:
   $$f'(x) = \lim_{h \to 0} (2x + h) = 2x$$

**Interpretation:** The slope of the tangent line to $y = x^2$ at any point $x$ is $2x$.

**Verify:** At $x = 1$, the slope is $f'(1) = 2(1) = 2$ (matches our exploration from Class 0!)

### Guided Practice (8 min)

**Practice Problems:**

1. Find $f'(2)$ for $f(x) = x^2$ using the definition
   - Answer: $f'(2) = 4$

2. Find $f'(x)$ for $f(x) = 3x + 1$ using the definition
   - Answer: $f'(x) = 3$ (constant slope - it's a line!)

3. Find $f'(x)$ for $f(x) = x^3$ using the definition
   - Work through the algebra together
   - Answer: $f'(x) = 3x^2$

### Closing (2 min)

**Exit Ticket:** Write the limit definition of the derivative in your own words and draw a diagram showing what each part represents.

**Preview:** Tomorrow we'll see how the derivative itself can be viewed as a function, and we'll explore what the derivative function tells us about the original function.

---

## Differentiation Strategies

### For students who need more support:
- Provide a step-by-step template for derivative calculations
- Pair with stronger students during practice
- Focus on the geometric interpretation first
- Use numerical examples before algebraic generalization

### For advanced students:
- Challenge: Find the derivative of $f(x) = \frac{1}{x}$ using the definition
- Explore: What happens when $f'(x)$ doesn't exist at a point?
- Research: Who invented calculus? Newton vs. Leibniz

---

## Common Misconceptions to Address

1. **"The limit equals h = 0"**
   - Address: We approach 0 but never set h = 0 directly (that would give 0/0)

2. **"The derivative IS the tangent line"**
   - Address: The derivative is the SLOPE of the tangent line, a number (or expression)

3. **"Average and instantaneous rate of change are the same"**
   - Address: Average is over an interval; instantaneous is at a point

4. **"We can just plug in h = 0"**
   - Address: We must simplify algebraically first to eliminate the h in the denominator

---

## Assessment Notes

- Monitor student understanding during the worked example
- Exit ticket provides formative data on conceptual understanding
- Note which students struggle with algebraic manipulation vs. conceptual understanding

---

## Connections

**Prior knowledge:**
- Limit notation and evaluation (Unit 1)
- Slope formula
- Polynomial algebra (expanding, factoring)

**Future connections:**
- Derivative as a function (Class 10)
- Differentiability conditions (Class 11)
- Derivative rules that eliminate the need for limit definition (Classes 12-15)
- Applications: tangent lines, rates of change (Unit 4)

---

## Notation Notes

**Equivalent notations for the derivative:**
- $f'(x)$ - Lagrange notation (most common in AP Calculus)
- $\frac{dy}{dx}$ - Leibniz notation (useful for chain rule, implicit differentiation)
- $\frac{df}{dx}$ - Also Leibniz notation
- $Df(x)$ or $D_x f$ - Euler notation (less common)

Introduce multiple notations so students recognize them on the AP exam.
