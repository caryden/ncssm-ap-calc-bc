# Lesson Plan: Introduction to Related Rates

## Class 21 | Unit 4: Contextual Applications of Differentiation

---

## Overview

This session introduces related rates problems, where multiple quantities change with respect to time and are connected by a geometric or physical equation. Students will learn the systematic four-step method for solving these problems and practice with classic introductory examples involving expanding circles and spheres. The emphasis is on understanding the setup process and avoiding the critical error of substituting values before differentiating.

**CED Topic:** 4.4 - Introduction to Related Rates

---

## Learning Objectives

By the end of this class, students will be able to:

1. Identify related rates problems and the quantities involved
2. Apply the four-step method: Draw, Write equation, Differentiate, Substitute
3. Use implicit differentiation with respect to time
4. Correctly apply the chain rule when differentiating with respect to t
5. Solve basic related rates problems involving expanding/contracting shapes
6. Explain why values must be substituted AFTER differentiating

---

## Prior Knowledge Required

- Implicit differentiation (Class 16)
- Chain rule (Class 14)
- Interpreting derivatives in context (Class 19)
- Formulas for area and volume of basic shapes

---

## Materials Needed

- Presentation slides with animated diagrams
- Graphing calculators
- Related rates problem handout
- Student devices for Desmos exploration (optional)
- Four-step method reference cards
- Exit ticket slips

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Rippling Pond**

Present this scenario:
> A pebble is dropped into a still pond, creating circular ripples. The radius of the outer ripple is expanding at 2 cm/s. How fast is the area of the circle growing when the radius is 5 cm?

**Discussion:**
- What quantities are changing? (radius r and area A)
- Are they changing at the same rate? (No!)
- How are they related? (By the area formula: $A = \pi r^2$)

This is a **related rates** problem: two rates (dr/dt and dA/dt) are connected through an equation.

### The Concept of Related Rates (8 min)

**What Are Related Rates Problems?**

- Multiple quantities that all change with respect to time
- A geometric or physical equation connects these quantities
- We use calculus to relate their RATES of change

**Key Insight:**

Even though variables like r, A, V aren't explicitly written as functions of time, they ARE implicitly functions of t. So when we differentiate, we must use the chain rule.

**Example Setup:**
- Circle with radius r that changes over time
- Area $A = \pi r^2$
- Both A and r are functions of t (time)
- We want to relate dA/dt to dr/dt

**Differentiating with respect to t:**

$$\frac{d}{dt}[A] = \frac{d}{dt}[\pi r^2]$$

$$\frac{dA}{dt} = 2\pi r \cdot \frac{dr}{dt}$$

The $\frac{dr}{dt}$ appears because of the chain rule - r is a function of t!

### The Four-Step Method (12 min)

**Step 1: Draw and Label**
- Sketch the situation
- Label ALL changing quantities with variables
- Identify what's given (known rates) and what's asked (unknown rate)

**Step 2: Write an Equation Relating the Quantities**
- Find a formula connecting the variables
- Use geometry, physics, or other relationships
- **CRITICAL: DO NOT substitute specific numbers yet!**

**Step 3: Differentiate with Respect to Time**
- Apply implicit differentiation with respect to t
- Use the chain rule for every variable: $\frac{d}{dt}[f(x)] = f'(x) \cdot \frac{dx}{dt}$
- This creates an equation involving the rates

**Step 4: Substitute and Solve**
- NOW plug in the given values for that specific moment
- Solve for the unknown rate

**Why This Order Matters:**

**WRONG approach (common error):**
- If r = 5, then $A = \pi(5)^2 = 25\pi$
- Differentiating: $\frac{dA}{dt} = 0$ (treated A as constant!)

**RIGHT approach:**
- Keep equation general: $A = \pi r^2$
- Differentiate: $\frac{dA}{dt} = 2\pi r \cdot \frac{dr}{dt}$
- THEN substitute r = 5 and dr/dt = 2

### Worked Examples (12 min)

**Example 1: Expanding Circle (Complete Solution)**

A circular oil spill is expanding. The radius increases at 2 cm/s. How fast is the area increasing when the radius is 5 cm?

**Step 1: Draw and label**
- Circle with radius r
- Given: $\frac{dr}{dt} = 2$ cm/s
- Find: $\frac{dA}{dt}$ when r = 5 cm

**Step 2: Write equation**
$$A = \pi r^2$$

**Step 3: Differentiate with respect to t**
$$\frac{dA}{dt} = 2\pi r \cdot \frac{dr}{dt}$$

**Step 4: Substitute and solve**
$$\frac{dA}{dt} = 2\pi (5)(2) = 20\pi \text{ cm}^2/\text{s}$$

**Answer:** The area is increasing at $20\pi$ cm²/s (approximately 62.8 cm²/s).

**Example 2: Expanding Sphere**

A balloon is being inflated. The radius increases at 3 cm/s. How fast is the volume increasing when the radius is 10 cm?

**Step 1:**
- Sphere with radius r
- Given: $\frac{dr}{dt} = 3$ cm/s
- Find: $\frac{dV}{dt}$ when r = 10 cm

**Step 2:**
$$V = \frac{4}{3}\pi r^3$$

**Step 3:**
$$\frac{dV}{dt} = 4\pi r^2 \cdot \frac{dr}{dt}$$

