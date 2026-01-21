# Lesson Plan: Linearization and L'Hospital's Rule

## Class 23 | Unit 4: Contextual Applications of Differentiation

---

## Overview

This session covers two powerful applications of derivatives: local linear approximation (linearization) for estimating function values, and L'Hospital's Rule for evaluating limits with indeterminate forms. Students will understand that differentiable functions appear linear when zoomed in sufficiently, and learn to apply L'Hospital's Rule correctly by first verifying the indeterminate form.

**CED Topics:** 4.6 - Approximating Values Using Local Linearity and Linearization; 4.7 - Using L'Hospital's Rule for Limits of Indeterminate Forms

---

## Learning Objectives

By the end of this class, students will be able to:

1. Explain why differentiable functions are "locally linear" near any point
2. Write the linearization L(x) of a function f at a point x = a
3. Use linearization to estimate function values near known points
4. Identify when a limit has indeterminate form 0/0 or infinity/infinity
5. Apply L'Hospital's Rule correctly (differentiating numerator and denominator separately)
6. Recognize when L'Hospital's Rule needs to be applied multiple times

---

## Prior Knowledge Required

- Derivative computation (Classes 12-15)
- Equation of tangent line (Class 10)
- Limit evaluation techniques (Unit 1)
- Basic trigonometric limits

---

## Materials Needed

- Presentation slides with zoom visualizations
- Graphing calculators
- Student devices for Desmos exploration
- Linearization formula reference cards
- L'Hospital's Rule checklist
- Exit ticket slips

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Mental Math Challenge**

Ask students: "Estimate $\sqrt{4.1}$ without a calculator."

**Discussion:**
- We know $\sqrt{4} = 2$ exactly
- We want $\sqrt{4.1}$, which is close to $\sqrt{4}$
- Can we use the tangent line at x = 4 to estimate?

This is **linearization** - using the tangent line as an approximation!

### Linearization: Local Linear Approximation (15 min)

**The Concept of Local Linearity**

When you zoom in on any smooth curve at a point, it looks increasingly like a straight line. This is why the tangent line makes a good approximation near that point.

**Visual Demonstration:**
Show a curve and zoom in progressively at a point. The curve becomes indistinguishable from its tangent line.

**The Linearization Formula**

The linearization of f at x = a is:
$$L(x) = f(a) + f'(a)(x - a)$$

This is the equation of the tangent line at (a, f(a)).

**Why This Works:**
- $L(a) = f(a)$ (matches the function value)
- $L'(a) = f'(a)$ (matches the slope)
- No other line through (a, f(a)) has both properties!

**For x near a:** $f(x) \approx L(x) = f(a) + f'(a)(x - a)$

**Example 1: Estimate $\sqrt{4.1}$**

**Step 1:** Identify f(x) and choose a
- $f(x) = \sqrt{x}$
- Choose a = 4 (nearby value where we know $f(a)$ exactly)

**Step 2:** Compute f(a) and f'(a)
- $f(4) = 2$
- $f'(x) = \frac{1}{2\sqrt{x}}$, so $f'(4) = \frac{1}{4}$

**Step 3:** Write the linearization
$$L(x) = 2 + \frac{1}{4}(x - 4)$$

**Step 4:** Estimate
$$L(4.1) = 2 + \frac{1}{4}(0.1) = 2 + 0.025 = 2.025$$

**Check:** Calculator gives $\sqrt{4.1} \approx 2.0248...$

The linearization gives an excellent approximation!

**Example 2: Estimate $\sin(0.1)$**

- $f(x) = \sin(x)$, choose a = 0
- $f(0) = 0$, $f'(0) = \cos(0) = 1$
- $L(x) = 0 + 1(x - 0) = x$
- $\sin(0.1) \approx L(0.1) = 0.1$

**Check:** Calculator gives $\sin(0.1) \approx 0.0998...$

Near 0, $\sin(x) \approx x$ is an excellent approximation!

**Example 3: Estimate $e^{0.1}$**

- $f(x) = e^x$, choose a = 0
- $f(0) = 1$, $f'(0) = 1$
- $L(x) = 1 + 1(x - 0) = 1 + x$
- $e^{0.1} \approx L(0.1) = 1.1$

