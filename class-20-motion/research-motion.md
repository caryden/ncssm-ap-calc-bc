# Research: Position, Velocity, and Acceleration

## Overview

This document summarizes research on how expert educators teach motion problems using derivatives. It informs the lesson plan and presentation spec for Class 20.

---

## 1. Expert Teaching Analysis

### Khan Academy: Straight-Line Motion

**Source:** [Khan Academy - Motion Problems](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-contextual-applications-new/ab-4-2)

**Core Pedagogical Strategy:**

Motion problems provide the most intuitive context for derivatives and their relationships. Position, velocity, and acceleration form a derivative chain.

**The Relationships:**
- s(t) = position at time t
- v(t) = s'(t) = velocity (rate of change of position)
- a(t) = v'(t) = s''(t) = acceleration (rate of change of velocity)

**Key Teaching Points:**

1. **Velocity is the derivative of position:** How fast and in what direction
2. **Acceleration is the derivative of velocity:** How the velocity changes
3. **Signs matter:**
   - v > 0: moving in positive direction
   - v < 0: moving in negative direction
   - a > 0: speeding up if v > 0, slowing down if v < 0
   - a < 0: slowing down if v > 0, speeding up if v < 0

### 3Blue1Brown: Derivatives as Rate of Change

**Source:** [3Blue1Brown - Essence of Calculus](https://www.3blue1brown.com/topics/calculus)

**Visual Approach:**

The car on a road is the canonical example. Grant Sanderson uses:
- Position graph showing where the car is
- Velocity graph showing the steepness of position
- Connection between graphs visible through slopes

### Professor Leonard: Rates of Change and Motion

**Source:** [Professor Leonard YouTube - Calculus 1](https://www.youtube.com/@ProfessorLeonard)

**Teaching Framework:**

1. **Set up the problem:** Define positive direction, identify s(t)
2. **Find velocity:** v(t) = s'(t)
3. **Find acceleration:** a(t) = v'(t) = s''(t)
4. **Analyze motion:** When is particle moving left/right? Speeding up/slowing down?
5. **Find total distance:** Requires considering direction changes

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Triple Graph Stack** | s(t), v(t), a(t) aligned vertically | Shows derivative relationships |
| **Number Line Animation** | Particle moving on line as t increases | Concrete visualization of motion |
| **Slope → Value** | Show how slope of s equals value of v | Connects graphs |
| **Color-Coded Regions** | Different colors for moving left/right | Clarifies direction |
| **Speed vs. Velocity** | Distinguish |v| from v | Addresses common confusion |
| **Sign Chart** | v and a signs determine motion | Organizes analysis |

### Recommended D3 Visualization

**Motion Simulator:**
1. Display particle moving on a number line
2. Time slider controls t
3. Sync with graphs of s(t), v(t), a(t) below
4. Show: current position, velocity (with direction arrow), acceleration
5. Highlight when particle is speeding up vs. slowing down

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Velocity and speed are the same"** | Confusing vector and scalar | Speed = |velocity|. Velocity includes direction (sign). |
| **"Negative velocity means slowing down"** | Not distinguishing direction from rate | Negative velocity means moving left/backward. Slowing down depends on v and a signs. |
| **"a > 0 always means speeding up"** | Ignoring velocity's sign | Speeding up when v and a have SAME sign. Slowing down when OPPOSITE signs. |
| **"Position is always positive"** | Assuming number line starts at 0 | Position can be negative (left of origin). |
| **"Total distance = final - initial position"** | Confusing distance and displacement | Displacement = s(final) - s(initial). Distance accounts for backtracking. |
| **"When v = 0, particle stops forever"** | Misunderstanding instantaneous rest | v = 0 means momentarily at rest. Particle usually continues moving. |
| **"a = 0 means constant position"** | Confusing with v = 0 | a = 0 means constant VELOCITY, not position. |

### Misconception-Busting Exercises

1. **Speed vs. Velocity:**
   - v(t) = -5 means moving LEFT at speed 5
   - Speed = |v(t)| = 5 (always positive)
   - Velocity = -5 (negative indicates direction)

2. **Speeding Up/Slowing Down:**
   | v | a | Motion |
   |---|---|--------|
   | + | + | Speeding up (rightward) |
   | + | - | Slowing down (rightward) |
   | - | + | Slowing down (leftward) |
   | - | - | Speeding up (leftward) |

3. **Distance vs. Displacement:**
   - If s(0) = 2, s(3) = 8, s(5) = 3:
   - Displacement from 0 to 5: s(5) - s(0) = 3 - 2 = 1
   - Distance from 0 to 5: |8-2| + |3-8| = 6 + 5 = 11

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 20 lesson should:

### Opening (5 min)
- Show video or animation of car moving, speeding up, slowing down
- Ask: "How do position, velocity, and acceleration relate?"
- Preview: Derivatives connect them!

### The Position-Velocity-Acceleration Chain (10 min)

**The Relationships:**
- s(t) = position (where?)
- v(t) = s'(t) = velocity (how fast, which direction?)
- a(t) = v'(t) = s''(t) = acceleration (how is velocity changing?)

**Example:** s(t) = t³ - 6t² + 9t + 2
- v(t) = 3t² - 12t + 9
- a(t) = 6t - 12

**Physical Meaning:**
- At t = 1: s(1) = 6 (position), v(1) = 0 (momentarily at rest), a(1) = -6 (decelerating)

### Analyzing Motion (15 min)

**Key Questions:**
1. **When is the particle at rest?** v(t) = 0
2. **When is it moving right?** v(t) > 0
3. **When is it moving left?** v(t) < 0
4. **When is it speeding up?** v(t) and a(t) have same sign
5. **When is it slowing down?** v(t) and a(t) have opposite signs

**Sign Chart Method:**
1. Find when v(t) = 0 and when a(t) = 0
2. Create sign charts for v and a
3. Analyze each interval

**Example continued:**
- v(t) = 3t² - 12t + 9 = 3(t-1)(t-3) = 0 at t = 1, 3
- a(t) = 6t - 12 = 0 at t = 2
- Sign chart analysis shows when speeding up/slowing down

### Total Distance vs. Displacement (8 min)

**Displacement:** Final position - initial position (can be negative)
- Δs = s(b) - s(a)

**Total Distance:** Sum of all |distance traveled| in each interval
- Must find where v = 0 (direction changes)
- Calculate distance in each segment
- Add absolute values

**Example:**
- Particle at s(0) = 2, s(1) = 6, s(3) = 2, s(4) = 6
- Displacement 0→4: 6 - 2 = 4
- Total distance: |6-2| + |2-6| + |6-2| = 4 + 4 + 4 = 12

### Practice Problems (7 min)
- Given s(t), find v(t) and a(t)
- Analyze when moving left/right, speeding up/slowing down
- Calculate displacement and total distance

### Closing (5 min)
- Summary: s → v → a via derivatives
- Key insight: Signs determine direction and acceleration type
- Exit ticket: If s(t) = t² - 4t, find when particle is speeding up
- Preview: Related rates (multiple quantities changing)

### Key Principles Throughout

1. **Derivative chain:** Position → velocity → acceleration
2. **Signs matter:** Direction and speeding up/slowing down analysis
3. **Speed ≠ velocity:** Speed = |velocity|
4. **Distance ≠ displacement:** Distance counts all travel
5. **Graphical connections:** Slope of s graph = value of v graph

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **4.2:** Straight-Line Motion: Connecting Position, Velocity, and Acceleration

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (finding derivatives)
- **MP 2:** Connecting Representations (graphs, equations, motion)
- **MP 3:** Justification (explaining speeding up/slowing down)

### AP Exam Connection
- Motion problems are staples on both MC and FRQ
- Students must distinguish displacement from distance
- Speeding up/slowing down analysis frequently tested
- Common FRQ: Given v(t), analyze motion and find total distance

### Fluency Goal
By the end of this class, students should:
- Derive velocity and acceleration from position
- Analyze motion using sign charts
- Distinguish between speed and velocity
- Calculate both displacement and total distance

---

## Sources

- [Khan Academy: Straight-Line Motion](https://www.khanacademy.org/math/ap-calculus-ab/ab-diff-contextual-applications-new/ab-4-2)
- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Professor Leonard: Calculus 1 Playlist](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Velocity and Acceleration](https://tutorial.math.lamar.edu/classes/calci/velocityacceleration.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
