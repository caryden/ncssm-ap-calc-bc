# Research: Related Rates Problem Solving

## Overview

This document summarizes research on how expert educators teach advanced related rates problems involving Pythagorean theorem, similar triangles, and trigonometry. It informs the lesson plan and presentation spec for Class 22.

---

## 1. Expert Teaching Analysis

### Paul's Online Math Notes: Related Rates Examples

**Source:** [Paul's Online Math Notes - Related Rates](https://tutorial.math.lamar.edu/classes/calci/relatedrates.aspx)

**Core Problem Types:**

1. **Pythagorean Theorem Problems:** Ladder sliding, boat docking
2. **Similar Triangles:** Shadow problems, conical tank
3. **Trigonometric:** Angle of elevation changing
4. **Combined:** Multiple relationships in one problem

**Teaching Emphasis:**

> "The key to related rates problems is to determine the correct equation relating the various quantities. This equation will then be implicitly differentiated."

### Khan Academy: Solving Related Rates Problems

**Source:** [Khan Academy - Related Rates Solving](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-contextual-applications-new/ab-4-5)

**Problem-Solving Framework:**

1. **Read carefully:** Identify ALL quantities and which are changing
2. **Draw and label:** Update the diagram at the "snapshot" moment
3. **Find the equation:** This is often the hardest step
4. **Differentiate and solve:** The calculus part is usually straightforward

### Research on Student Difficulties

**Source:** [ResearchGate - Related Rates Problem Solving](https://www.researchgate.net/publication/385538906)

**Key Findings:**

Students struggle most with:
- Identifying the correct geometric relationship
- Knowing when to use similar triangles vs. Pythagorean theorem
- Setting up problems with multiple related quantities
- Managing constants vs. variables

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Animated Ladder** | Ladder sliding down wall in real-time | Classic problem made concrete |
| **Shadow Diagram** | Person walking, shadow extending | Shows similar triangles |
| **Rotating Searchlight** | Light sweeping, point moving | Visualizes trig-based rates |
| **Conical Tank** | Water draining, showing level drop | 3D visualization |
| **Step-by-Step Reveal** | Show equation development progressively | Models problem-solving process |
| **Variable Tracking** | Dashboard showing all rates | Connects quantities to rates |

### Recommended D3 Visualization

**Ladder Problem Simulator:**
1. Display wall, ground, and ladder
2. Animate ladder sliding (base moving right, top moving down)
3. Show real-time values: x (base distance), y (top height), constant length
4. Display: dx/dt, dy/dt with relationship shown
5. Let user set dx/dt and see dy/dt update

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Ladder length changes"** | Labeling the hypotenuse as a variable | In ladder problems, the LADDER is constant. Only base and height change. |
| **"Similar triangles have equal sides"** | Misremembering similarity | Similar triangles have PROPORTIONAL sides: a/b = c/d |
| **"All variables are positive"** | Ignoring decreasing quantities | If top of ladder moves DOWN, dy/dt is NEGATIVE |
| **"Use the moment's values in the equation"** | Substituting before differentiating | Write general equation, differentiate, THEN substitute moment values |
| **"Shadow extends at same rate as walking"** | Not using proportional reasoning | Shadow rate depends on similar triangles ratio |
| **"Angles don't need derivatives"** | Forgetting d/dt(tan θ) requires dθ/dt | If angle changes, apply chain rule: d/dt(tan θ) = sec²θ · (dθ/dt) |
| **"One rate determines another directly"** | Missing the connecting equation | Rates are related THROUGH an equation, not directly |

### Misconception-Busting Exercises

1. **Ladder Problem Setup:**
   - x² + y² = L² where L = constant (ladder length)
   - Differentiate: 2x(dx/dt) + 2y(dy/dt) = 0 (note: dL/dt = 0)
   - If dx/dt > 0 (base moving away), then dy/dt < 0 (top moving down)

2. **Similar Triangles:**
   - Person height / shadow = pole height / (shadow + distance)
   - h/s = H/(s + d) → cross multiply and differentiate

3. **Sign Check:**
   - If a quantity is increasing, its rate is positive
   - If a quantity is decreasing, its rate is negative
   - Always check: does the sign match what's physically happening?

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 22 lesson should:

### Opening (5 min)
- Review: 4-step method from Class 21
- Preview: Today's problems involve geometry (Pythagorean, similar triangles, trig)
- Challenge: "A ladder slides down a wall. If the base moves at 2 ft/s, how fast does the top drop?"

### Pythagorean Theorem Problems (12 min)

**The Sliding Ladder:**
1. Draw: Ladder of length 10 ft against wall
2. Variables: x = base distance, y = height on wall
3. Relationship: x² + y² = 100 (Pythagorean theorem)
4. Given: dx/dt = 2 ft/s. Find: dy/dt when x = 6 ft.
5. Differentiate: 2x(dx/dt) + 2y(dy/dt) = 0
6. When x = 6: y = 8 (from 6² + y² = 100)
7. Substitute: 2(6)(2) + 2(8)(dy/dt) = 0
8. Solve: dy/dt = -24/16 = -1.5 ft/s (negative = moving down)

**Key Insight:** The ladder length is CONSTANT, so its derivative is 0.

**Variation: Boat Approaching Dock**
- Rope from dock to boat, boat moving in
- Same Pythagorean setup

### Similar Triangles Problems (12 min)

**Shadow Problem:**
1. Person (6 ft) walks away from 15 ft lamppost at 4 ft/s
2. How fast is shadow lengthening?
3. Let s = shadow length, x = distance from pole
4. Similar triangles: 6/s = 15/(s + x)
5. Cross multiply: 15s = 6(s + x) → 9s = 6x → s = (2/3)x
6. Differentiate: ds/dt = (2/3)(dx/dt) = (2/3)(4) = 8/3 ft/s

**Conical Tank:**
1. Tank: height 10 m, radius 5 m (ratio r:h = 1:2)
2. Water drains at 3 m³/min
3. How fast is level dropping when h = 4 m?
4. By similar triangles: r = h/2
5. Volume: V = (1/3)πr²h = (1/3)π(h/2)²h = πh³/12
6. Differentiate: dV/dt = (πh²/4)(dh/dt)
7. Substitute: -3 = (π·16/4)(dh/dt)
8. Solve: dh/dt = -3/(4π) m/min

### Trigonometric Problems (8 min)

**Angle of Elevation:**
1. Balloon rises at 10 ft/s
2. Observer is 500 ft from launch point
3. How fast is angle of elevation changing when balloon is 500 ft high?
4. tan(θ) = h/500 where h = balloon height
5. Differentiate: sec²(θ)(dθ/dt) = (1/500)(dh/dt)
6. When h = 500: tan(θ) = 1, so θ = π/4, sec²(θ) = 2
7. Substitute: 2(dθ/dt) = (1/500)(10)
8. Solve: dθ/dt = 1/100 rad/s

### Practice and Problem-Solving Strategies (8 min)

**Strategy Guide:**
- Right angle? → Pythagorean theorem
- Proportional shapes? → Similar triangles
- Angle changing? → Trigonometric function

**Student Practice:**
- Mixed problems requiring strategy selection
- Emphasis on setup and correct equation identification

### Closing (5 min)
- Summary: Choose equation based on geometry
- Common patterns: Pythagorean (ladder), Similar triangles (shadow), Trig (angle)
- Exit ticket: Identify which approach for a given scenario
- Preview: Linearization and L'Hospital's Rule

### Key Principles Throughout

1. **Draw carefully:** Label all changing AND constant quantities
2. **Choose the right equation:** Pythagorean, similar triangles, or trig
3. **Constants have zero derivative:** Don't differentiate constants as if they're variables
4. **Check signs:** Decreasing quantities have negative rates
5. **Verify reasonableness:** Does the answer make physical sense?

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **4.5:** Solving Related Rates Problems

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (applying systematic method)
- **MP 2:** Connecting Representations (diagram ↔ equation)
- **MP 3:** Justification (explaining choice of equation)

### AP Exam Connection
- Related rates FRQs often involve Pythagorean theorem or similar triangles
- Must show clear work for partial credit
- Common prompts: ladder problems, shadow problems, filling/draining tanks
- Scoring rubric rewards:
  - Correct equation setup
  - Proper differentiation
  - Correct answer with units

### Fluency Goal
By the end of this class, students should:
- Identify which geometric relationship to use
- Solve Pythagorean-type related rates problems
- Apply similar triangles to shadow/tank problems
- Handle basic trigonometric rate problems

---

## Sources

- [Paul's Online Math Notes: Related Rates](https://tutorial.math.lamar.edu/classes/calci/relatedrates.aspx)
- [Khan Academy: Solving Related Rates Problems](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-contextual-applications-new/ab-4-5)
- [Whitman College: Related Rates](https://www.whitman.edu/mathematics/calculus_online/section06.02.html)
- [UC Davis: Related Rates Problems](https://www.math.ucdavis.edu/~kouba/CalcOneDIRECTORY/relatedratesdirectory/RelatedRates.html)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
