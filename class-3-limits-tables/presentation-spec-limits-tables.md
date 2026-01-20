# Presentation Specification: Estimating Limits from Tables

## Class 3 | February 7, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topic:** 1.4 - Estimating Limit Values from Tables

This presentation focuses on the numerical perspective of limits (the "N" in G.N.A.W.), teaching students to estimate limits through systematic table construction and pattern recognition.

---

## Slide Sequence

### Section 1: Opening (Slides 0-2)

#### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "Limits from Tables"
  - Subtitle: "The Numerical Perspective"
  - Meta: "Class 3 | February 7, 2026 | CED 1.4"

#### Slide 1: Connection to Graphs
- **Type:** `slide-visual`
- **Content:**
  - Title: "From Pictures to Numbers"
  - **D3 Visualization:** Side-by-side graph and table showing same limit
  - Caption: "Yesterday we traced curves. Today we read numbers."

#### Slide 2: The Big Idea
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Watch the *pattern* in function values as x approaches a."
  - Emphasis on "pattern"

### Section 2: Building Tables (Slides 3-8)

#### Slide 3: The Numerical Strategy
- **Type:** `slide-list`
- **Content:**
  - Title: "The Table Method"
  - Items:
    - "Choose x-values approaching from the LEFT"
    - "Choose x-values approaching from the RIGHT"
    - "Calculate f(x) for each"
    - "Look for the pattern—what value do we approach?"

#### Slide 4: Choosing Good x-Values
- **Type:** `slide-visual`
- **Content:**
  - Title: "Getting Closer by Factors of 10"
  - **D3 Visualization:** Number line showing 1.9, 1.99, 1.999 and 2.1, 2.01, 2.001
  - Key insight: "Add 9s to get closer: 1.9 → 1.99 → 1.999 → 1.9999"

#### Slide 5: Interactive Table Builder
- **Type:** `slide-visual`
- **Content:**
  - Title: "Building the Table"
  - **D3 Visualization:** Interactive table that fills in as user clicks
    - Function: \(f(x) = \frac{x^2 - 4}{x - 2}\)
    - Buttons to add rows from left/right
    - Running f(x) calculation
    - Visual highlighting of convergence
  - Caption: "What value are we approaching?"

#### Slide 6: The Pattern Emerges
- **Type:** `slide-visual`
- **Content:**
  - Title: "Reading the Table"
  - Complete table showing convergence to 4
  - Arrows pointing to pattern: 3.9 → 3.99 → 3.999 → ... → 4 ← ... ← 4.001 ← 4.01 ← 4.1
  - Conclusion box: \(\lim_{x \to 2} \frac{x^2 - 4}{x - 2} = 4\)

#### Slide 7: Left and Right Sides
- **Type:** `slide-comparison`
- **Content:**
  - Title: "Approaching from Both Sides"
  - Left column: "From Left (x < 2)" with values 1.9, 1.99, 1.999
  - Right column: "From Right (x > 2)" with values 2.1, 2.01, 2.001
  - Caption: "Both sides must agree for the limit to exist"

#### Slide 8: What Makes a Good Table
- **Type:** `slide-list`
- **Content:**
  - Title: "Table-Building Checklist"
  - Items:
    - "At least 3-4 values from each side"
    - "Values getting progressively closer (by factors of 10)"
    - "Never include x = a itself"
    - "Check that both sides tell the same story"

### Section 3: Different Outcomes (Slides 9-14)

#### Slide 9: Case 1 - Limit Exists
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 1: Limit Exists"
  - **D3 Visualization:** Table and mini-graph showing convergence
  - Pattern: Values from both sides approach the same number
  - Status: Green checkmark

#### Slide 10: Case 2 - One-Sided Limits Differ
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 2: Different from Left and Right"
  - **D3 Visualization:** Table showing \(\frac{|x|}{x}\) near x = 0
    - Left side: -1, -1, -1
    - Right side: 1, 1, 1
  - Status: Red X - "Two-sided limit DNE"

#### Slide 11: Case 3 - Unbounded Behavior
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 3: Values Growing Without Bound"
  - **D3 Visualization:** Table showing 1/x² near x = 0
    - Values: 100, 10000, 1000000, ...
  - Pattern: Numbers keep growing
  - Status: "Limit DNE (infinite behavior)"

#### Slide 12: Case 4 - Oscillation
- **Type:** `slide-visual`
- **Content:**
  - Title: "Case 4: No Clear Pattern"
  - **D3 Visualization:** Table for sin(1/x) near x = 0
    - Values jumping: 0.84, -0.54, 0.98, -0.99, ...
  - Pattern: No settling down
  - Status: "Limit DNE (oscillation)"

#### Slide 13: Summary of Cases
- **Type:** `slide-visual`
- **Content:**
  - Title: "What Tables Can Tell Us"
  - Four mini-tables showing each case
  - Quick visual reference for pattern recognition

