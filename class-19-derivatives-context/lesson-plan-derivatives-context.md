# Lesson Plan: Interpreting Derivatives in Context

## Class 19 | Unit 4: Contextual Applications of Differentiation

---

## Overview

This session bridges the gap between abstract derivative calculations and real-world meaning. Students will learn to interpret derivatives as rates of change with proper units and verbal descriptions. The focus is on translating mathematical expressions into meaningful statements about quantities changing over time or with respect to other variables.

**CED Topic:** 4.1 - Interpreting the Meaning of the Derivative in Context

---

## Learning Objectives

By the end of this class, students will be able to:

1. Determine the units of a derivative given the units of the function and independent variable
2. Interpret the meaning of f'(a) in the context of a word problem
3. Distinguish between f(a) (the value) and f'(a) (the rate of change)
4. Write complete verbal interpretations using a standard template
5. Interpret derivatives from graphs and tables of values

---

## Prior Knowledge Required

- Definition of the derivative as instantaneous rate of change (Class 9)
- Computing derivatives using differentiation rules (Classes 12-15)
- Understanding slope as rate of change
- Basic unit analysis from science courses

---

## Materials Needed

- Presentation slides with contextual examples
- Graphing calculators
- Student devices for Desmos exploration (optional)
- Practice problem handout with varied contexts
- Exit ticket slips

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Bathtub Scenario**

Present this scenario:
> A bathtub has 50 gallons of water and is draining at 3 gallons per minute.

Ask students:
- Which number is V(t)? (50 gallons)
- Which number is V'(t)? (-3 gallons per minute)
- Why is V'(t) negative? (water is decreasing)

**Key insight:** The amount (50 gallons) and the rate (-3 gal/min) are fundamentally different things. Today we formalize this distinction.

### Core Concept: Derivative as Rate of Change (10 min)

**The Fundamental Interpretation**

f'(a) represents the instantaneous rate of change of f at x = a.

**The Unit Rule**

$$\text{Units of } f'(x) = \frac{\text{Units of } f}{\text{Units of } x}$$

**Examples:**
| Function | Units of f | Units of x | Units of f' |
|----------|-----------|-----------|-------------|
| Position s(t) | meters | seconds | m/s (velocity) |
| Cost C(q) | dollars | items | $/item (marginal cost) |
| Population P(t) | people | years | people/year (growth rate) |
| Temperature T(t) | degrees C | hours | °C/hour (cooling rate) |

**Class Discussion:** Why do we divide? (Because derivative measures change in output PER unit change in input)

### Verbal Interpretation Framework (12 min)

**The Template**

> "At [input value], the [quantity] is [increasing/decreasing] at a rate of [|derivative value|] [units] per [input unit]."

**Worked Examples:**

**Example 1: Population**
- P(t) = population at time t years
- Given: P(10) = 50,000 and P'(10) = 1,200

Interpretations:
- P(10) = 50,000: "At t = 10 years, the population is 50,000 people."
- P'(10) = 1,200: "At t = 10 years, the population is increasing at a rate of 1,200 people per year."

**Example 2: Cost Function**
- C(x) = cost in dollars to produce x items
- Given: C(100) = 5,000 and C'(100) = 12

Interpretations:
- C(100) = 5,000: "It costs $5,000 to produce 100 items."
- C'(100) = 12: "At a production level of 100 items, cost is increasing at $12 per additional item."

**Example 3: Temperature**
- T(t) = temperature in °F at time t hours after noon
- Given: T(3) = 72 and T'(3) = -2

Interpretations:
- T(3) = 72: "At 3:00 PM, the temperature is 72°F."
- T'(3) = -2: "At 3:00 PM, the temperature is decreasing at a rate of 2°F per hour."

**Key Point:** The negative sign in T'(3) = -2 means "decreasing." We say "decreasing at 2°F per hour" NOT "changing at -2°F per hour."

### Graphical and Numerical Interpretation (10 min)

**From Graphs:**

Show a contextual graph (e.g., bacteria population over time) and discuss:
- Steep positive slope → large positive derivative → rapid increase
- Steep negative slope → large negative derivative (magnitude) → rapid decrease
- Horizontal tangent → derivative = 0 → momentarily not changing

**From Tables:**

Given a table of values, estimate the derivative using average rate of change:

