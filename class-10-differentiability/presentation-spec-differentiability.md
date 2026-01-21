# Presentation Spec: Differentiability and Continuity

## Class 10 | Unit 2: Differentiation Fundamentals
## CED Topic 2.4

---

## Overview

This presentation establishes the precise relationship between differentiability and continuity. Students learn the fundamental theorem that differentiability implies continuity, explore why the converse is false through canonical counterexamples, and develop skills in identifying non-differentiable points from both graphical and algebraic perspectives.

**Theme Color:** `#7c3aed` (Unit 2 Purple)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 2: Differentiation Fundamentals"
  - Title: "Differentiability and Continuity"
  - Subtitle: "When Derivatives Exist (and When They Don't)"
  - Meta: "Class 10 | CED 2.4 | NCSSM"

### Slide 1: The Big Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "Can we *always* find a derivative? When might the derivative fail to exist?"
- **Notes:** Connect to the derivative definition - the limit must exist for the derivative to exist

### Slide 2: Recall - The Derivative Definition
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "The Derivative as a Limit"
  - Math display: $$f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$$
  - Key insight: "For f'(a) to exist, this limit must exist"
  - Caption: "What could cause this limit to fail?"

### Slide 3: A Suspicious Point
- **Type:** `slide-visual`
- **Section:** Opening
- **Content:**
  - Title: "What's the Slope at x = 0?"
  - **D3 Visualization:** Graph of f(x) = |x| with point highlighted at origin
  - Question: "Can you draw a single tangent line at this point?"
- **Visualization Details:**
  - Show absolute value function
  - Highlight the corner at origin with a marker
  - Invite visual inspection before analysis

### Slide 4: The Relationship
- **Type:** `slide-statement`
- **Section:** The Theorem
- **Content:**
  - Statement: "Differentiability and continuity are related, but they are NOT the same thing."
- **Notes:** Prepare students for the precise logical relationship

### Slide 5: The Theorem
- **Type:** `slide-two-part`
- **Section:** The Theorem
- **Content:**
  - Title: "Differentiability Implies Continuity"
  - Primary: Definition box with gold border:
    - "**Theorem:** If f is differentiable at x = a, then f is continuous at x = a."
  - Secondary:
    - Math: $\text{Differentiable at } a \Rightarrow \text{Continuous at } a$
    - "In symbols: differentiability is a STRONGER condition than continuity"

### Slide 6: Proof Sketch
- **Type:** `slide-visual`
- **Section:** The Theorem
- **Content:**
  - Title: "Why Does Differentiability Imply Continuity?"
  - Step 1: "If f'(a) exists, then..."
    - Math: $f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a}$
  - Step 2: "We can write..."
    - Math: $f(x) - f(a) = \frac{f(x) - f(a)}{x - a} \cdot (x - a)$
  - Step 3: "Taking limits..."
    - Math: $\lim_{x \to a}[f(x) - f(a)] = f'(a) \cdot 0 = 0$
  - Step 4: "Therefore..."
    - Math: $\lim_{x \to a} f(x) = f(a)$ (continuity!)
- **Notes:** Walk through each step carefully; emphasize limit properties

### Slide 7: The Contrapositive
- **Type:** `slide-comparison`
- **Section:** The Theorem
- **Content:**
  - Title: "Logical Consequences"
  - Column 1: The Theorem
    - "Differentiable $\Rightarrow$ Continuous"
    - "If a function has a derivative at a point, it must be continuous there"
  - Column 2: The Contrapositive
    - "Not Continuous $\Rightarrow$ Not Differentiable"
    - "If a function is NOT continuous at a point, it CANNOT have a derivative there"
- **Notes:** Both statements are logically equivalent

### Slide 8: The Million Dollar Question
- **Type:** `slide-statement`
- **Section:** Counterexamples
- **Content:**
  - Statement: "Does the reverse hold? Does continuity imply differentiability?"
  - Secondary: "If a function is continuous at a point, must it have a derivative there?"
- **Notes:** Pause for student predictions

### Slide 9: The Counterexample - |x|
- **Type:** `slide-visual`
- **Section:** Counterexamples
- **Content:**
  - Title: "The Absolute Value Function"
  - **D3 Visualization:** Graph of f(x) = |x|
  - Caption: "Is f(x) = |x| continuous at x = 0? Is it differentiable at x = 0?"
- **Visualization Details:**
  - Clear V-shaped graph
  - Point marked at origin
  - Continuous (no gaps) but has a sharp corner