**Check:** Calculator gives $e^{0.1} \approx 1.1052...$

**Key Point:** The approximation is best when x is close to a. Error grows as x moves away from a.

### L'Hospital's Rule (15 min)

**The Problem: Indeterminate Forms**

What is $\lim_{x \to 0} \frac{\sin x}{x}$?

Direct substitution gives $\frac{0}{0}$ - an indeterminate form.

**Indeterminate Forms:**
- $\frac{0}{0}$ - both numerator and denominator approach 0
- $\frac{\infty}{\infty}$ - both approach infinity

These forms are "indeterminate" because we can't determine the limit without more analysis.

**L'Hospital's Rule**

If $\lim_{x \to a} \frac{f(x)}{g(x)}$ gives the form $\frac{0}{0}$ or $\frac{\infty}{\infty}$, then:

$$\lim_{x \to a} \frac{f(x)}{g(x)} = \lim_{x \to a} \frac{f'(x)}{g'(x)}$$

provided the limit on the right exists.

**Critical Points:**
1. **ONLY for indeterminate forms** - verify 0/0 or infinity/infinity first!
2. **Differentiate SEPARATELY** - NOT the quotient rule!
3. **May need multiple applications** - check if result is still indeterminate

**Example 1: $\lim_{x \to 0} \frac{\sin x}{x}$**

