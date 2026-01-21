# Research: Exponential and Logistic Models

## Overview

This document summarizes research on how expert educators teach exponential and logistic differential equation models. The logistic model (CED 7.9) is BC-only. It informs the lesson plan and presentation spec for Class 43.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Exponential Growth and Epidemic Models

**Source:** [3blue1brown.com](https://www.3blue1brown.com/)

**Core Pedagogical Strategy:**

Grant Sanderson presents exponential and logistic models as the natural mathematics of growth with and without constraints. Exponential growth is the "default" when growth rate is proportional to current size; logistic growth adds the reality that resources are limited.

**Key Teaching Moves:**

1. **Start with exponential** - The simplest growth model: dy/dt = ky
2. **Recognize its flaw** - Exponential growth predicts infinite growth; reality has limits
3. **Introduce carrying capacity** - The logistic model adds a "braking" term
4. **Interpret the solution** - S-shaped curve approaches carrying capacity

**Why These Models Matter:**

> "Exponential growth is surprisingly common in nature and finance. But nothing can grow forever. The logistic model captures how growth slows as systems approach their limits."

**Conceptual Anchor for Logistic:**

The logistic equation dy/dt = ky(1 - y/L) can be interpreted as:
- ky: the natural growth rate (like exponential)
- (1 - y/L): a "damping factor" that approaches 0 as y approaches L (the carrying capacity)
- When y is small, (1 - y/L) is approximately 1, so growth is nearly exponential
- When y is near L, (1 - y/L) is approximately 0, so growth nearly stops

**Visualization Techniques:**
- Comparing exponential and logistic curves side by side
- Animating population growth with resource depletion
- Slope field for logistic showing the equilibria at y = 0 and y = L
- Phase line analysis showing stability of equilibria

### Professor Leonard: Exponential Growth and Decay, Logistic Equations

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Thorough derivation of solutions from the differential equations
- Strong emphasis on the meaning of parameters (k, L)
- Multiple real-world applications
- Careful analysis of behavior as t approaches infinity

**Approach to Exponential:**

1. State the model: dy/dt = ky
2. Solve by separation: y = y_0 * e^{kt}
3. Interpret: k > 0 gives growth, k < 0 gives decay
4. Applications: populations, radioactive decay, compound interest

**Approach to Logistic:**

1. State the model: dy/dt = ky(1 - y/L) or dy/dt = ky(L - y)/L
2. Partial fractions to solve (complex algebra)
3. Solution: y = L / (1 + Ae^{-kt}) where A depends on initial condition
4. Behavior analysis: y approaches L as t approaches infinity

**Strengths:**
- Complete algebraic derivations
- Clear connection between parameters and behavior
- Multiple worked examples with different applications
- Emphasis on long-term behavior

### Khan Academy: Exponential and Logistic Models

**Source:** [Khan Academy - Differential Equations](https://www.khanacademy.org/math/ap-calculus-bc/bc-differential-equations-new)

**Key Teaching Points for Exponential:**

1. **The equation:** dy/dt = ky means "rate proportional to amount"
2. **The solution:** y = y_0 * e^{kt}
3. **Parameters:**
   - y_0: initial value (y at t = 0)
   - k: growth rate constant
   - If k > 0: exponential growth
   - If k < 0: exponential decay (half-life problems)

**Key Teaching Points for Logistic:**

1. **The equation:** dy/dt = ky(1 - y/L)
2. **Parameters:**
   - k: intrinsic growth rate
   - L: carrying capacity (maximum sustainable population)
3. **Equilibria:** y = 0 (unstable) and y = L (stable)
4. **The solution form:** y = L / (1 + ((L - y_0)/y_0)e^{-kt})
5. **Key behavior:**
   - Starts nearly exponential when y << L
   - Inflection point at y = L/2 (fastest growth)
   - Approaches L asymptotically

**Interactive Practice:**
- Setting up exponential/logistic models from verbal descriptions
- Finding parameters from given information
- Predicting long-term behavior

### Paul's Online Math Notes: Modeling with First Order Equations

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/DE/Modeling.aspx)

**Key Insights:**

> "Exponential growth/decay is unrealistic for most real populations because it ignores resource limitations. The logistic model is a simple but effective improvement."

**Exponential Model Details:**
- dy/dt = ky has solution y = Ce^{kt}
- Doubling time (k > 0): T = ln(2)/k
- Half-life (k < 0): T = ln(2)/|k|

**Logistic Model Details:**
- dy/dt = ky(1 - y/L) has maximum growth rate at y = L/2
- Inflection point of solution curve is at y = L/2
- Long-term: all solutions with y_0 > 0 approach L
- y = 0 is unstable equilibrium; y = L is stable equilibrium

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Exponential vs. Logistic Comparison** | Side-by-side curves showing both models | Highlights how carrying capacity "caps" growth |
| **Parameter Sliders** | Adjust k and L to see effect on curve | Builds intuition for parameter meanings |
| **Slope Field with Equilibria** | Show horizontal lines at y = 0 and y = L | Visualizes why solutions approach L |
| **Phase Line** | One-dimensional diagram showing flow toward/away from equilibria | Simplifies stability analysis |
| **Inflection Point Highlight** | Mark where growth rate is maximum (y = L/2) | Connects calculus concept to model behavior |
| **Real Data Overlay** | Show actual population data with logistic fit | Demonstrates practical relevance |

### Recommended D3 Visualization

**Exponential and Logistic Model Explorer:**
1. Display both models side by side:
   - Left: dy/dt = ky (exponential)
   - Right: dy/dt = ky(1 - y/L) (logistic)
2. Sliders for parameters:
   - k (growth rate): affects steepness
   - L (carrying capacity): affects ceiling for logistic
   - y_0 (initial value): affects starting point
3. Show:
   - Solution curves
   - Slope fields
   - Equilibrium lines (y = 0, y = L for logistic)
   - Inflection point marker for logistic
4. Animation: watch population "grow" along the curve over time
5. Long-term behavior: show y(t) as t approaches infinity

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Logistic growth eventually stops"** | Students think y levels off at exactly L | Growth APPROACHES L but never reaches it. The rate dy/dt approaches 0 but is never exactly 0 (for y < L). |
| **"Carrying capacity is a maximum"** | Thinking y can never exceed L | If y_0 > L, the population DECREASES toward L. L is an equilibrium, not a hard ceiling. |
| **"Exponential and logistic are the same for small y"** | Partially true but students miss the nuance | For y << L, logistic behaves APPROXIMATELY like exponential. As y grows, the difference becomes significant. Show this visually. |
| **"k is the rate of growth"** | Confusing k with dy/dt | k is the PROPORTIONALITY CONSTANT. The actual rate dy/dt = ky (exponential) or ky(1-y/L) (logistic) depends on y. |
| **"The inflection point is where growth stops"** | Confusing maximum rate with zero rate | At the inflection point (y = L/2 for logistic), growth rate is MAXIMUM, not zero. Growth slows AFTER the inflection. |
| **"Half-life applies to logistic"** | Applying exponential concept incorrectly | Half-life is specific to exponential decay. Logistic doesn't have a constant "doubling time" or "half-life." |

### Misconception-Busting Exercises

1. **Approaching vs. Reaching:**
   - Graph y = L/(1 + e^{-kt}) for large t
   - Calculate y(10), y(20), y(50), y(100)
   - Show: y gets very close to L but never equals L

2. **What if y_0 > L?**
   - For logistic with y_0 = 1.5L, calculate dy/dt
   - dy/dt = ky_0(1 - y_0/L) = k(1.5L)(1 - 1.5) = -0.75kL < 0
   - Population DECREASES toward L

3. **Inflection Point Analysis:**
   - For logistic, find where d^2y/dt^2 = 0
   - This occurs at y = L/2
   - At this point, dy/dt is maximum: dy/dt|_{y=L/2} = kL/4
   - Growth is fastest here, not stopped

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 43 lesson should:

### Opening (5 min)
- Pose a question: "A bacteria population doubles every hour. If we start with 100 bacteria, how many will there be after 24 hours?"
- Calculate: 100 * 2^{24} = 1.67 billion bacteria
- "Is this realistic? What's missing from our model?"
- This motivates the need for carrying capacity

### Exponential Model Review (10 min)

**The Model:**
- dy/dt = ky (rate proportional to current amount)
- Solution: y = y_0 * e^{kt}

**Interpretation:**
- k > 0: Exponential growth (populations, investments)
- k < 0: Exponential decay (radioactive decay, cooling)

**Key Formulas:**
- Doubling time: T_d = ln(2)/k
- Half-life: T_{1/2} = ln(2)/|k|

**Worked Example: Radioactive Decay**
- A substance has half-life of 5 years
- Find k: T_{1/2} = ln(2)/|k| implies |k| = ln(2)/5 implies k = -ln(2)/5 approximately -0.139
- If we start with 100g, how much remains after 12 years?
- y = 100 * e^{(-0.139)(12)} = 100 * e^{-1.668} approximately 18.9g

**Limitations:**
- Exponential growth predicts unlimited growth
- Unrealistic for real populations
- Needs modification for finite resources

### Logistic Model Introduction (12 min)

**The Model:**
dy/dt = ky(1 - y/L)

**Parameters:**
- k: intrinsic growth rate
- L: carrying capacity (maximum sustainable population)

**Interpreting the Equation:**
- When y << L: (1 - y/L) approximately 1, so dy/dt approximately ky (nearly exponential)
- When y = L: (1 - y/L) = 0, so dy/dt = 0 (no growth)
- When y > L: (1 - y/L) < 0, so dy/dt < 0 (population decreases)

**Equilibrium Analysis:**
- dy/dt = 0 when y = 0 or y = L
- y = 0: unstable (small perturbation leads to growth away from 0)
- y = L: stable (populations approach L over time)

**Solution Form (Given, not derived in class):**
y(t) = L / (1 + ((L - y_0)/y_0)e^{-kt})

Or equivalently, with A = (L - y_0)/y_0:
y(t) = L / (1 + Ae^{-kt})

**Key Features:**
- S-shaped (sigmoidal) curve
- Approaches L as t -> infinity
- Inflection point at y = L/2 (maximum growth rate)

### Visualization and Comparison (8 min)

**D3 Interactive:**
1. Show exponential and logistic side by side
2. Same k and y_0, but logistic has L
3. Initially similar, but logistic levels off
4. Highlight:
   - Exponential shoots off to infinity
   - Logistic approaches horizontal asymptote y = L

**Slope Field for Logistic:**
- Show horizontal slopes at y = 0 and y = L
- Positive slopes for 0 < y < L
- Negative slopes for y > L
- Solutions curve toward y = L from any positive initial value

**Inflection Point:**
- Find where dy/dt is maximum
- Occurs at y = L/2
- Maximum rate = kL/4
- "Fastest growth happens at half of carrying capacity"

### Applications and Problem Solving (10 min)

**Example 1: Population Growth**
A population of deer in a park follows logistic growth with k = 0.5/year and L = 1000. If there are currently 100 deer:
a) Write the differential equation: dy/dt = 0.5y(1 - y/1000)
b) Find A: A = (1000 - 100)/100 = 9
c) Write the solution: y = 1000/(1 + 9e^{-0.5t})
d) Find the population after 5 years: y(5) = 1000/(1 + 9e^{-2.5}) approximately 576 deer
e) When will the population reach 900? Solve 900 = 1000/(1 + 9e^{-0.5t})
   t approximately 8.8 years

