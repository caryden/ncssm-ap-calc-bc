# Research: Algebraic Limits - Part 1

## Overview

This document summarizes research on teaching algebraic limit techniques including direct substitution, factoring, and rationalizing. It informs the lesson plan and presentation spec for Class 4.

**CED Topics:** 1.5 (Determining Limits Using Algebraic Properties), 1.6 (Determining Limits Using Algebraic Manipulation)

---

## 1. Expert Teaching Analysis

### Khan Academy: Limits by Factoring and Rationalization

**Source:** [Khan Academy - Limits using algebraic manipulation](https://www.khanacademy.org/math/ap-calculus-ab/ab-limits-new/ab-1-6/v/limit-by-factoring)

**Approach:**

1. **Try direct substitution first** - Always start by plugging in the value
2. **Recognize indeterminate form** - If you get 0/0, algebraic manipulation is needed
3. **Factor and cancel** - For polynomial limits, factor numerator and denominator
4. **Rationalize** - For limits involving radicals, multiply by conjugate

**Key Teaching Insight:**

> "When you get 0/0, that's not the answer—it's a signal that more work is needed."

Khan emphasizes that 0/0 is an "indeterminate form" that means the limit might exist but requires algebraic work to find.

### Paul's Online Math Notes: Computing Limits

**Source:** [Paul's Online Math Notes - Computing Limits](https://tutorial.math.lamar.edu/Classes/CalcI/ComputingLimits.aspx)

**Approach:**

1. **Limit Laws First** - Present the algebraic properties of limits (sum, product, quotient rules)
2. **Direct Substitution Property** - If function is continuous at point, limit = function value
3. **Factoring Technique** - Show step-by-step factoring for polynomial fractions
4. **Rationalization Technique** - Detailed examples with conjugate multiplication

**Key Teaching Insight:**

> "When faced with 0/0, there is usually a common factor that can be canceled. The goal is to find and eliminate what's causing both numerator and denominator to be zero."

### Mathematics LibreTexts: Algebraic Limit Techniques

**Technique Hierarchy:**

1. **Substitution** - Try first; works for continuous functions
2. **Factoring** - When numerator and denominator share a common factor
3. **Rationalization** - When square roots create 0/0 indeterminate forms
4. **Expanding** - Sometimes expanding rather than factoring helps
5. **Common Denominator** - For complex fractions

---

## 2. Common Misconceptions

| Misconception | Why Students Think This | How to Address |
|---------------|------------------------|----------------|
| **"0/0 means the limit is 0 or undefined"** | Students treat 0/0 like a regular division | Emphasize: 0/0 is a SIGNAL, not an answer. It means "more work needed." Show examples where 0/0 leads to different finite values. |
| **"I can cancel terms that aren't factors"** | Students try to cancel x from (x+1)/(x+2) | Review factor vs. term distinction. Only FACTORS (things being multiplied) can cancel. |
| **"Plug in before simplifying"** | Students skip algebraic manipulation | Model the workflow: try substitution → recognize 0/0 → simplify → try again |
| **"The hole means the limit doesn't exist"** | Confusing function value with limit | Show graph with hole: function undefined but limit exists. The limit describes behavior NEAR the point. |
| **"Rationalization creates extra terms"** | Fear of making expression more complicated | Show that multiplying by conjugate over itself = 1, so it's a legal move that strategically changes form |
| **"I need to factor perfectly on first try"** | Anxiety about finding the right factorization | Model guess-and-check factoring. Remind: we KNOW (x-a) is a factor when substituting x=a gives 0. |

---

## 3. Effective Visualization Patterns

### Pattern 1: Graph with Removable Discontinuity

**What to Show:**
- Graph of f(x) = (x²-1)/(x-1)
- Highlight the "hole" at x = 1
- Show that the function equals x+1 everywhere except x = 1
- Demonstrate: limit exists and equals 2, even though f(1) is undefined

**Why It Works:**
- Makes concrete that limit ≠ function value
- Shows what "removable" discontinuity means
- Connects algebra (canceling x-1) to geometry (filling the hole)

### Pattern 2: Step-by-Step Algebraic Animation

**What to Show:**
- Start with limit expression
- Highlight the substitution attempt → 0/0
- Animate factoring step-by-step
- Show cancellation (with note: valid because x ≠ a in limit)
- Final substitution gives answer

**Why It Works:**
- Models the problem-solving process
- Emphasizes the "try → recognize → manipulate → try again" workflow
- Students see each algebraic step

### Pattern 3: Rationalization Visual

**What to Show:**
- Start with expression like (√(x+1) - 1)/x
- Show conjugate multiplication as "multiplying by 1"
- Animate the algebra: (a-b)(a+b) = a² - b²
- Show how the radical disappears from numerator

**Why It Works:**
- Demystifies the conjugate technique
- Shows the strategic purpose: eliminate radical from numerator
- Connects to difference of squares identity

### Pattern 4: Decision Tree Flowchart

**What to Show:**
```
Start: Try direct substitution
  ↓
Got a number? → Done! That's the limit
  ↓
Got 0/0? → Algebraic manipulation needed
  ↓
Is it a fraction of polynomials? → Try factoring
  ↓
Does it have radicals? → Try rationalization
  ↓
Simplify and try substitution again
```

**Why It Works:**
- Provides a systematic approach
- Reduces cognitive load (don't have to "see" the technique)
- Builds procedural fluency

---

## 4. Recommended Pedagogical Approach

### Lesson Structure (50 minutes)

**Opening Hook (5 min):**
- Present: lim(x→2) (x²-4)/(x-2)
- Try substitution: get 0/0
- Ask: "Does this mean the limit doesn't exist? Let's find out."

**Limit Laws Review (8 min):**
- Sum/difference: lim(f±g) = lim f ± lim g
- Product: lim(fg) = lim f · lim g
- Quotient: lim(f/g) = lim f / lim g (if lim g ≠ 0)
- These laws are WHY direct substitution works for continuous functions

**Factoring Technique (12 min):**
- Work through (x²-4)/(x-2) from opening
- Factor: ((x+2)(x-2))/(x-2)
- Cancel: valid because x ≠ 2 in the limit process
- Substitute: lim = 4
- Show graph with hole at (2, 4)

**Rationalization Technique (12 min):**
- Example: lim(x→0) (√(x+4) - 2)/x
- Multiply by conjugate
- Simplify: difference of squares eliminates radical
- Final answer: 1/4
- Emphasize: we multiply by 1, just in a clever form

**Guided Practice (10 min):**
- Students work in pairs on:
  1. lim(x→3) (x²-9)/(x-3)
  2. lim(x→0) (√(x+1) - 1)/x
- Circulate and address misconceptions

**Closing (3 min):**
- Summarize the workflow: substitute → recognize 0/0 → manipulate → substitute again
- Exit ticket: "What does 0/0 tell you about a limit?"

### Key Principles

1. **Direct substitution is always first** - Build the habit
2. **0/0 is information, not an answer** - It tells us algebraic work is needed
3. **Show the graphical connection** - Every algebraic cancellation has geometric meaning
4. **Multiple examples of each technique** - Procedural fluency requires practice
5. **Decision-making practice** - "What technique would you try and why?"

---

## 5. AP Exam Alignment

### CED Learning Objectives

**LIM-1.D:** Determine limits of functions using limit theorems.
**LIM-1.E:** Determine limits of functions using equivalent expressions.

### Mathematical Practices

- **MP 1:** Implementing procedures (factoring, rationalizing)
- **MP 2:** Connecting representations (algebraic to graphical)
- **MP 4:** Communication (showing work, notation)

### Common AP Mistakes

1. Not showing the 0/0 recognition step (loses process points)
2. Canceling without noting the restriction (x ≠ a)
3. Writing "= 0/0" without continuing to solve
4. Forgetting to substitute after simplifying

---

## Sources

- [Khan Academy: Limits by factoring](https://www.khanacademy.org/math/ap-calculus-ab/ab-limits-new/ab-1-6/v/limit-by-factoring)
- [Paul's Online Math Notes: Computing Limits](https://tutorial.math.lamar.edu/Classes/CalcI/ComputingLimits.aspx)
- [Mathematics LibreTexts: Limit Laws](https://math.libretexts.org/Bookshelves/Calculus/Calculus_1/02%3A_Limits/2.03%3A_Calculating_Limits_Using_the_Limit_Laws)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
