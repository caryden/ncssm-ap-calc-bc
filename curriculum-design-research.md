# Curriculum Design Research Summary

## Purpose

This document summarizes research on curriculum design best practices that inform the development of the AP Calculus BC course at NCSSM. It serves as the evidence base for decisions made in `course-plan.md`.

---

## 1. Understanding by Design (UbD) Framework

### Source
Wiggins, G., & McTighe, J. (2005). *Understanding by Design* (2nd ed.). ASCD.

### Core Principle: Backward Design

The UbD framework inverts traditional curriculum planning. Instead of starting with activities, it starts with desired outcomes:

**Stage 1: Identify Desired Results**
- What should students know, understand, and be able to do?
- What enduring understandings are worth pursuing?
- What essential questions will frame the inquiry?

**Stage 2: Determine Assessment Evidence**
- How will we know if students have achieved the desired results?
- What performance tasks and other evidence will demonstrate understanding?

**Stage 3: Plan Learning Experiences**
- What activities, instruction, and resources will support the desired learning?

### Key Insight for AP Calc BC
> "Teachers are coaches of understanding, not mere purveyors of content knowledge, skill, or activity. They focus on ensuring that learning happens, not just teaching."

### Application to This Course
- Start with AP exam expectations (Stage 1)
- Design assessments that match AP format (Stage 2)
- Create presentations that support understanding, not just coverage (Stage 3)

---

## 2. The Rule of Four (G.N.A.W.)

### Source
Harvard Calculus Consortium. (1986-present). Reform calculus curriculum.

### The Four Representations

Mathematical concepts should be presented in four complementary ways:

| Letter | Representation | Description | Calculus Example |
|--------|----------------|-------------|------------------|
| **G** | Graphical | Visual, coordinate plane | Graph of f(x) showing behavior |
| **N** | Numerical | Tables, computed values | Table of f(x) values approaching a limit |
| **A** | Analytical | Algebraic, symbolic | lim(x→a) f(x) = L formal notation |
| **W** | Verbal (Words) | Written/spoken description | "As x approaches a, f(x) gets arbitrarily close to L" |

### Pedagogical Rationale

Different students have different learning strengths:
- **Visual learners** benefit from graphical approaches
- **Computational learners** benefit from numerical approaches
- **Abstract thinkers** benefit from analytical approaches
- **Language-oriented learners** benefit from verbal approaches

### Critical Nuance

The analytical representation is foundational for mathematical rigor:
> "Proof can only be done analytically – using symbols and equations. Graphs, numbers, and words aid in that, but do not by themselves prove anything."

However, other representations often provide intuition:
> "Numbers and especially graphs can make many of the theorems much more understandable and often can convince one of the truth of a theorem far better than the actual proof."

### Application to This Course
- Every major concept slide set should include all four representations
- Use G.N.A.W. mnemonic explicitly with students
- Start with intuition (often graphical), build to rigor (analytical)

---

## 3. Visual-First Pedagogy (3Blue1Brown Approach)

### Source
Sanderson, G. (2017). *Essence of Calculus* video series. 3Blue1Brown.

### Core Philosophy

> "The goal is for viewers to come away feeling like you could have invented calculus."

This means covering core ideas "in a way that makes clear where they actually come from, and what they really mean, using an all-around visual approach."

### Key Principles

1. **Invention Over Memorization**
   - Present math as something that could be discovered, not just learned
   - Show the "aha moment" path, not just the polished result

2. **Visual Primacy**
   - Lead with geometric intuition before algebraic formulas
   - Use animation to show mathematical relationships dynamically

3. **Concrete Before Abstract**
   - Start with specific examples (e.g., area of a circle)
   - Generalize to abstract principles (e.g., Fundamental Theorem)

4. **Connection Over Isolation**
   - Show how concepts relate to each other
   - Derivatives and integrals as inverse operations, not separate topics

### Specific Techniques

| Technique | Description | Example |
|-----------|-------------|---------|
| Geometric decomposition | Break shapes into simpler parts | Deriving πr² by "unwrapping" circles |
| Zooming | Show local linearity by magnification | Derivative as zoom on curve |
| Animation | Show change over time | Secant line approaching tangent |
| Color coding | Distinguish related quantities | f(x) blue, f'(x) orange, ∫f green |

### Application to This Course
- D3 visualizations should enable "invention" moments
- Animate mathematical relationships, don't just show static images
- Use consistent color coding: function=blue, derivative=orange, integral=green

---

## 4. Common Student Misconceptions in Calculus

### Sources
- Lamar University. *Common Calculus Errors*.
- ERIC. *Misconceptions and Errors in Learning Integral Calculus*.
- Various calculus education research.

### Limits

| Misconception | Reality | How to Address |
|---------------|---------|----------------|
| Limit = function value | Limit is what f(x) approaches, not necessarily f(a) | Show removable discontinuities graphically |
| "Approaches" means "reaches" | Limit is about behavior near, not at | Emphasize "arbitrarily close" language |
| Dropping limit notation | Must keep lim notation until limit is evaluated | Model proper notation in all examples |
| ∞ is a number | ∞ is a concept, not a value to compute with | Carefully distinguish "limit equals ∞" from "limit DNE" |

