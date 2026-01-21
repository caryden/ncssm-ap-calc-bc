# Lesson Plan: Position, Velocity, and Acceleration

## Class 20 | Unit 4: Contextual Applications of Differentiation

---

## Overview

This session explores the fundamental connection between position, velocity, and acceleration through derivatives. Motion problems provide the most intuitive context for understanding derivatives as rates of change. Students will learn to analyze straight-line motion, including determining when an object is speeding up or slowing down, and distinguishing between displacement and total distance traveled.

**CED Topic:** 4.2 - Straight-Line Motion: Connecting Position, Velocity, and Acceleration

---

## Learning Objectives

By the end of this class, students will be able to:

1. Derive velocity and acceleration functions from a position function
2. Interpret the meaning of velocity and acceleration in context
3. Determine when a particle is moving left/right and when it is at rest
4. Determine when a particle is speeding up or slowing down using sign analysis
5. Calculate both displacement and total distance traveled over an interval
6. Distinguish between speed (scalar) and velocity (vector)

---

## Prior Knowledge Required

- Interpreting derivatives in context (Class 19)
- Computing derivatives of polynomial functions (Classes 12-14)
- Sign charts and interval analysis
- Basic understanding of motion from physics

---

## Materials Needed

- Presentation slides with D3 motion visualizations
- Graphing calculators
- Motion diagram handout with number lines
- Student devices for Desmos exploration (optional)
- Exit ticket slips

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Car Dashboard**

