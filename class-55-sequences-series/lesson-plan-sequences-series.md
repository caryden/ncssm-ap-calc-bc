# Lesson Plan: Sequences and Series Introduction

## Class 55 | Unit 10: Infinite Sequences and Series (BC Only)

---

## Overview

This foundational session introduces students to infinite sequences and series, establishing the critical distinction between the two concepts. Students will learn how to determine whether sequences converge or diverge, understand that series convergence is defined through partial sums, and encounter the nth term test for divergence. The harmonic series serves as a key example showing that terms approaching zero does not guarantee convergence.

**CED Topic:** 10.1 - Defining Convergent and Divergent Infinite Series

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define an infinite sequence and determine whether it converges or diverges
2. Define an infinite series as the limit of partial sums
3. Explain the difference between a sequence and a series using precise mathematical language
4. Apply the nth term test for divergence to identify divergent series
5. Recognize that the converse of the nth term test is false (terms going to zero does not imply convergence)

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators for sequence/partial sum exploration
- Student devices for Desmos activities
- Sequence and series reference sheet (optional handout)

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**Zeno's Paradox**

Present the classic paradox: "To reach the door, you must first walk halfway there. Then walk half the remaining distance. Then half again. You must complete infinitely many steps—can you ever arrive?"

This creates cognitive dissonance: How can infinitely many steps have a finite result?

**Today's Goal:** We'll develop the mathematical framework to answer this question rigorously.

### Sequences: The Foundation (12 min)

**Definition**

A sequence is an ordered list of numbers: $a_1, a_2, a_3, \ldots$

Formally, a sequence is a function from the positive integers to the real numbers.

**Notation:** $\{a_n\}$, $\{a_n\}_{n=1}^{\infty}$, or listing terms

**Convergence of Sequences**

A sequence $\{a_n\}$ converges to $L$ if the terms get arbitrarily close to $L$ for sufficiently large $n$.

Write: $\lim_{n \to \infty} a_n = L$

If no such $L$ exists (or if the limit is infinite), the sequence diverges.

**Examples:**
- $\{1/n\} = 1, 1/2, 1/3, \ldots \to 0$ (converges)
- $\{(-1)^n\} = -1, 1, -1, 1, \ldots$ (diverges—oscillates)
- $\{n\} = 1, 2, 3, \ldots \to \infty$ (diverges)
- $\{(n+1)/n\} = 2, 3/2, 4/3, \ldots \to 1$ (converges)

**Interactive Visualization:** Display sequence terms on a number line, showing how convergent sequences cluster around their limit.

### Series: Adding It Up (15 min)

**From Sequence to Series**

Given a sequence $\{a_n\}$, the series $\sum a_n$ represents the sum:
$$\sum_{n=1}^{\infty} a_n = a_1 + a_2 + a_3 + \cdots$$

**The Central Question:** What does it mean to add infinitely many numbers?

**Partial Sums: The Key Concept**

Define partial sums:
- $S_1 = a_1$
- $S_2 = a_1 + a_2$
- $S_n = a_1 + a_2 + \cdots + a_n$

The sequence $\{S_n\}$ is itself a sequence!

**Convergence of Series**

A series $\sum a_n$ converges if the sequence of partial sums $\{S_n\}$ converges.

If $\lim_{n \to \infty} S_n = S$, we write $\sum_{n=1}^{\infty} a_n = S$.

**Worked Example: Geometric Preview**

Consider $1/2 + 1/4 + 1/8 + \cdots$
- $S_1 = 1/2$
- $S_2 = 1/2 + 1/4 = 3/4$
- $S_3 = 1/2 + 1/4 + 1/8 = 7/8$
- $S_n = 1 - (1/2)^n \to 1$

The series converges to 1. (Visual: square being subdivided)

### The nth Term Test for Divergence (10 min)

**The Test**

If $\sum a_n$ converges, then $\lim_{n \to \infty} a_n = 0$.

**Contrapositive (the useful form):**
If $\lim_{n \to \infty} a_n \neq 0$, then $\sum a_n$ diverges.

**Critical Warning (with emphasis)**

If $\lim_{n \to \infty} a_n = 0$, the test is INCONCLUSIVE.

