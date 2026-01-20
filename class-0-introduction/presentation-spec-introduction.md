# Presentation Specification: Course Introduction

## Class 0 | February 2, 2026 | Unit 1: Limits and Continuity

---

## Presentation Overview

**Duration:** 50 minutes
**Theme Color:** `--unit-1-limits: #356093` (NCSSM Blue)
**CED Topic:** 1.1 - Introducing Calculus: Can Change Occur at an Instant?

This is the course opener—the presentation should be visually engaging and create excitement about calculus while establishing the fundamental "why" behind limits.

---

## Slide Sequence

### Section 1: Opening (Slides 1-4)

#### Slide 1: Title Slide
- **Type:** `slide-title`
- **Content:**
  - Unit badge: "Unit 1: Limits and Continuity"
  - Title: "AP Calculus BC"
  - Subtitle: "The Mathematics of Change"
  - Meta: "Class 0 | February 2, 2026"

#### Slide 2: The Central Question
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Can change occur at an *instant*?"
  - Emphasis on "instant" with accent color

#### Slide 3: The Speed Trap
- **Type:** `slide-visual`
- **Content:**
  - Title: "The Speed Trap Problem"
  - Visualization: Simple diagram showing a car, two cameras 2 miles apart
  - Text: "Camera A: 10:00:00 AM | Camera B: 10:02:00 AM"
  - Question: "Speed limit: 25 mph. Can we ticket this driver?"

#### Slide 4: Average vs. Instantaneous
- **Type:** `slide-comparison`
- **Content:**
  - Title: "Average Speed vs. Speed at an Instant"
  - Left column: "Average: 60 mph (2 miles ÷ 2 minutes)"
  - Right column: "At 10:01:00 AM: ???"
  - Caption: "We know they averaged 60 mph. But how fast at any specific moment?"

### Section 2: The Problem (Slides 5-8)

#### Slide 5: The Definition Problem
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "Speed = Distance ÷ Time"
  - Secondary: "But at an instant... Distance = 0, Time = 0"

#### Slide 6: Division by Zero
- **Type:** `slide-statement`
- **Content:**
  - Mathematical display: "Speed = 0/0 = ?"
  - Statement: "At an instant, we get 0/0. This is *undefined*."

#### Slide 7: The Calculus Solution
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Calculus gives us a way to make sense of *instantaneous* change."
  - Emphasis on "instantaneous"

#### Slide 8: Interactive - Secant to Tangent
- **Type:** `slide-visual`
- **Content:**
  - Title: "Approaching the Tangent Line"
  - **D3 Visualization:** Interactive secant line animation
    - Shows f(x) = x² curve
    - Point A fixed at (1, 1)
    - Point B slides along curve toward A
    - Secant line updates in real-time
    - Displays slope value
    - Slider control for Δx
  - Caption: "As the points get closer, what happens to the secant line?"

### Section 3: The Big Ideas (Slides 9-13)

#### Slide 9: The Word "Limit"
- **Type:** `slide-two-part`
- **Content:**
  - Primary: "The Limit"
  - Secondary: "A mathematical way to describe 'approaching' a value without actually reaching it"

#### Slide 10: Big Idea 1 - Change
- **Type:** `slide-two-part`
- **Content:**
  - Icon: trending-up
  - Primary: "Big Idea 1: Change (CHA)"
  - Secondary: "Using derivatives to describe rates of change and integrals to describe accumulation"
  - Color accent: Derivative orange

#### Slide 11: Big Idea 2 - Limits
- **Type:** `slide-two-part`
- **Content:**
  - Icon: target
  - Primary: "Big Idea 2: Limits (LIM)"
  - Secondary: "The foundation that makes derivatives and integrals mathematically precise"
  - Color accent: NCSSM blue

#### Slide 12: Big Idea 3 - Analysis
- **Type:** `slide-two-part`
- **Content:**
  - Icon: function-square
  - Primary: "Big Idea 3: Analysis of Functions (FUN)"
  - Secondary: "Using calculus to understand, analyze, and draw conclusions about functions"
  - Color accent: Integral green

#### Slide 13: The Connection
- **Type:** `slide-visual`
- **Content:**
  - Title: "How It All Connects"
  - **D3 Visualization:** Simple flow diagram
    - Limits → Derivatives (instantaneous rate of change)
    - Limits → Integrals (accumulated change)
    - Arrow showing Fundamental Theorem connecting them
  - Caption: "Limits are the foundation. Everything else builds on them."

### Section 4: Course Overview (Slides 14-18)

#### Slide 14: The Journey Ahead
- **Type:** `slide-visual`
- **Content:**
  - Title: "Your Calculus Journey"
  - **D3 Visualization:** Timeline/roadmap showing:
    - Units 1-5: Derivatives
    - Unit 6: Bridge (Fundamental Theorem)
    - Units 7-8: Integrals
    - Units 9-10: BC Topics (highlighted differently)
  - Caption: "10 units, 64 classes, one powerful framework"

#### Slide 15: BC vs AB
- **Type:** `slide-comparison`
- **Content:**
  - Title: "AP Calculus BC"
  - Left column (AB Topics): "Limits, Derivatives, Basic Integration, Differential Equations, Applications"
  - Right column (BC Only): "Advanced Integration, Parametric & Polar, Vectors, Infinite Series"
  - Caption: "BC = AB + more powerful techniques"