**Step 4:**
$$\frac{dV}{dt} = 4\pi (10)^2(3) = 1200\pi \text{ cm}^3/\text{s}$$

**Answer:** The volume is increasing at $1200\pi$ cm³/s.

**Example 3: Setup Only (Filling Cone)**

Water is poured into a conical tank at 2 m³/min. The tank has height 6 m and radius 3 m at the top. How fast is the water level rising when the depth is 2 m?

**Step 1:**
- Cone with height h and radius r at water surface
- Given: $\frac{dV}{dt} = 2$ m³/min
- Find: $\frac{dh}{dt}$ when h = 2 m

**Step 2:** Volume of cone: $V = \frac{1}{3}\pi r^2 h$

**Problem:** We have TWO variables (r and h). We need to eliminate one!

**Key insight:** By similar triangles, $\frac{r}{h} = \frac{3}{6} = \frac{1}{2}$, so $r = \frac{h}{2}$

**Substitute to get one variable:**
$$V = \frac{1}{3}\pi \left(\frac{h}{2}\right)^2 h = \frac{\pi h^3}{12}$$

**Step 3:** Differentiate:
$$\frac{dV}{dt} = \frac{\pi h^2}{4} \cdot \frac{dh}{dt}$$

**Step 4:** (Students complete for practice)

### Guided Practice (8 min)

**Practice Problem 1:**

A spherical snowball is melting. Its radius decreases at 0.5 cm/min. How fast is the volume decreasing when the radius is 4 cm?

*Students work individually, then compare with neighbors.*

**Solution:**
- $V = \frac{4}{3}\pi r^3$
- $\frac{dV}{dt} = 4\pi r^2 \cdot \frac{dr}{dt} = 4\pi(16)(-0.5) = -32\pi$ cm³/min
- The volume is decreasing at $32\pi$ cm³/min.

**Practice Problem 2 (Setup only):**

The edge of a cube is increasing at 2 cm/s. How fast is the surface area changing when the edge is 5 cm?

*Students write the equation and differentiate. Solution to be completed for homework.*

### Closing (5 min)

**Summary:**
- Related rates connect rates of change through an equation
- Four-step method: Draw → Equation → Differentiate → Substitute
- **NEVER substitute values before differentiating** (most common error!)
- Chain rule is essential: every variable is a function of t

**Exit Ticket:**
Write the setup (Steps 1-3 only) for this problem:
> A circular puddle is evaporating. The radius is decreasing at 0.2 cm/min. Find how fast the area is decreasing when r = 10 cm.

**Preview:** Tomorrow we tackle more complex related rates with Pythagorean theorem, similar triangles, and trigonometry.

---

## Differentiation Strategies

### For students who need more support:
- Provide four-step method cards as a reference
- Start with identical worked examples before variations
- Practice chain rule in isolation: $\frac{d}{dt}[x^2] = 2x \cdot \frac{dx}{dt}$
- Use color coding: one color for known rates, another for unknown

### For advanced students:
- Challenge: Can you have a situation where $\frac{dA}{dt}$ is constant even though $\frac{dr}{dt}$ is constant? (No - explore why)
- Explore: Set up (don't solve) a problem with three related rates
- Research: Where do related rates appear in physics and engineering?

---

## Common Misconceptions to Address

1. **"Substitute values before differentiating"**
   - Address: This is the #1 error. Once you substitute numbers, variables become constants and their derivatives are 0. Write the general equation, differentiate, THEN substitute.

2. **"Constant quantities need variables"**
   - Address: If a quantity doesn't change (like ladder length), it's a CONSTANT. Label it with a number or letter that won't be differentiated.

3. **"Variables don't depend on time"**
   - Address: In related rates, EVERY variable is implicitly a function of t. That's why we need the chain rule: $\frac{d}{dt}[r^2] = 2r \cdot \frac{dr}{dt}$, not just $2r$.

4. **"Rates are constant throughout"**
   - Address: Rates can change! $\frac{dA}{dt}$ depends on r, so it's different at different moments. We find the rate at a specific instant.

5. **"One equation fits all problems"**
   - Address: Choose your equation based on what quantities are related. Different scenarios need different formulas.

6. **"Negative rates mean I made an error"**
   - Address: Negative rate means the quantity is decreasing. This is often correct! (Melting snowball, draining tank)

---

## Assessment Notes

- Exit ticket checks ability to set up (not solve) - setup is the key skill
- Monitor for premature substitution during worked examples
- Check that students include dr/dt term when differentiating
- Note which students need more chain rule practice

---

## Connections

**Prior knowledge:**
- Implicit differentiation (Class 16)
- Chain rule (Class 14)
- Derivative interpretation (Class 19)
- Geometry formulas (area, volume)

**Future connections:**
- Complex related rates with Pythagorean theorem, similar triangles (Class 22)
- Optimization problems (Unit 5)
- Related rates appear frequently on AP FRQs

---

## AP Exam Notes

- Related rates problems appear on nearly every AP Calculus FRQ
- Must show clear setup for full credit
- Common errors that lose points:
  - Substituting before differentiating
  - Missing chain rule factors (forgetting dr/dt)
  - Incorrect signs (decreasing quantities)
  - Omitting units
- Partial credit available for correct setup even if arithmetic error