### Slide 10: Checking Continuity
- **Type:** `slide-example`
- **Section:** Counterexamples
- **Content:**
  - Title: "f(x) = |x| is Continuous at x = 0"
  - Check 1: "$f(0) = |0| = 0$ exists"
  - Check 2: "$\lim_{x \to 0} |x| = 0$ exists"
  - Check 3: "$\lim_{x \to 0} |x| = 0 = f(0)$"
  - Conclusion: "All three conditions met - f is continuous at x = 0"
- **Notes:** Emphasize the "finger test" - you never lift your finger when tracing the graph

### Slide 11: Left and Right Derivatives
- **Type:** `slide-visual`
- **Section:** Counterexamples
- **Content:**
  - Title: "Checking Differentiability: One-Sided Derivatives"
  - Definition boxes:
    - Left-hand derivative: $f'_-(a) = \lim_{h \to 0^-} \frac{f(a+h) - f(a)}{h}$
    - Right-hand derivative: $f'_+(a) = \lim_{h \to 0^+} \frac{f(a+h) - f(a)}{h}$
  - Key insight: "f'(a) exists if and only if $f'_-(a) = f'_+(a)$"

### Slide 12: Computing One-Sided Derivatives
- **Type:** `slide-example`
- **Section:** Counterexamples
- **Content:**
  - Title: "One-Sided Derivatives of |x| at x = 0"
  - Left derivative calculation:
    - Math: $f'_-(0) = \lim_{h \to 0^-} \frac{|0+h| - |0|}{h} = \lim_{h \to 0^-} \frac{|h|}{h}$
    - "For h < 0: |h| = -h, so $\frac{|h|}{h} = \frac{-h}{h} = -1$"
    - Result: $f'_-(0) = -1$
  - Right derivative calculation:
    - Math: $f'_+(0) = \lim_{h \to 0^+} \frac{|0+h| - |0|}{h} = \lim_{h \to 0^+} \frac{|h|}{h}$
    - "For h > 0: |h| = h, so $\frac{|h|}{h} = \frac{h}{h} = 1$"
    - Result: $f'_+(0) = +1$
  - Conclusion: "$f'_-(0) = -1 \neq +1 = f'_+(0)$, so f'(0) does NOT exist"

### Slide 13: Visualizing the Failure
- **Type:** `slide-visual`
- **Section:** Counterexamples
- **Content:**
  - Title: "Secant Lines from Left and Right"
  - **D3 Visualization:** Interactive secant line animation
    - Show f(x) = |x|
    - Animated secant lines approaching from left (slope approaches -1)
    - Animated secant lines approaching from right (slope approaches +1)
    - Display current slope values
  - Caption: "The slopes approach different values - the limit doesn't exist"
- **Visualization Details:**
  - Two separate secant lines, one from each side
  - Slider or auto-animation showing h approaching 0
  - Real-time slope display: "Left slope: -1" and "Right slope: +1"

### Slide 14: The Conclusion
- **Type:** `slide-statement`
- **Section:** Counterexamples
- **Content:**
  - Statement: "f(x) = |x| is continuous at x = 0 but NOT differentiable at x = 0"
  - Secondary: "Continuity does NOT imply differentiability!"
- **Notes:** This is the key takeaway - make sure students understand the logical direction

### Slide 15: The Four Failure Modes
- **Type:** `slide-statement`
- **Section:** Failure Modes
- **Content:**
  - Statement: "There are exactly four ways differentiability can fail at a point"
- **Notes:** Prepare students for the gallery of failure modes

### Slide 16: Failure Mode Gallery
- **Type:** `slide-visual`
- **Section:** Failure Modes
- **Content:**
  - Title: "Four Ways Differentiability Can Fail"
  - **D3 Visualization:** 2x2 grid of small graphs:
    - Top-left: Corner (f(x) = |x|)
    - Top-right: Cusp (f(x) = x^(2/3))
    - Bottom-left: Vertical tangent (f(x) = x^(1/3))
    - Bottom-right: Discontinuity (piecewise with jump)
  - Labels under each graph
- **Visualization Details:**
  - Each mini-graph clearly shows the problematic point
  - All non-differentiable points marked with a special indicator
  - Consistent color coding across all four

