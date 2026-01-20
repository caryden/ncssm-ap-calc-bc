# Lesson Plan: Exponential and Logistic Models

## Class 43 | Unit 7: Differential Equations (Logistic is BC Only)

---

## Overview

This class applies separation of variables to the two most important differential equation models: exponential growth/decay and logistic growth. Students will understand when each model is appropriate, derive or verify solutions, interpret parameters in context, and analyze long-term behavior. The logistic model (CED 7.9) is BC-only and represents a key extension that addresses the limitations of exponential growth.

**CED Topics:** 7.8 - Exponential Models with Differential Equations, 7.9 - Logistic Models with Differential Equations (BC only)

---

## Learning Objectives

By the end of this class, students will be able to:

1. Write and solve exponential growth/decay differential equations
2. Calculate doubling time and half-life from growth/decay constants
3. Write and interpret logistic differential equations with carrying capacity
4. Identify equilibria of the logistic model and describe their stability
5. Determine long-term behavior of logistic solutions
6. Find the inflection point of a logistic curve and interpret its significance

---

## Prior Knowledge Required

- Separation of variables technique (Class 42)
- Properties of exponential and logarithmic functions
- Equilibrium solutions and slope field interpretation
- Basic understanding of population growth contexts

---

## Materials Needed

- Presentation slides with D3 visualizations
- Graphing calculators or Desmos for parameter exploration
- Real-world data sets (optional: COVID cases, population data)
- Exit ticket with logistic analysis problem

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Unrealistic Prediction**

Present the problem:
> "A bacteria population doubles every hour. Starting with 100 bacteria, how many are there after 24 hours?"

Calculate: 100 × 2²⁴ = 1,677,721,600 (nearly 1.7 billion!)

> "Is this realistic? What happens when the bacteria run out of food, space, or resources?"

**The Key Insight:**
Exponential growth assumes unlimited resources. Real populations face limits. Today we'll explore both models:
1. **Exponential:** Unlimited growth/decay (the ideal case)
2. **Logistic:** Growth with a carrying capacity (the realistic case)

### Exponential Model (12 min)

**The Differential Equation:**
$$\frac{dy}{dt} = ky$$

In words: "The rate of change is proportional to the current amount."

**Solving by Separation:**
$$\frac{1}{y} \, dy = k \, dt$$
$$\ln|y| = kt + C$$
$$y = Ae^{kt}$$ where A = e^C

With initial condition y(0) = y₀:
$$y_0 = Ae^0 = A$$

**Solution:** $$y = y_0 e^{kt}$$

**Interpretation:**
- k > 0: Exponential **growth** (population, compound interest)
- k < 0: Exponential **decay** (radioactive decay, depreciation)

**Key Formulas:**

*Doubling Time (k > 0):*
When does y = 2y₀?
$$2y_0 = y_0 e^{kT_d}$$
$$2 = e^{kT_d}$$
$$T_d = \frac{\ln 2}{k}$$

*Half-Life (k < 0):*
When does y = ½y₀?
$$T_{1/2} = \frac{\ln 2}{|k|}$$

**Worked Example: Radioactive Decay**

Carbon-14 has a half-life of 5730 years. A sample contains 100 grams.

a) Find k:
$$T_{1/2} = \frac{\ln 2}{|k|} \Rightarrow |k| = \frac{\ln 2}{5730} \approx 0.000121$$
$$k = -0.000121 \text{ per year}$$

b) Write the model:
$$A = 100e^{-0.000121t}$$

c) How much remains after 10,000 years?
$$A = 100e^{-0.000121(10000)} = 100e^{-1.21} \approx 29.8 \text{ grams}$$

**Limitations of Exponential Model:**
- Predicts unlimited growth (or complete decay)
- Ignores resource constraints
- Good approximation only when population is small relative to resources

### Logistic Model (15 min)

**The Differential Equation:**
$$\frac{dy}{dt} = ky\left(1 - \frac{y}{L}\right)$$

**Parameters:**
- k: intrinsic growth rate (per unit time)
- L: **carrying capacity** (maximum sustainable population)

**Interpreting the Equation (Rule of Four - Analytical to Verbal):**

