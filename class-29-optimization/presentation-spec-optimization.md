# Presentation Spec: Optimization Problems

## Class 29 | Unit 5: Analytical Applications of Differentiation
## CED Topics 5.10, 5.11

---

## Overview

This capstone presentation applies all differentiation techniques to solve optimization problems - finding the maximum or minimum value of a quantity subject to constraints. Students will learn a systematic 5-step procedure for translating verbal problems into mathematical functions, using constraints to reduce to single-variable calculus, and applying derivative tests to find optimal values.

**Theme Color:** `#0d9488` (Unit 5 Teal)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 5: Analytical Applications of Differentiation"
  - Title: "Optimization"
  - Subtitle: "Finding the Best Possible Outcome"
  - Meta: "Class 29 | CED 5.10, 5.11 | NCSSM"

### Slide 1: The Fencing Problem
- **Type:** `slide-visual`
- **Section:** Opening Hook
- **Content:**
  - Title: "The Classic Problem"
  - **D3 Visualization:** Rectangle with fence around it
  - Prompt: "You have 100 feet of fencing to enclose a rectangular garden. What dimensions give you the largest area?"
- **Notes:** Iconic optimization problem to hook interest

### Slide 2: Quick Guesses
- **Type:** `slide-two-part`
- **Section:** Opening Hook
- **Content:**
  - Title: "What's Your Guess?"
  - Primary:
    - "A square? 25 x 25 = 625 sq ft"
    - "A long rectangle? 40 x 10 = 400 sq ft"
    - "Something else?"
  - Secondary: "How do we PROVE we've found the best answer?"

### Slide 3: Calculus Gives Certainty
- **Type:** `slide-statement`
- **Section:** Opening Hook
- **Content:**
  - Statement: "Calculus doesn't just give us a good guess - it gives us the PROVEN optimal solution."
  - Secondary: "Today: a systematic method to find the absolute best."

### Slide 4: The 5-Step Framework
- **Type:** `slide-list`
- **Section:** Framework
- **Content:**
  - Title: "The Optimization Framework"
  - List:
    1. "DRAW AND LABEL: Create a diagram with all quantities"
    2. "IDENTIFY: What are we optimizing? What can vary?"
    3. "WRITE EQUATIONS: Objective function + Constraint"
    4. "REDUCE: Use constraint to get single-variable function"
    5. "APPLY CALCULUS: Critical points, verify max/min, answer the question"
  - Note: "The hardest part is setup - the calculus is usually straightforward!"

### Slide 5: Key Vocabulary
- **Type:** `slide-comparison`
- **Section:** Framework
- **Content:**
  - Title: "Two Essential Equations"
  - Column 1: Objective Function
    - Header: "What to Optimize"
    - "The quantity we want to maximize or minimize"
    - "Examples: Area, Volume, Cost, Distance, Profit"
    - "This is what we ultimately differentiate"
  - Column 2: Constraint Equation
    - Header: "The Limitation"
    - "The relationship that limits our choices"
    - "Examples: Fixed perimeter, fixed volume, budget"
    - "Use this to eliminate a variable"

### Slide 6: Why Constraints Matter
- **Type:** `slide-statement`
- **Section:** Framework
- **Content:**
  - Statement: "Without a constraint, most problems have no finite maximum."
  - Secondary: "Want maximum area? Make it infinitely large! The constraint creates a bounded search space."

### Slide 7: Problem Type 1 - Geometric Setup
- **Type:** `slide-visual`
- **Section:** Geometric Optimization
- **Content:**
  - Title: "Classic Problem: Fencing by a River"
  - **D3 Visualization:** Rectangle with river on one side
  - Problem: "A farmer has 400 ft of fencing to enclose a rectangular field next to a river (no fence needed along the river). What dimensions maximize the area?"
  - Diagram labels: w = width, l = length

### Slide 8: Geometric - Step 1 & 2
- **Type:** `slide-two-part`
- **Section:** Geometric Optimization
- **Content:**
  - Title: "Steps 1 & 2: Draw and Identify"
  - Primary:
    - "Draw: Rectangle with three fenced sides"
    - "Variables: w = width (perpendicular to river), l = length (parallel to river)"
  - Secondary:
    - "Optimize: Area A = l * w"
    - "Given: 400 ft of fencing for three sides"

### Slide 9: Geometric - Step 3
- **Type:** `slide-example`
- **Section:** Geometric Optimization
- **Content:**
  - Title: "Step 3: Write Equations"
  - Equations:
    - "Objective function: A = l * w (area to maximize)"
    - "Constraint: 2w + l = 400 (only three sides fenced)"
  - Note: "Two variables (l and w), one equation - need to eliminate one"

