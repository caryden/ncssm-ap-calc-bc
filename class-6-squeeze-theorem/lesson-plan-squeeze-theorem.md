# Lesson Plan: The Squeeze Theorem

## Class 6 | February 12, 2026 | Unit 1: Limits and Continuity

---

## Overview

This lesson introduces the Squeeze Theorem (also called the Sandwich Theorem) as a powerful tool for evaluating limits that cannot be computed through direct algebraic manipulation. Students will understand the geometric intuition behind the theorem and apply it to classic examples involving trigonometric functions.

**CED Topic:** 1.8 - Determining Limits Using the Squeeze Theorem

---

## Learning Objectives

By the end of this class, students will be able to:

1. State the Squeeze Theorem precisely
2. Explain the geometric intuition behind the theorem
3. Identify when the Squeeze Theorem is applicable
4. Apply the Squeeze Theorem to evaluate limits
5. Use the fundamental trig limit: \(\lim_{x \to 0} \frac{\sin x}{x} = 1\)

---

## Materials Needed

- Presentation slides with D3 visualizations
- Squeeze Theorem visual demonstrations
- Practice worksheet
- Exit ticket

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**A Limit We Can't Factor**

Present the problem:
\[\lim_{x \to 0} x^2 \sin\left(\frac{1}{x}\right)\]

Try direct substitution: \(0 \cdot \sin(?)\) — undefined product!

We need a new technique.

### The Squeeze Theorem (15 min)

**Statement of the Theorem**

If \(g(x) \leq f(x) \leq h(x)\) for all x near a (except possibly at a), and
\[\lim_{x \to a} g(x) = \lim_{x \to a} h(x) = L\]

Then:
\[\lim_{x \to a} f(x) = L\]

**Geometric Intuition**

- f(x) is "squeezed" between g(x) and h(x)
- If both bounds approach the same value L, f(x) must also approach L
- Like being squeezed in an elevator that's getting smaller!

**D3 Visualization:** Show f trapped between g and h as they converge

### Example 1: The Classic Case (10 min)

**Problem:** \(\lim_{x \to 0} x^2 \sin\left(\frac{1}{x}\right)\)

**Solution:**

1. Key bound: \(-1 \leq \sin\left(\frac{1}{x}\right) \leq 1\)
2. Multiply by \(x^2\) (positive): \(-x^2 \leq x^2 \sin\left(\frac{1}{x}\right) \leq x^2\)
3. Both bounds approach 0 as x → 0
4. By Squeeze Theorem: limit = 0

**D3 Visualization:** Show the oscillating function trapped between parabolas

### The Special Trig Limit (10 min)

**The Fundamental Limit:**
\[\lim_{x \to 0} \frac{\sin x}{x} = 1\]

**Geometric Proof Outline:**

Using a unit circle with angle x (in radians):
- Area of inner triangle ≤ Area of sector ≤ Area of outer triangle
- \(\frac{1}{2}\sin x \leq \frac{1}{2}x \leq \frac{1}{2}\tan x\)

Rearranging: \(\cos x \leq \frac{\sin x}{x} \leq 1\)

As x → 0: cos x → 1, so by Squeeze Theorem: \(\frac{\sin x}{x} \to 1\)

**Related Limit:**
\[\lim_{x \to 0} \frac{1 - \cos x}{x} = 0\]

### Applications (8 min)

**Example 2:** \(\lim_{x \to 0} \frac{\sin 3x}{x}\)

Solution: Rewrite as \(3 \cdot \frac{\sin 3x}{3x}\) = 3 · 1 = 3

**Example 3:** \(\lim_{x \to 0} \frac{\tan x}{x}\)

Solution: \(\frac{\sin x}{x} \cdot \frac{1}{\cos x} = 1 \cdot 1 = 1\)

**Guided Practice:** \(\lim_{x \to 0} x \cos\left(\frac{1}{x}\right)\)

### Closing (2 min)

**Exit Ticket:** Apply the Squeeze Theorem:
\[\lim_{x \to 0} x^2 \cos\left(\frac{1}{x}\right)\]

**Preview:** Tomorrow we explore continuity—what makes a function have no breaks.

---

## Differentiation Strategies

### For students who need more support:
- Focus on the geometric intuition before formal statement
- Use physical analogies (elevator, sandwich)
- Practice identifying bounds step-by-step

### For advanced students:
- Prove the sin(x)/x limit rigorously
- Challenge: \(\lim_{x \to \infty} \frac{\sin x}{x}\)
- Extension: When does the Squeeze Theorem fail?

---

## Common Misconceptions to Address

1. **"The functions must be equal at a"**
   - Address: The theorem works even if f, g, h are undefined at a.

2. **"Any three functions work"**
   - Address: The bounds must converge to the SAME limit L.

3. **"Squeeze Theorem proves sin(x)/x equals exactly 1"**
   - Address: It proves the LIMIT is 1, not that the expression equals 1.

4. **"I can use this for any limit"**
   - Address: Squeeze Theorem requires finding appropriate bounds.

---

## Assessment Notes

- Monitor bound identification during guided practice
- Note students struggling with inequality manipulation
- Exit ticket checks basic application

---

## Connections

**Prior knowledge:**
- Class 4-5: Algebraic limit techniques
- Trigonometry: Unit circle and trig function properties
- Inequalities from algebra

**Future connections:**
- Class 7: Continuity definitions
- Unit 2: Derivatives of trig functions rely on sin(x)/x limit

---

## Key Theorems and Formulas

1. **Squeeze Theorem:** If g(x) ≤ f(x) ≤ h(x) near a, and lim g = lim h = L, then lim f = L

2. **Fundamental Trig Limits:**
   - \(\lim_{x \to 0} \frac{\sin x}{x} = 1\)
   - \(\lim_{x \to 0} \frac{1 - \cos x}{x} = 0\)

---

## Reflection Questions (for instructor)

After class, consider:
1. Did students grasp the geometric intuition?
2. Were bound selections understood?
3. How comfortable are students with trig limits?
4. Are students ready for continuity concepts?
