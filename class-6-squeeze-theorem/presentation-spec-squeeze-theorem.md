# Presentation Specification: The Squeeze Theorem

## Class 6 | February 12, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topic:** 1.8 - Determining Limits Using the Squeeze Theorem

This presentation introduces the Squeeze Theorem and its applications, including the fundamental trigonometric limit sin(x)/x.

---

## Slide Sequence

### Section 1: Opening (Slides 0-2)

#### Slide 0: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "The Squeeze Theorem"
  - Subtitle: "Limits by Comparison"
  - Meta: "Class 6 | February 12, 2026 | CED 1.8"

#### Slide 1: A New Challenge
- **Type:** `slide-visual`
- **Content:**
  - Title: "A Limit We Can't Factor"
  - Display: \(\lim_{x \to 0} x^2 \sin\left(\frac{1}{x}\right)\)
  - Caption: "Direct substitution gives 0 times undefined. We need a new approach."

#### Slide 2: The Idea
- **Type:** `slide-statement`
- **Content:**
  - Statement: "If you're trapped between two things approaching the same place, you must go there too."

### Section 2: The Theorem (Slides 3-7)

#### Slide 3: The Squeeze Theorem Statement
- **Type:** `slide-visual`
- **Content:**
  - Title: "The Squeeze Theorem"
  - Formal statement with conditions
  - Mathematical display of theorem

#### Slide 4: Visual Intuition
- **Type:** `slide-visual`
- **Content:**
  - Title: "Visualizing the Squeeze"
  - **D3 Visualization:** Three functions converging, middle one squeezed
  - Caption: "f(x) is trapped—it has no choice but to approach L"

#### Slide 5: The Sandwich Analogy
- **Type:** `slide-visual`
- **Content:**
  - Title: "Also Called: The Sandwich Theorem"
  - Visual metaphor showing squeeze
  - Caption: "Like bread slices pressing together—the filling goes where the bread goes"

#### Slide 6: Key Requirements
- **Type:** `slide-list`
- **Content:**
  - Title: "What We Need"
  - Items:
    - "Find bounding functions g(x) ≤ f(x) ≤ h(x)"
    - "Bounds must hold near a (not necessarily at a)"
    - "Both bounds must have the SAME limit L"
    - "Then f(x) must also have limit L"

#### Slide 7: When to Use It
- **Type:** `slide-list`
- **Content:**
  - Title: "Use Squeeze Theorem When..."
  - Items:
    - "Direct substitution fails"
    - "Factoring/rationalizing don't help"
    - "The function oscillates or is bounded"
    - "You can identify natural upper and lower bounds"

### Section 3: Classic Example (Slides 8-11)

#### Slide 8: Example 1 Setup
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 1: Classic Squeeze"
  - Problem: \(\lim_{x \to 0} x^2 \sin\left(\frac{1}{x}\right)\)
  - Initial observation: sin(1/x) oscillates wildly as x → 0

#### Slide 9: Example 1 - Finding Bounds
- **Type:** `slide-example`
- **Content:**
  - Title: "Step 1: Find Bounds"
  - Key insight: \(-1 \leq \sin\left(\frac{1}{x}\right) \leq 1\)
  - Multiply by x² (positive): \(-x^2 \leq x^2 \sin\left(\frac{1}{x}\right) \leq x^2\)

#### Slide 10: Example 1 - Visualization
- **Type:** `slide-visual`
- **Content:**
  - Title: "Visualizing the Squeeze"
  - **D3 Visualization:** Oscillating function trapped between ±x²
  - Show bounds converging to 0

#### Slide 11: Example 1 - Conclusion
- **Type:** `slide-example`
- **Content:**
  - Title: "Step 2: Apply Theorem"
  - Show: \(\lim_{x \to 0} (-x^2) = 0\) and \(\lim_{x \to 0} x^2 = 0\)
  - By Squeeze Theorem: limit = 0

### Section 4: The Special Trig Limit (Slides 12-17)

#### Slide 12: The Fundamental Limit
- **Type:** `slide-statement`
- **Content:**
  - Statement: \(\lim_{x \to 0} \frac{\sin x}{x} = 1\)
  - Secondary: "One of the most important limits in calculus"

#### Slide 13: Geometric Setup
- **Type:** `slide-visual`
- **Content:**
  - Title: "Geometric Proof"
  - **D3 Visualization:** Unit circle with angle x, showing regions
  - Caption: "Compare areas in the unit circle"

#### Slide 14: Area Comparison
- **Type:** `slide-visual`
- **Content:**
  - Title: "Comparing Areas"
  - Show: Triangle ≤ Sector ≤ Larger Triangle
  - Display: \(\frac{1}{2}\sin x \leq \frac{1}{2}x \leq \frac{1}{2}\tan x\)

