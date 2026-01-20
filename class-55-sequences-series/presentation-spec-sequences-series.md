# Presentation Spec: Sequences and Series Introduction

## Class 55 | Unit 10: Infinite Sequences and Series
## CED Topic 10.1

---

## Overview

This presentation introduces the fundamental concepts of infinite sequences and series, establishing the critical distinction between the two. Key visualizations include an interactive sequence/series explorer showing how partial sums behave differently than individual terms, and a demonstration of why terms approaching zero does not guarantee convergence (the harmonic series counterexample).

**Theme Color:** `#4f46e5` (Unit 10 Indigo)

---

## Slide Inventory

### Slide 0: Title
- **Type:** `slide-title`
- **Section:** Opening
- **Content:**
  - Unit badge: "Unit 10: Infinite Sequences and Series"
  - Title: "Sequences and Series"
  - Subtitle: "The Mathematics of Infinite Sums"
  - Meta: "Class 55 | CED 10.1 | NCSSM"

### Slide 1: Zeno's Paradox
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "To reach the door, you must first walk halfway. Then half the remaining distance. Then half again. Infinitely many steps—can you ever arrive?"
- **Notes:** This classic paradox creates cognitive dissonance and motivates the need for rigorous definitions

### Slide 2: The Central Question
- **Type:** `slide-statement`
- **Section:** Opening
- **Content:**
  - Statement: "What does it mean to *add* infinitely many numbers?"
  - Secondary: "Today we develop the mathematical framework to answer this question."

### Slide 3: What is a Sequence?
- **Type:** `slide-two-part`
- **Section:** Sequences
- **Content:**
  - Primary: "A **sequence** is an ordered list of numbers"
  - Secondary: "$a_1, a_2, a_3, a_4, \ldots$"
  - Caption: "Formally: a function from positive integers to real numbers"

### Slide 4: Sequence Notation
- **Type:** `slide-list`
- **Section:** Sequences
- **Content:**
  - Title: "Sequence Notation"
  - List items:
    - "$\{a_n\}$ — the entire sequence"
    - "$\{a_n\}_{n=1}^{\infty}$ — explicit starting point"
    - "$a_n$ — the $n$th term (a formula)"
  - Example: "$a_n = \frac{1}{n}$ gives $1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4}, \ldots$"

### Slide 5: Sequence Examples
- **Type:** `slide-visual`
- **Section:** Sequences
- **Content:**
  - Title: "Sequence Examples"
  - **D3 Visualization:** Display multiple sequences as point plots
  - Examples shown:
    - $\{1/n\} = 1, 1/2, 1/3, 1/4, \ldots$
    - $\{(-1)^n\} = -1, 1, -1, 1, \ldots$
    - $\{n\} = 1, 2, 3, 4, \ldots$
    - $\{(n+1)/n\} = 2, 3/2, 4/3, \ldots$
- **Visualization Details:**
  - Plot $(n, a_n)$ points for each sequence
  - Use different colors for each sequence
  - Show horizontal asymptotes where limits exist

### Slide 6: Convergence of Sequences
- **Type:** `slide-visual`
- **Section:** Sequences
- **Content:**
  - Title: "When Does a Sequence Converge?"
  - Definition box:
    - "A sequence $\{a_n\}$ converges to $L$ if $a_n$ gets arbitrarily close to $L$ for large $n$"
    - Math: $\lim_{n \to \infty} a_n = L$
  - Caption: "If no such $L$ exists (or limit is infinite), the sequence diverges"

### Slide 7: Convergent vs Divergent Sequences
- **Type:** `slide-comparison`
- **Section:** Sequences
- **Content:**
  - Title: "Convergent vs Divergent Sequences"
  - Column 1: Convergent
    - "$\{1/n\} \to 0$"
    - "$\{(n+1)/n\} \to 1$"
    - "Terms approach a finite limit"
  - Column 2: Divergent
    - "$\{n\} \to \infty$"
    - "$\{(-1)^n\}$ oscillates"
    - "No single limit exists"

