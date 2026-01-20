# Lesson Plan: Defining Limits and Limit Notation

## Class 1 | February 3, 2026 | Unit 1: Limits and Continuity

---

## Overview

Building on yesterday's motivation, this class introduces the formal definition of a limit and the standard notation used throughout calculus. Students will learn to read, write, and interpret limit notation while developing intuition for what "approaching" means mathematically.

**CED Topic:** 1.2 - Defining Limits and Using Limit Notation

---

## Learning Objectives

By the end of this class, students will be able to:

1. State the informal definition of a limit
2. Use and interpret limit notation: lim(x→a) f(x) = L
3. Explain the distinction between the limit of a function and the value of the function
4. Identify when a limit does not exist

---

## Materials Needed

- Presentation slides with interactive visualizations
- Desmos for demonstrations
- Graphing calculators
- Practice worksheet (limits from graphs)

---

## Class Structure (50 minutes)

### Warm-Up (5 min)

**Quick Review:** Yesterday's exit ticket responses

Display a few student explanations of why we can't substitute t = 0 for instantaneous velocity. Highlight the key insight: we need to describe what happens as we *approach* zero, not *at* zero.

**Connection:** "Today we formalize this idea of 'approaching' with precise mathematical notation."

### Core Instruction: The Limit Definition (15 min)

**Informal Definition:**

> We write lim(x→a) f(x) = L to mean:
> "As x gets closer and closer to a (but not equal to a), f(x) gets closer and closer to L."

**Key Points to Emphasize:**

1. **"Closer and closer"** - Not just near, but arbitrarily close
2. **"But not equal to a"** - We never actually reach x = a
3. **"Gets closer to L"** - The output values approach L

**Interactive Visualization:** Limit Explorer
- Show a function with a "hole" at x = 2 (e.g., f(x) = (x² - 4)/(x - 2))
- Animate a point approaching x = 2 from both sides
- Display the y-value as x approaches 2
- Conclusion: lim(x→2) f(x) = 4, even though f(2) is undefined

**Notation Breakdown:**

```
lim    f(x) = L
x→a

"The limit of f(x) as x approaches a equals L"
```

**Important Distinction:**
- lim(x→a) f(x) is about what f(x) *approaches*
- f(a) is the actual value at a
- These can be different! (Or f(a) might not even exist!)

### Guided Examples (10 min)

**Example 1: Limit Exists, Function Defined**
- f(x) = x² at x = 3
- lim(x→3) x² = 9 and f(3) = 9
- Limit equals function value (this is "nice" behavior)

**Example 2: Limit Exists, Function Undefined**
- f(x) = (x² - 4)/(x - 2) at x = 2
- Function is undefined at x = 2 (0/0)
- But lim(x→2) f(x) = 4
- The limit tells us what the function *wants* to be

**Example 3: Limit Does Not Exist**
- f(x) = 1/x at x = 0
- As x → 0⁺, f(x) → +∞
- As x → 0⁻, f(x) → -∞
- Different behaviors from left and right → no limit

**Interactive Demo:** Use the limit visualization to show all three cases.

### One-Sided Limits (8 min)

**Introduce Notation:**
- lim(x→a⁺) f(x) = L (right-hand limit: approaching from the right)
- lim(x→a⁻) f(x) = L (left-hand limit: approaching from the left)

**Key Theorem:**
> lim(x→a) f(x) = L if and only if BOTH:
> - lim(x→a⁺) f(x) = L AND
> - lim(x→a⁻) f(x) = L

**Example:** Piecewise function
```
f(x) = { x + 1,  if x < 2
       { 5,      if x = 2
       { 3 - x,  if x > 2
```

- lim(x→2⁻) f(x) = 3
- lim(x→2⁺) f(x) = 1
- Left ≠ Right, so lim(x→2) f(x) does not exist
- Note: f(2) = 5, but that's irrelevant to the limit!

### Practice Activity (10 min)

**Pair Work:** Limits from Graphs

Provide 6-8 graphs with various scenarios:
1. Continuous function (limit = value)
2. Hole in graph (limit exists, value doesn't)
3. Jump discontinuity (limit DNE)
4. Vertical asymptote (limit DNE or infinite)
5. Removable discontinuity (limit exists, value different)

For each graph, students find:
- lim(x→a⁻) f(x)
- lim(x→a⁺) f(x)
- lim(x→a) f(x)
- f(a) (if defined)

### Closing (2 min)

**Summary Statement:**
"The limit lim(x→a) f(x) = L tells us where f(x) is *heading* as x approaches a—regardless of what actually happens at x = a."

**Exit Ticket:** Write in limit notation:
"As x approaches 5, the value of g(x) approaches 12."

**Preview:** Tomorrow we'll learn how to find limits from graphs and tables—the graphical and numerical perspectives on limits.

---

## Differentiation Strategies

### For students who need more support:
- Provide a notation reference card
- Use physical motion metaphors (walking toward but not stepping on a point)
- Start with continuous functions where limit = value

### For advanced students:
- Introduce the formal ε-δ definition conceptually (not for assessment)
- Explore limits that oscillate (like sin(1/x) near 0)
- Challenge: Can you construct a function where lim(x→a) f(x) exists but f(a) ≠ lim(x→a) f(x)?

---

## Common Misconceptions

1. **"The limit is the value at that point"**
   - Address: Emphasize examples where these differ

2. **"If f(a) is undefined, the limit doesn't exist"**
   - Address: (x² - 4)/(x - 2) example—limit is 4 even though f(2) is undefined

3. **"The limit is what we get when we substitute"**
   - Address: That works for continuous functions but not always

4. **Notation confusion with direction**
   - Address: x → a⁺ means x approaches a from values greater than a (from the right)

---

## Assessment

- Observe partner discussions during practice
- Collect exit tickets to check notation understanding
- Practice problems for homework

---

## Connections

**Prior knowledge:**
- Function evaluation
- Reading graphs
- Concept of "approaching" from Class 0

**Future connections:**
- Graphical limits (Class 2)
- Algebraic limit techniques (Classes 3-4)
- Defining the derivative as a limit (Unit 2)
