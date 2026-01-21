# Research: Partial Fractions (BC)

## Overview

This document summarizes research on how expert educators teach integration using partial fraction decomposition. It informs the lesson plan and presentation spec for Class 37 (CED Topic 6.12: Integrating Using Linear Partial Fractions). This is a BC-only topic.

---

## 1. Expert Teaching Analysis

### Professor Leonard: "Partial Fraction Decomposition"

**Source:** [Professor Leonard - Partial Fractions](https://www.youtube.com/watch?v=Moe6gao5Ls0)

**Core Pedagogical Strategy:**

Professor Leonard presents partial fractions as a technique to "undo" fraction addition:

> "When we add fractions, we combine them into a single fraction. Partial fractions reverses that - we break a complicated fraction into simpler pieces we can integrate."

**Key Teaching Moves:**

1. **Motivation:** ∫(1/x)dx = ln|x| + C, but ∫(1/(x²-1))dx is not obvious
2. **The idea:** 1/(x²-1) = 1/((x-1)(x+1)) can be written as A/(x-1) + B/(x+1)
3. **Finding A and B:** Multiply both sides by the common denominator, solve for constants
4. **Integrate pieces:** Each simple fraction integrates to a logarithm

**Types of Partial Fractions (Linear Factors):**

| Denominator Type | Decomposition Form |
|------------------|-------------------|
| Distinct linear factors: (x-a)(x-b) | A/(x-a) + B/(x-b) |
| Repeated linear factor: (x-a)² | A/(x-a) + B/(x-a)² |
| Repeated linear factor: (x-a)³ | A/(x-a) + B/(x-a)² + C/(x-a)³ |
| Mixed: (x-a)(x-b)² | A/(x-a) + B/(x-b) + C/(x-b)² |

**AP Calculus BC Focus:**
The AP exam only tests **linear partial fractions** (non-repeated and repeated linear factors). Irreducible quadratic factors are not tested.

**Two Methods for Finding Constants:**

1. **Strategic substitution:** Substitute x-values that make denominators zero
   - For A/(x-1) + B/(x+1): set x=1 to find A, set x=-1 to find B

2. **Coefficient matching:** Expand, collect like terms, match coefficients
   - More general but more algebraically tedious

### Khan Academy: Partial Fraction Decomposition

**Source:** [Khan Academy - Partial Fractions](https://www.khanacademy.org/math/ap-calculus-bc/bc-integration-new/bc-6-12/v/partial-fraction-decomposition)

**Pedagogical Approach:**

Khan Academy emphasizes the "reverse of adding fractions" narrative:

1. **Start with adding:** Show that 1/(x-1) + 1/(x+1) = 2x/(x²-1)
2. **Reverse the process:** Given 2x/(x²-1), can we find the original pieces?
3. **Why it helps:** 1/(x-1) and 1/(x+1) integrate easily; 2x/(x²-1) does not (directly)
4. **The algorithm:** Factor denominator → set up decomposition → solve for constants

**Integration Connection:**
After decomposition:
∫[A/(x-a) + B/(x-b)]dx = A ln|x-a| + B ln|x-b| + C

**Practice Emphasis:**
- Setting up the correct form of decomposition
- Solving systems of equations for constants
- Integrating the resulting simple fractions

### The Organic Chemistry Tutor: "Partial Fractions Integration"

**Source:** [Organic Chemistry Tutor - Partial Fractions](https://www.youtube.com/watch?v=3LsLzrW9gKs)

**Teaching Style:**

Provides extensive worked examples with clear procedural steps:

**Step-by-Step Procedure:**
1. **Check degree:** Numerator degree must be less than denominator degree (if not, do long division first)
2. **Factor denominator:** Factor completely into linear factors
3. **Set up decomposition:** One fraction for each factor (repeated factors need multiple terms)
4. **Clear denominators:** Multiply both sides by the common denominator
5. **Solve for constants:** Use substitution or coefficient matching
6. **Integrate:** Each term integrates to a logarithm or power

**Worked Examples:**

| Integral | Decomposition | Result |
|----------|---------------|--------|
| ∫1/(x²-1)dx | 1/(2(x-1)) - 1/(2(x+1)) | (1/2)ln|x-1| - (1/2)ln|x+1| + C |
| ∫(3x+5)/(x²+4x+3)dx | 1/(x+1) + 2/(x+3) | ln|x+1| + 2ln|x+3| + C |
| ∫1/(x²(x+1))dx | -1/x + 1/x² + 1/(x+1) | -ln|x| - 1/x + ln|x+1| + C |

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Fraction Addition Reversal** | Show forward addition of fractions, then reverse | Motivates why partial fractions exist |
| **Factor Tree for Denominator** | Visual breakdown of denominator into linear factors | Guides decomposition setup |
| **Template Matching** | Show decomposition templates for different denominator types | Reduces cognitive load |
| **System Solving Animation** | Step-by-step solving for A, B, C | Makes algebra transparent |
| **Area Under Curves** | Graph original rational function and its partial fractions | Shows how areas combine |
| **Verification Check** | Recombine partial fractions to verify equality | Builds confidence and catches errors |

### Recommended D3 Visualization

**Partial Fraction Decomposer:**
1. Input: rational function P(x)/Q(x)
2. Factor Q(x) and display factor tree
3. Set up decomposition template based on factors
4. Walk through solving for constants
5. Display final decomposition
6. Integrate each piece
7. Verify: differentiate result to recover original

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Forget to factor completely"** | Students use (x²-1) instead of (x-1)(x+1) | Denominator MUST be fully factored before setting up decomposition. Practice factoring skills. |
| **"Wrong form for repeated factors"** | Students write A/(x-1)² instead of A/(x-1) + B/(x-1)² | Repeated factor (x-a)ⁿ needs n terms with powers 1, 2, ..., n. Drill this template. |
| **"Improper fractions"** | Students try PFD when degree(num) ≥ degree(denom) | Must do polynomial long division first! Then apply PFD to the proper remainder. |
| **"Integration errors"** | Students forget the coefficient in ∫A/(x-a)dx | ∫A/(x-a)dx = A ln|x-a| + C. The A stays as coefficient of ln. |
| **"Missing absolute values"** | Students write ln(x-a) instead of ln|x-a| | ∫1/(x-a)dx = ln|x-a| + C. Absolute value ensures real results for all valid x. |
| **"Arithmetic errors"** | Solving for A, B involves fractions and signs | Model careful arithmetic. Use both substitution AND coefficient matching as verification. |

### Misconception-Busting Visualizations

1. **Repeated Factors:** Show (x-1)³ needs three terms: A/(x-1) + B/(x-1)² + C/(x-1)³. Contrast with distinct factors (x-1)(x-2)(x-3) which needs A/(x-1) + B/(x-2) + C/(x-3).
2. **Long Division First:** For ∫(x³+1)/(x²-1)dx, show that numerator has degree 3, denominator degree 2. Must divide: x³+1 = (x)(x²-1) + (x+1). Then integrate x + ∫(x+1)/(x²-1)dx.
3. **Coefficient Check:** After finding A = 1/2, B = -1/2 for 1/(x²-1), verify: 1/(2(x-1)) - 1/(2(x+1)) = [(x+1) - (x-1)]/[2(x²-1)] = 2/[2(x²-1)] = 1/(x²-1) ✓

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 37 lesson should:

### Opening (5 min)
- **Hook:** "Can you integrate ∫(2x+3)/(x²+3x+2)dx directly?"
- Students recognize: no obvious u-substitution, no integration by parts structure
- **The question:** "What if we could break this into simpler fractions?"

### Motivating Partial Fractions (8 min)
- **Adding fractions:** 1/(x+1) + 1/(x+2) = (2x+3)/(x²+3x+2)
- **The reverse:** Given (2x+3)/(x²+3x+2), find the original pieces
- **Why it helps:** 1/(x+a) integrates easily → ln|x+a|
- **Connection:** This is "un-adding" fractions

### The Partial Fractions Algorithm (12 min)
**Step 1:** Factor the denominator completely
- x² + 3x + 2 = (x + 1)(x + 2)

**Step 2:** Set up the decomposition
- (2x+3)/[(x+1)(x+2)] = A/(x+1) + B/(x+2)

**Step 3:** Clear denominators (multiply both sides by (x+1)(x+2))
- 2x + 3 = A(x + 2) + B(x + 1)

**Step 4:** Solve for A and B
- Method 1 (Substitution): Set x = -1: 1 = A(1) → A = 1
  Set x = -2: -1 = B(-1) → B = 1
- Method 2 (Coefficients): Expand, match coefficients of x and constant term

**Step 5:** Write the decomposition
- (2x+3)/(x²+3x+2) = 1/(x+1) + 1/(x+2)

**Step 6:** Integrate
- ∫[1/(x+1) + 1/(x+2)]dx = ln|x+1| + ln|x+2| + C

### Handling Repeated Linear Factors (8 min)
- **Example:** ∫(x+3)/(x²(x+1))dx
- **Decomposition:** A/x + B/x² + C/(x+1)
- Clear denominators: x + 3 = Ax(x+1) + B(x+1) + Cx²
- Solve: x = 0 → 3 = B; x = -1 → 2 = C; coefficient of x² → 0 = A + C → A = -2
- ∫[-2/x + 3/x² + 2/(x+1)]dx = -2ln|x| - 3/x + 2ln|x+1| + C

### Practice (12 min)
- **Example 1:** ∫1/(x²-4)dx = ∫1/((x-2)(x+2))dx
  = (1/4)ln|x-2| - (1/4)ln|x+2| + C

- **Example 2:** ∫(5x-4)/(x²-x-2)dx = ∫(5x-4)/((x-2)(x+1))dx
  = 2ln|x-2| + 3ln|x+1| + C

- **Example 3 (Improper):** ∫(x²+1)/(x²-1)dx
  First: long division → 1 + 2/(x²-1)
  Then: ∫1 dx + ∫2/(x²-1)dx = x + ln|x-1| - ln|x+1| + C

### Closing (5 min)
- Exit ticket: Set up the partial fraction decomposition for 3x/[(x-1)(x+2)²] (don't solve)
- Key reminders: factor completely, repeated factors need multiple terms, check degree first
- Preview: Tomorrow - improper integrals

### Key Principles Throughout

1. **Factor first:** Complete factoring is essential before decomposition
2. **Template matching:** Know the correct form for distinct vs. repeated factors
3. **Check your degree:** Long division if numerator degree ≥ denominator degree
4. **Verify:** Recombine fractions or differentiate final answer to check

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **6.12:** Integrating Using Linear Partial Fractions (BC Only)

### Essential Knowledge (from CED)
- EK 6.12A: Partial fractions decompose rational functions into simpler fractions
- EK 6.12B: The decomposition depends on the factored form of the denominator
- EK 6.12C: Each simple fraction integrates to a logarithm or power function

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (PFD algorithm)
- **MP 3:** Justification (verifying decomposition is correct)
- **MP 4:** Communication (proper setup of decomposition)

### AP Exam Connection
- **BC-specific:** Only on BC exam
- **MC questions:** Setting up decompositions, evaluating partial fraction integrals
- **FRQ applications:** Often combined with other techniques
- **Scope:** AP BC tests linear factors only (non-repeated and repeated), not irreducible quadratics

### AP Scoring Notes
- Must show correct decomposition setup for process credit
- Must show method for finding constants (substitution or coefficient matching)
- Must integrate correctly with proper use of absolute values in ln
- Long division must be shown when required

---

## Sources

### Primary Sources
- [Professor Leonard: Partial Fraction Decomposition](https://www.youtube.com/watch?v=Moe6gao5Ls0)
- [Khan Academy: Partial Fractions](https://www.khanacademy.org/math/ap-calculus-bc/bc-integration-new/bc-6-12)
- [Organic Chemistry Tutor: Partial Fractions Integration](https://www.youtube.com/watch?v=3LsLzrW9gKs)

### Supplementary Resources
- [Paul's Online Math Notes: Partial Fractions](https://tutorial.math.lamar.edu/classes/calcii/PartialFractions.aspx)
- [MIT OpenCourseWare: Integration Techniques](https://ocw.mit.edu/courses/mathematics/)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)

### Research on Learning Partial Fractions
- Lithner, J. (2003). Students' mathematical reasoning in university textbook exercises. Educational Studies in Mathematics, 52(1), 29-55.
- Selden, A. & Selden, J. (2003). Validations of proofs considered as texts: Can undergraduates tell whether an argument proves a theorem? Journal for Research in Mathematics Education, 34(1), 4-36.
