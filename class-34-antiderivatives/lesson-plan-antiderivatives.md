# Lesson Plan: Antiderivatives and Basic Integration Rules

## Class 34 | Unit 6: Integration and Accumulation of Change

---

## Overview

This session develops the toolkit of basic antiderivative rules by reversing derivative rules. Students will understand that indefinite integrals represent families of functions differing by a constant, master the power rule for integration, and learn antiderivatives for exponential and trigonometric functions. The +C requirement is emphasized as essential, not optional.

**CED Topic:** 6.8 - Finding Antiderivatives and Indefinite Integrals

---

## Learning Objectives

By the end of this class, students will be able to:

1. Define antiderivative: F is an antiderivative of f if $F'(x) = f(x)$
2. Explain why antiderivatives are not unique and why +C is required
3. Apply the power rule for integration: $\int x^n\,dx = \frac{x^{n+1}}{n+1} + C$ (for $n \neq -1$)
4. Find antiderivatives of exponential, natural log, and trigonometric functions
5. Verify antiderivatives by differentiation

---

## Prior Knowledge Required

- FTC Part 2: $\int_a^b f(x)\,dx = F(b) - F(a)$ (Class 33)
- All derivative rules (power, exponential, trigonometric)
- Understanding that differentiation and integration are inverse operations

---

## Materials Needed

- Presentation slides with "reverse derivative" visualizations
- Antiderivative rule reference chart
- D3 visualization of the family of antiderivatives
- Integration practice worksheet

---

## Class Structure (50 minutes)

### Opening Hook (5 min)

**The Reverse Question**

Present this scenario:
> "I tell you that $F'(x) = 2x$. What is $F(x)$?"

Students will likely answer: $F(x) = x^2$

**Follow-up:** "Are there other possibilities?"

Key insight: $F(x) = x^2 + 1$, $F(x) = x^2 - 5$, $F(x) = x^2 + 100$ all work!

**Today's goal:** Build a systematic approach to finding antiderivatives.

### The Indefinite Integral (8 min)

**Definition: Antiderivative**

F is an **antiderivative** of f if $F'(x) = f(x)$

**The +C Necessity**

If F is an antiderivative of f, then so is $F(x) + C$ for any constant C.

**Why?** $\frac{d}{dx}[F(x) + C] = F'(x) + 0 = f(x)$

**Visualization:** Show multiple curves $y = x^2$, $y = x^2 + 1$, $y = x^2 - 2$, etc.
- All have the same derivative: $2x$
- They are vertical translations of each other
- All are valid antiderivatives of $2x$

**The Indefinite Integral**

$$\int f(x)\,dx = F(x) + C$$

This notation represents the **family of all antiderivatives** of f.

**Key distinction:**
- Definite integral $\int_a^b f(x)\,dx$ is a NUMBER
- Indefinite integral $\int f(x)\,dx$ is a FUNCTION (actually, a family of functions)

**Why "indefinite"?** The +C means the answer is not completely determined - there's an indefinite constant.

### Power Rule for Integration (10 min)

**Reversing the Power Rule**

Derivative power rule: $\frac{d}{dx}[x^n] = nx^{n-1}$

What function has derivative $x^n$?

We need $\frac{d}{dx}[?] = x^n$

If $\frac{d}{dx}[x^{n+1}] = (n+1)x^n$, then $\frac{d}{dx}\left[\frac{x^{n+1}}{n+1}\right] = x^n$

**Integration Power Rule:**

$$\int x^n\,dx = \frac{x^{n+1}}{n+1} + C \quad \text{for } n \neq -1$$

**In words:** Add 1 to the exponent, divide by the new exponent, add C.

**Examples:**

$$\int x^4\,dx = \frac{x^5}{5} + C \quad \text{Check: } \frac{d}{dx}\left[\frac{x^5}{5}\right] = x^4 \checkmark$$

$$\int x^{-2}\,dx = \frac{x^{-1}}{-1} + C = -\frac{1}{x} + C$$

