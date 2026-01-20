# Presentation Specification: Algebraic Properties of Limits

## Class 4 | February 10, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topic:** 1.5 - Determining Limits Using Algebraic Properties of Limits

This presentation introduces the algebraic approach to limits (the "A" in G.N.A.W.), teaching students to evaluate limits exactly using the fundamental limit laws.

---

## Slide Sequence

### Section 1: Opening (Slides 0-2)

#### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "Algebraic Properties of Limits"
  - Subtitle: "From Estimation to Certainty"
  - Meta: "Class 4 | February 10, 2026 | CED 1.5"

#### Slide 1: The Transition
- **Type:** `slide-statement`
- **Content:**
  - Statement: "We've *estimated* limits. Now we'll *prove* them."

#### Slide 2: Review
- **Type:** `slide-visual`
- **Content:**
  - Title: "Remember This?"
  - Display previous limit: \(\lim_{x \to 3} \frac{x^2 - 9}{x - 3} \approx 6\)
  - Caption: "Today we'll prove this is exactly 6."

### Section 2: The Limit Laws (Slides 3-8)

#### Slide 3: The Foundation
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "The Limit Laws"
  - Secondary: "Rules that let us break complex limits into simple pieces"

#### Slide 4: Basic Laws
- **Type:** `slide-list`
- **Content:**
  - Title: "Starting Simple"
  - Items:
    - "Constant Law: \(\lim_{x \to a} c = c\)"
    - "Identity Law: \(\lim_{x \to a} x = a\)"

#### Slide 5: Combination Laws
- **Type:** `slide-visual`
- **Content:**
  - Title: "Combining Limits"
  - **D3 Visualization:** Visual showing two limits combining
  - Display:
    - Sum: \(\lim [f + g] = L + M\)
    - Difference: \(\lim [f - g] = L - M\)
    - Constant Multiple: \(\lim [cf] = cL\)

#### Slide 6: Product and Quotient Laws
- **Type:** `slide-visual`
- **Content:**
  - Title: "Products and Quotients"
  - Display:
    - Product: \(\lim [f \cdot g] = L \cdot M\)
    - Quotient: \(\lim \frac{f}{g} = \frac{L}{M}\) (if M ≠ 0)
  - Warning highlight: "The quotient law requires M ≠ 0"

#### Slide 7: Power Law
- **Type:** `slide-visual`
- **Content:**
  - Title: "Powers"
  - Display: \(\lim [f(x)]^n = L^n\)
  - Also: \(\lim \sqrt[n]{f(x)} = \sqrt[n]{L}\) (with conditions)

#### Slide 8: Laws Summary Card
- **Type:** `slide-visual`
- **Content:**
  - Title: "Limit Laws Reference"
  - **D3 Visualization:** Organized reference card showing all 8 laws
  - Caption: "These rules are your algebraic toolkit for limits"

### Section 3: Direct Substitution (Slides 9-13)

#### Slide 9: The Big Result
- **Type:** `slide-statement`
- **Content:**
  - Statement: "For polynomials: Just plug in!"
  - Mathematical: \(\lim_{x \to a} p(x) = p(a)\)

#### Slide 10: Why It Works
- **Type:** `slide-visual`
- **Content:**
  - Title: "Why Direct Substitution Works for Polynomials"
  - **D3 Visualization:** Building up a polynomial using limit laws
  - Show: x² = x · x, x³ = x · x · x, etc.
  - Each step justified by product law

#### Slide 11: Example 1 - Polynomial
- **Type:** `slide-example`
- **Content:**
  - Title: "Example: Polynomial Limit"
  - Problem: \(\lim_{x \to 2} (3x^2 + 5x - 1)\)
  - Solution steps with law citations:
    1. Apply sum/difference laws
    2. Apply constant multiple law
    3. Apply power and identity laws
    4. Compute: 3(4) + 5(2) - 1 = 21

#### Slide 12: Example 2 - Another Polynomial
- **Type:** `slide-example`
- **Content:**
  - Title: "Example: Higher Degree"
  - Problem: \(\lim_{x \to -1} (x^4 - 2x^2 + 7)\)
  - Solution: Direct substitution gives 6

#### Slide 13: Practice - Polynomial
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Your Turn"
  - Problem: \(\lim_{x \to 3} (x^3 - 4x + 2)\)
  - Answer reveal: 3³ - 4(3) + 2 = 27 - 12 + 2 = 17

### Section 4: Rational Functions (Slides 14-18)

#### Slide 14: Rational Functions
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "Rational Functions"
  - Secondary: "Direct substitution works... when the denominator isn't zero"