#### Slide 16: The Rule of Four
- **Type:** `slide-gnaw`
- **Content:**
  - Title: "G.N.A.W. - The Rule of Four"
  - Four quadrants:
    - **G**raphically: Visual representation
    - **N**umerically: Tables, calculations
    - **A**nalytically: Algebraic expressions
    - **W**ritten/Verbal: English descriptions
  - Caption: "Every concept, four ways. This is how you truly understand."

#### Slide 17: Assessment & AP Exam
- **Type:** `slide-list`
- **Content:**
  - Title: "The AP Exam"
  - Items:
    - "May 12, 2026"
    - "45 Multiple Choice + 6 Free Response"
    - "3 hours 15 minutes"
    - "Score of 4 or 5 = college credit (typically 6-8 credits)"

#### Slide 18: Resources
- **Type:** `slide-list`
- **Content:**
  - Title: "Your Resources"
  - Items:
    - "These presentations (interactive visualizations)"
    - "AP Classroom (practice questions, progress checks)"
    - "Desmos & GeoGebra (graphing & exploration)"
    - "3Blue1Brown, Professor Leonard, Khan Academy (videos)"
    - "Paul's Online Math Notes (reference)"

### Section 5: Activity & Closing (Slides 19-22)

#### Slide 19: Exploration Time
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Explore: The Secant Line Slope"
  - Prompt: "Open Desmos and graph f(x) = x². What happens to the secant slope as Δx approaches 0?"
  - Instructions:
    - "Graph y = x²"
    - "Create a slider for h"
    - "Calculate the slope between (1,1) and (1+h, (1+h)²)"
    - "What pattern do you notice?"

#### Slide 20: What Did You Find?
- **Type:** `slide-visual`
- **Content:**
  - Title: "The Pattern"
  - Table showing:
    - h = 1 → slope = 3
    - h = 0.1 → slope = 2.1
    - h = 0.01 → slope = 2.01
    - h = 0.001 → slope = 2.001
    - h → 0 → slope → 2
  - Caption: "The slope approaches 2 as h approaches 0. This is the derivative at x = 1."

#### Slide 21: Exit Ticket
- **Type:** `slide-exercise`
- **Content:**
  - Title: "Exit Ticket"
  - Prompt: "In your own words: Why can't we simply substitute t = 0 to find instantaneous velocity?"

#### Slide 22: Coming Up
- **Type:** `slide-statement`
- **Content:**
  - Statement: "Tomorrow: The formal definition of limits and the notation that makes all of this precise."

---

## Interactive Visualizations

### Visualization 1: Secant to Tangent Line (Slide 8)

**Purpose:** Show how the secant line approaches the tangent line as Δx → 0

**Implementation:**
```javascript
function drawSecantTangent() {
    // Function: f(x) = x²
    // Fixed point: (1, 1)
    // Moveable point: (1 + deltaX, (1 + deltaX)²)
    // Slider controls deltaX from -2 to 2

    // Draw:
    // 1. Coordinate axes
    // 2. Parabola y = x²
    // 3. Fixed point at (1, 1)
    // 4. Moveable point
    // 5. Secant line through both points
    // 6. Real-time slope display
    // 7. Tangent line (shown when deltaX is very small)

    // Animation: Smooth transitions when slider moves
    // Labels: All text ≥ 1.25rem
}
```

**Interactivity:**
- Slider to control Δx
- Real-time slope calculation displayed
- Points and line animate smoothly

### Visualization 2: Big Ideas Flow (Slide 13)

**Purpose:** Show how limits connect to derivatives and integrals

**Implementation:**
- Simple node-link diagram
- Three nodes: Limits, Derivatives, Integrals
- Arrows showing relationships
- Animated drawing on slide entry

### Visualization 3: Course Timeline (Slide 14)

**Purpose:** Overview of the course journey

**Implementation:**
- Horizontal timeline
- 10 unit markers
- BC-only units (9, 10) highlighted differently
- Current position indicator
- Animated entrance from left to right

---

## Technical Notes

### Required Libraries
- D3.js v7
- MathJax (for mathematical notation)
- Lucide Icons

### Color Usage
- Theme color: `#356093` (NCSSM Blue / Unit 1)
- Function curve: `#60a5fa` (blue)
- Tangent line: `#fbbf24` (yellow)
- Secant line: `#a78bfa` (purple)
- Points: `#f97316` (orange)

### Responsive Requirements
- All visualizations must use viewBox for scaling
- Minimum font size: 1.25rem for all labels
- Test on classroom display (80" TV)

---

## Pedagogical Notes

### Key Takeaways to Reinforce
1. Calculus solves the problem of instantaneous change
2. Limits are the foundation that makes this mathematically rigorous
3. Every concept will be explored four ways (G.N.A.W.)
4. This course leads to the AP exam and college credit

### Pacing Notes
- Don't rush the opening scenario—let students grapple with the paradox
- The interactive visualization should take time for students to explore
- Save time for the Desmos activity—this is the hook for tomorrow

### Transition to Next Class
The formal definition of limits (Class 1) will give students the language and notation to describe what they observed today.