### Slide 10: Geometric - Step 4
- **Type:** `slide-example`
- **Section:** Geometric Optimization
- **Content:**
  - Title: "Step 4: Reduce to One Variable"
  - Steps:
    - "From constraint: l = 400 - 2w"
    - "Substitute into objective:"
    - "A(w) = (400 - 2w) * w = 400w - 2w^2"
  - Result: "Now A is a function of w alone!"

### Slide 11: Geometric - Step 5
- **Type:** `slide-example`
- **Section:** Geometric Optimization
- **Content:**
  - Title: "Step 5: Apply Calculus"
  - Steps:
    1. "Domain: 0 < w < 200 (physical constraints)"
    2. "A'(w) = 400 - 4w"
    3. "Critical point: 400 - 4w = 0 gives w = 100"
    4. "Verify max: A''(w) = -4 < 0 (concave down everywhere - maximum)"
    5. "Find l: l = 400 - 2(100) = 200"
    6. "Maximum area: A = 100 * 200 = 20,000 sq ft"

### Slide 12: Geometric - Visualization
- **Type:** `slide-visual`
- **Section:** Geometric Optimization
- **Content:**
  - Title: "Visualizing the Optimization"
  - **D3 Visualization:**
    - Graph of A(w) = 400w - 2w^2
    - Maximum clearly visible at w = 100
    - Slider to adjust w and see area change
    - Rectangle shape updates as w changes
  - Caption: "The area function has a clear maximum at w = 100"

### Slide 13: Geometric - Answer
- **Type:** `slide-two-part`
- **Section:** Geometric Optimization
- **Content:**
  - Title: "The Complete Answer"
  - Primary:
    - "The field should be 100 ft by 200 ft"
    - "(with the 200 ft side along the river)"
    - "Maximum area: 20,000 square feet"
  - Secondary: "Notice: The optimal rectangle is NOT a square! The river changes the constraint."

### Slide 14: Problem Type 2 - Container Setup
- **Type:** `slide-visual`
- **Section:** Container Optimization
- **Content:**
  - Title: "Classic Problem: Open Box"
  - **D3 Visualization:** 3D box with square base, no top
  - Problem: "A rectangular box with square base and no top must have volume 32 cubic inches. Find dimensions that minimize surface area."
  - Labels: x = base side, h = height

### Slide 15: Container - Setup
- **Type:** `slide-example`
- **Section:** Container Optimization
- **Content:**
  - Title: "Setting Up the Problem"
  - "Identify:"
  - "Variables: x = side of square base, h = height"
  - "Minimize: Surface area S = x^2 + 4xh (base + four sides)"
  - "Equations:"
  - "Objective: S = x^2 + 4xh"
  - "Constraint: V = x^2 * h = 32"

### Slide 16: Container - Reduce
- **Type:** `slide-example`
- **Section:** Container Optimization
- **Content:**
  - Title: "Reducing to One Variable"
  - Steps:
    - "From constraint: h = 32/x^2"
    - "Substitute into S:"
    - "S(x) = x^2 + 4x(32/x^2)"
    - "S(x) = x^2 + 128/x"
  - Note: "Domain: x > 0"

### Slide 17: Container - Calculus
- **Type:** `slide-example`
- **Section:** Container Optimization
- **Content:**
  - Title: "Applying Calculus"
  - Steps:
    1. "S'(x) = 2x - 128/x^2"
    2. "Set S'(x) = 0: 2x = 128/x^2"
    3. "Multiply: 2x^3 = 128, so x^3 = 64, x = 4"
    4. "Verify min: S''(x) = 2 + 256/x^3, S''(4) = 2 + 4 = 6 > 0 (concave up - minimum)"
    5. "Find h: h = 32/16 = 2"
    6. "Minimum surface area: S = 16 + 128/4 = 48 sq in"

### Slide 18: Container - Answer
- **Type:** `slide-two-part`
- **Section:** Container Optimization
- **Content:**
  - Title: "The Complete Answer"
  - Primary:
    - "Base: 4 in by 4 in"
    - "Height: 2 in"
    - "Minimum surface area: 48 square inches"
  - Secondary: "Key insight: The optimal box has base dimensions twice the height"

### Slide 19: Container - Visualization
- **Type:** `slide-visual`
- **Section:** Container Optimization
- **Content:**
  - Title: "The Surface Area Function"
  - **D3 Visualization:**
    - Graph of S(x) = x^2 + 128/x for x > 0
    - Minimum at x = 4 clearly marked
    - 3D box visualization that updates as x changes
    - Shows surface area increasing as box deviates from optimal
  - Caption: "Minimum surface area achieved at x = 4"