The factor (1 - y/L) is a "braking term":
- When y << L: (1 - y/L) ≈ 1, so dy/dt ≈ ky (nearly exponential)
- When y = L/2: (1 - y/L) = 1/2, so dy/dt = ky/2 (half the exponential rate)
- When y = L: (1 - y/L) = 0, so dy/dt = 0 (growth stops)
- When y > L: (1 - y/L) < 0, so dy/dt < 0 (population decreases)

**Equilibrium Analysis:**

Set dy/dt = 0:
$$ky\left(1 - \frac{y}{L}\right) = 0$$
$$y = 0 \text{ or } y = L$$

*Stability:*
- y = 0 is **unstable** (small perturbation leads to growth away from 0)
- y = L is **stable** (populations approach L over time)

**D3 Visualization:** Show the slope field for logistic equation:
- Horizontal segments along y = 0 and y = L
- Positive slopes for 0 < y < L
- Negative slopes for y > L

**The Solution (Given, not derived):**
$$y(t) = \frac{L}{1 + Ae^{-kt}}$$

where A = (L - y₀)/y₀ depends on the initial condition.

**Key Features of the Logistic Curve:**

1. **S-shaped (sigmoidal)** - slow start, rapid middle, leveling off
2. **Horizontal asymptote at y = L** - solutions approach but never reach L
3. **Inflection point at y = L/2** - this is where growth is fastest

**Finding the Inflection Point:**

At the inflection point, d²y/dt² = 0, which corresponds to dy/dt being maximum.

Take derivative of dy/dt = ky(1 - y/L):
$$\frac{d^2y}{dt^2} = k\frac{dy}{dt} - \frac{2ky}{L}\frac{dy}{dt} = k\frac{dy}{dt}\left(1 - \frac{2y}{L}\right)$$

Set equal to 0: 1 - 2y/L = 0 → **y = L/2**

At this point, the growth rate is:
$$\left.\frac{dy}{dt}\right|_{y=L/2} = k \cdot \frac{L}{2} \cdot \left(1 - \frac{1}{2}\right) = \frac{kL}{4}$$

**Verbal Interpretation:**
> "Growth is fastest when the population is at half the carrying capacity."

### Comparison and Applications (10 min)

**Side-by-Side Visualization:**

| Feature | Exponential | Logistic |
|---------|-------------|----------|
| Equation | dy/dt = ky | dy/dt = ky(1 - y/L) |
| Solution | y = y₀eᵏᵗ | y = L/(1 + Ae⁻ᵏᵗ) |
| Long-term | y → ∞ (or 0) | y → L |
| Shape | J-curve | S-curve |
| Resources | Unlimited | Limited to L |

**D3 Visualization:** Show both curves with same k and y₀, but logistic has L:
- Initially similar (both nearly exponential)
- Diverge as logistic approaches L while exponential keeps growing

**Application: Population Modeling**

A wildlife reserve introduces 50 deer into a park that can support 500 deer. The intrinsic growth rate is k = 0.3 per year.

a) Write the logistic differential equation:
$$\frac{dP}{dt} = 0.3P\left(1 - \frac{P}{500}\right)$$

b) Find A:
$$A = \frac{L - y_0}{y_0} = \frac{500 - 50}{50} = 9$$

c) Write the solution:
$$P(t) = \frac{500}{1 + 9e^{-0.3t}}$$

d) Population after 5 years:
$$P(5) = \frac{500}{1 + 9e^{-1.5}} = \frac{500}{1 + 9(0.223)} = \frac{500}{3.01} \approx 166 \text{ deer}$$

e) When will population reach 400?
$$400 = \frac{500}{1 + 9e^{-0.3t}}$$
$$1 + 9e^{-0.3t} = 1.25$$
$$e^{-0.3t} = 0.0278$$
$$t = \frac{\ln(0.0278)}{-0.3} \approx 11.9 \text{ years}$$

f) What is the long-term population?
$$\lim_{t \to \infty} P(t) = L = 500 \text{ deer}$$

### Practice and Discussion (5 min)

**Quick Check:**
For dy/dt = 0.2y(1 - y/200) with y(0) = 20:

1. What is the carrying capacity? **L = 200**
2. At what population is growth fastest? **y = L/2 = 100**
3. What is the long-term behavior? **y → 200**
4. Is the equation exponential or logistic? **Logistic**

**Discussion:** What real-world phenomena follow logistic growth?
- Spread of disease (limited susceptible population)
- Technology adoption (limited market)
- Learning curves (limited skill ceiling)
- Tumor growth (limited resources)