We CANNOT conclude convergence from this alone!

**The Harmonic Series: The Essential Counterexample**

$$\sum_{n=1}^{\infty} \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \cdots$$

- Terms: $1/n \to 0$ as $n \to \infty$
- BUT the series DIVERGES (partial sums grow without bound)
- Proof sketch: Group terms to show $S_n > k/2$ for $n > 2^k$

**Examples:**
1. $\sum n/(2n+1)$: $\lim = 1/2 \neq 0 \to$ Diverges
2. $\sum 1/n$: $\lim = 0 \to$ Inconclusive (actually diverges)
3. $\sum 1/n^2$: $\lim = 0 \to$ Inconclusive (actually converges—we'll prove this later)

### Closing (8 min)

**Interactive Exploration**

Use D3 visualization to explore several sequences and their partial sums. Have students predict convergence/divergence before revealing partial sum behavior.

**Summary**
- Sequence: ordered list; converges if limit exists
- Series: sum of sequence terms
- Series convergence means partial sums converge
- nth Term Test: If $a_n \not\to 0$, series diverges
- WARNING: $a_n \to 0$ does NOT imply convergence

**Exit Ticket:**
1. Does the sequence $\{(2n-1)/n\}$ converge? If so, to what?
2. If $\sum a_n$ converges, what must be true about $\lim_{n \to \infty} a_n$?
3. Give an example of a divergent series where the terms approach 0.

---

## Differentiation Strategies

### For students who need more support:
- Provide a graphic organizer comparing sequences and series side-by-side
- Use numerical tables to track partial sums before introducing formal notation
- Focus on the geometric series visual (square cutting) as a concrete anchor
- Pair with stronger students during partial sum calculations

### For advanced students:
- Explore: Find a formula for the partial sums of $\sum 1/[n(n+1)]$ (telescoping)
- Challenge: Prove the harmonic series diverges using the grouping argument
- Research: Investigate the divergence rate of the harmonic series ($\gamma \approx 0.577$)
- Explore: What happens to $\sum 1/n^p$ for different values of $p$?

---

## Common Misconceptions to Address

1. **"If terms go to 0, the series converges"**
   - Address: This is the most dangerous misconception. The harmonic series is the essential counterexample. Terms going to 0 is NECESSARY but not SUFFICIENT.

2. **"Sequence and series are the same thing"**
   - Address: Create explicit parallel examples. The sequence $\{1/n\}$ converges to 0, but the series $\sum 1/n$ diverges to infinity.

3. **"Adding infinitely many things gives infinity"**
   - Address: The geometric series $1/2 + 1/4 + 1/8 + \cdots = 1$ proves finite sums are possible.

4. **"Bounded means convergent" (for sequences)**
   - Address: $\{(-1)^n\}$ is bounded between -1 and 1 but diverges due to oscillation.

5. **"The index doesn't matter"**
   - Address: Starting at $n=0$ vs $n=1$ affects the sum (though not convergence). Precision matters.

---

## Assessment Notes

- Monitor understanding during the sequence vs series discussion
- Check for confusion between $a_n$ (term) and $S_n$ (partial sum)
- Exit ticket reveals whether students understand the nth term test limitation
- Note which students struggle with limit evaluation vs conceptual understanding

---

## Connections

**Prior knowledge:**
- Limit notation and evaluation (Unit 1)
- Function behavior as $x \to \infty$
- Basic algebra and pattern recognition

**Future connections:**
- Geometric series formula (Class 56)
- Integral test (Class 57)
- Taylor series (Classes 61-62)
- All subsequent convergence tests build on partial sum definition
- Error bounds rely on understanding convergence (Class 63)

---

## Notation Notes

Establish consistent notation from the start:

- $a_n$: the $n$th term of a sequence
- $\{a_n\}$: the entire sequence
- $S_n$: the $n$th partial sum
- $\sum_{n=1}^{\infty} a_n$ or $\sum a_n$: the infinite series
- If the series converges, $S = \sum_{n=1}^{\infty} a_n$ denotes the sum

Students must distinguish between $a_n \to 0$ (terms approach zero) and $S_n \to S$ (partial sums approach $S$).