### Slide 20: Problem Type 3 - Distance
- **Type:** `slide-visual`
- **Section:** Distance Optimization
- **Content:**
  - Title: "Distance Optimization"
  - **D3 Visualization:** Line y = 2x + 3 with origin marked
  - Problem: "Find the point on the line y = 2x + 3 closest to the origin."

### Slide 21: Distance - The Trick
- **Type:** `slide-two-part`
- **Section:** Distance Optimization
- **Content:**
  - Title: "A Useful Trick"
  - Primary:
    - "Distance: d = sqrt(x^2 + (2x+3)^2)"
    - "Minimizing d is the same as minimizing d^2!"
    - "Let D = d^2 = x^2 + (2x+3)^2"
  - Secondary: "Why? Same optimal x, but no square root to deal with!"

### Slide 22: Distance - Solution
- **Type:** `slide-example`
- **Section:** Distance Optimization
- **Content:**
  - Title: "Finding the Closest Point"
  - Steps:
    1. "D = x^2 + (2x+3)^2 = x^2 + 4x^2 + 12x + 9 = 5x^2 + 12x + 9"
    2. "D'(x) = 10x + 12"
    3. "D'(x) = 0: x = -6/5"
    4. "D''(x) = 10 > 0 (minimum)"
    5. "y = 2(-6/5) + 3 = -12/5 + 15/5 = 3/5"
  - Result: "Closest point: (-6/5, 3/5)"

### Slide 23: Distance - Visualization
- **Type:** `slide-visual`
- **Section:** Distance Optimization
- **Content:**
  - Title: "Visualizing the Solution"
  - **D3 Visualization:**
    - Line y = 2x + 3
    - Origin marked
    - Closest point (-6/5, 3/5) marked
    - Perpendicular line from origin to closest point (shortest path is perpendicular!)
    - Distance measurement displayed
  - Caption: "The shortest path to a line is always perpendicular"

### Slide 24: Common Pitfalls
- **Type:** `slide-list`
- **Section:** Pitfalls
- **Content:**
  - Title: "Common Pitfalls to Avoid"
  - List:
    1. "Skipping the picture - ALWAYS draw!"
    2. "Forgetting the constraint - without it, no finite optimum"
    3. "Not reducing to one variable - can't differentiate with two!"
    4. "Stopping at critical point - answer the actual QUESTION asked"
    5. "Forgetting to verify max/min - is it really a maximum?"
    6. "Ignoring the domain - physical constraints matter (x > 0, etc.)"
    7. "Omitting units - '20,000' is not an answer; '20,000 sq ft' is"

### Slide 25: Pitfall Example
- **Type:** `slide-two-part`
- **Section:** Pitfalls
- **Content:**
  - Title: "Answer the Question Asked"
  - Primary:
    - "Problem: Find the dimensions that maximize area"
    - "WRONG answer: 'x = 5'"
    - "RIGHT answer: 'The rectangle should be 5 ft by 10 ft for maximum area of 50 sq ft'"
  - Secondary: "The question asks for DIMENSIONS, not just the value of x!"

### Slide 26: Practice Problem Setup
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice: Set Up Only"
  - Problem: "A cylindrical can must hold 1000 cm^3 of soup. Find the dimensions (radius and height) that minimize the amount of metal used."
  - Tasks:
    1. "Draw and label the cylinder"
    2. "Write the objective function (surface area)"
    3. "Write the constraint (volume = 1000)"
    4. "Reduce to single variable"
  - Time: "3 minutes - setup only, don't solve yet"

### Slide 27: Practice Problem - Check Setup
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Checking the Setup"
  - Variables: "r = radius, h = height"
  - Objective: "S = 2(pi)r^2 + 2(pi)rh (two circular ends + lateral surface)"
  - Constraint: "V = (pi)r^2*h = 1000"
  - Reduce: "h = 1000/((pi)r^2)"
  - Single-variable: "S(r) = 2(pi)r^2 + 2(pi)r * (1000/((pi)r^2)) = 2(pi)r^2 + 2000/r"

### Slide 28: Practice Problem - Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Completing the Solution"
  - Steps:
    1. "S'(r) = 4(pi)r - 2000/r^2"
    2. "Set S'(r) = 0: 4(pi)r = 2000/r^2"
    3. "r^3 = 500/(pi), so r = (500/(pi))^(1/3) approx 5.42 cm"
    4. "h = 1000/((pi)r^2) approx 10.84 cm"
    5. "Note: h = 2r (optimal cylinder has height = diameter!)"

### Slide 29: AP Exam Tips
- **Type:** `slide-list`
- **Section:** AP Connection
- **Content:**
  - Title: "AP Exam Scoring Notes"
  - List:
    - "Point for correct objective function"
    - "Point for correct constraint"
    - "Point for correct single-variable function"
    - "Point for correct derivative"
    - "Point for finding critical point"
    - "Point for verifying max/min"
    - "Point for correct final answer with units"
  - Note: "Show ALL work - each step can earn points!"