$$\int \sqrt{x}\,dx = \int x^{1/2}\,dx = \frac{x^{3/2}}{3/2} + C = \frac{2}{3}x^{3/2} + C$$

$$\int \frac{1}{\sqrt{x}}\,dx = \int x^{-1/2}\,dx = \frac{x^{1/2}}{1/2} + C = 2\sqrt{x} + C$$

**The Special Case: n = -1**

Why doesn't the formula work for $n = -1$?

$\int x^{-1}\,dx = \frac{x^0}{0} + C$ is undefined!

**Special rule:** $\int \frac{1}{x}\,dx = \ln|x| + C$

**Why absolute value?** The domain of 1/x includes negative numbers. ln|x| handles both positive and negative x.

### Basic Integration Rules (12 min)

**Properties of Indefinite Integrals**

1. **Constant Multiple:** $\int c \cdot f(x)\,dx = c \int f(x)\,dx$

2. **Sum/Difference:** $\int [f(x) \pm g(x)]\,dx = \int f(x)\,dx \pm \int g(x)\,dx$

**Important:** Integration does NOT distribute over products or quotients!
$$\int f(x) \cdot g(x)\,dx \neq \int f(x)\,dx \cdot \int g(x)\,dx$$

**Exponential Functions:**

$$\int e^x\,dx = e^x + C$$

$$\int a^x\,dx = \frac{a^x}{\ln a} + C \quad (a > 0, a \neq 1)$$

**Trigonometric Functions:**

| Integral | Result | Check (differentiate) |
|----------|--------|----------------------|
| $\int \cos x\,dx$ | $\sin x + C$ | $\frac{d}{dx}[\sin x] = \cos x$ ✓ |
| $\int \sin x\,dx$ | $-\cos x + C$ | $\frac{d}{dx}[-\cos x] = \sin x$ ✓ |
| $\int \sec^2 x\,dx$ | $\tan x + C$ | $\frac{d}{dx}[\tan x] = \sec^2 x$ ✓ |
| $\int \csc^2 x\,dx$ | $-\cot x + C$ | $\frac{d}{dx}[-\cot x] = \csc^2 x$ ✓ |
| $\int \sec x \tan x\,dx$ | $\sec x + C$ | $\frac{d}{dx}[\sec x] = \sec x \tan x$ ✓ |
| $\int \csc x \cot x\,dx$ | $-\csc x + C$ | $\frac{d}{dx}[-\csc x] = \csc x \cot x$ ✓ |

**Mnemonic for signs:** Derivatives of "co-" functions are negative. Integration reverses this: integrals producing "co-" functions get negatives.

### Practice and Verification (10 min)

**Example 1:** Polynomial
$$\int (3x^2 - 4x + 5)\,dx = x^3 - 2x^2 + 5x + C$$

**Verify:** $\frac{d}{dx}[x^3 - 2x^2 + 5x + C] = 3x^2 - 4x + 5$ ✓

**Example 2:** Mixed
$$\int (2e^x + 3\cos x)\,dx = 2e^x + 3\sin x + C$$

**Verify:** $\frac{d}{dx}[2e^x + 3\sin x] = 2e^x + 3\cos x$ ✓

**Example 3:** Rewrite First
$$\int \frac{4}{x} - \frac{1}{x^2}\,dx = \int (4x^{-1} - x^{-2})\,dx = 4\ln|x| + x^{-1} + C = 4\ln|x| + \frac{1}{x} + C$$

**Example 4:** Simplify Before Integrating
$$\int \frac{x^3 + 2x}{x}\,dx = \int (x^2 + 2)\,dx = \frac{x^3}{3} + 2x + C$$

**Student Practice:**

Find each antiderivative:
1. $\int (x^3 - 2\sin x + 1)\,dx$
2. $\int \left(\sqrt{x} + \frac{1}{\sqrt{x}}\right)\,dx$
3. $\int (5e^x - 3\cos x)\,dx$

