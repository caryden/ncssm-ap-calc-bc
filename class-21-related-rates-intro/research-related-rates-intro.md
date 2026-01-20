# Research: Related Rates Introduction

## Overview

This document summarizes research on how expert educators introduce related rates problems. It informs the lesson plan and presentation spec for Class 21.

---

## 1. Expert Teaching Analysis

### Khan Academy: Analyzing Related Rates Problems

**Source:** [Khan Academy - Related Rates](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-contextual-applications-new/ab-4-4/a/analyzing-problems-involving-related-rates)

**Core Pedagogical Strategy:**

Khan Academy emphasizes that related rates problems involve:
- Multiple quantities changing with respect to time
- A relationship (equation) connecting those quantities
- Implicit differentiation to connect the rates

**Key Teaching Points:**

1. **All variables are functions of time:** Even if not explicitly stated
2. **Find an equation relating the quantities:** Geometric, physical, etc.
3. **Differentiate with respect to time:** Apply implicit differentiation
4. **Substitute known values:** Solve for the unknown rate

### Paul's Online Math Notes: Related Rates

**Source:** [Paul's Online Math Notes - Related Rates](https://tutorial.math.lamar.edu/classes/calci/relatedrates.aspx)

**Teaching Framework:**

1. **Draw a picture:** Label ALL changing quantities
2. **Identify what's given and what's asked:** Known rates, unknown rate
3. **Write an equation:** Relate the quantities (NOT the rates yet)
4. **Differentiate implicitly:** Now involve the rates
5. **Substitute and solve:** Use values at the specific moment

**Critical Warning:**
> "You must write the relationship between quantities BEFORE differentiating. Never substitute specific values before taking the derivative."

### Matheno: 4 Steps to Solve Any Related Rates Problem

**Source:** [Matheno - Related Rates](https://www.matheno.com/4-steps-to-solve-related-rates-problem-part-1/)

**Four-Step Method:**

1. **Draw a picture and define variables**
2. **Write an equation relating the variables**
3. **Differentiate with respect to time t**
4. **Substitute known values and solve**

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Animated Diagram** | Show quantities changing together | Makes "related" concrete |
| **Before/After Snapshots** | Two frames showing change | Illustrates dynamic nature |
| **Variable Labeling** | Clear labels for all changing quantities | Prevents confusion |
| **Rate Arrows** | Arrows showing direction and speed of change | Visualizes rates |
| **Equation First** | Show geometric relationship before rates | Prevents premature substitution |
| **Time Slider** | Slider controls t, diagram updates | Interactive exploration |

### Recommended D3 Visualization

**Expanding Circle/Ladder Problem Simulator:**
1. Display geometric situation (e.g., circle with growing radius)
2. Time slider controls the scenario
3. Show all quantities updating: radius, area, circumference
4. Display current values AND current rates
5. Show the relationship equation and its derivative

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Substitute values before differentiating"** | Most common error in related rates | NEVER substitute specific numbers until AFTER taking the derivative |
| **"Constant quantities need variables"** | Labeling constants with letters | If a quantity doesn't change, it's a CONSTANT. Its derivative is 0. |
| **"Variables don't depend on time"** | Not applying chain rule properly | Every variable is implicitly a function of t. Use chain rule: d/dt(x²) = 2x·(dx/dt) |
| **"The rates are constant"** | Assuming rates don't change | Rates can change! dr/dt at t=1 may differ from dr/dt at t=2 |
| **"Don't need an equation first"** | Trying to work with rates directly | You MUST have an equation relating quantities before differentiating |
| **"Negative rates mean error"** | Misinterpreting negative derivatives | Negative rate means decreasing. This is often correct! |
| **"One equation fits all"** | Not identifying the right relationship | Choose equation based on what you're relating (Pythagorean, area, volume, etc.) |

### Misconception-Busting Exercises

1. **Order of Operations:**
   - WRONG: If r = 3, then A = πr² = 9π, so dA/dt = 0 (treated r as constant)
   - RIGHT: A = πr², so dA/dt = 2πr·(dr/dt). THEN substitute r = 3.

2. **Identifying Constants:**
   - Ladder problem: ladder length is CONSTANT (doesn't change)
   - Expanding circle: radius is VARIABLE (changes with time)

3. **Chain Rule Application:**
   - d/dt(x²) = 2x·(dx/dt), NOT just 2x
   - Every variable needs d/dt applied via chain rule

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 21 lesson should:

### Opening (5 min)
- Scenario: "A pebble is dropped into a pond, creating circular ripples"
- The radius grows at 2 cm/s. How fast is the area growing when r = 5 cm?
- This is a "related rates" problem: two rates are connected!

### The Concept of Related Rates (8 min)

**What Are Related Rates?**
- Multiple quantities changing with time
- A geometric or physical equation connects them
- We use calculus to relate their RATES of change

**Key Insight:**
All variables are implicitly functions of time, so we use implicit differentiation with respect to t.

**Example Setup:**
- Expanding circle: radius r changes with time
- Area A = πr²
- Both A and r are functions of t
- We want: how does dA/dt relate to dr/dt?

### The Solution Method (12 min)

**Step 1: Draw and label**
- Sketch the situation
- Label ALL changing quantities with variables
- Identify what's given (known rates) and what's asked (unknown rate)

**Step 2: Write an equation relating quantities**
- Find a formula connecting the variables
- DO NOT substitute numbers yet!
- For circle: A = πr²

**Step 3: Differentiate with respect to time**
- Implicit differentiation with respect to t
- Remember: d/dt(r²) = 2r·(dr/dt) by chain rule
- For circle: dA/dt = 2πr·(dr/dt)

**Step 4: Substitute and solve**
- NOW plug in the given values
- If r = 5 and dr/dt = 2: dA/dt = 2π(5)(2) = 20π cm²/s

### Classic Introductory Problems (12 min)

**Example 1: Expanding Circle**
- Given: dr/dt = 2 cm/s
- Find: dA/dt when r = 5 cm
- Equation: A = πr²
- Differentiate: dA/dt = 2πr·(dr/dt)
- Substitute: dA/dt = 2π(5)(2) = 20π cm²/s

**Example 2: Expanding Sphere**
- Given: dr/dt = 3 cm/s
- Find: dV/dt when r = 10 cm
- Equation: V = (4/3)πr³
- Differentiate: dV/dt = 4πr²·(dr/dt)
- Substitute: dV/dt = 4π(100)(3) = 1200π cm³/s

**Example 3: Filling Cone (Setup only)**
- Water pours into cone at 2 m³/min
- Cone has height 6 m, radius 3 m
- Find: how fast is water level rising when h = 2 m?
- Identify: what's the relationship between volume and height?

### Practice (8 min)
- Students practice setup and solution
- Emphasize: equation first, differentiate, THEN substitute
- Peer review for correct procedure

### Closing (5 min)
- Summary: 4-step method for related rates
- Critical rule: NEVER substitute before differentiating
- Exit ticket: Set up (don't solve) a related rates problem
- Preview: More complex related rates scenarios (Pythagorean, trig)

### Key Principles Throughout

1. **Equation first:** Relate quantities BEFORE differentiating
2. **Everything is a function of t:** Apply chain rule to all variables
3. **Never substitute early:** Specific values come AFTER differentiation
4. **Check your answer:** Does the sign make sense? Does magnitude make sense?
5. **Draw clearly:** Good diagrams prevent errors

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **4.4:** Introduction to Related Rates

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (systematic method)
- **MP 2:** Connecting Representations (diagram ↔ equation ↔ rates)
- **MP 4:** Communication (explaining setup and solution)

### AP Exam Connection
- Related rates appear on nearly every FRQ
- Students must show clear setup for full credit
- Common errors that lose points:
  - Substituting before differentiating
  - Missing chain rule factors
  - Incorrect signs
  - Units not included

### Fluency Goal
By the end of this class, students should:
- Identify related rates problems
- Apply the 4-step solution method
- Correctly use implicit differentiation with respect to time
- Solve basic expanding/contracting shape problems

---

## Sources

- [Khan Academy: Analyzing Related Rates Problems](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-contextual-applications-new/ab-4-4/a/analyzing-problems-involving-related-rates)
- [Paul's Online Math Notes: Related Rates](https://tutorial.math.lamar.edu/classes/calci/relatedrates.aspx)
- [Matheno: 4 Steps to Solve Related Rates](https://www.matheno.com/4-steps-to-solve-related-rates-problem-part-1/)
- [UC Davis: Related Rates Problems](https://www.math.ucdavis.edu/~kouba/CalcOneDIRECTORY/relatedratesdirectory/RelatedRates.html)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
