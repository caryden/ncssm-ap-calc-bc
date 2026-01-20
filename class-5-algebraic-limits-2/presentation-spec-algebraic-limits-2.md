# Presentation Specification: Algebraic Manipulation for Limits

## Class 5 | February 11, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topic:** 1.6 - Determining Limits Using Algebraic Manipulation

This presentation teaches algebraic techniques (factoring and rationalizing) for evaluating limits that produce the 0/0 indeterminate form.

---

## Slide Sequence

### Section 1: Opening (Slides 0-2)

#### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "Algebraic Manipulation"
  - Subtitle: "Techniques for 0/0"
  - Meta: "Class 5 | February 11, 2026 | CED 1.6"

#### Slide 1: The Unsolved Problem
- **Type:** `slide-visual`
- **Content:**
  - Title: "Remember This?"
  - Display: \(\lim_{x \to 2} \frac{x^2 - 4}{x - 2} = \frac{0}{0}\)
  - Caption: "Direct substitution failed. Today we fix it."

#### Slide 2: The Key Insight
- **Type:** `slide-statement`
- **Content:**
  - Statement: "When 0/0 appears, *simplify first*, then substitute."

### Section 2: Factoring Method (Slides 3-9)

#### Slide 3: The Factoring Strategy
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "Technique 1: Factoring"
  - Secondary: "When both numerator and denominator equal zero, they share a common factor. Cancel it!"

#### Slide 4: Why Canceling Works
- **Type:** `slide-visual`
- **Content:**
  - Title: "Why Canceling is Valid"
  - **D3 Visualization:** Show f(x) = (x²-4)/(x-2) and g(x) = x+2
  - Point out: Same graph everywhere except at x = 2
  - Caption: "The limit only cares about *approach*, not the value at x = 2"

#### Slide 5: Example 1 - Basic Factoring
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 1"
  - Problem: \(\lim_{x \to 2} \frac{x^2 - 4}{x - 2}\)
  - Steps:
    1. Factor: \(\frac{(x-2)(x+2)}{x-2}\)
    2. Cancel: \(x + 2\)
    3. Substitute: \(2 + 2 = 4\)

#### Slide 6: Example 2
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 2"
  - Problem: \(\lim_{x \to 3} \frac{x^2 - 9}{x - 3}\)
  - Steps with answer: 6

#### Slide 7: Example 3 - Quadratic Factoring
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 3: Quadratic Numerator"
  - Problem: \(\lim_{x \to -1} \frac{x^2 + 3x + 2}{x + 1}\)
  - Steps showing factoring: (x+1)(x+2)
  - Answer: 1

#### Slide 8: Example 4 - Sum of Cubes
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 4: Cubic"
  - Problem: \(\lim_{x \to 1} \frac{x^3 - 1}{x - 1}\)
  - Factor: \((x-1)(x^2 + x + 1)\)
  - Answer: 3

#### Slide 9: Factoring Patterns Reference
- **Type:** `slide-visual`
- **Content:**
  - Title: "Factoring Patterns to Know"
  - Grid showing:
    - Difference of squares: \(a^2 - b^2\)
    - Difference of cubes: \(a^3 - b^3\)
    - Sum of cubes: \(a^3 + b^3\)
    - Quadratic trinomial

### Section 3: Rationalizing Method (Slides 10-16)

#### Slide 10: When Radicals Appear
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "Technique 2: Rationalizing"
  - Secondary: "When square roots cause 0/0, multiply by the conjugate"

#### Slide 11: What's a Conjugate?
- **Type:** `slide-visual`
- **Content:**
  - Title: "The Conjugate"
  - Display pairs:
    - \(\sqrt{x} + 3\) ↔ \(\sqrt{x} - 3\)
    - \(2 - \sqrt{x+1}\) ↔ \(2 + \sqrt{x+1}\)
  - Key fact: \((a + b)(a - b) = a^2 - b^2\)

#### Slide 12: Example 5 - Rationalizing
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 5"
  - Problem: \(\lim_{x \to 0} \frac{\sqrt{x+4} - 2}{x}\)
  - Full worked solution
  - Answer: 1/4

#### Slide 13: Example 5 Visualization
- **Type:** `slide-visual`
- **Content:**
  - **D3 Visualization:** Graph of function with hole at x = 0
  - Show limit approaching 1/4

#### Slide 14: Example 6
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 6"
  - Problem: \(\lim_{x \to 9} \frac{\sqrt{x} - 3}{x - 9}\)
  - Full worked solution
  - Answer: 1/6

#### Slide 15: The Rationalizing Process
- **Type:** `slide-list`
- **Content:**
  - Title: "Rationalizing Steps"
  - Items:
    1. Identify the expression with radicals
    2. Find its conjugate
    3. Multiply top and bottom by conjugate
    4. Simplify (radicals should disappear from one location)
    5. Cancel common factors
    6. Substitute

#### Slide 16: Practice - Rationalizing
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Your Turn"
  - Problem: \(\lim_{h \to 0} \frac{\sqrt{9+h} - 3}{h}\)

### Section 4: Strategy Selection (Slides 17-19)

#### Slide 17: Choosing Your Technique
- **Type:** `slide-visual`
- **Content:**
  - Title: "How to Choose"
  - Decision flowchart:
    - 0/0 form? → Yes → Continue
    - Polynomial fraction? → Factoring
    - Contains √? → Rationalizing
    - Complex fraction? → Simplify first

#### Slide 18: Mixed Practice
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Practice: Choose the Method"
  - Three problems to categorize and solve

#### Slide 19: Common Pitfalls
- **Type:** `slide-list`
- **Content:**
  - Title: "Watch Out For..."
  - Items:
    - Forgetting to check for 0/0 first
    - Canceling incorrectly
    - Multiplying by wrong conjugate
    - Arithmetic errors in simplification

### Section 5: Closing (Slides 20-22)

#### Slide 20: Key Takeaways
- **Type:** `slide-list`
- **Content:**
  - Title: "Key Takeaways"
  - Items:
    - 0/0 means simplify, then substitute
    - Factoring: find and cancel common factors
    - Rationalizing: multiply by conjugate
    - Choose technique based on expression form

#### Slide 21: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Exit Ticket"
  - Problem: \(\lim_{x \to 5} \frac{x^2 - 25}{x - 5}\)

#### Slide 22: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Next: The *Squeeze Theorem* for tricky limits"

---

## Interactive Visualizations

### Visualization 1: Equivalent Functions (Slide 4)

**Purpose:** Show that factored/simplified functions are identical except at the removed point

**Implementation:**
- Plot both \(\frac{x^2-4}{x-2}\) and \(x+2\)
- Show they overlap everywhere
- Highlight the hole at x = 2

### Visualization 2: Rationalizing Graph (Slide 13)

**Purpose:** Verify limit visually after algebraic work

**Implementation:**
- Graph of \(\frac{\sqrt{x+4}-2}{x}\)
- Animated approach to x = 0
- Display limit value

---

## Technical Notes

### Color Usage
- Theme color: `#356093` (NCSSM Blue)
- Success: `#22c55e` (green)
- Warning/caution: `#f59e0b` (amber)
- Steps: alternate backgrounds for readability

---

## Pedagogical Notes

### Key Takeaways to Reinforce
1. 0/0 is a signal, not a dead end
2. Factoring reveals hidden cancellations
3. Conjugates eliminate radicals strategically
4. Always verify by checking the result makes sense

### Pacing Notes
- Allow time for factoring practice
- Go slowly through first rationalizing example
- Strategy selection is key conceptual piece
