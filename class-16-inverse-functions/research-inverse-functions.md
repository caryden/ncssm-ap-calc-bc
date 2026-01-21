# Research: Differentiating Inverse Functions

## Overview

This document summarizes research on how expert educators teach derivatives of inverse functions. It informs the lesson plan and presentation spec for Class 16.

---

## 1. Expert Teaching Analysis

### Khan Academy: Derivatives of Inverse Functions

**Source:** [Khan Academy - Derivatives of Inverse Functions](https://www.khanacademy.org/math/ap-calculus-ab/ab-differentiation-2-new/ab-3-3/v/derivatives-of-inverse-functions)

**Core Pedagogical Strategy:**

Khan Academy derives the inverse function derivative formula from the chain rule, building on students' existing knowledge.

**The Derivation:**
1. If f and g are inverses, then f(g(x)) = x
2. Differentiate both sides: f'(g(x))·g'(x) = 1
3. Solve for g'(x): g'(x) = 1/f'(g(x))

**The Formula:**
If g = f⁻¹, then g'(x) = 1/f'(g(x))

**Key Insight:**

> "This comes straight out of the chain rule."

The derivative of an inverse function at a point is the reciprocal of the derivative of the original function at the corresponding point.

### Geometric Interpretation

**Visual Understanding:**

The graphs of f and f⁻¹ are reflections across the line y = x. If f has slope m at point (a, b), then f⁻¹ has slope 1/m at point (b, a).

**Why Reciprocal?**
- Reflection across y = x swaps x and y
- Slope = rise/run
- After reflection: rise becomes run, run becomes rise
- New slope = old run/old rise = 1/(old slope)

### Professor Leonard Approach

**Source:** [Professor Leonard YouTube - Calculus 1](https://www.youtube.com/@ProfessorLeonard)

**Teaching Framework:**

1. **Review inverse functions:** f(f⁻¹(x)) = x and f⁻¹(f(x)) = x
2. **Derive the formula:** Use implicit differentiation on y = f⁻¹(x), so f(y) = x
3. **Apply to specific cases:** ln x as inverse of eˣ, arcsin as inverse of sin
4. **Practice with tables and graphs:** AP-style problems

**The Implicit Derivation:**
- Let y = f⁻¹(x), so f(y) = x
- Differentiate implicitly: f'(y)·(dy/dx) = 1
- Solve: dy/dx = 1/f'(y) = 1/f'(f⁻¹(x))

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Reflection Animation** | Animate graph reflecting across y = x | Shows geometric relationship |
| **Slope Comparison** | Show tangent to f at (a,b), tangent to f⁻¹ at (b,a) | Visualizes reciprocal slopes |
| **Corresponding Points** | Highlight (a,b) on f and (b,a) on f⁻¹ | Shows the point "swap" |
| **Table Matching** | Given table for f, create table for f⁻¹ | Builds procedural understanding |
| **Derivative Overlay** | Plot f, f⁻¹, and their derivatives | Shows how slopes relate |
| **Unit Circle for Trig** | Show sin and arcsin as inverse operations | Preview for next lesson |

### Recommended D3 Visualization

**Inverse Function Slope Explorer:**
1. Display function f(x) = x² for x ≥ 0 and its inverse f⁻¹(x) = √x
2. Show line y = x for reference
3. Let user select a point (a, a²) on f
4. Highlight corresponding point (a², a) on f⁻¹
5. Draw tangent lines at both points
6. Display: "Slope of f at (a, a²) = 2a"
7. Display: "Slope of f⁻¹ at (a², a) = 1/(2a)"
8. Show that the slopes are reciprocals

**Reflection Animation:**
1. Draw graph of f(x) = eˣ
2. Animate reflection across y = x
3. Result: graph of f⁻¹(x) = ln(x)
4. Show tangent lines reflecting too
5. Demonstrate reciprocal relationship of slopes

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"(f⁻¹)'(x) = 1/f'(x)"** | Evaluating f' at wrong point | Emphasize: it's 1/f'(f⁻¹(x)), not 1/f'(x). The derivative of f must be evaluated at f⁻¹(x). |
| **"Inverse means reciprocal"** | Confusing f⁻¹ with 1/f | f⁻¹ is the INVERSE function, not 1/f. Example: sin⁻¹ ≠ 1/sin = csc |
| **"Only need the formula"** | Not understanding the geometry | Show the reflection across y = x. The formula follows from geometry. |
| **"f⁻¹(f(x)) = 1"** | Another reciprocal confusion | f⁻¹(f(x)) = x, not 1. Inverse "undoes" the function. |
| **"Can't find derivative without formula for inverse"** | Thinking you need f⁻¹ explicitly | You only need f' and f⁻¹ at specific points, not the general formula. |
| **"Table problems are different"** | Not connecting table to formula | Table gives you f(a) = b and f'(a). Formula gives (f⁻¹)'(b) = 1/f'(a). |
| **"Slopes are equal at reflected points"** | Expecting tangent lines to be parallel | They're reflections of each other, so slopes are RECIPROCALS, not equal. |

### Misconception-Busting Exercises

1. **Correct Point Evaluation:**
   - If f(2) = 5 and f'(2) = 3, find (f⁻¹)'(5)
   - Answer: (f⁻¹)'(5) = 1/f'(f⁻¹(5)) = 1/f'(2) = 1/3
   - NOT: (f⁻¹)'(5) = 1/f'(5) ← wrong point!

2. **Inverse vs. Reciprocal:**
   - f⁻¹(x) means "the function that undoes f"
   - [f(x)]⁻¹ = 1/f(x) means "the reciprocal of f(x)"
   - sin⁻¹(x) = arcsin(x) ≠ csc(x) = 1/sin(x)

3. **Geometric Understanding:**
   - For f(x) = x³, we have f'(x) = 3x²
   - At x = 2: f(2) = 8, f'(2) = 12
   - For f⁻¹(x) = ∛x at x = 8: (f⁻¹)'(8) = 1/12 ✓

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 16 lesson should:

### Opening (5 min)
- Review: "What is an inverse function?"
- Key property: f(f⁻¹(x)) = x and f⁻¹(f(x)) = x
- Visual: Graphs of f and f⁻¹ are reflections across y = x
- Question: "If we know f', can we find (f⁻¹)'?"

### Geometric Motivation (8 min)

**Reflection and Slopes:**
1. Draw f(x) = x² (for x ≥ 0) and f⁻¹(x) = √x
2. Show reflection across y = x
3. Mark point (2, 4) on f and (4, 2) on f⁻¹
4. Draw tangent lines at both points
5. Observe: tangent lines are also reflections!
6. Slope of f at (2, 4) = 4; slope of f⁻¹ at (4, 2) = 1/4

**Key Insight:**
When you reflect, rise and run swap. So slope becomes its reciprocal.

### Deriving the Formula (10 min)

**Method 1: Chain Rule**
1. Start with f(f⁻¹(x)) = x
2. Differentiate: f'(f⁻¹(x))·(f⁻¹)'(x) = 1
3. Solve: (f⁻¹)'(x) = 1/f'(f⁻¹(x))

**Method 2: Implicit Differentiation**
1. Let y = f⁻¹(x), so x = f(y)
2. Differentiate: 1 = f'(y)·(dy/dx)
3. Solve: dy/dx = 1/f'(y) = 1/f'(f⁻¹(x))

**The Formula:**
(f⁻¹)'(x) = 1/f'(f⁻¹(x))

**Verbal Version:**
"The derivative of the inverse at x equals 1 over the derivative of f at f⁻¹(x)"

### Worked Examples (12 min)

**Example 1: Deriving d/dx(ln x)**
- ln x is the inverse of eˣ
- If f(x) = eˣ, then f⁻¹(x) = ln x
- f'(x) = eˣ
- (f⁻¹)'(x) = 1/f'(f⁻¹(x)) = 1/e^(ln x) = 1/x
- So: d/dx(ln x) = 1/x ✓

**Example 2: From a Table**
| x | f(x) | f'(x) |
|---|------|-------|
| 1 | 4 | 2 |
| 2 | 7 | 3 |
| 3 | 5 | -1 |
| 4 | 1 | 6 |

Find (f⁻¹)'(4).
- f⁻¹(4) = 1 (because f(1) = 4)
- (f⁻¹)'(4) = 1/f'(f⁻¹(4)) = 1/f'(1) = 1/2

**Example 3: From an Equation**
- f(x) = x³ + x, find (f⁻¹)'(2)
- First, find where f(x) = 2: x³ + x = 2, so x = 1
- f'(x) = 3x² + 1, so f'(1) = 4
- (f⁻¹)'(2) = 1/f'(1) = 1/4

### Practice (10 min)
- Table-based problems (AP style)
- Find (f⁻¹)' at specific points
- Derive derivative formulas for inverse functions

### Closing (5 min)
- Summary: (f⁻¹)'(x) = 1/f'(f⁻¹(x))
- Key insight: Slopes are reciprocals at reflected points
- Exit ticket: If f(3) = 7 and f'(3) = 5, find (f⁻¹)'(7)
- Preview: Inverse trig derivatives (arcsin, arccos, arctan)

### Key Principles Throughout

1. **Geometric grounding:** Reflection explains why reciprocal
2. **Correct point:** Evaluate f' at f⁻¹(x), not at x
3. **Two methods:** Chain rule or implicit differentiation both work
4. **Table fluency:** AP exams love table-based inverse problems
5. **Connection to known derivatives:** ln x as inverse of eˣ

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **3.3:** Differentiating Inverse Functions

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (using the formula correctly)
- **MP 2:** Connecting Representations (tables, graphs, formulas)
- **MP 3:** Justification (deriving the formula)

### AP Exam Connection
- Inverse function derivatives appear regularly on both MC and FRQ
- Table-based problems are extremely common
- Students must be fluent with the formula and point evaluation
- Common AP errors:
  - Evaluating f' at x instead of at f⁻¹(x)
  - Confusing inverse with reciprocal
  - Algebra errors when finding f⁻¹(x)

### Fluency Goal
By the end of this class, students should:
- State and apply the inverse function derivative formula
- Solve table-based inverse derivative problems
- Derive derivatives of basic inverse functions (ln x)
- Understand the geometric relationship

---

## Sources

- [Khan Academy: Derivatives of Inverse Functions](https://www.khanacademy.org/math/ap-calculus-ab/ab-differentiation-2-new/ab-3-3/v/derivatives-of-inverse-functions)
- [Khan Academy: Derivatives from Table](https://www.khanacademy.org/math/differential-calculus/dc-chain/dc-inverse-func-diff/v/derivatives-of-inverse-functions-table)
- [Professor Leonard: Calculus 1 Playlist](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Derivatives of Inverse Functions](https://tutorial.math.lamar.edu/classes/calci/derivativesinvtrigfcns.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
