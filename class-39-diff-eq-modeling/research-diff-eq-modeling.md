# Research: Modeling with Differential Equations

## Overview

This document summarizes research on how expert educators introduce differential equations and teach students to model real-world situations with them. It informs the lesson plan and presentation spec for Class 39.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Differential Equations

**Source:** [3blue1brown.com/lessons/differential-equations](https://www.3blue1brown.com/lessons/differential-equations)

**Core Pedagogical Strategy:**

Grant Sanderson presents differential equations as the natural language for describing change. Rather than starting with abstract definitions, he emphasizes that differential equations arise when we know the relationship between a quantity and its rate of change.

**Key Teaching Moves:**

1. **Physical motivation first** - Start with scenarios where we know the rate of change but not the original function
2. **The "dynamics" perspective** - A differential equation describes how a system evolves; the solution tells us where it goes
3. **Multiple representations** - Show the equation, the slope field, and solution curves together

**Why Differential Equations Matter:**

> "Differential equations are the language in which the laws of nature are expressed. When physicists describe gravity, electromagnetism, or thermodynamics, they inevitably use differential equations."

**Conceptual Anchor:**

The key insight is reversal: instead of "given f, find f'", we have "given a relationship involving f', find f." This reframes calculus from analysis to synthesis.

**Visualization Techniques:**
- Animated solution curves "flowing" through slope fields
- Side-by-side comparisons of related differential equations
- Parameter sliders showing how changing coefficients affects solutions

### Professor Leonard: Introduction to Differential Equations

**Source:** [Professor Leonard YouTube](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

- Extensive real-world context before formalism
- Clear distinction between creating, verifying, and solving differential equations
- Strong emphasis on understanding what "solution" means

**Approach to Differential Equations:**

1. Begin with concrete examples: population growth, Newton's law of cooling
2. Translate verbal descriptions into mathematical equations
3. Show that solving means finding a function that satisfies the equation
4. Demonstrate verification by substitution

**Strengths:**
- Makes the concept of "solution" concrete through verification
- Emphasizes that many physical phenomena are naturally described by rates of change
- Patient development of modeling skills

**Key Insight:**

> "A differential equation is just an equation with derivatives in it. A solution is a function that makes the equation true when you plug it in."

### Khan Academy: Introduction to Differential Equations

**Source:** [Khan Academy - Differential Equations](https://www.khanacademy.org/math/ap-calculus-ab/ab-differential-equations-new/ab-7-1/v/differential-equation-introduction)

**Key Teaching Points:**

1. **Definition clarity:** "An equation that relates a function to its derivatives"
2. **Order of a differential equation:** The highest derivative that appears
3. **General vs. particular solutions:** The role of initial conditions
4. **Verification as understanding:** Plug the solution back in to check

**Modeling Emphasis:**

Khan Academy presents modeling in three stages:
- **Verbal description:** "The rate of growth is proportional to the amount present"
- **Mathematical translation:** dy/dt = ky
- **Solution interpretation:** y = Ce^{kt} represents exponential growth

**Interactive Practice:**
- Identifying which scenarios lead to differential equations
- Writing differential equations from descriptions
- Verifying proposed solutions

### Paul's Online Math Notes: Differential Equations

**Source:** [Paul's Online Math Notes](https://tutorial.math.lamar.edu/Classes/DE/DE.aspx)

**Key Insights:**

> "Differential equations are the primary tool we have to express physical laws mathematically."

**Classification System:**
- **Order:** First-order, second-order, etc.
- **Linearity:** Linear vs. nonlinear
- **Ordinary vs. Partial:** ODEs (one independent variable) vs. PDEs (multiple)

**For AP Calculus BC relevance:**
- Focus on first-order ODEs
- Separable equations as the primary solving technique
- Emphasis on modeling and interpretation

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Rate-to-Function Animation** | Show a quantity changing over time, then reveal the function | Connects verbal description to mathematical model |
| **Verification Walkthrough** | Animate the substitution process step-by-step | Makes "what is a solution?" concrete |
| **Real-World Scenario** | Tank filling, population growing, temperature changing | Grounds abstract concepts in physical intuition |
| **Equation Building** | Start with words, progressively translate to symbols | Shows modeling as a process, not magic |
| **Multiple Solutions** | Show family of curves sharing the same differential equation | Illustrates general solution concept |
| **Initial Condition Focus** | Highlight how one condition picks out a specific curve | Explains particular vs. general solutions |

### Recommended D3 Visualization

**Differential Equation Modeling Explorer:**
1. Present a verbal scenario: "A population grows at a rate proportional to its size"
2. Animate the translation: "rate" -> dy/dt, "proportional to size" -> ky
3. Display the equation: dy/dt = ky
4. Show a family of solution curves (different initial populations)
5. Allow slider to select initial condition, highlighting one particular solution
6. Display verification: plug the solution back in and show both sides equal

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"The solution is a number"** | Students expect to "solve for y" and get a value | Emphasize: solutions are FUNCTIONS, not numbers. y = Ce^{kt} is a function, not an answer like y = 5. |
| **"Just integrate to solve"** | Treating dy/dt = f(x,y) like dy/dt = f(x) | Show examples where the derivative depends on y; simple integration doesn't work. Separation of variables needed. |
| **"Initial conditions are optional"** | Ignoring +C or not using initial conditions | Connect to anti-derivative understanding: infinitely many functions share the same derivative. Initial condition picks one. |
| **"Verify by solving"** | Students think they must solve first to verify | Demonstrate verification for a GIVEN solution without ever solving. Plug in and check. |
| **"Differential equations are artificial"** | Seeing them as pure mathematics | Emphasize: every rate-of-change description IS a differential equation. Newton's 2nd law F=ma is a differential equation! |
| **"General solution means approximate"** | Confusing "general" with "imprecise" | Clarify: general solution contains ALL specific solutions (via parameter C). It's MORE complete, not less precise. |

### Misconception-Busting Exercises

1. **Solution vs. Number:**
   - Show that y = 3e^{2t} is a solution to dy/dt = 2y
   - Ask: "What is y?" Answer: It depends on t; y is a function, not a single number

2. **When Integration Fails:**
   - dy/dx = y cannot be solved by simple integration
   - The right side depends on y, not just x

3. **Role of Initial Conditions:**
   - Show multiple solution curves through the same slope field
   - Initial condition picks exactly one curve from the family

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 39 lesson should:

### Opening (5 min)
- Present a scenario: "A cup of coffee cools at a rate proportional to the difference between its temperature and room temperature"
- Ask: "How would we describe this mathematically?"
- This motivates: dT/dt = -k(T - T_room)

### What is a Differential Equation? (10 min)

**Definition:**
A differential equation is an equation that relates a function to one or more of its derivatives.

**Key Examples:**
- dy/dt = 2y (exponential growth/decay)
- dy/dx = x + y (derivative depends on both variables)
- d^2y/dx^2 = -y (simple harmonic motion)

**Classification:**
- Order: The highest derivative that appears (focus on first-order for this class)
- The independent and dependent variables

### Modeling with Differential Equations (12 min)

**Process:**
1. Identify the quantity and its rate of change
2. Express the relationship between them in words
3. Translate words to mathematical symbols
4. Write the complete differential equation

**Worked Example 1: Population Growth**
- "A bacteria population grows at a rate proportional to its current size"
- Let P = population, t = time
- "rate" = dP/dt
- "proportional to current size" = kP
- Equation: dP/dt = kP

**Worked Example 2: Newton's Law of Cooling**
- "Temperature changes at a rate proportional to the difference from ambient"
- Let T = temperature, A = ambient temperature
- dT/dt = -k(T - A)
- The negative sign: if T > A, temperature decreases

**Worked Example 3: Mixing Problems**
- Tank with inflow and outflow
- Rate of change = (rate in) - (rate out)
- Build the equation piece by piece

### What is a Solution? (10 min)

**Definition:**
A solution to a differential equation is a function that, when substituted into the equation, makes it true.

**Verification Process:**
Given: dy/dt = 2y, is y = 3e^{2t} a solution?
1. Calculate dy/dt = 6e^{2t}
2. Calculate 2y = 2(3e^{2t}) = 6e^{2t}
3. Both sides equal, so YES, it's a solution

**General vs. Particular Solutions:**
- General solution: y = Ce^{2t} (contains arbitrary constant)
- Particular solution: y = 3e^{2t} (specific value of C from initial condition)

**Initial Conditions:**
- If y(0) = 3, then Ce^{0} = 3, so C = 3
- Initial condition determines the specific solution

### Practice (8 min)
- Write differential equations from verbal descriptions
- Verify given solutions by substitution
- Find particular solutions given initial conditions

### Closing (5 min)
- Exit ticket: Write a differential equation for "the rate of decay of a radioactive substance is proportional to the amount remaining"
- Preview: Slope fields as a way to visualize differential equations (next class)

### Key Principles Throughout

1. **Concrete before abstract:** Start with physical scenarios, then formalize
2. **Modeling is translation:** Verbal -> Mathematical is a skill to practice
3. **Solutions are functions:** Reinforce this repeatedly
4. **Verification is valuable:** You can check a solution without knowing how to solve

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **7.1:** Modeling Situations with Differential Equations
- **7.2:** Verifying Solutions for Differential Equations

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (writing and verifying equations)
- **MP 2:** Connecting Representations (verbal to mathematical)
- **MP 4:** Communication (explaining what a solution means)
- **MP 5:** Building Notational Fluency (using proper differential notation)

### AP Exam Connection
- FRQs frequently require writing a differential equation from a verbal description
- Verification is commonly tested: "Is y = ... a solution to dy/dt = ...?"
- Must show the work: substitute, simplify, compare
- Scoring rubric rewards:
  - Correct differential equation from verbal description
  - Correct verification process
  - Correct identification of initial conditions

### Fluency Goals
By the end of this class, students should:
- Write first-order differential equations from verbal descriptions
- Verify whether a given function is a solution
- Distinguish between general and particular solutions
- Use initial conditions to find specific constants
- Recognize common differential equation types (exponential, cooling, mixing)

---

## Sources

- [3Blue1Brown: Differential Equations](https://www.3blue1brown.com/lessons/differential-equations)
- [Khan Academy: Introduction to Differential Equations](https://www.khanacademy.org/math/ap-calculus-ab/ab-differential-equations-new/ab-7-1/v/differential-equation-introduction)
- [Professor Leonard: Differential Equations](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Differential Equations](https://tutorial.math.lamar.edu/Classes/DE/DE.aspx)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
