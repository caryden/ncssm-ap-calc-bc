# Presentation Specification: Continuity

## Class 7 | February 13, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topics:**
- 1.10 - Exploring Types of Discontinuities
- 1.11 - Defining Continuity at a Point

This presentation introduces the formal definition of continuity, types of discontinuities, and applications to limit evaluation.

---

## Slide Sequence

### Section 1: Opening (Slides 0-2)

#### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "Continuity"
  - Subtitle: "Functions Without Breaks"
  - Meta: "Class 7 | February 13, 2026 | CED 1.10, 1.11"

#### Slide 1: The Pencil Test
- **Type:** `slide-visual`
- **Content:**
  - Title: "What Does 'Continuous' Mean?"
  - **D3 Visualization:** Drawing a smooth curve vs. lifting pencil
  - Caption: "Informal: Draw without lifting your pencil"

#### Slide 2: We Need Precision
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Intuition is good. Definitions are better."
  - Secondary: "Let's make 'continuous' mathematically precise."

### Section 2: The Definition (Slides 3-7)

#### Slide 3: The Three Conditions
- **Type:** `slide-visual`
- **Content:**
  - Title: "Continuity at a Point"
  - Display three conditions:
    1. f(a) is defined
    2. \(\lim_{x \to a} f(x)\) exists
    3. \(\lim_{x \to a} f(x) = f(a)\)
  - Emphasis: "All three must hold!"

#### Slide 4: Condition 1 - Defined
- **Type:** `slide-visual`
- **Content:**
  - Title: "Condition 1: f(a) is defined"
  - **D3 Visualization:** Graph with hole at x = a
  - Caption: "The function must have a value at the point"

#### Slide 5: Condition 2 - Limit Exists
- **Type:** `slide-visual`
- **Content:**
  - Title: "Condition 2: Limit exists"
  - **D3 Visualization:** Graph showing left and right limits agreeing
  - Caption: "Left and right must approach the same value"

#### Slide 6: Condition 3 - Limit Equals Value
- **Type:** `slide-visual`
- **Content:**
  - Title: "Condition 3: Limit = f(a)"
  - **D3 Visualization:** Graph with point at wrong height
  - Caption: "Where it's heading must be where it is"

#### Slide 7: All Three Together
- **Type:** `slide-visual`
- **Content:**
  - Title: "Continuity: All Three"
  - **D3 Visualization:** Interactive showing continuous function
  - Display: Complete definition statement

### Section 3: Types of Discontinuities (Slides 8-13)

#### Slide 8: What Goes Wrong?
- **Type:** `slide-statement`
- **Content:**
  - Statement: "When continuity fails, we have a *discontinuity*."
  - Secondary: "Different failures create different types."

#### Slide 9: Removable Discontinuity
- **Type:** `slide-visual`
- **Content:**
  - Title: "Removable Discontinuity"
  - **D3 Visualization:** Function with hole
  - Key features:
    - Limit exists
    - f(a) is undefined or different
    - "Removable" because we can fix it

#### Slide 10: Removable Example
- **Type:** `slide-example`
- **Content:**
  - Title: "Example: Removable"
  - Function: \(f(x) = \frac{x^2 - 1}{x - 1}\) at x = 1
  - Check three conditions
  - Show how to "remove" by redefining

#### Slide 11: Jump Discontinuity
- **Type:** `slide-visual`
- **Content:**
  - Title: "Jump Discontinuity"
  - **D3 Visualization:** Piecewise function with gap
  - Key features:
    - Left limit ≠ Right limit
    - Limit doesn't exist
    - Cannot be fixed

#### Slide 12: Infinite Discontinuity
- **Type:** `slide-visual`
- **Content:**
  - Title: "Infinite Discontinuity"
  - **D3 Visualization:** Function with vertical asymptote
  - Key features:
    - Function approaches ±∞
    - Vertical asymptote
    - Cannot be fixed

#### Slide 13: Discontinuity Summary
- **Type:** `slide-comparison`
- **Content:**
  - Title: "Types of Discontinuities"
  - Three-column comparison:
    - Removable: Limit exists, fixable
    - Jump: Left ≠ Right, not fixable
    - Infinite: Goes to ±∞, not fixable