### Closing (3 min)

**Exit Ticket:**
Given: dy/dt = 0.5y(1 - y/1000) with y(0) = 100

1. Identify k and L
2. Find the equilibrium solutions
3. At what y-value is growth fastest?
4. Describe the long-term behavior if y(0) = 1200

**Unit 7 Recap:**
- Modeling: Translate verbal → differential equation
- Slope fields: Visualize solutions
- Euler's method: Approximate numerically
- Separation of variables: Solve exactly
- Exponential/Logistic: Apply to real-world models

---

## Differentiation Strategies

### For students who need more support:
- Focus on exponential model first, add logistic as extension
- Provide the logistic solution formula rather than deriving
- Use numerical examples before variables
- Create a comparison chart students can reference
- Practice identifying parameters (k, L, y₀) from word problems

### For advanced students:
- Challenge: Derive the logistic solution using partial fractions
- Explore: What happens to the logistic model if y₀ > L?
- Investigate: Lotka-Volterra (predator-prey) systems
- Research: SIR models for disease spread
- Analyze: Phase line stability analysis for logistic

---

## Common Misconceptions to Address

1. **"Logistic growth eventually stops"**
   - Address: Growth APPROACHES zero but never reaches it (for y < L). The population approaches L asymptotically.

2. **"Carrying capacity is a maximum"**
   - Address: If y₀ > L, the population DECREASES toward L. The carrying capacity is an equilibrium, not a ceiling.

3. **"Exponential and logistic are the same for small populations"**
   - Address: Approximately true when y << L, but only approximately. The (1 - y/L) factor is always present.

4. **"k is the growth rate"**
   - Address: k is the rate CONSTANT. The actual rate dy/dt depends on y (and y/L for logistic).

5. **"Inflection point is where growth stops"**
   - Address: At the inflection point, growth is FASTEST (maximum dy/dt). Growth slows AFTER the inflection point.

6. **"Half-life applies to logistic decay"**
   - Address: Half-life is specific to exponential decay (constant k). Logistic doesn't have a constant "half-life" because the rate changes.

---

## Assessment Notes

- **Formative:** Check parameter identification during application problems
- **Exit Ticket:** Tests understanding of logistic parameters and behavior
- **Look for:**
  - Correct identification of k and L
  - Understanding that L is the horizontal asymptote
  - Recognition of inflection point at L/2
  - Correct prediction of long-term behavior

---

## Connections

**Prior knowledge:**
- Class 42: Separation of variables (how we solve these equations)
- Class 40: Slope fields (visualize equilibria and stability)
- Exponential functions and their properties
- Unit 6: Integration techniques

**Future connections:**
- AP Exam: FRQs frequently feature logistic models
- Biology/ecology: Population dynamics
- Economics: Market saturation, technology adoption
- Medicine: Drug concentration, tumor growth models

---

## Key Formulas Reference

**Exponential Model:**
| Item | Formula |
|------|---------|
| Differential equation | dy/dt = ky |
| Solution | y = y₀eᵏᵗ |
| Doubling time | T_d = ln(2)/k |
| Half-life | T_{1/2} = ln(2)/\|k\| |

**Logistic Model:**
| Item | Formula |
|------|---------|
| Differential equation | dy/dt = ky(1 - y/L) |
| Solution | y = L/(1 + Ae⁻ᵏᵗ) where A = (L-y₀)/y₀ |
| Equilibria | y = 0 (unstable), y = L (stable) |
| Inflection point | y = L/2 |
| Maximum growth rate | dy/dt = kL/4 (at y = L/2) |
| Long-term behavior | y → L as t → ∞ |

---

## AP Exam Notes

**Common Question Types:**
1. Set up a differential equation from a verbal description
2. Identify parameters (k, L) from given information
3. Describe long-term behavior
4. Find when population reaches a certain level
5. Identify and interpret the inflection point

**BC-Specific:**
- The logistic solution formula is often provided on the exam
- Students should understand and apply the formula, not derive it
- Emphasis on interpretation and analysis over algebra

**Scoring Priorities:**
1. Correct differential equation setup
2. Correct identification of equilibria
3. Correct long-term behavior analysis
4. Correct inflection point analysis
5. Correct computation with the solution formula