#### Slide 15: Deriving the Squeeze
- **Type:** `slide-example`
- **Content:**
  - Title: "Setting Up the Squeeze"
  - Steps:
    1. Divide by (1/2)sin x: \(1 \leq \frac{x}{\sin x} \leq \frac{1}{\cos x}\)
    2. Take reciprocals: \(\cos x \leq \frac{\sin x}{x} \leq 1\)

#### Slide 16: Applying the Squeeze
- **Type:** `slide-example`
- **Content:**
  - Title: "Completing the Proof"
  - Since \(\lim_{x \to 0} \cos x = 1\) and \(\lim_{x \to 0} 1 = 1\)
  - By Squeeze Theorem: \(\lim_{x \to 0} \frac{\sin x}{x} = 1\)

#### Slide 17: Related Limits
- **Type:** `slide-visual`
- **Content:**
  - Title: "Important Trig Limits"
  - Display:
    - \(\lim_{x \to 0} \frac{\sin x}{x} = 1\)
    - \(\lim_{x \to 0} \frac{1 - \cos x}{x} = 0\)
    - \(\lim_{x \to 0} \frac{\tan x}{x} = 1\)

### Section 5: Applications (Slides 18-21)

#### Slide 18: Example 2
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 2: Variations"
  - Problem: \(\lim_{x \to 0} \frac{\sin 3x}{x}\)
  - Solution: Rewrite as \(3 \cdot \frac{\sin 3x}{3x}\) = 3

#### Slide 19: Example 3
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 3"
  - Problem: \(\lim_{x \to 0} \frac{\tan x}{x}\)
  - Solution: \(\frac{\sin x}{x} \cdot \frac{1}{\cos x} = 1 \cdot 1 = 1\)

#### Slide 20: Example 4 - Another Squeeze
- **Type:** `slide-example`
- **Content:**
  - Title: "Example 4: Direct Squeeze"
  - Problem: \(\lim_{x \to 0} x \cos\left(\frac{1}{x}\right)\)
  - Bounds: \(-|x| \leq x \cos\left(\frac{1}{x}\right) \leq |x|\)
  - Answer: 0

#### Slide 21: Practice
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Your Turn"
  - Problem: \(\lim_{x \to 0} \frac{\sin 5x}{2x}\)

### Section 6: Closing (Slides 22-24)

#### Slide 22: Key Takeaways
- **Type:** `slide-list`
- **Content:**
  - Title: "Key Takeaways"
  - Items:
    - "Squeeze Theorem: trap f between bounds that share a limit"
    - "Works for oscillating or bounded functions"
    - "\(\frac{\sin x}{x} \to 1\) as x → 0"
    - "Look for natural bounds like -1 ≤ sin ≤ 1"

#### Slide 23: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Exit Ticket"
  - Problem: \(\lim_{x \to 0} x^2 \cos\left(\frac{1}{x}\right)\)

#### Slide 24: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Next: *Continuity*—functions without breaks"

---

## Interactive Visualizations

### Visualization 1: Squeeze in Action (Slide 4)

**Purpose:** Show three functions where the middle one is squeezed

**Implementation:**
- Plot g(x), f(x), h(x) where g ≤ f ≤ h
- Animate as x approaches target
- Show all three converging to L

### Visualization 2: Oscillating Squeeze (Slide 10)

**Purpose:** Show x² sin(1/x) trapped between ±x²

**Implementation:**
- Graph y = x², y = -x², and y = x² sin(1/x)
- Show oscillations becoming smaller near origin
- Highlight squeeze to 0

### Visualization 3: Unit Circle Proof (Slide 13)

**Purpose:** Geometric visualization for sin(x)/x limit

**Implementation:**
- Unit circle with angle x
- Show triangle, sector, and outer triangle
- Color-code the three regions
- Interactive slider for angle

---

## Technical Notes

### Color Usage
- Theme color: `#356093` (NCSSM Blue)
- Bounds: `#f59e0b` (amber) for upper, `#22c55e` (green) for lower
- Squeezed function: theme color
- Emphasis: `#d4a028` (gold)

---

## Pedagogical Notes

### Key Takeaways to Reinforce
1. Squeeze Theorem requires finding appropriate bounds
2. Both bounds must have the SAME limit
3. sin(x)/x = 1 is proven by Squeeze Theorem
4. This technique works when algebra fails

### Pacing Notes
- Spend time on geometric intuition
- The trig limit proof is important but complex—don't rush
- Leave time for applications