### Slide 8: Visualizing Sequence Convergence
- **Type:** `slide-visual`
- **Section:** Sequences
- **Content:**
  - Title: "Visualizing Convergence"
  - **D3 Visualization:** Interactive sequence convergence explorer
  - Features:
    - Select sequence from dropdown
    - Show points clustering around limit line
    - Highlight convergence region
- **Visualization Details:**
  - Show sequence $\{1/n\}$ approaching $y = 0$
  - Epsilon band around limit
  - Points eventually stay within band

### Slide 9: From Sequence to Series
- **Type:** `slide-statement`
- **Section:** Series
- **Content:**
  - Statement: "A **series** is what you get when you *add up* the terms of a sequence"
  - Math: $\sum_{n=1}^{\infty} a_n = a_1 + a_2 + a_3 + \cdots$

### Slide 10: The Partial Sum Strategy
- **Type:** `slide-visual`
- **Section:** Series
- **Content:**
  - Title: "Partial Sums: The Key Concept"
  - Definition box:
    - $S_1 = a_1$
    - $S_2 = a_1 + a_2$
    - $S_3 = a_1 + a_2 + a_3$
    - $S_n = a_1 + a_2 + \cdots + a_n$
  - Caption: "The sequence $\{S_n\}$ of partial sums is itself a sequence!"

### Slide 11: Series Convergence Definition
- **Type:** `slide-visual`
- **Section:** Series
- **Content:**
  - Title: "When Does a Series Converge?"
  - Definition box with gold border:
    - "A series $\sum a_n$ **converges** if the sequence of partial sums $\{S_n\}$ converges"
    - "If $\lim_{n \to \infty} S_n = S$, we write $\sum_{n=1}^{\infty} a_n = S$"
  - Caption: "Series convergence = partial sum sequence convergence"

### Slide 12: Geometric Series Preview
- **Type:** `slide-visual`
- **Section:** Series
- **Content:**
  - Title: "Example: $\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \cdots$"
  - **D3 Visualization:** Square subdivision animation
  - Partial sums:
    - $S_1 = 1/2$
    - $S_2 = 3/4$
    - $S_3 = 7/8$
    - $S_n = 1 - (1/2)^n \to 1$
  - Result: "The series converges to $1$"
- **Visualization Details:**
  - Unit square being subdivided
  - Shade half, then quarter, then eighth
  - Running total displayed
  - Show area approaching full square

### Slide 13: Sequence vs Series
- **Type:** `slide-comparison`
- **Section:** Series
- **Content:**
  - Title: "Sequence vs Series: Critical Distinction"
  - Column 1: Sequence $\{a_n\}$
    - "An ordered LIST of numbers"
    - "$1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4}, \ldots$"
    - "Question: Where do terms go?"
  - Column 2: Series $\sum a_n$
    - "A SUM of the terms"
    - "$1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \cdots$"
    - "Question: What do partial sums approach?"

### Slide 14: The Dangerous Misconception
- **Type:** `slide-statement`
- **Section:** nth Term Test
- **Content:**
  - Statement: "If $a_n \to 0$, does $\sum a_n$ converge?"
  - Secondary: "This is the most common misconception in series!"
- **Notes:** Build suspense before revealing the harmonic series counterexample

### Slide 15: The nth Term Test
- **Type:** `slide-visual`
- **Section:** nth Term Test
- **Content:**
  - Title: "The nth Term Test for Divergence"
  - Theorem box:
    - "If $\sum a_n$ converges, then $\lim_{n \to \infty} a_n = 0$"
  - Contrapositive (highlighted):
    - "If $\lim_{n \to \infty} a_n \neq 0$, then $\sum a_n$ **DIVERGES**"

### Slide 16: The nth Term Test Warning
- **Type:** `slide-statement`
- **Section:** nth Term Test
- **Content:**
  - Statement: "If $\lim_{n \to \infty} a_n = 0$, the test is **INCONCLUSIVE**"
  - Secondary: "We cannot conclude convergence!"
  - Warning box: "$a_n \to 0$ is **necessary** but **NOT sufficient** for convergence"

