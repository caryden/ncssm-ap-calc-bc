# Presentation Specification: Intermediate Value Theorem and Unit Review

## Class 8 | February 14, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topics:**
- 1.12 - Confirming Continuity over an Interval
- 1.16 - Working with the Intermediate Value Theorem (IVT)

This presentation introduces IVT and provides a comprehensive review of Unit 1 limit concepts.

---

## Slide Sequence

### Section 1: Opening (Slides 0-2)

#### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "The Intermediate Value Theorem"
  - Subtitle: "What Continuity Guarantees"
  - Meta: "Class 8 | February 14, 2026 | CED 1.12, 1.16"

#### Slide 1: The Temperature Question
- **Type:** `slide-visual`
- **Content:**
  - Title: "A Simple Question"
  - Display: Temperature timeline 98°F → ? → 101°F
  - Question: "Was your temperature ever exactly 100°F?"
  - Caption: "Intuition says yes—but can we prove it?"

#### Slide 2: The Power of Continuity
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Continuity guarantees that *every* intermediate value is achieved."

### Section 2: IVT Statement (Slides 3-6)

#### Slide 3: The Theorem
- **Type:** `slide-visual`
- **Content:**
  - Title: "Intermediate Value Theorem"
  - Formal statement with conditions
  - **D3 Visualization:** Continuous curve hitting every value

#### Slide 4: Visual Understanding
- **Type:** `slide-visual`
- **Content:**
  - Title: "IVT Visualized"
  - **D3 Visualization:** Horizontal line at y = N intersecting curve
  - Show: The curve must cross every horizontal line between f(a) and f(b)

#### Slide 5: Key Requirements
- **Type:** `slide-list`
- **Content:**
  - Title: "IVT Requirements"
  - Items:
    - "f must be continuous on [a, b]"
    - "N must be between f(a) and f(b)"
    - "Theorem guarantees existence, not uniqueness"
    - "c is in the open interval (a, b)"

#### Slide 6: What IVT Says (and Doesn't)
- **Type:** `slide-comparison`
- **Content:**
  - Title: "What IVT Tells Us"
  - Column 1 - Says: "There exists at least one c"
  - Column 2 - Doesn't Say: "The exact value of c"

### Section 3: IVT Applications (Slides 7-11)

#### Slide 7: Example 1 - Finding Zeros
- **Type:** `slide-example`
- **Content:**
  - Title: "Example: Existence of a Zero"
  - Problem: Show f(x) = x³ - x - 1 has a zero in [1, 2]
  - Step-by-step verification and conclusion

#### Slide 8: Example 1 Visualization
- **Type:** `slide-visual`
- **Content:**
  - **D3 Visualization:** Graph of x³ - x - 1 crossing x-axis

#### Slide 9: Bisection Method
- **Type:** `slide-visual`
- **Content:**
  - Title: "Using IVT to Narrow Down"
  - Show successive applications of IVT
  - **D3 Visualization:** Zooming in on the root

#### Slide 10: When IVT Fails
- **Type:** `slide-visual`
- **Content:**
  - Title: "When Continuity Fails"
  - Example: f(x) = 1/x on [-1, 1]
  - Show why IVT doesn't apply

#### Slide 11: The Lesson
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Always verify continuity before applying IVT!"

### Section 4: Unit Review (Slides 12-20)

#### Slide 12: Unit 1 Complete
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "Unit 1: Complete Review"
  - Secondary: "All the tools in your limit toolkit"

#### Slide 13: The G.N.A.W. Framework
- **Type:** `slide-visual`
- **Content:**
  - Title: "Four Approaches to Limits"
  - Display: Graphical, Numerical, Algebraic, Written/Verbal
  - Brief summary of each

#### Slide 14: Graphical Limits (CED 1.3)
- **Type:** `slide-visual`
- **Content:**
  - Title: "Graphical Approach"
  - Key concepts: One-sided limits, when limits don't exist
  - Quick visual examples