#### Slide 15: Example 3 - Rational
- **Type:** `slide-example`
- **Content:**
  - Title: "Example: Rational Function"
  - Problem: \(\lim_{x \to 2} \frac{x + 1}{x - 1}\)
  - Solution: Check denominator: 2 - 1 = 1 ≠ 0 ✓
  - Answer: (2 + 1)/(2 - 1) = 3

#### Slide 16: Example 4 - Another Rational
- **Type:** `slide-example`
- **Content:**
  - Title: "Example: More Complex"
  - Problem: \(\lim_{x \to 4} \frac{x^2 - 1}{x + 2}\)
  - Solution: Denominator = 6 ≠ 0 ✓
  - Answer: 15/6 = 5/2

#### Slide 17: When It Fails
- **Type:** `slide-visual`
- **Content:**
  - Title: "But What About This?"
  - Problem: \(\lim_{x \to 2} \frac{x^2 - 4}{x - 2}\)
  - Show: Direct substitution gives 0/0
  - **D3 Visualization:** Stop sign or warning indicator

#### Slide 18: The Indeterminate Form
- **Type:** `slide-statement`
- **Content:**
  - Statement: "\(\frac{0}{0}\) is *indeterminate*"
  - Secondary: "It doesn't mean 0, 1, or undefined. It means we need more work."

### Section 5: Understanding 0/0 (Slides 19-21)

#### Slide 19: What 0/0 Tells Us
- **Type:** `slide-list`
- **Content:**
  - Title: "The 0/0 Form Means..."
  - Items:
    - "Something interesting is happening"
    - "We need to simplify first"
    - "The limit may still exist!"
    - "Direct substitution alone won't work"

#### Slide 20: Preview of Techniques
- **Type:** `slide-visual`
- **Content:**
  - Title: "Coming Tomorrow: Handling 0/0"
  - List of techniques:
    - Factoring and canceling
    - Rationalizing
    - Other algebraic manipulation
  - Caption: "These techniques turn 0/0 into something we can evaluate"

#### Slide 21: Important Warning
- **Type:** `slide-statement`
- **Content:**
  - Statement: "0/0 ≠ 0 and 0/0 ≠ undefined"
  - Secondary: "It's a signal that more algebra is needed"

### Section 6: Closing (Slides 22-24)

#### Slide 22: Key Takeaways
- **Type:** `slide-list`
- **Content:**
  - Title: "Key Takeaways"
  - Items:
    - "Limit laws let us break complex limits into pieces"
    - "For polynomials: direct substitution always works"
    - "For rational functions: check the denominator first"
    - "0/0 is indeterminate—not the final answer"

#### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Exit Ticket"
  - Problem: \(\lim_{x \to 5} \frac{x^2 - 3x + 2}{x + 1}\)
  - Instructions: "Check denominator, then evaluate"

#### Slide 24: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Tomorrow: Algebraic manipulation for the 0/0 cases"
  - Secondary: "Factoring, rationalizing, and more"

---

## Interactive Visualizations

### Visualization 1: Limit Laws Reference Card (Slide 8)

**Purpose:** Organized visual reference for all limit laws

**Implementation:**
- Clean, organized layout
- Color-coded by law type
- Hover for examples

### Visualization 2: Building a Polynomial (Slide 10)

**Purpose:** Show how limit laws combine to evaluate polynomial limits

**Implementation:**
- Animated tree structure
- Each node shows a law application
- Final result at bottom

### Visualization 3: 0/0 Warning (Slide 17)

**Purpose:** Visual indicator that 0/0 needs special handling

**Implementation:**
- Animated warning symbol
- Show the calculation attempt failing
- Transition to "more work needed" message

---

## Technical Notes

### Required Libraries
- D3.js v7
- MathJax (for mathematical notation)

### Color Usage
- Theme color: `#356093` (NCSSM Blue)
- Success/works: `#22c55e` (green)
- Warning/indeterminate: `#f59e0b` (amber)
- Emphasis: `#d4a028` (gold)

---

## Pedagogical Notes

### Key Takeaways to Reinforce
1. Limit laws are the algebraic foundation
2. Direct substitution works for "nice" functions
3. 0/0 is a signal, not an answer
4. Algebraic thinking complements graphical and numerical

### Pacing Notes
- Spend time on limit law examples
- Don't rush the 0/0 discussion
- Preview tomorrow's techniques to maintain momentum

### Transition to Next Class
Class 5 will focus on algebraic manipulation techniques for handling the indeterminate forms introduced today.