### Slide 17: The Harmonic Series
- **Type:** `slide-visual`
- **Section:** nth Term Test
- **Content:**
  - Title: "The Harmonic Series: Essential Counterexample"
  - Math display: $\sum_{n=1}^{\infty} \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \cdots$
  - Key facts:
    - "Terms: $\frac{1}{n} \to 0$ as $n \to \infty$"
    - "BUT: The series **DIVERGES**!"
  - Caption: "Partial sums grow without bound, just very slowly"

### Slide 18: Harmonic Series Divergence Visual
- **Type:** `slide-visual`
- **Section:** nth Term Test
- **Content:**
  - Title: "Why the Harmonic Series Diverges"
  - **D3 Visualization:** Partial sums of harmonic series
  - Show grouping argument:
    - $1 + \frac{1}{2} + (\frac{1}{3} + \frac{1}{4}) + (\frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \frac{1}{8}) + \cdots$
    - Each group $\geq \frac{1}{2}$
  - Partial sums: $S_{10} \approx 2.93$, $S_{100} \approx 5.19$, $S_{1000} \approx 7.49$
- **Visualization Details:**
  - Bar chart showing partial sums growing (slowly)
  - No horizontal asymptote—keeps increasing
  - Comparison line showing $\ln(n) + \gamma$

### Slide 19: nth Term Test Examples
- **Type:** `slide-list`
- **Section:** nth Term Test
- **Content:**
  - Title: "nth Term Test Examples"
  - List items:
    - "$\sum \frac{n}{2n+1}$: $\lim = \frac{1}{2} \neq 0 \Rightarrow$ **Diverges**"
    - "$\sum \cos\left(\frac{1}{n}\right)$: $\lim = \cos(0) = 1 \neq 0 \Rightarrow$ **Diverges**"
    - "$\sum \frac{1}{n}$: $\lim = 0 \Rightarrow$ **Inconclusive** (actually diverges!)"
    - "$\sum \frac{1}{n^2}$: $\lim = 0 \Rightarrow$ **Inconclusive** (actually converges!)"

### Slide 20: Sequence vs Series Explorer
- **Type:** `slide-visual`
- **Section:** Practice
- **Content:**
  - Title: "Interactive: Sequence vs Series"
  - **D3 Visualization:** Side-by-side comparison
  - Left panel: Sequence terms $a_n$
  - Right panel: Partial sums $S_n$
  - Toggle between different series to explore behavior
- **Visualization Details:**
  - Dropdown to select: $1/n$, $1/n^2$, $1/2^n$, $(-1)^n/n$
  - Show terms approaching 0 (left) while partial sums may or may not converge (right)
  - Real-time numerical display

### Slide 21: Practice Problem
- **Type:** `slide-exercise`
- **Section:** Practice
- **Content:**
  - Title: "Your Turn"
  - Problems:
    1. "Does the sequence $\{(2n-1)/n\}$ converge? If so, to what?"
    2. "Can you conclude anything about $\sum \frac{1}{\sqrt{n}}$ from the nth term test?"
  - Time: "3 minutes"

### Slide 22: Practice Solution
- **Type:** `slide-list`
- **Section:** Practice
- **Content:**
  - Title: "Solutions"
  - List items:
    1. "$\lim \frac{2n-1}{n} = \lim \frac{2 - 1/n}{1} = 2$ — Converges to 2"
    2. "$\lim \frac{1}{\sqrt{n}} = 0$ — nth term test is **inconclusive**"
  - Note: "The second series actually diverges (it's a p-series with $p = 1/2 < 1$)"

### Slide 23: Key Takeaways
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Key Takeaways"
  - List:
    - "A sequence is an ordered list; a series is a sum"
    - "Series convergence means the partial sums converge"
    - "nth Term Test: If $a_n \not\to 0$, the series diverges"
    - "**WARNING:** $a_n \to 0$ does NOT imply convergence"
    - "The harmonic series is the essential counterexample"