#### Slide 15: Numerical Limits (CED 1.4)
- **Type:** `slide-visual`
- **Content:**
  - Title: "Numerical Approach"
  - Key concepts: Tables, approximation
  - Example table

#### Slide 16: Algebraic Methods (CED 1.5, 1.6)
- **Type:** `slide-visual`
- **Content:**
  - Title: "Algebraic Approaches"
  - Grid of techniques:
    - Direct substitution
    - Factoring
    - Rationalizing
    - Limit laws

#### Slide 17: Squeeze Theorem (CED 1.8)
- **Type:** `slide-visual`
- **Content:**
  - Title: "Squeeze Theorem"
  - Key limits: sin(x)/x = 1
  - When to use it

#### Slide 18: Continuity (CED 1.10, 1.11)
- **Type:** `slide-visual`
- **Content:**
  - Title: "Continuity"
  - Three conditions
  - Types of discontinuities

#### Slide 19: IVT (CED 1.16)
- **Type:** `slide-visual`
- **Content:**
  - Title: "Intermediate Value Theorem"
  - Statement and application

#### Slide 20: Method Selection Flowchart
- **Type:** `slide-visual`
- **Content:**
  - Title: "Choosing Your Approach"
  - **D3 Visualization:** Decision tree for limit evaluation

### Section 5: Closing (Slides 21-24)

#### Slide 21: Mixed Practice
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Practice: Mixed Problems"
  - Several problems requiring different techniques

#### Slide 22: Key Takeaways
- **Type:** `slide-list`
- **Content:**
  - Title: "Unit 1 Key Takeaways"
  - Items:
    - "Limits describe approach, not arrival"
    - "Multiple techniques: choose wisely"
    - "Continuity = limit equals value"
    - "IVT: continuity guarantees intermediate values"

#### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Exit Ticket"
  - IVT application problem

#### Slide 24: Looking Ahead
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Next Unit: *Differentiation*"
  - Secondary: "Where limits become rates of change"

---

## Interactive Visualizations

### Visualization 1: IVT Demonstration (Slide 3, 4)

**Purpose:** Show continuous curve achieving all intermediate values

**Implementation:**
- Continuous curve from a to b
- Horizontal line at y = N
- Highlight intersection point c
- Animate N varying

### Visualization 2: Zero Finding (Slide 8)

**Purpose:** Visualize x³ - x - 1 crossing zero

**Implementation:**
- Graph the function
- Show sign change
- Mark the zero crossing

### Visualization 3: Bisection Animation (Slide 9)

**Purpose:** Show IVT narrowing down root location

**Implementation:**
- Successive interval halving
- Color-code shrinking intervals
- Show convergence to root

### Visualization 4: IVT Failure (Slide 10)

**Purpose:** Show 1/x failing to satisfy IVT

**Implementation:**
- Graph 1/x on [-1, 1]
- Show gap at x = 0
- Horizontal line at y = 0 not crossing

### Visualization 5: Method Selection (Slide 20)

**Purpose:** Decision flowchart for limit techniques

**Implementation:**
- Interactive flowchart
- Questions leading to technique selection
- Color-coded by method

---

## Technical Notes

### Color Usage
- Theme color: `#356093` (NCSSM Blue)
- Success/continuous: `#22c55e` (green)
- Warning/discontinuous: `#f59e0b` (amber)
- Danger/fails: `#ef4444` (red)
- IVT interval: `#8b5cf6` (purple)

---

## Pedagogical Notes

### Key Takeaways to Reinforce
1. IVT is an existence theorem (not a finding theorem)
2. Continuity is essential for IVT
3. Unit 1 techniques build on each other
4. Limits are foundational for derivatives

### Pacing Notes
- IVT section: ~25 minutes
- Review section: ~20 minutes
- Leave time for mixed practice
- Exit ticket should assess IVT primarily