### Section 4: Continuity on Intervals (Slides 14-17)

#### Slide 14: Continuous on Intervals
- **Type:** `slide-visual`
- **Content:**
  - Title: "Continuity on Intervals"
  - Open interval (a, b): continuous at every interior point
  - Closed interval [a, b]: also need endpoint continuity
  - One-sided limits at endpoints

#### Slide 15: Continuous Functions
- **Type:** `slide-list`
- **Content:**
  - Title: "Functions Continuous on Their Domains"
  - Items:
    - Polynomials (entire real line)
    - Rational functions (where denominator ≠ 0)
    - Trigonometric functions
    - Exponential and logarithmic functions
    - Root functions (where defined)

#### Slide 16: Example - Where Continuous?
- **Type:** `slide-example`
- **Content:**
  - Title: "Example: Finding Intervals"
  - Function: \(f(x) = \frac{x + 2}{x^2 - 4}\)
  - Identify discontinuities
  - State intervals of continuity

#### Slide 17: Practice
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Your Turn"
  - Determine intervals of continuity for given function

### Section 5: Compositions (Slides 18-20)

#### Slide 18: Continuity and Compositions
- **Type:** `slide-visual`
- **Content:**
  - Title: "Limits of Compositions"
  - Theorem: If f continuous at b and lim g(x) = b, then...
  - Display: \(\lim_{x \to a} f(g(x)) = f\left(\lim_{x \to a} g(x)\right)\)

#### Slide 19: Composition Example
- **Type:** `slide-example`
- **Content:**
  - Title: "Example: Using Continuity"
  - Problem: \(\lim_{x \to 2} \sin(x^2 - 4)\)
  - Solution: Since sin is continuous, pass limit inside
  - Answer: sin(0) = 0

#### Slide 20: Another Example
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 2"
  - Problem: \(\lim_{x \to 0} e^{x + 1}\)
  - Solution using continuity of exponential

### Section 6: Closing (Slides 21-24)

#### Slide 21: The Three-Part Test
- **Type:** `slide-visual`
- **Content:**
  - Title: "Continuity Checklist"
  - Table format:
    - Condition | Check | Failure Type
  - Visual reference card

#### Slide 22: Key Takeaways
- **Type:** `slide-list`
- **Content:**
  - Title: "Key Takeaways"
  - Items:
    - Continuity requires: defined, limit exists, limit = value
    - Three types: removable, jump, infinite
    - Continuous functions let us pass limits inside
    - Most "nice" functions are continuous on their domains

#### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Exit Ticket"
  - Given piecewise function, find values of k for continuity

#### Slide 24: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Next: The *Intermediate Value Theorem*"
  - Secondary: "What continuity guarantees about function values"

---

## Interactive Visualizations

### Visualization 1: Three Conditions (Slides 4-6)

**Purpose:** Show each condition independently

**Implementation:**
- Three separate graphs
- One violates each condition
- Highlight the failure point

### Visualization 2: Discontinuity Types (Slides 9, 11, 12)

**Purpose:** Clear visual comparison of discontinuity types

**Implementation:**
- Removable: hole in graph
- Jump: step function appearance
- Infinite: vertical asymptote

### Visualization 3: Continuity Demo (Slide 7)

**Purpose:** Show a properly continuous function

**Implementation:**
- Smooth curve with point
- Highlight limit = value = f(a)
- Interactive point selection

---

## Technical Notes

### Color Usage
- Theme color: `#356093` (NCSSM Blue)
- Removable: `#f59e0b` (amber)
- Jump: `#ef4444` (red)
- Infinite: `#8b5cf6` (purple)
- Continuous: `#22c55e` (green)

---

## Pedagogical Notes

### Key Takeaways to Reinforce
1. Three conditions for continuity (memorize)
2. Different failures create different discontinuity types
3. Continuity enables powerful limit techniques
4. Most "elementary" functions are continuous

### Pacing Notes
- Spend time on the definition—it's foundational
- Use visual examples extensively for discontinuity types
- The composition theorem is powerful but easy to use