#### Slide 14: Important Warning
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Tables *suggest* limits. They don't *prove* them."
  - Secondary: "For certainty, we need algebraic methods."

### Section 4: Technology Skills (Slides 15-17)

#### Slide 15: Calculator Tables
- **Type:** `slide-visual`
- **Content:**
  - Title: "Using Your Calculator"
  - Screenshot/diagram of TI-84 table feature
  - Steps: Y= → 2nd TABLE → Set TblStart and ΔTbl

#### Slide 16: Desmos Tables
- **Type:** `slide-visual`
- **Content:**
  - Title: "Desmos Table Feature"
  - Screenshot showing Desmos table creation
  - Tip: "Click the + to add a table, enter x-values in first column"

#### Slide 17: Precision Limits
- **Type:** `slide-visual`
- **Content:**
  - Title: "Beware of Calculator Precision"
  - **D3 Visualization:** Table showing round-off errors for very small x
  - Example: sin(x)/x for x = 0.0000001 might give 0 due to rounding
  - Takeaway: "Very small numbers can cause calculation errors"

### Section 5: Practice (Slides 18-20)

#### Slide 18: Practice Problem 1
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Practice: Build a Table"
  - Problem: Estimate \(\lim_{x \to 3} \frac{x^2 - 9}{x - 3}\)
  - Instructions: "Use your calculator. What do you get?"

#### Slide 19: Practice Problem 2
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Practice: Does the Limit Exist?"
  - Problem: Estimate \(\lim_{x \to 0} \frac{|x|}{x}\)
  - Instructions: "Create a table. What happens from each side?"

#### Slide 20: Solutions
- **Type:** `slide-visual`
- **Content:**
  - Title: "Solutions"
  - Two completed tables with answers:
    - Problem 1: Limit = 6
    - Problem 2: Limit DNE (left = -1, right = 1)

### Section 6: Closing (Slides 21-23)

#### Slide 21: Key Takeaways
- **Type:** `slide-list`
- **Content:**
  - Title: "Key Takeaways"
  - Items:
    - "Tables reveal limit behavior through patterns"
    - "Approach from both sides with values getting closer"
    - "Both sides must agree for the limit to exist"
    - "Tables suggest; algebra proves"

#### Slide 22: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Exit Ticket"
  - Given partial table, determine the limit
  - | x | 2.9 | 2.99 | 2.999 | ... | 3.001 | 3.01 | 3.1 |
  - | f(x) | 5.8 | 5.98 | 5.998 | ? | 6.002 | 6.02 | 6.2 |

#### Slide 23: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Tomorrow: Finding limits *exactly* using algebraic techniques"
  - Secondary: "The analytical perspective (A of G.N.A.W.)"

---

## Interactive Visualizations

### Visualization 1: Side-by-Side Graph and Table (Slide 1)

**Purpose:** Connect graphical and numerical representations

**Implementation:**
- Left side: Graph of function with animated approach
- Right side: Table that fills in corresponding values
- Synchronized animation

### Visualization 2: Interactive Table Builder (Slide 5)

**Purpose:** Let students see table construction process

**Implementation:**
```javascript
function drawTableBuilder() {
    // Interactive table that builds as user clicks
    // Buttons: "Add from Left", "Add from Right"
    // Table rows animate in
    // f(x) column calculates automatically
    // Convergence highlighted with color gradient
}
```

**Interactivity:**
- Click buttons to add rows
- Values calculated and displayed
- Pattern emerges visually

### Visualization 3: Case Comparison Tables (Slides 9-13)

**Purpose:** Show different limit outcomes through tables

**Implementation:**
- Animated table filling
- Color coding: green for convergence, red for divergence
- Side mini-graphs for context

---

## Technical Notes

### Required Libraries
- D3.js v7
- MathJax (for mathematical notation)

### Color Usage
- Theme color: `#356093` (NCSSM Blue / Unit 1)
- Left approach values: `#60a5fa` (blue)
- Right approach values: `#f97316` (orange)
- Converging to limit: `#22c55e` (green)
- DNE indicator: `#ef4444` (red)

### Responsive Requirements
- All visualizations must use viewBox for scaling
- Tables should have minimum font size 1.25rem
- Test on classroom display (80" TV)

---

## Pedagogical Notes

### Key Takeaways to Reinforce
1. Systematic table construction reveals patterns
2. Both sides must converge to the same value
3. Tables are evidence, not proof
4. Technology helps but has limitations

### Pacing Notes
- Allow time for calculator practice
- Don't rush through the case examples
- Exit ticket checks pattern recognition

### Transition to Next Class
Class 4 will introduce algebraic techniques for finding exact limit values, building on the intuition developed through graphical and numerical approaches.
