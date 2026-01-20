# Lesson Plan: Continuity

## Class 7 | February 13, 2026 | Unit 1: Limits and Continuity

---

## Overview

This lesson introduces the formal definition of continuity and its relationship to limits. Students will learn to identify and classify discontinuities, understand continuity on intervals, and apply continuity to simplify limit calculations.

**CED Topics:**
- 1.10 - Exploring Types of Discontinuities
- 1.11 - Defining Continuity at a Point

---

## Learning Objectives

By the end of this class, students will be able to:

1. State the formal definition of continuity at a point
2. Verify continuity using the three-part test
3. Identify and classify types of discontinuities (removable, jump, infinite)
4. Determine continuity on intervals
5. Apply continuity to evaluate limits of compositions

---

## Materials Needed

- Presentation slides with D3 visualizations
- Continuity checklist handout
- Practice worksheet with various function types
- Exit ticket

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**What Does "Continuous" Mean?**

Informal idea: "You can draw the function without lifting your pencil."

But we need a precise mathematical definition. Today we'll connect continuity to limits.

### The Definition (15 min)

**Formal Definition of Continuity**

A function f is continuous at x = a if and only if:

1. **f(a) is defined** (a is in the domain)
2. **\(\lim_{x \to a} f(x)\) exists** (left and right limits agree)
3. **\(\lim_{x \to a} f(x) = f(a)\)** (limit equals function value)

**All three conditions must hold!**

**Key Insight:** Condition 3 contains conditions 1 and 2, but checking all three helps identify what type of discontinuity exists.

**D3 Visualization:** Interactive demo showing all three conditions

### Types of Discontinuities (15 min)

**Removable Discontinuity**

- The limit exists, but f(a) is either undefined or different from the limit
- Called "removable" because we can "fix" it by redefining f(a)
- Example: \(f(x) = \frac{x^2 - 1}{x - 1}\) at x = 1

**Jump Discontinuity**

- Left-hand and right-hand limits exist but are different
- The limit doesn't exist
- Example: Piecewise function with different values

**Infinite Discontinuity**

- The function approaches ±∞ as x approaches a
- The limit doesn't exist (in the finite sense)
- Example: \(f(x) = \frac{1}{x}\) at x = 0

**D3 Visualization:** Side-by-side comparison of all three types

### Continuity on Intervals (8 min)

**Continuous on an Interval**

- f is continuous on (a, b) if f is continuous at every point in (a, b)
- For closed intervals [a, b], we also need:
  - Right-hand continuity at a: \(\lim_{x \to a^+} f(x) = f(a)\)
  - Left-hand continuity at b: \(\lim_{x \to b^-} f(x) = f(b)\)

**Continuous Functions**

The following are continuous on their domains:
- Polynomials
- Rational functions (where defined)
- Trigonometric functions
- Exponential and logarithmic functions
- Root functions (where defined)

### Compositions and Continuity (5 min)

**Theorem:** If f is continuous at b and \(\lim_{x \to a} g(x) = b\), then:
\[\lim_{x \to a} f(g(x)) = f(b) = f\left(\lim_{x \to a} g(x)\right)\]

**Application:** This lets us "pass limits inside" continuous functions.

**Example:** \(\lim_{x \to 2} \sin(x^2 - 4) = \sin(\lim_{x \to 2} (x^2 - 4)) = \sin(0) = 0\)

### Closing (2 min)

**Exit Ticket:** Given f(x), determine where it is continuous and classify any discontinuities.

**Preview:** Tomorrow we explore the Intermediate Value Theorem—what continuity guarantees.

---

## Differentiation Strategies

### For students who need more support:
- Focus on the three-part checklist approach
- Provide visual examples before formal definitions
- Practice identifying discontinuity types graphically first

### For advanced students:
- Explore: Can a function have only removable discontinuities and still be useful?
- Challenge: Create a function with exactly two jump discontinuities
- Extension: Uniform continuity vs pointwise continuity (preview)

---

## Common Misconceptions to Address

1. **"If f(a) exists, f is continuous at a"**
   - Address: We need the limit to exist AND equal f(a).

2. **"Continuous means smooth"**
   - Address: Continuous functions can have corners (e.g., |x|).

3. **"All functions are continuous except at obvious points"**
   - Address: Some functions (like Dirichlet) are continuous nowhere.

4. **"Holes and jumps are the same"**
   - Address: Removable (holes) have existing limits; jumps don't.

---

## Assessment Notes

- Monitor three-condition checking during examples
- Note students struggling with limit-value comparison
- Exit ticket checks discontinuity classification

---

## Connections

**Prior knowledge:**
- Classes 4-6: Limit evaluation techniques
- Graphing and function behavior
- Domain and range concepts

**Future connections:**
- Class 8: Intermediate Value Theorem
- Unit 2: Differentiability requires continuity

---

## The Three-Part Continuity Test

For f to be continuous at x = a:

| Condition | What to Check | If Fails... |
|-----------|--------------|-------------|
| 1. f(a) defined | Evaluate f(a) | Removable |
| 2. Limit exists | Check \(\lim_{x \to a^-} = \lim_{x \to a^+}\) | Jump or Infinite |
| 3. Limit = value | Compare \(\lim = f(a)\) | Removable |

---

## Reflection Questions (for instructor)

After class, consider:
1. Can students apply the three-part test systematically?
2. Do students distinguish between discontinuity types?
3. Is the composition theorem understood?
4. Are students ready for IVT applications?
