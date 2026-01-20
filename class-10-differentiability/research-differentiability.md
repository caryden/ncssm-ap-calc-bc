# Research: Differentiability and Continuity

## Overview

This document summarizes research on how expert educators teach the relationship between differentiability and continuity. It informs the lesson plan and presentation spec for Class 10.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Essence of Calculus Series

**Source:** [3blue1brown.com - Essence of Calculus](https://www.3blue1brown.com/topics/calculus)

**Core Pedagogical Strategy:**

Grant Sanderson approaches differentiability through the lens of "local linearity." A function is differentiable at a point if, when you zoom in sufficiently close, the graph looks like a straight line. This visual intuition explains why corners and cusps break differentiability—no amount of zooming makes them look linear.

**Key Teaching Moves:**

1. **Visual demonstration first** - Show zooming into smooth curves vs. corners
2. **Connect to derivative definition** - The limit of secant slopes must exist (both sides agree)
3. **Physical interpretation** - A particle's velocity must be well-defined at every instant

**Conceptual Anchor:**

> "Differentiability means the function has no 'sharp' features—it's smooth enough that a tangent line makes sense."

**Visualization Techniques:**
- Zooming animation showing local linearity
- Side-by-side comparison of differentiable vs. non-differentiable points
- Animated secant lines approaching from left and right

### Professor Leonard: Calculus 1 Lectures

**Source:** [Professor Leonard YouTube - Calculus 1](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

Professor Leonard takes a thorough, step-by-step approach emphasizing:
- The formal definition via left and right derivatives
- Multiple examples of each failure mode
- Clear connections to the limit definition

**Approach to Differentiability:**

1. Review the derivative definition as a limit
2. Explain that differentiability requires the limit to exist
3. Categorize why limits can fail: corners, cusps, vertical tangents, discontinuities
4. Work through algebraic examples showing left/right derivative calculations

**Strengths:**
- Rigorous treatment of edge cases
- Extensive worked examples
- Clear procedural guidance

**Considerations for our approach:**
- We have limited time (50 minutes) compared to his longer lectures
- Balance algebraic verification with visual understanding

### Khan Academy: Connecting Differentiability and Continuity

**Source:** [Khan Academy - Differentiability](https://www.khanacademy.org/math/ap-calculus-ab/ab-differentiation-1-new)

**Key Teaching Points:**

1. **Differentiability implies continuity** - This is a theorem that should be proved
2. **Continuity does not imply differentiability** - Counterexamples are essential
3. **The contrapositive** - If not continuous, then not differentiable

**Two-Part Structure:**
- Part 1: Prove differentiability ⇒ continuity
- Part 2: Show examples where continuous but not differentiable

**Interactive Practice:**
- Identifying non-differentiable points from graphs
- Determining differentiability using the definition
- Matching functions to their failure modes

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Zoom-In Animation** | Magnify around a point to show local linearity (or lack thereof) | Builds visual intuition for differentiability |
| **Left/Right Secants** | Show secant lines approaching from both sides with different slopes | Demonstrates why corners fail the derivative test |
| **Tangent Line Attempt** | Try to draw a tangent at a corner—which slope? | Shows the ambiguity at non-differentiable points |
| **Failure Gallery** | Side-by-side display of all four failure modes | Creates reference framework for students |
| **Continuity-Differentiability Venn Diagram** | Shows differentiable ⊂ continuous | Clarifies the logical relationship |
| **Slope Value Display** | Show left derivative vs. right derivative numerically | Connects visual to algebraic |

### Recommended D3 Visualization

**Interactive Differentiability Explorer:**
1. Display function with potential non-differentiable points
2. Let user select a point to investigate
3. Show animated secant lines from left and right
4. Display: "Left derivative: [value]" and "Right derivative: [value]"
5. If equal → differentiable; if not → show why it fails
6. Option to toggle between different function types (corner, cusp, vertical tangent)

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Continuous means differentiable"** | Most common error (37% of students per Bezuidenhout, 2001) | Use |x| as canonical counterexample. Emphasize: differentiable ⇒ continuous, but NOT vice versa |
| **"The graph must be 'broken' to fail differentiability"** | Students associate only discontinuities with non-differentiability | Show smooth-looking graphs with corners/cusps that are continuous |
| **"Corners are discontinuities"** | Confusing the concepts | Trace finger along |x|—never have to lift your finger (continuous), but direction changes abruptly |
| **"Vertical tangent means undefined function"** | Confusing vertical tangent with vertical asymptote | Show f(x) = x^(1/3)—the function IS defined at 0, but slope is infinite |
| **"The derivative equals infinity at a cusp"** | Thinking any sharp point has infinite slope | Distinguish: corner has finite but disagreeing slopes; cusp/vertical tangent involve infinity |
| **"Differentiability and continuity are the same thing"** | Teachers sometimes conflate these concepts | Use the theorem-with-counterexample structure explicitly |

### Misconception-Busting Visualizations

1. **The |x| Analysis:** Show f(x) = |x| at x = 0 with:
   - Left derivative: lim(h→0⁻) [|h| - 0]/h = lim(h→0⁻) -h/h = -1
   - Right derivative: lim(h→0⁺) [|h| - 0]/h = lim(h→0⁺) h/h = +1
   - These don't match → not differentiable

2. **The Hierarchy Diagram:** Show nested sets:
   - All functions (biggest)
   - Continuous functions (subset)
   - Differentiable functions (smaller subset)
   - Smooth/C^∞ functions (smallest subset)

3. **Failure Mode Gallery:**
   - Corner: f(x) = |x| at x = 0
   - Cusp: f(x) = x^(2/3) at x = 0
   - Vertical tangent: f(x) = x^(1/3) at x = 0
   - Discontinuity: piecewise with jump at x = 0

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 10 lesson should:

### Opening (5 min)
- Quick review: "What does the derivative measure? How is it defined?"
- Pose question: "Can we always find a derivative? When might it fail?"

### The Theorem: Differentiability Implies Continuity (10 min)
- State the theorem clearly
- Prove it (sketch): If f'(a) exists, then lim[x→a] f(x) = f(a)
- Emphasize the DIRECTION: differentiable → continuous
- Ask: "Does the reverse hold?"

### Counterexamples: Continuous but Not Differentiable (15 min)
- **The absolute value function** - canonical example
  - Show it's continuous (no breaks)
  - Show left and right derivatives differ (-1 vs +1)
  - Visual: secant lines from each side
- **Failure Mode Gallery** - present all four types:
  1. Corners (|x|) - slopes disagree
  2. Cusps (x^(2/3)) - slopes → ±∞
  3. Vertical tangents (x^(1/3)) - slope → ∞
  4. Discontinuities (jump) - prerequisite fails

### Interactive Exploration (10 min)
- D3 visualization: students explore different functions
- Practice identifying non-differentiable points from graphs
- Algebraic verification for selected examples

### Practice and Application (5 min)
- Given a piecewise function, determine where it's:
  - Continuous
  - Differentiable
- Connect to AP exam format

### Closing (5 min)
- Summary: "Differentiable ⇒ Continuous, but Continuous ⇏ Differentiable"
- Exit ticket: Identify failure modes
- Preview: Now that we know WHEN derivatives exist, let's find them efficiently (Power Rule)

### Key Principles Throughout

1. **Theorem before counterexample:** Establish the positive result, then show its limits
2. **Multiple failure modes:** Students need to see ALL the ways differentiability can fail
3. **Visual and algebraic:** Show both why visually AND verify algebraically
4. **Logical precision:** Emphasize the direction of implication
5. **AP Exam connection:** This relationship is frequently tested

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **2.4:** Connecting Differentiability and Continuity

### Mathematical Practices Emphasized
- **MP 2:** Connecting Representations (visual and algebraic views of differentiability)
- **MP 3:** Justification (proving differentiability or its absence)
- **MP 4:** Communication (precise use of "differentiable," "continuous," implication)

### AP Exam Connection
- Multiple choice questions frequently test the relationship
- Common question type: "If f is differentiable at x = a, which must be true?"
- Free response may require checking differentiability of piecewise functions
- Students must know: differentiable ⇒ continuous, continuous ⇏ differentiable

### Sample AP-Style Questions
1. "Give an example of a function continuous at x = 0 but not differentiable there."
2. "If f'(2) = 5, what can you conclude about lim[x→2] f(x)?"
3. "The graph shows f is continuous. At which points is f NOT differentiable?"

---

## Sources

- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Khan Academy: Connecting Differentiability and Continuity](https://www.khanacademy.org/math/ap-calculus-ab/ab-differentiation-1-new)
- [Professor Leonard: Calculus 1 Playlist](https://www.youtube.com/@ProfessorLeonard)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
- [Calculus Workshop: Continuity and Differentiability](https://calcworkshop.com/derivatives/continuity-and-differentiability/)
- [ERIC - Calculus Student Understanding of Continuity](https://eric.ed.gov/?id=ED565992)
- [Fiveable: Connecting Differentiability and Continuity](https://fiveable.me/ap-calc/unit-2/determining-when-derivatives-do-do-not-exist/study-guide/Lk6aXtIExtqciduDNGhk)