### Slide 30: Real-World Applications
- **Type:** `slide-list`
- **Section:** Applications
- **Content:**
  - Title: "Optimization is Everywhere"
  - List:
    - "Engineering: Design efficient structures and containers"
    - "Economics: Maximize profit, minimize cost"
    - "Physics: Minimize energy, time, or distance"
    - "Biology: Model resource allocation"
    - "Computer Science: Algorithm efficiency"
    - "Manufacturing: Minimize waste, maximize output"
  - Key insight: "Calculus optimization solves real-world problems daily!"

### Slide 31: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "5-step procedure: Draw, Identify, Equations, Reduce, Calculus"
    - "Constraint creates bounded search space"
    - "Reduce to ONE variable before differentiating"
    - "Verify max vs. min using SDT or domain analysis"
    - "ANSWER THE QUESTION - give dimensions/values with units"
    - "The hardest part is SETUP - calculus is usually straightforward"

### Slide 32: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Problem: "A poster must contain 150 sq in of printed matter, with 3 in margins on top and bottom and 2 in margins on each side."
  - Tasks:
    1. "Draw a labeled diagram"
    2. "Write the objective function (total poster area)"
    3. "Write the constraint (printed area = 150)"
    4. "Set up (but don't solve) the single-variable function to minimize"

### Slide 33: Unit 5 Complete
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Unit 5: Analytical Applications of Differentiation - COMPLETE"
  - Secondary: "You now have all the tools to analyze functions using derivatives: MVT, EVT, extrema, concavity, curve sketching, and optimization."
  - Preview: "Next unit: Integration - the reverse of differentiation"

---

## D3 Visualization Specifications

### Visualization 1: Fencing Problem Interactive (Slides 1, 12)

```javascript
// Interactive fence visualization
// Features:
// - Rectangle that changes shape as user adjusts width
// - River shown on one side (no fence needed)
// - Fence perimeter always equals 400
// - Area displayed and updated in real-time
// - Graph of A(w) = 400w - 2w^2 below
// - Vertical line on graph tracks current w value
// - Maximum point highlighted

// Interaction: slider to adjust width w
// Display: "Width: [w] ft, Length: [l] ft, Area: [A] sq ft"
// Highlight when at optimal (w = 100)

// Color scheme:
// - Fence: brown
// - River: blue
// - Maximum indicator: teal
```

### Visualization 2: Box Optimizer (Slides 14, 19)

```javascript
// 3D box visualization with optimization
// Features:
// - 3D rendering of box with square base
// - User adjusts base dimension x via slider
// - Height automatically calculated from volume constraint
// - Surface area displayed and updated
// - Graph of S(x) = x^2 + 128/x shown
// - Minimum point highlighted

// 3D features:
// - Rotate box for viewing
// - Color surfaces to show area
// - No top (open box)

// Interaction: slider for x
// Display: "Base: [x] x [x] in, Height: [h] in, Surface Area: [S] sq in"
```

### Visualization 3: Distance to Line (Slides 20, 23)

```javascript
// Point-to-line distance visualization
// Features:
// - Coordinate axes
// - Line y = 2x + 3 drawn
// - Origin marked with dot
// - Moveable point on line (controlled by slider)
// - Line segment from origin to point showing distance
// - Distance value displayed
// - When at minimum: highlight perpendicularity

// Interaction: slide point along line
// Display: "Point: ([x], [y]), Distance: [d]"
// At optimal: "Minimum distance! Note: path is perpendicular to line"
```

### Visualization 4: General Optimization Process (Slide 4)

```javascript
// Animated flowchart of 5-step process
// Features:
// - Five connected steps shown
// - Each step highlights when discussed
// - Icons for each step:
//   1. Pencil (draw)
//   2. Magnifying glass (identify)
//   3. Equation symbol (write equations)
//   4. Arrow merging (reduce)
//   5. Calculus symbol (apply calculus)

// Animation: steps light up sequentially
```

### Visualization 5: Cylinder Optimizer (Slide 27)

```javascript
// Cylinder visualization for can problem
// Features:
// - 3D cylinder with adjustable radius
// - Height adjusts to maintain volume = 1000
// - Surface area calculated and displayed
// - Graph of S(r) shown
// - Optimal dimensions highlighted

// Interesting feature: at optimum, h = 2r (height = diameter)
// Visual indicator when at optimal proportions
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-5-analysis: #0d9488` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Emphasize the 5-step systematic procedure
- Common pitfalls: not answering the actual question, forgetting units
- AP exam connection: scoring rubric shows points for each step
- This is the capstone of Unit 5 - brings together all derivative tools
