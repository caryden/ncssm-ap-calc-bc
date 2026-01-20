# Research: Integration by Parts (BC)

## Overview

This document summarizes research on how expert educators teach integration by parts. It informs the lesson plan and presentation spec for Class 36 (CED Topic 6.11: Integrating Using Integration by Parts). This is a BC-only topic.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: "Integration by Parts"

**Source:** [3blue1brown.com/topics/calculus](https://www.3blue1brown.com/topics/calculus)

**Core Pedagogical Strategy:**

Grant Sanderson presents integration by parts as the product rule in reverse:

> "Just as u-substitution is the chain rule backwards, integration by parts is the product rule backwards."

**Key Teaching Moves:**

1. **Start with the product rule:** d/dx[uv] = u(dv/dx) + v(du/dx)
2. **Rearrange:** u(dv/dx) = d/dx[uv] - v(du/dx)
3. **Integrate both sides:** ∫u dv = uv - ∫v du
4. **The trade:** We trade ∫u dv for ∫v du - hopefully easier!

**The Critical Insight:**

> "The whole point is to replace an integral we can't do with one we can. We're shifting difficulty from one factor to another."

**Visualization Techniques:**
- Area interpretation: uv is a rectangle, integrals represent complementary areas
- Animation showing how product rule leads to integration by parts
- "Difficulty transfer" diagram showing one factor getting simpler

### Professor Leonard: "Integration by Parts"

**Source:** [Professor Leonard - Integration by Parts](https://www.youtube.com/watch?v=2I-_SV8cwsw)

**Teaching Style:**

Professor Leonard provides thorough instruction with the LIATE guideline:

**The Integration by Parts Formula:**
∫u dv = uv - ∫v du

**LIATE Rule for Choosing u:**
Choose u in this priority order:
- **L**ogarithmic functions (ln x, log x)
- **I**nverse trig functions (arctan x, arcsin x)
- **A**lgebraic functions (x², x, polynomials)
- **T**rig functions (sin x, cos x)
- **E**xponential functions (eˣ, 2ˣ)

The remaining factor becomes dv.

**Key Teaching Points:**

1. **Choose wisely:** u should become simpler when differentiated
2. **dv must be integrable:** You need to be able to find v
3. **Sometimes repeat:** Some integrals require IBP more than once
4. **Cyclic integrals:** Sometimes you get back to the original (solve algebraically!)

**Extensive Worked Examples:**

| Integral | u | dv | Result |
|----------|---|-----|--------|
| ∫x·eˣdx | x | eˣdx | xeˣ - eˣ + C |
| ∫x²·sin x dx | x² | sin x dx | (apply twice) |
| ∫ln x dx | ln x | dx | x ln x - x + C |
| ∫eˣ·sin x dx | eˣ | sin x dx | (cyclic, solve algebraically) |
| ∫arctan x dx | arctan x | dx | x arctan x - (1/2)ln(1+x²) + C |

### Khan Academy: Integration by Parts

**Source:** [Khan Academy - Integration by Parts](https://www.khanacademy.org/math/ap-calculus-bc/bc-integration-new/bc-6-11/v/integration-by-parts)

**Pedagogical Approach:**

Khan Academy emphasizes the "trade-off" nature:

1. **The goal:** Replace hard integral with easier integral
2. **The mechanism:** Differentiate one factor (u → du), integrate another (dv → v)
3. **Success criterion:** ∫v du should be easier than ∫u dv
4. **When to use:** Products where u-substitution doesn't work

**The "DI Method" (Tabular Integration):**
For repeated integration by parts (e.g., ∫x³eˣdx), use a table:

| D (derivatives of u) | I (integrals of dv) | Sign |
|----------------------|---------------------|------|
| x³ | eˣ | + |
| 3x² | eˣ | - |
| 6x | eˣ | + |
| 6 | eˣ | - |
| 0 | eˣ | + |

Result: x³eˣ - 3x²eˣ + 6xeˣ - 6eˣ + C

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Product Rule Derivation** | Show d(uv) = u dv + v du → rearrange → integrate | Explains where the formula comes from |
| **Area Interpretation** | uv as rectangle area, show complementary integrals | Geometric meaning of the formula |
| **LIATE Reference** | Visual hierarchy of function types for choosing u | Decision aid for students |
| **Difficulty Flow** | Show u getting simpler (differentiate), dv getting more complex (integrate) | Illustrates the "trade" |
| **Tabular/DI Method** | Organized table for repeated integration by parts | Efficient for polynomial × exponential/trig |
| **Cyclic Detection** | Highlight when ∫v du contains the original integral | Teaches algebraic solving technique |

### Recommended D3 Visualization

**Integration by Parts Explorer:**
1. Display ∫f(x)g(x)dx
2. User selects which factor is u and which is dv
3. System computes du and v
4. Display the result: uv - ∫v du
5. Compare complexity of original vs. new integral
6. For multiple applications, show tabular method
7. Final answer with verification

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Choose u and v directly"** | Students don't realize they choose u and dv (not v) | Emphasize: you pick u (to differentiate) and dv (to integrate). Then you COMPUTE du and v. |
| **"LIATE is a strict rule"** | Students follow LIATE blindly even when it fails | LIATE is a guideline, not a rule. The goal is making ∫v du easier. Sometimes break LIATE. |
| **"Forget the minus sign"** | Students write ∫u dv = uv + ∫v du | The formula has a MINUS sign: ∫u dv = uv - ∫v du. Emphasize this consistently. |
| **"Stop after one application"** | Students expect one IBP to finish | Some integrals require multiple applications. Polynomial × trig/exp may need IBP several times. |
| **"Can't integrate dv"** | Students choose dv that they can't integrate | dv must be something you can integrate! If you can't find v, reconsider your choice of u and dv. |
| **"Give up on cyclic integrals"** | Students don't recognize when to solve algebraically | If IBP brings you back to the original integral, call it I, set up equation, solve for I. |

### Misconception-Busting Visualizations

1. **u and dv, not u and v:** Show the setup: ∫x eˣ dx. Circle x as "u" and eˣ dx as "dv". Then compute: du = dx, v = eˣ. The v comes from integrating dv.
2. **The Minus Sign:** Color-code the formula: ∫u dv = [uv] - [∫v du]. The minus is crucial!
3. **Cyclic Example:** For ∫eˣ sin x dx, show: after two applications, you get -∫eˣ sin x dx. Call original I: I = ... - I. Solve: 2I = ..., so I = .../2.

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 36 lesson should:

### Opening (5 min)
- **Recall the product rule:** d/dx[uv] = u·v' + v·u'
- **Pose the question:** "U-substitution is the chain rule backwards. What's the product rule backwards?"
- Preview: Integration by parts - a technique for integrating products

### Deriving the Formula (8 min)
- **Start with product rule:** d(uv) = u dv + v du
- **Rearrange:** u dv = d(uv) - v du
- **Integrate both sides:** ∫u dv = uv - ∫v du
- **The trade:** We exchange one integral for another. Success = new integral is easier.

### The Method (10 min)
- **Step 1:** Identify the product ∫f(x)·g(x)dx
- **Step 2:** Choose u (the factor to differentiate) and dv (the factor to integrate)
- **Step 3:** Compute du = u' dx and v = ∫dv
- **Step 4:** Apply formula: uv - ∫v du
- **Step 5:** Evaluate the new integral

**LIATE Guideline:**
Choose u from highest priority that applies:
- **L**ogarithmic
- **I**nverse trig
- **A**lgebraic
- **T**rigonometric
- **E**xponential

### Worked Examples (15 min)
- **Example 1:** ∫x eˣ dx
  - u = x, dv = eˣ dx → du = dx, v = eˣ
  - = x·eˣ - ∫eˣ dx = xeˣ - eˣ + C

- **Example 2:** ∫x² cos x dx (requires two applications)
  - First: u = x², dv = cos x dx → x² sin x - ∫2x sin x dx
  - Second: u = 2x, dv = sin x dx → x² sin x - [-2x cos x + ∫2 cos x dx]
  - = x² sin x + 2x cos x - 2 sin x + C

- **Example 3:** ∫ln x dx
  - u = ln x, dv = dx → du = (1/x)dx, v = x
  - = x ln x - ∫x·(1/x)dx = x ln x - x + C

- **Example 4:** ∫eˣ cos x dx (cyclic!)
  - Let I = ∫eˣ cos x dx
  - First IBP: u = eˣ, dv = cos x dx → eˣ sin x - ∫eˣ sin x dx
  - Second IBP on remaining integral: → eˣ sin x - [−eˣ cos x + ∫eˣ cos x dx]
  - I = eˣ sin x + eˣ cos x - I
  - 2I = eˣ(sin x + cos x)
  - I = (1/2)eˣ(sin x + cos x) + C

### Tabular Method (5 min)
- For ∫xⁿ·eˣ dx or ∫xⁿ·trig, use the DI table
- Demonstrate for ∫x³ eˣ dx
- Alternating signs: +, -, +, -, ...

### Closing (5 min)
- Exit ticket: Evaluate ∫x sin x dx
- Remind: LIATE is a guideline, the goal is making ∫v du easier
- Preview: Tomorrow - partial fractions for rational functions

### Key Principles Throughout

1. **Product rule in reverse:** Integration by parts comes from the product rule
2. **Strategic choice:** Choose u so that du is simpler, and dv is integrable
3. **Multiple applications:** Sometimes need to apply IBP more than once
4. **Cyclic integrals:** Solve algebraically when you return to the original

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **6.11:** Integrating Using Integration by Parts (BC Only)

### Essential Knowledge (from CED)
- EK 6.11A: Integration by parts derives from the product rule
- EK 6.11B: ∫u dv = uv - ∫v du
- EK 6.11C: Some integrals require repeated application of IBP

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (applying IBP correctly)
- **MP 2:** Connecting Representations (product rule ↔ integration by parts)
- **MP 3:** Justification (explaining choice of u and dv)

### AP Exam Connection
- **MC questions:** Direct application of integration by parts
- **FRQ applications:** Often combined with other techniques or in differential equations
- **BC-specific:** This technique appears only on the BC exam
- **Common patterns:** ∫x eˣ, ∫x sin x, ∫ln x, ∫arctan x

### AP Scoring Notes
- Must show u, dv, du, v for full process credit
- Must apply formula correctly (including the minus sign)
- Multiple applications must be shown clearly
- Cyclic integrals: show algebraic solving step

---

## Sources

### Primary Sources
- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Professor Leonard: Integration by Parts](https://www.youtube.com/watch?v=2I-_SV8cwsw)
- [Khan Academy: Integration by Parts](https://www.khanacademy.org/math/ap-calculus-bc/bc-integration-new/bc-6-11)

### Supplementary Resources
- [Paul's Online Math Notes: Integration by Parts](https://tutorial.math.lamar.edu/classes/calcii/IntegrationByParts.aspx)
- [Organic Chemistry Tutor: Integration by Parts](https://www.youtube.com/watch?v=QJCvbfX9qxE)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)

### Research on IBP
- Matsuura, R. & Sword, S. (2015). Illuminating coordinate geometry with algebraic symmetry. Mathematics Teacher, 108(6), 470-477.
- Orhun, N. (2012). Graphical understanding in mathematics education: Derivative functions and students' difficulties. Procedia-Social and Behavioral Sciences, 55, 679-684.