### Closing (5 min)

**Exit Ticket:**

Evaluate $\int (x^4 - 3x^2 + 2x - 7)\,dx$

**Key Reminders:**
1. ALWAYS include +C for indefinite integrals
2. Always verify by differentiating
3. Rewrite expressions to match known forms when needed

**Preview:** Tomorrow we learn u-substitution - a technique for integrands that don't match our basic rules directly.

---

## Differentiation Strategies

### For students who need more support:
- Provide an integration rules reference card
- Practice "working backward" from derivatives
- Start with integer powers before fractional and negative exponents
- Always write out the verification step explicitly
- Create a side-by-side derivative/antiderivative chart

### For advanced students:
- Challenge: Find the antiderivative of $\frac{1}{1+x^2}$ (result: $\arctan x + C$)
- Explore: Why can't we find a closed-form antiderivative for $e^{-x^2}$?
- Investigate: Initial value problems - if $F'(x) = f(x)$ and $F(0) = 3$, find the specific antiderivative
- Prove: Two antiderivatives of the same function differ by a constant

---

## Common Misconceptions to Address

1. **"Forget the +C"**
   - Address: Emphasize this constantly. Indefinite integrals represent a FAMILY of functions. Deduct points when +C is missing to build the habit.

2. **"Power rule works for n = -1"**
   - Address: The formula $\frac{x^0}{0}$ is undefined! This special case requires ln|x|. Drill this exception repeatedly.

3. **"Integration distributes over products"**
   - Address: $\int f \cdot g \neq (\int f)(\int g)$. This is a fundamental difference from differentiation. We'll learn techniques for products later.

4. **"Drop the absolute value in ln"**
   - Address: $\int \frac{1}{x}\,dx = \ln|x| + C$, not $\ln x + C$. The domain of $\frac{1}{x}$ includes negative numbers.

5. **"Sign errors with trigonometric antiderivatives"**
   - Address: Create and memorize a chart. Note that "co-" functions have negatives associated with them.

6. **"Antiderivative is unique"**
   - Address: Show the family of curves with the same derivative. All differ by a constant - that's why we write +C.

---

## Assessment Notes

- Check for consistent inclusion of +C
- Verify students can handle fractional and negative exponents
- Monitor sign issues with trigonometric antiderivatives
- Exit ticket assesses polynomial integration and proper notation

---

## Connections

**Prior knowledge:**
- FTC Part 2 established the need for antiderivatives (Class 33)
- All derivative rules (Unit 2)
- Relationship between differentiation and integration

**Future connections:**
- U-substitution (Class 35)
- Integration by parts (Class 36)
- Partial fractions (Class 37)
- Differential equations (Unit 7)

---

## Rule of Four Connections

| Representation | How It Appears |
|----------------|----------------|
| **Graphical** | Family of curves $y = F(x) + C$ with same slope pattern |
| **Numerical** | Verification by computing derivatives |
| **Analytical** | $\int x^n\,dx = \frac{x^{n+1}}{n+1} + C$ and other rules |
| **Verbal** | "Reverse the power rule: add 1 to exponent, divide by new exponent" |

---

## Integration Rules Summary

**Power Rule:**
$$\int x^n\,dx = \frac{x^{n+1}}{n+1} + C \quad (n \neq -1)$$

$$\int \frac{1}{x}\,dx = \ln|x| + C$$

**Exponential:**
$$\int e^x\,dx = e^x + C$$

**Trigonometric:**
$$\int \cos x\,dx = \sin x + C$$
$$\int \sin x\,dx = -\cos x + C$$
$$\int \sec^2 x\,dx = \tan x + C$$
$$\int \csc^2 x\,dx = -\cot x + C$$
$$\int \sec x \tan x\,dx = \sec x + C$$
$$\int \csc x \cot x\,dx = -\csc x + C$$

**Always verify by differentiating!**
