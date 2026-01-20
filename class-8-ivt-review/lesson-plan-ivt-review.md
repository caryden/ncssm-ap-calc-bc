# Lesson Plan: Intermediate Value Theorem and Unit Review

## Class 8 | February 14, 2026 | Unit 1: Limits and Continuity

---

## Overview

This lesson introduces the Intermediate Value Theorem (IVT) and provides a comprehensive review of Unit 1. Students will understand how continuity guarantees certain function values exist and apply IVT to prove existence of solutions. The second half reviews all limit techniques in preparation for assessment.

**CED Topics:**
- 1.12 - Confirming Continuity over an Interval
- 1.16 - Working with the Intermediate Value Theorem (IVT)

---

## Learning Objectives

By the end of this class, students will be able to:

1. State the Intermediate Value Theorem precisely
2. Apply IVT to prove existence of zeros or solutions
3. Verify IVT hypotheses before applying the conclusion
4. Review and connect all limit evaluation techniques
5. Prepare for Unit 1 assessment

---

## Materials Needed

- Presentation slides with D3 visualizations
- Unit 1 review summary sheet
- Practice problems (mixed types)
- Exit ticket

---

## Class Structure (50 minutes)

### Opening Hook (3 min)

**A Simple Question**

"If your temperature was 98°F at noon and 101°F at 3pm, was it ever exactly 100°F?"

Intuition says yes—but can we prove it mathematically?

This is the power of the Intermediate Value Theorem.

### The IVT Statement (10 min)

**Intermediate Value Theorem**

If:
1. f is continuous on the closed interval [a, b]
2. N is any number between f(a) and f(b)

Then:
- There exists at least one c in (a, b) such that f(c) = N

**Key Requirements:**
- Continuity is essential—the theorem fails without it
- N must be strictly between f(a) and f(b)
- The theorem guarantees existence, not uniqueness

**D3 Visualization:** Show continuous curve hitting every value between endpoints

### Example 1: Existence of Zeros (8 min)

**Problem:** Show that f(x) = x³ - x - 1 has a zero in [1, 2].

**Solution:**
1. f is a polynomial, so f is continuous on [1, 2] ✓
2. f(1) = 1 - 1 - 1 = -1 < 0
3. f(2) = 8 - 2 - 1 = 5 > 0
4. Since 0 is between -1 and 5...
5. By IVT, there exists c in (1, 2) with f(c) = 0 ✓

**Important:** IVT doesn't tell us what c is—just that it exists!

### Example 2: Bisection Method Preview (5 min)

**Using IVT to Narrow Down**

We know c is in (1, 2). Can we get closer?

- Check f(1.5) = 3.375 - 1.5 - 1 = 0.875 > 0
- Now we know c is in (1, 1.5) (between negative and positive)
- Check f(1.25) = 1.953 - 1.25 - 1 = -0.297 < 0
- Now c is in (1.25, 1.5)

This is the bisection method—finding roots using IVT repeatedly.

### When IVT Fails (5 min)

**Counterexample**

Consider f(x) = 1/x on [-1, 1].
- f(-1) = -1
- f(1) = 1
- 0 is between -1 and 1

Does f have a zero? NO! f(x) = 1/x is never zero.

**Why?** f is not continuous on [-1, 1] (undefined at 0).

**Lesson:** Always verify continuity before applying IVT!

### Unit 1 Review (15 min)

**The Limit Toolkit - Complete Summary**

**1. Graphical Approach (CED 1.3)**
- Read limits from graphs
- One-sided limits
- Recognize when limits don't exist

**2. Numerical Approach (CED 1.4)**
- Tables of values
- Approximate limits by observation

**3. Algebraic Approaches (CED 1.5, 1.6)**
- Direct substitution (when defined)
- Factoring for 0/0 forms
- Rationalizing for radical expressions
- Limit laws (sum, product, quotient, power)

**4. Special Techniques (CED 1.8)**
- Squeeze Theorem for bounded oscillations
- Key trig limits: sin(x)/x → 1

**5. Continuity (CED 1.10, 1.11)**
- Three-part definition
- Types of discontinuities
- Continuity enables IVT

**6. IVT (CED 1.16)**
- Continuity guarantees intermediate values
- Used to prove existence of solutions

### Mixed Practice (3 min introduction)

Present variety of problems for guided/independent practice.

### Closing (1 min)

**Exit Ticket:** Apply IVT to a given function.

**Preview:** Next class begins Unit 2: Differentiation!

---

## Differentiation Strategies

### For students who need more support:
- Focus on IVT as a "checklist" (continuous? values bracket target?)
- Provide review summary with all formulas
- Work through examples systematically

### For advanced students:
- Prove why continuity is necessary for IVT
- Explore: What if f(a) = f(b)?
- Challenge: Approximate a root to within 0.01

---

## Common Misconceptions to Address

1. **"IVT tells me the exact value of c"**
   - Address: IVT only proves existence, not the value.

2. **"IVT works for any function"**
   - Address: Continuity on the closed interval is required.

3. **"If f(a) and f(b) have same sign, no zero exists"**
   - Address: There might still be zeros (or none)—IVT just can't tell us.

4. **"IVT proves there's exactly one c"**
   - Address: There could be multiple values of c satisfying f(c) = N.

---

## Assessment Notes

- Monitor IVT application during examples
- Check that students verify continuity first
- Note readiness for unit assessment

---

## Connections

**Prior knowledge:**
- Class 7: Continuity definition and verification
- All previous limit techniques

**Future connections:**
- Unit 2: Definition of derivative uses limits
- Mean Value Theorem (similar structure to IVT)

---

## IVT Checklist

To apply IVT for f on [a, b] and target value N:

| Step | Action | Check |
|------|--------|-------|
| 1 | Verify f is continuous on [a, b] | Required! |
| 2 | Calculate f(a) and f(b) | Get the values |
| 3 | Confirm N is between f(a) and f(b) | Must be true |
| 4 | Conclude: exists c in (a,b) with f(c) = N | IVT applies! |

---

## Reflection Questions (for instructor)

After class, consider:
1. Do students understand IVT as an existence theorem?
2. Are continuity hypotheses being verified?
3. How well have students integrated all limit techniques?
4. Are students prepared for Unit 2?