Display an image of a car dashboard showing speedometer and ask:
- What does the speedometer show? (How fast you're going right now - speed)
- Is speed the same as velocity? (No - velocity includes direction)
- What makes the speedometer reading change? (Acceleration)

**Key Question:** How do position, velocity, and acceleration relate mathematically?

Answer: Derivatives connect them!

### The Position-Velocity-Acceleration Chain (10 min)

**The Fundamental Relationships**

$$s(t) = \text{position at time } t$$
$$v(t) = s'(t) = \text{velocity (rate of change of position)}$$
$$a(t) = v'(t) = s''(t) = \text{acceleration (rate of change of velocity)}$$

**Physical Meaning:**
- Position: Where is the particle?
- Velocity: How fast and in which direction is it moving?
- Acceleration: How is the velocity changing?

**Worked Example:**

Given: $s(t) = t^3 - 6t^2 + 9t + 2$ (position in meters, time in seconds)

Find velocity and acceleration:
- $v(t) = s'(t) = 3t^2 - 12t + 9$ m/s
- $a(t) = v'(t) = 6t - 12$ m/s²

**At t = 1 second:**
- $s(1) = 1 - 6 + 9 + 2 = 6$ m (position)
- $v(1) = 3 - 12 + 9 = 0$ m/s (momentarily at rest)
- $a(1) = 6 - 12 = -6$ m/s² (velocity is decreasing)

### Analyzing Motion with Signs (15 min)

**Key Questions About Motion:**

| Question | How to Answer |
|----------|---------------|
| When is the particle at rest? | Find where $v(t) = 0$ |
| When is it moving right (positive direction)? | Find where $v(t) > 0$ |
| When is it moving left (negative direction)? | Find where $v(t) < 0$ |
| When is it speeding up? | When $v(t)$ and $a(t)$ have the SAME sign |
| When is it slowing down? | When $v(t)$ and $a(t)$ have OPPOSITE signs |

**The Speeding Up/Slowing Down Rule:**

| v | a | Motion |
|---|---|--------|
| + | + | Speeding up (moving right, velocity increasing) |
| + | - | Slowing down (moving right, velocity decreasing) |
| - | + | Slowing down (moving left, velocity becoming less negative) |
| - | - | Speeding up (moving left, velocity becoming more negative) |

**Critical Insight:** "Speeding up" means |v| is increasing, NOT that v > 0.

**Complete Analysis of Example:**

$v(t) = 3t^2 - 12t + 9 = 3(t^2 - 4t + 3) = 3(t-1)(t-3)$
$a(t) = 6t - 12 = 6(t - 2)$

Sign chart for v(t):
- $v(t) = 0$ at $t = 1$ and $t = 3$
- $v(t) > 0$ on $(0, 1) \cup (3, \infty)$
- $v(t) < 0$ on $(1, 3)$

Sign chart for a(t):
- $a(t) = 0$ at $t = 2$
- $a(t) < 0$ on $(0, 2)$
- $a(t) > 0$ on $(2, \infty)$

**Combined Analysis:**
| Interval | v | a | Motion |
|----------|---|---|--------|
| $(0, 1)$ | + | - | Moving right, slowing down |
| $(1, 2)$ | - | - | Moving left, speeding up |
| $(2, 3)$ | - | + | Moving left, slowing down |
| $(3, \infty)$ | + | + | Moving right, speeding up |

### Speed vs. Velocity (3 min)

**Key Distinction:**
- **Velocity** $v(t)$: A signed quantity (includes direction)
- **Speed** $|v(t)|$: Always positive (magnitude only)

**Example:**
- If $v(t) = -5$ m/s, the particle is moving LEFT at SPEED 5 m/s
- Velocity = -5 m/s, Speed = 5 m/s

### Displacement vs. Total Distance (8 min)

**Displacement:** Net change in position (can be negative)
$$\text{Displacement} = s(b) - s(a)$$

**Total Distance:** Sum of all distances traveled (always positive)
- Find where velocity changes sign (particle changes direction)
- Calculate |distance| in each segment
- Add all segments

**Example:**
For $s(t) = t^3 - 6t^2 + 9t + 2$ on $[0, 4]$:

Calculate positions at critical times:
- $s(0) = 2$
- $s(1) = 6$ (direction change)
- $s(3) = 2$ (direction change)
- $s(4) = 6$

**Displacement:** $s(4) - s(0) = 6 - 2 = 4$ meters

**Total Distance:**
- From $t=0$ to $t=1$: $|6 - 2| = 4$ m (moving right)
- From $t=1$ to $t=3$: $|2 - 6| = 4$ m (moving left)
- From $t=3$ to $t=4$: $|6 - 2| = 4$ m (moving right)
- Total: $4 + 4 + 4 = 12$ meters

**Visual:** Show the particle moving right, then left, then right again on a number line.

### Guided Practice (5 min)

**Practice Problem:**

A particle moves along the x-axis with position $s(t) = t^2 - 4t + 3$ for $t \geq 0$.

1. Find $v(t)$ and $a(t)$.
2. When is the particle at rest?
3. When is the particle moving left? Right?
4. When is the particle speeding up?
5. Find displacement and total distance on $[0, 5]$.

**Answers:**
1. $v(t) = 2t - 4$, $a(t) = 2$
2. At rest when $v(t) = 0$: $t = 2$
3. Left when $v < 0$: $t \in (0, 2)$; Right when $v > 0$: $t > 2$
4. Speeding up when v and a have same sign: Since $a = 2 > 0$ always, speeding up when $v > 0$, i.e., $t > 2$
5. $s(0) = 3$, $s(2) = -1$, $s(5) = 8$
   - Displacement: $8 - 3 = 5$ m
   - Total distance: $|{-1} - 3| + |8 - ({-1})| = 4 + 9 = 13$ m

### Closing (4 min)

**Summary:**
- Position → Velocity → Acceleration via derivatives
- Signs determine direction (velocity) and speeding/slowing (compare v and a)
- Speed = |velocity| (always positive)
- Displacement ≠ Total distance (must account for direction changes)

**Exit Ticket:**
For $s(t) = t^2 - 6t$, find when the particle is speeding up on $[0, 5]$.

**Preview:** Tomorrow we begin related rates - when multiple quantities change together.

---

## Differentiation Strategies

### For students who need more support:
- Provide pre-made sign chart templates
- Use number line animations to visualize motion
- Focus on one aspect at a time (first direction, then speeding/slowing)
- Give memory device: "Same Signs = Speeding up"

### For advanced students:
- Challenge: Given only v(t), find total distance traveled (requires integration concept preview)
- Explore: What does a(t) = 0 mean physically? (Constant velocity)
- Research: How does this connect to physics equations $v = v_0 + at$?

---

## Common Misconceptions to Address

1. **"Velocity and speed are the same"**
   - Address: Speed = |velocity|. Velocity includes direction (sign), speed doesn't.

2. **"Negative velocity means slowing down"**
   - Address: Negative velocity means moving LEFT/backward. Slowing down depends on whether v and a have opposite signs.

3. **"a > 0 always means speeding up"**
   - Address: Speeding up requires v and a to have the SAME sign. If $v < 0$ and $a > 0$, the particle is slowing down (moving left but velocity becoming less negative).

4. **"Total distance = final position - initial position"**
   - Address: That's DISPLACEMENT. Total distance must account for backtracking.

5. **"When v = 0, the particle stops permanently"**
   - Address: $v = 0$ means momentarily at rest. The particle typically continues moving (unless $a = 0$ too).

6. **"a = 0 means constant position"**
   - Address: $a = 0$ means constant VELOCITY, not position. The particle keeps moving at constant speed.

---

## Assessment Notes

- Exit ticket focuses on the speeding up analysis (most challenging concept)
- Monitor sign chart construction during practice
- Note which students confuse displacement with distance
- Check that students correctly interpret negative velocity as "moving left" not "slowing down"

---

## Connections

**Prior knowledge:**
- Derivative interpretation (Class 19)
- Derivative computation (Classes 12-15)
- Sign charts from precalculus
- Physics concepts (though not required)

**Future connections:**
- Related rates (Classes 21-22)
- Optimization problems (Unit 5)
- Integration to recover position from velocity (Unit 6)
- Particle motion FRQs are common on AP exam

---

## AP Exam Notes

- Motion problems appear frequently on both MC and FRQ
- Must distinguish between displacement and total distance
- Speeding up/slowing down analysis is commonly tested
- FRQs often provide v(t) and ask about motion characteristics
- Always include units in final answers
- Justify answers with reference to signs of v and a