### Derivatives

| Misconception | Reality | How to Address |
|---------------|---------|----------------|
| Forgetting inner derivative (chain rule) | d/dx[f(g(x))] = f'(g(x)) · g'(x) | Visualize composition as "wrapping" |
| Confusing f and f' graphs | f' tells slope of f, not position | Side-by-side animation |
| Derivative of sin/cos sign errors | d/dx[sin x] = cos x, d/dx[cos x] = -sin x | Unit circle visualization |
| "Differentiable means continuous" reversal | Continuous doesn't imply differentiable | Show corner points, vertical tangents |

### Integrals

| Misconception | Reality | How to Address |
|---------------|---------|----------------|
| Integral = antiderivative (only) | Integral is also area/accumulation | Emphasize Riemann sum foundation |
| Forgetting +C | Indefinite integrals have constant of integration | "Family of curves" visualization |
| Product/quotient rules for integrals | No such rules exist | Explicitly contrast with derivative rules |
| Confusing definite and indefinite | Definite = number, indefinite = function | Emphasize notation differences |

### Fundamental Theorem

| Misconception | Reality | How to Address |
|---------------|---------|----------------|
| FTC is "just" about computation | FTC connects two separate ideas: rate & accumulation | Show both parts distinctly |
| d/dx[∫f(t)dt] confusion | Variable of integration vs. variable of differentiation | Careful notation, multiple examples |

### Application to This Course
- Explicitly address each misconception in relevant lesson plans
- Design visualizations that contradict misconceptions
- Include "common errors" slides with corrections

---

## 5. AP Calculus Curriculum Framework

### Source
College Board. (2020). *AP Calculus AB and BC Course and Exam Description*.

### Mathematical Practices

The four MP (Mathematical Practices) that should thread through all instruction:

| MP | Practice | Description |
|----|----------|-------------|
| 1 | **Implementing Mathematical Processes** | Determine expressions and values using procedures |
| 2 | **Connecting Representations** | Translate between G, N, A, W forms |
| 3 | **Justification** | Provide reasoning and mathematical arguments |
| 4 | **Communication** | Use precise notation, language, conventions |

### Big Ideas

| Big Idea | Code | Description |
|----------|------|-------------|
| Change | CHA | Using derivatives and integrals to describe change |
| Limits | LIM | Foundation for continuity, derivatives, integrals |
| Analysis | FUN | Drawing conclusions about function behavior |

### Unit Structure

The CED organizes content into 10 units, but notes:
> "Teachers have the flexibility to organize the course content as they like."

This course follows the CED unit structure with minor reordering for pedagogical flow.

### Application to This Course
- Every slide should connect to a CED topic number
- Assessments should use AP rubric language
- All four mathematical practices should appear in each unit

---

## 6. Constructivist Learning Theory

### Principle

Students construct knowledge by building on prior understanding. New concepts must connect to what students already know.

### Implications for Calculus

| Topic | Prior Knowledge Required | Connection to Build |
|-------|--------------------------|---------------------|
| Limits | Algebra: evaluating functions | "What happens as x gets close to a?" |
| Derivatives | Slopes of lines | "Slope of tangent = instantaneous rate" |
| Integrals | Area of rectangles | "Sum of infinitely many thin rectangles" |
| Series | Sequences, fractions | "Infinite sum with finite answer" |

### Application to This Course
- Begin each topic by activating relevant prior knowledge
- Use "Do Now" warm-ups that connect to prerequisites
- Spiral back to earlier topics to reinforce connections

---

## 7. Dual Coding Theory

### Principle

Learning is enhanced when information is presented both verbally and visually.

### Application

Every key concept should have:
1. **Visual representation** (diagram, graph, animation)
2. **Verbal explanation** (text, narration)
3. **Symbolic representation** (equations, formulas)

This aligns naturally with the Rule of Four.

---

## Summary: Design Principles for This Course

Based on this research, every presentation should:

1. **Start with clear learning objectives** (Understanding by Design)
2. **Present concepts in multiple representations** (Rule of Four)
3. **Lead with visual intuition** (3Blue1Brown approach)
4. **Explicitly address common misconceptions** (Error research)
5. **Align to AP standards** (CED framework)
6. **Build on prior knowledge** (Constructivism)
7. **Combine visual and verbal channels** (Dual coding)

---

## Sources

- [Understanding by Design Framework](https://files.ascd.org/staticfiles/ascd/pdf/siteASCD/publications/UbD_WhitePaper0312.pdf)
- [AP Calculus BC Course and Exam Description](https://apcentral.collegeboard.org/media/pdf/ap-calculus-ab-and-bc-course-and-exam-description.pdf)
- [Rule of Four - Teaching Calculus](https://teachingcalculus.com/2016/10/11/mpac-4-multiple-representations/)
- [Flamingo Math: Rule of Four](https://www.flamingomath.com/learn-how-the-rule-of-four-will-change-your-students-thinking/)
- [3Blue1Brown: Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Common Calculus Errors - Lamar University](https://tutorial.math.lamar.edu/extras/commonerrors/calculuserrors.aspx)
- [Misconceptions in Integral Calculus (ERIC)](https://files.eric.ed.gov/fulltext/EJ1207815.pdf)