**Step 1: Check form**
- As $x \to 0$: $\sin x \to 0$ and $x \to 0$
- Form: $\frac{0}{0}$ ✓ (L'Hospital applies)

**Step 2: Apply L'Hospital**
$$\lim_{x \to 0} \frac{\sin x}{x} = \lim_{x \to 0} \frac{\cos x}{1} = \frac{1}{1} = 1$$

**Example 2: $\lim_{x \to \infty} \frac{\ln x}{x}$**

**Step 1: Check form**
- As $x \to \infty$: $\ln x \to \infty$ and $x \to \infty$
- Form: $\frac{\infty}{\infty}$ ✓

**Step 2: Apply L'Hospital**
$$\lim_{x \to \infty} \frac{\ln x}{x} = \lim_{x \to \infty} \frac{1/x}{1} = \lim_{x \to \infty} \frac{1}{x} = 0$$

**Example 3: Multiple Applications - $\lim_{x \to 0} \frac{e^x - 1 - x}{x^2}$**

**Step 1: Check form**
- As $x \to 0$: $e^x - 1 - x \to 0$ and $x^2 \to 0$
- Form: $\frac{0}{0}$ ✓

**Step 2: First application**
$$\lim_{x \to 0} \frac{e^x - 1}{2x}$$

**Step 3: Check again**
- As $x \to 0$: $e^x - 1 \to 0$ and $2x \to 0$
- Still $\frac{0}{0}$ - apply again!

**Step 4: Second application**
$$\lim_{x \to 0} \frac{e^x}{2} = \frac{1}{2}$$

**Warning Example: When NOT to Use L'Hospital**

$\lim_{x \to 1} \frac{x^2}{x + 1}$

Check: As $x \to 1$, we get $\frac{1}{2}$ - NOT indeterminate!

Just substitute directly: The limit is $\frac{1}{2}$.

**Do NOT apply L'Hospital to determinate forms.**

### Other Indeterminate Forms (5 min)

**Converting to 0/0 or infinity/infinity:**

| Form | Conversion Strategy |
|------|---------------------|
| $0 \cdot \infty$ | Rewrite as $\frac{f}{1/g}$ to get $\frac{0}{0}$ or $\frac{\infty}{\infty}$ |
| $\infty - \infty$ | Combine into single fraction |
| $1^{\infty}$, $0^0$, $\infty^0$ | Take ln, apply L'Hospital, then exponentiate |

**Example: $\lim_{x \to 0^+} x \ln x$**

Form: $0 \cdot (-\infty)$

Rewrite as: $\lim_{x \to 0^+} \frac{\ln x}{1/x}$

Check: Form is $\frac{-\infty}{\infty}$ ✓

Apply: $\lim_{x \to 0^+} \frac{1/x}{-1/x^2} = \lim_{x \to 0^+} (-x) = 0$

### Guided Practice (5 min)

**Quick Practice:**

1. Use linearization to estimate $\cos(0.1)$.
   - $f(x) = \cos x$, a = 0
   - $L(x) = 1 + 0(x - 0) = 1$
   - $\cos(0.1) \approx 1$ (actual: 0.995...)

2. Evaluate $\lim_{x \to 0} \frac{e^x - 1}{x}$ using L'Hospital.
   - Form: 0/0 ✓
   - $= \lim_{x \to 0} \frac{e^x}{1} = 1$

3. Does L'Hospital apply to $\lim_{x \to 2} \frac{x^2 - 4}{x - 2}$?
   - Form: 0/0 ✓ (Yes, it applies)
   - But factoring works too: $\frac{(x-2)(x+2)}{x-2} = x + 2 \to 4$

### Closing (5 min)

**Summary:**

**Linearization:**
- $L(x) = f(a) + f'(a)(x - a)$
- Use to estimate f(x) near x = a
- Choose a where f(a) is known exactly

**L'Hospital's Rule:**
- ONLY for 0/0 or infinity/infinity
- Differentiate numerator and denominator SEPARATELY
- May need multiple applications
- Always verify the form first!

**Exit Ticket:**
1. Write the linearization of $f(x) = \sqrt{x}$ at a = 9.
2. Use it to estimate $\sqrt{9.1}$.

**Preview:** Unit 5 begins with the Mean Value Theorem - the theoretical backbone of calculus.

---

## Differentiation Strategies

### For students who need more support:
- Provide linearization formula cards
- Create a L'Hospital checklist: (1) Check form, (2) Differentiate separately, (3) Evaluate
- Practice "is this indeterminate?" identification separately
- Use calculators to verify linearization estimates

### For advanced students:
- Challenge: Why does $\lim_{x \to 0} \frac{1 - \cos x}{x^2} = \frac{1}{2}$? (Requires two L'Hospital applications)
- Explore: Taylor polynomials as "better than linear" approximations (preview of Unit 10)
- Research: Error bounds for linearization - how close is the approximation?

---

## Common Misconceptions to Address

1. **"Linearization IS the function"**
   - Address: $L(x) \approx f(x)$ only NEAR a. Far from a, the error grows. Always specify where approximation is valid.

2. **"Any tangent line works"**
   - Address: Different a gives different linearization. Choose a where f(a) is known exactly (like $\sqrt{4} = 2$, not $\sqrt{5}$).

3. **"L'Hospital works for any limit"**
   - Address: ONLY for 0/0 or infinity/infinity. Check first! If you can substitute directly, do that instead.

4. **"Use quotient rule for L'Hospital"**
   - Address: L'Hospital means differentiate top and bottom SEPARATELY. This is NOT the quotient rule!

5. **"One application always works"**
   - Address: After applying L'Hospital, check if the result is still indeterminate. May need to apply multiple times.

6. **"0 times infinity is 0"**
   - Address: $0 \cdot \infty$ is indeterminate! Must convert to 0/0 or infinity/infinity first.

---

## Assessment Notes

- Exit ticket checks linearization setup and application
- Monitor for correct form verification before L'Hospital
- Check that students differentiate separately (not quotient rule)
- Note which students struggle with choosing a for linearization

---

## Connections

**Prior knowledge:**
- Tangent line equation (Class 10)
- Derivative computation (Classes 12-15)
- Limit techniques (Unit 1)
- Trigonometric limits

**Future connections:**
- Mean Value Theorem (Class 24)
- Taylor polynomials (Unit 10) - linearization is the first-degree Taylor polynomial
- Error analysis in numerical methods
- Applications in physics and engineering approximations

---

## AP Exam Notes

- Linearization appears in FRQs asking for approximations
- Must show linearization formula for full credit, not just calculator answer
- L'Hospital is tested on both MC and FRQ
- Must explicitly state that the form is indeterminate (0/0 or infinity/infinity) for justification credit
- Common errors:
  - Using L'Hospital when limit is not indeterminate
  - Applying quotient rule instead of differentiating separately
  - Not applying L'Hospital enough times when result is still indeterminate