### Slide 17: Corner
- **Type:** `slide-two-part`
- **Section:** Failure Modes
- **Content:**
  - Title: "Failure Mode 1: Corner"
  - Primary:
    - Example: f(x) = |x| at x = 0
    - Graph showing the corner
  - Secondary:
    - "Left and right derivatives exist but are DIFFERENT"
    - Math: $f'_-(0) = -1 \neq +1 = f'_+(0)$
    - "The function is continuous but changes direction abruptly"
- **Notes:** Most common example; students should know this one cold

### Slide 18: Cusp
- **Type:** `slide-two-part`
- **Section:** Failure Modes
- **Content:**
  - Title: "Failure Mode 2: Cusp"
  - Primary:
    - Example: $f(x) = x^{2/3}$ at x = 0
    - Graph showing the cusp
  - Secondary:
    - "One-sided derivatives approach $\pm\infty$ from opposite sides"
    - Math: $f'_-(0) \to -\infty$ and $f'_+(0) \to +\infty$
    - "The tangent line would be vertical, but from opposite directions"
- **Notes:** More subtle than a corner - slopes become infinite

### Slide 19: Vertical Tangent
- **Type:** `slide-two-part`
- **Section:** Failure Modes
- **Content:**
  - Title: "Failure Mode 3: Vertical Tangent"
  - Primary:
    - Example: $f(x) = x^{1/3}$ at x = 0
    - Graph showing the vertical tangent
  - Secondary:
    - "Both one-sided derivatives approach the SAME infinity"
    - Math: $f'_-(0) \to +\infty$ and $f'_+(0) \to +\infty$
    - "The tangent line exists but is vertical (undefined slope)"
- **Notes:** Function IS defined at x = 0, but derivative is infinite

### Slide 20: Discontinuity
- **Type:** `slide-two-part`
- **Section:** Failure Modes
- **Content:**
  - Title: "Failure Mode 4: Discontinuity"
  - Primary:
    - Example: Piecewise function with jump
    - Graph showing the jump discontinuity
  - Secondary:
    - "If continuity fails, differentiability fails automatically"
    - "This follows from our theorem: not continuous $\Rightarrow$ not differentiable"
    - "The difference quotient has no limit when there's a jump"
- **Notes:** This mode fails for a different reason - prerequisite (continuity) not met

### Slide 21: The Hierarchy
- **Type:** `slide-visual`
- **Section:** Summary
- **Content:**
  - Title: "The Function Hierarchy"
  - **D3 Visualization:** Nested Venn diagram
    - Outer: "All Functions"
    - Middle: "Continuous Functions"
    - Inner: "Differentiable Functions"
    - Smallest: "Smooth (C^infinity) Functions"
  - Caption: "Every differentiable function is continuous, but not every continuous function is differentiable"
- **Visualization Details:**
  - Concentric circles with labels
  - Example functions placed in appropriate regions
  - Color coding to emphasize the containment relationship

### Slide 22: Practice - Identifying Points
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice: Identify Non-Differentiable Points"
  - Prompt: "For the graph shown, identify all points where f is:"
    - "(a) Continuous but NOT differentiable"
    - "(b) Neither continuous nor differentiable"
  - **D3 Visualization:** Graph with labeled points A, B, C, D showing:
    - A: corner
    - B: cusp
    - C: vertical tangent
    - D: jump discontinuity
  - Time: "2 minutes"

### Slide 23: Practice Solution
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solution"
  - List:
    - "Point A (corner): Continuous but NOT differentiable"
    - "Point B (cusp): Continuous but NOT differentiable"
    - "Point C (vertical tangent): Continuous but NOT differentiable"
    - "Point D (jump): NOT continuous, therefore NOT differentiable"
  - Key insight: "A, B, and C are all continuous but fail differentiability in different ways"

### Slide 24: Practice - Piecewise Function
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Practice: Piecewise Analysis"
  - Prompt: "Is the following function differentiable at x = 1?"
  - Math display:
    $$f(x) = \begin{cases} x^2 & x \leq 1 \\ 2x - 1 & x > 1 \end{cases}$$
  - Instructions: "Check both continuity AND left/right derivatives"
  - Time: "3 minutes"