**Example 2: Spread of a Rumor**
A rumor spreads through a school of 500 students according to logistic dynamics. After 1 day, 50 students know the rumor.
a) L = 500 (everyone eventually hears it)
b) If the rumor continues spreading logistically, describe long-term behavior
c) The rumor will eventually reach nearly all students, approaching 500

### Closing (5 min)
- Exit ticket: Given dy/dt = 0.2y(1 - y/200) and y(0) = 10, describe the long-term behavior
- Key insight: Logistic model adds realism to exponential by incorporating resource limits
- Recap Unit 7: modeling -> slope fields -> Euler's method -> separation -> exponential/logistic

### Key Principles Throughout

1. **Exponential is the "unlimited" model:** Good approximation when resources are abundant
2. **Logistic adds limits:** Carrying capacity represents environmental constraints
3. **Parameters have meaning:** k affects speed, L affects ceiling
4. **Long-term behavior:** Exponential -> infinity; Logistic -> L
5. **Connect to separation of variables:** Both models are solved by separation

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **7.8:** Exponential Models with Differential Equations
- **7.9:** Logistic Models with Differential Equations (BC only)

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (solving and applying models)
- **MP 2:** Connecting Representations (equation, graph, context)
- **MP 4:** Communication (interpreting results in context)
- **MP 5:** Building Notational Fluency (differential equation notation)

