# Lesson Plan: The Chain Rule

## Class Information
- **Class Number:** 14
- **Unit:** 3 - Differentiation: Composite, Implicit, and Inverse Functions
- **Topic:** The Chain Rule
- **CED Topic:** 3.1
- **Duration:** 50 minutes
- **Date:** February 27, 2026

---

## Learning Objectives

By the end of this lesson, students will be able to:
1. Identify composite functions and their inner and outer components
2. State and apply the Chain Rule for differentiating composite functions
3. Use both Leibniz and prime notation for the Chain Rule
4. Differentiate functions involving nested compositions

---

## Standards Alignment

### AP Calculus BC CED
- **3.1:** The Chain Rule
- **Learning Objective FUN-3.C:** Calculate derivatives of compositions of differentiable functions

### Mathematical Practices
- **Practice 1:** Implementing Mathematical Processes
- **Practice 3:** Justification

---

## Materials Needed
- Interactive presentation with D3 visualizations
- Graphing calculators
- Chain Rule practice worksheet
- Desmos activity (composite function exploration)

---

## Lesson Outline

### Opening (5 minutes)

**Warm-Up Problem:**
Find the derivative of f(x) = (x^2 + 1)^5 by expanding and differentiating.

*Discussion:* This is tedious! There must be a better way.

**Hook:** What if we could differentiate composite functions without expanding them?

---

### Core Instruction (25 minutes)

#### Part 1: Identifying Composite Functions (7 minutes)

**Key Concept:** A composite function f(g(x)) has:
- An **outer function** f
- An **inner function** g

**Examples to identify:**
1. h(x) = sin(x^2) - Outer: sin(u), Inner: u = x^2
2. h(x) = (3x + 1)^4 - Outer: u^4, Inner: u = 3x + 1
3. h(x) = e^(cos x) - Outer: e^u, Inner: u = cos x

#### Part 2: The Chain Rule Statement (8 minutes)

**Theorem (Chain Rule):**
If g is differentiable at x and f is differentiable at g(x), then:

$$\frac{d}{dx}[f(g(x))] = f'(g(x)) \cdot g'(x)$$

Or in Leibniz notation:
$$\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}$$

**Verbal Translation:** "Derivative of outer (leave inner alone) times derivative of inner"

**Intuitive Explanation using rates:**
- If y changes 3 times as fast as u, and u changes 2 times as fast as x...
- Then y changes 6 times as fast as x

#### Part 3: Basic Examples (10 minutes)

**Example 1:** f(x) = (x^2 + 1)^5
- Outer: u^5, Inner: u = x^2 + 1
- f'(x) = 5(x^2 + 1)^4 · 2x = 10x(x^2 + 1)^4

**Example 2:** f(x) = sin(3x)
- Outer: sin(u), Inner: u = 3x
- f'(x) = cos(3x) · 3 = 3cos(3x)

**Example 3:** f(x) = e^(x^2)
- Outer: e^u, Inner: u = x^2
- f'(x) = e^(x^2) · 2x = 2x·e^(x^2)

**Example 4:** f(x) = ln(cos x)
- Outer: ln(u), Inner: u = cos x
- f'(x) = (1/cos x) · (-sin x) = -tan x

---

### Active Practice (15 minutes)

#### Independent Practice (8 minutes)
Students work on finding derivatives:
1. g(x) = (5x - 2)^7
2. h(x) = cos(x^3)
3. f(x) = sqrt(4x + 1)
4. y = tan(2x)
5. f(x) = e^(-x)

#### Partner Discussion (4 minutes)
Compare answers with a partner. Identify any common errors.

#### Whole Class Discussion (3 minutes)
Address common mistakes:
- Forgetting the inner derivative
- Wrong identification of inner/outer
- Sign errors

---

### Closing (5 minutes)

**Exit Ticket:**
Find the derivative: f(x) = (sin x)^3

**Preview:**
Tomorrow we'll tackle nested chain rules and combine with product/quotient rules.

---

## Differentiation Strategies

### For Struggling Learners
- Color-code inner and outer functions
- Use "boxes" around inner function
- Provide extra scaffolded examples

### For Advanced Learners
- Challenge with triple compositions
- Explore why the chain rule works via limits
- Apply to implicit differentiation preview

---

## Common Misconceptions

1. **Forgetting the inner derivative:** Many students write d/dx[sin(x^2)] = cos(x^2) without the 2x
2. **Reversing inner/outer:** Confusion about which function is inside which
3. **Leibniz notation confusion:** Students may cancel du incorrectly

---

## Assessment Notes

**Formative:**
- Monitor during practice problems
- Exit ticket analysis

**Check for Understanding Questions:**
- "What is the inner function here?"
- "What happens if we forget the inner derivative?"
- "How do we know this is a composite function?"

---

## Connections

**Prior Knowledge:**
- Power rule, trig derivatives, exponential derivatives
- Function composition (from precalculus)

**Future Topics:**
- Implicit differentiation uses chain rule
- Related rates depend heavily on chain rule
- Integration by substitution is "reverse chain rule"

---

## Homework Assignment

AP Classroom: Topic Questions 3.1
Additional Problems: Chain Rule Practice Set A (problems 1-20)

---

## Reflection Notes

*Space for post-lesson reflection on what worked well and what to adjust*