| t (hours) | 0 | 1 | 2 | 3 | 4 |
|-----------|---|---|---|---|---|
| V(t) gallons | 100 | 85 | 72 | 61 | 52 |

Estimate V'(2):
$$V'(2) \approx \frac{V(3) - V(1)}{3 - 1} = \frac{61 - 85}{2} = -12 \text{ gal/hr}$$

Interpretation: "At t = 2 hours, the volume is decreasing at approximately 12 gallons per hour."

### Guided Practice (8 min)

**Practice Problems (students work individually, then compare):**

1. The amount of water W(t) in a tank (in liters) at time t (in minutes) satisfies W(5) = 200 and W'(5) = -15.
   - Interpret W(5). ("At t = 5 minutes, there are 200 liters in the tank.")
   - Interpret W'(5). ("At t = 5 minutes, water is draining at 15 liters per minute.")

2. The revenue R(p) in dollars from selling items at price p dollars satisfies R(25) = 10,000 and R'(25) = -150.
   - Interpret R'(25). ("At a price of $25, revenue is decreasing at $150 per dollar increase in price.")
   - What does the negative sign tell us? (Raising the price decreases revenue.)

3. From a graph of distance vs. time, identify where:
   - The object is moving fastest (steepest slope)
   - The object is at rest (horizontal tangent)
   - The object is moving backward (negative slope)

### Closing (5 min)

**Summary:**
- Derivative = rate of change, always with units
- Units of f' = (units of f)/(units of x)
- Use the interpretation template for verbal descriptions
- Sign tells direction: positive = increasing, negative = decreasing

**Exit Ticket:**
Given: P(5) = 8,000 and P'(5) = -200, where P(t) is the population of a town in thousands at time t years since 2020.
1. Interpret P(5) in context.
2. Interpret P'(5) in context.
3. What is the unit of P'(t)?

**Preview:** Tomorrow we apply these ideas to motion: position, velocity, and acceleration.

---

## Differentiation Strategies

### For students who need more support:
- Provide the interpretation template as a printed reference card
- Start with contexts they know well (distance/time before economics)
- Use color coding: one color for values, another for rates
- Practice unit conversion separately before combining with interpretation

### For advanced students:
- Challenge: If C(x) is cost in thousands of dollars for x hundred items, what are the units of C'(x)?
- Explore: What does it mean when f'(a) = 0 in various contexts?
- Research: Find real-world examples of derivatives being reported (news articles with rates)

---

## Common Misconceptions to Address

1. **"Derivative gives the amount/position"**
   - Address: f(a) is the QUANTITY, f'(a) is the RATE OF CHANGE of that quantity. They answer different questions.

2. **"Units don't matter"**
   - Address: Units are mandatory on the AP exam. Wrong units = wrong answer. Units of f' = (units of f)/(units of x).

3. **"Rate of change is always positive"**
   - Address: Negative means decreasing. A rate of -5 gal/min means losing 5 gallons per minute.

4. **"The derivative tells total change"**
   - Address: f'(a) is the instantaneous rate at one moment, not the total change over an interval.

5. **"f'(3) = 5 means f(3) = 5"**
   - Address: Explicitly distinguish: f(3) is the VALUE at t = 3, f'(3) is the RATE at t = 3.

6. **"Marginal" means "small"**
   - Address: In economics, "marginal cost" is the derivative of cost - the rate of cost increase per additional unit.

---

## Assessment Notes

- Exit ticket assesses ability to interpret both f(a) and f'(a) with units
- Monitor student language during practice - are they using the template correctly?
- Note which students struggle with units vs. interpretation vs. both
- Common error: Forgetting to state "increasing" or "decreasing"

---

## Connections

**Prior knowledge:**
- Derivative definition (Class 9)
- Derivative computation rules (Classes 12-15)
- Slope interpretation from algebra
- Unit analysis from science courses

**Future connections:**
- Position, velocity, acceleration (Class 20)
- Related rates (Classes 21-22)
- Linearization and approximation (Class 23)
- Integration as accumulation of rates (Unit 6)
- FRQ interpretation questions throughout the AP exam

---

## AP Exam Notes

- Interpretation questions appear on both MC and FRQ
- Rubrics require:
  - Correct units
  - Correct sign interpretation (increasing/decreasing)
  - Connection to specific context
- Common prompt: "Interpret f'(a) = [value] in the context of this problem"
- Students must use proper mathematical language for full credit