### Slide 25: Piecewise Solution
- **Type:** `slide-example`
- **Section:** Practice
- **Content:**
  - Title: "Solution: Piecewise Analysis"
  - Step 1: Check continuity at x = 1
    - Left: $\lim_{x \to 1^-} x^2 = 1$
    - Right: $\lim_{x \to 1^+} (2x - 1) = 1$
    - Value: $f(1) = 1^2 = 1$
    - Result: Continuous (all equal 1)
  - Step 2: Check derivatives
    - Left derivative: $\frac{d}{dx}(x^2) = 2x$, so $f'_-(1) = 2$
    - Right derivative: $\frac{d}{dx}(2x - 1) = 2$, so $f'_+(1) = 2$
    - Result: $f'_-(1) = f'_+(1) = 2$
  - Conclusion: "YES! f is differentiable at x = 1 (and f'(1) = 2)"

### Slide 26: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "Differentiable $\Rightarrow$ Continuous (always true)"
    - "Continuous $\not\Rightarrow$ Differentiable (|x| is the counterexample)"
    - "Four failure modes: corners, cusps, vertical tangents, discontinuities"
    - "To check differentiability: verify $f'_-(a) = f'_+(a)$"
    - "Continuity is NECESSARY but not SUFFICIENT for differentiability"

### Slide 27: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "Give an example of a function that is continuous at x = 0 but not differentiable there. Explain WHY it fails to be differentiable."
  - Follow-up: "Which failure mode does your example represent?"

### Slide 28: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: The Power Rule"
  - Secondary: "Now that we know WHEN derivatives exist, we need efficient ways to FIND them. Tomorrow we learn our first derivative shortcuts."

---

## D3 Visualization Specifications

### Visualization 1: Absolute Value Graph (Slide 3, 9)

```javascript
// Static display of f(x) = |x| with highlighted point at origin
// Features:
// - V-shaped graph centered at origin
// - Domain: [-4, 4], Range: [0, 4]
// - Point marker at (0, 0) with special styling
// - Clean axes with grid lines

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Point: var(--color-derivative) #f97316
// - Grid: #e5e7eb

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: One-Sided Secant Lines (Slide 13)

```javascript
// Interactive visualization showing secant lines approaching from both sides
// Features:
// - f(x) = |x| graph
// - Fixed point at origin
// - Two moveable points approaching from left and right
// - Two secant lines (one from each side)
// - Real-time slope display for each
// - Slider controlling how close h is to 0
// - Auto-animation option

// Display elements:
// - "Left secant slope: [value]" updating in real-time
// - "Right secant slope: [value]" updating in real-time
// - Visual emphasis when slopes differ significantly

// Color scheme:
// - Curve: var(--color-function) #60a5fa
// - Left secant: #ef4444 (red)
// - Right secant: #22c55e (green)
// - Fixed point: var(--color-derivative) #f97316

// Animation: As h approaches 0, left slope approaches -1, right approaches +1
```

### Visualization 3: Failure Mode Gallery (Slide 16)

```javascript
// 2x2 grid of small graphs showing each failure mode
// Features:
// - Top-left: f(x) = |x| (corner)
// - Top-right: f(x) = x^(2/3) (cusp)
// - Bottom-left: f(x) = x^(1/3) (vertical tangent)
// - Bottom-right: piecewise step function (discontinuity)
// - Each graph shows domain [-2, 2]
// - Non-differentiable point marked on each

// Interaction: Click on a graph to see it enlarged with explanation
// Or use as static reference gallery

// Font sizes: Labels at 1.25rem, titles at 1.5rem
```

### Visualization 4: Function Hierarchy (Slide 21)

```javascript
// Nested circles (Venn diagram style)
// Features:
// - Four concentric regions
// - Outermost: "All Functions"
// - Next: "Continuous Functions" (examples: |x|, step functions)
// - Next: "Differentiable Functions" (examples: polynomials)
// - Innermost: "Smooth Functions" (infinitely differentiable)
// - Example functions placed in appropriate regions

// Styling:
// - Gradient fills for each region
// - Clear labels with adequate spacing
// - Theme color (#7c3aed) for accents

// Responsive design using viewBox
```

### Visualization 5: Practice Graph (Slide 22)

```javascript
// Custom graph with multiple non-differentiable points
// Features:
// - Smooth curve with four labeled points
// - Point A: corner (like |x|)
// - Point B: cusp (like x^(2/3))
// - Point C: vertical tangent (like x^(1/3))
// - Point D: jump discontinuity
// - Clear labels A, B, C, D next to each point

// Design for classroom visibility:
// - Large point markers
// - Clear letter labels
// - Sufficient contrast between curve and background
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-2-diff-fund: #7c3aed` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- One-sided derivative notation: use subscript minus/plus (f'_-(a), f'_+(a))
- Piecewise function display uses cases environment in LaTeX