### Slide 24: Notation Summary
- **Type:** `slide-list`
- **Section:** Summary
- **Content:**
  - Title: "Notation to Know"
  - List items:
    - "$a_n$: the $n$th term of a sequence"
    - "$\{a_n\}$: the entire sequence"
    - "$S_n$: the $n$th partial sum"
    - "$\sum_{n=1}^{\infty} a_n$: the infinite series"
    - "$S = \sum a_n$: the sum (if convergent)"

### Slide 25: Exit Ticket
- **Type:** `slide-exercise`
- **Section:** Closing
- **Content:**
  - Title: "Exit Ticket"
  - Prompts:
    1. "Does the sequence $\{(n+1)/n\}$ converge? If so, to what?"
    2. "If $\sum a_n$ converges, what must be true about $\lim_{n \to \infty} a_n$?"
    3. "Give an example of a divergent series where the terms approach 0."

### Slide 26: Coming Up
- **Type:** `slide-statement`
- **Section:** Closing
- **Content:**
  - Statement: "Next: Geometric Series"
  - Secondary: "The first family of series where we can find both convergence AND the exact sum"

---

## D3 Visualization Specifications

### Visualization 1: Sequence Term Plotter (Slides 5, 8)

```javascript
// Interactive visualization showing sequence terms
// Features:
// - Plot (n, a_n) for n = 1, 2, 3, ... up to N
// - Multiple sequences selectable via dropdown
// - Horizontal asymptote line at limit (if exists)
// - Epsilon band around limit for convergent sequences
// - Animate points appearing sequentially

// Color scheme:
// - Points: var(--theme-color) #4f46e5
// - Limit line: var(--color-tangent) #fbbf24
// - Epsilon band: rgba(79, 70, 229, 0.2)

// Font sizes: minimum 1.25rem for all labels
```

### Visualization 2: Square Subdivision (Slide 12)

```javascript
// Geometric series visualization: 1/2 + 1/4 + 1/8 + ...
// Features:
// - Unit square canvas
// - Animate subdivision: shade 1/2, then 1/4 of remainder, etc.
// - Display running partial sum
// - Show convergence to 1
// - Step-by-step animation with play/pause

// Color scheme:
// - Shaded regions: progressively lighter indigo shades
// - Unshaded: light gray
// - Labels: var(--theme-color)
```

### Visualization 3: Harmonic Series Partial Sums (Slide 18)

```javascript
// Partial sums of harmonic series showing divergence
// Features:
// - Bar chart or line graph of S_n vs n
// - Show S_n for n = 1, 10, 100, 1000 (log scale option)
// - No horizontal asymptote—emphasize unbounded growth
// - Display current S_n value
// - Compare to ln(n) + γ line

// Color scheme:
// - Bars/line: var(--theme-color) #4f46e5
// - Reference line: var(--color-derivative) #f97316
```

### Visualization 4: Sequence vs Series Comparison (Slide 20)

```javascript
// Side-by-side comparison of sequence terms and partial sums
// Features:
// - Left panel: plot a_n terms approaching 0
// - Right panel: plot S_n partial sums
// - Dropdown to select different sequences
// - Real-time numerical display of a_n and S_n
// - Highlight whether series converges or diverges

// Series options:
// - 1/n (diverges), 1/n² (converges), 1/2^n (converges), (-1)^n/n (converges)

// Color scheme:
// - a_n points: var(--theme-color) #4f46e5
// - S_n points: var(--color-integral) #22c55e
```

---

## Technical Notes

- All math rendered with MathJax
- Use theme color `--unit-10-series: #4f46e5` for accents
- Polling-based visualization triggering (check every 200ms for slide changes)
- All visualizations use viewBox for responsiveness
- Minimum font size 1.25rem for D3 labels
- Emphasize the sequence vs series distinction visually and conceptually
- The harmonic series divergence is the most important takeaway for future lessons