### AP Exam Connection
- FRQs often present logistic scenarios requiring:
  - Setting up the differential equation from a description
  - Interpreting parameters k and L
  - Finding particular solutions with initial conditions
  - Analyzing long-term behavior
  - Finding inflection points or maximum growth rates

### Scoring Rubric Priorities
1. Correct differential equation setup
2. Correct identification of parameters (k, L, y_0)
3. Correct long-term behavior analysis (y -> L)
4. Correct inflection point analysis (y = L/2)
5. Correct application of initial conditions

### Common AP Errors to Address
- Confusing k (rate constant) with the growth rate dy/dt
- Forgetting that y = L is the horizontal asymptote
- Not recognizing when a problem is logistic vs. exponential
- Errors in applying the solution formula
- Misidentifying the inflection point

### BC-Specific Notes
- The logistic solution formula is often given on the AP exam
- Students should understand the formula, not necessarily derive it
- Emphasis on interpretation and application over algebraic manipulation
- Phase line analysis and stability may appear in conceptual questions

### Fluency Goals
By the end of this class, students should:
- Write differential equations for exponential growth/decay from descriptions
- Solve exponential models and find doubling time/half-life
- Write and interpret logistic differential equations
- Identify and interpret the carrying capacity L
- Describe long-term behavior of logistic solutions
- Find the inflection point and explain its significance
- Distinguish between exponential and logistic scenarios

---

## Sources

- [3Blue1Brown: Exponential Growth and Epidemics](https://www.3blue1brown.com/)
- [Khan Academy: Exponential and Logistic Models](https://www.khanacademy.org/math/ap-calculus-bc/bc-differential-equations-new)
- [Professor Leonard: Logistic Equations](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Modeling with First Order Equations](https://tutorial.math.lamar.edu/Classes/DE/Modeling.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
