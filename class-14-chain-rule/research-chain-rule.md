# Research: The Chain Rule

## Overview

This document summarizes research on how expert educators teach the chain rule for composite functions. It informs the lesson plan and presentation spec for Class 14.

---

## 1. Expert Teaching Analysis

### 3Blue1Brown: Visualizing the Chain Rule and Product Rule

**Source:** [3blue1brown.com/lessons/chain-rule-and-product-rule](https://www.3blue1brown.com/lessons/chain-rule-and-product-rule)

**Core Pedagogical Strategy:**

Grant Sanderson presents the chain rule as the natural consequence of "tiny nudges" propagating through composed functions. The dx's and dh's "cancel" in a way that reflects genuine mathematical meaning.

**The Number Line Model:**

1. Consider y = g(h(x))
2. Think of three number lines: x, h, and y
3. When x changes by dx:
   - h changes by dh = h'(x)·dx
   - y changes by dy = g'(h)·dh
4. So: dy/dx = (dy/dh)·(dh/dx) = g'(h(x))·h'(x)

**Key Insight:**

> "The dh's cancel to give the ratio between a tiny change in the final output, and the tiny change to the input that, through a certain chain of events, brought it about."

**Why This Works:**

- The Leibniz notation (dy/dx) makes the chain rule look like fraction cancellation
- This isn't just a trick—it reflects how changes propagate through compositions
- Students can trace "cause and effect" through the function chain

**Philosophy:**

> "There's a big difference between knowing what the chain rule is, and being fluent with applying it in even the most hairy of situations."

**When Multiple Rules Combine:**

Most real-world functions mix adding, multiplying, and composing. Fluency means knowing which rule applies to which part of the expression.

### Professor Leonard: Chain Rule Lectures

**Source:** [Professor Leonard YouTube - Calculus 1](https://www.youtube.com/@ProfessorLeonard)

**Teaching Style:**

Professor Leonard uses the "inside-outside" framework systematically:

1. **Identify the composition:** What's the "inside" function? What's the "outside" function?
2. **Differentiate the outside, leave inside alone:** d/dx[outside(inside)] = outside'(inside)
3. **Multiply by the derivative of inside:** ...·inside'(x)

**The Framework:**
- Inside function: u = g(x)
- Outside function: f(u)
- Chain rule: d/dx[f(g(x))] = f'(g(x))·g'(x)

**Practice Progression:**
1. Simple: d/dx[(x²+1)⁵] — power outside, polynomial inside
2. Trig: d/dx[sin(x³)] — trig outside, power inside
3. Exponential: d/dx[e^(x²)] — exponential outside, power inside
4. Multiple layers: d/dx[sin²(3x)] — three-layer composition

### Khan Academy: Common Chain Rule Misunderstandings

**Source:** [Khan Academy - Common Chain Rule Misunderstandings](https://www.khanacademy.org/math/ap-calculus-ab/ab-differentiation-2-new/ab-3-1a/v/common-chain-rule-misunderstandings)

**Key Teaching Points:**

1. **Identify composite functions correctly:** Is f(x) = x²·sin(x) a composition or a product? (Product!)
2. **Don't forget the inside derivative:** The most common error is d/dx[sin(x²)] = cos(x²) instead of cos(x²)·2x
3. **Don't confuse with product rule:** sin(x²) is a composition; sin(x)·x² is a product

**Decision Tree for Students:**
- Is the function a composition (one function inside another)? → Chain rule
- Is the function a product (two functions multiplied)? → Product rule
- Is it both? → You'll need both rules!

---

## 2. Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| **Number Line Chain** | Three number lines showing x → h → y | Visualizes how changes propagate |
| **Function Machine Diagram** | Input goes through first machine, output feeds second | Shows composition structure |
| **Onion Layers** | Concentric circles representing nested functions | "Peel" from outside to inside |
| **Color Coding** | Inside function in one color, outside in another | Distinguishes the pieces |
| **Derivative Tree** | Tree diagram showing which parts need differentiation | Organizes complex expressions |
| **"Leave it alone" emphasis** | Show inside function grayed out during first step | Reinforces not changing it yet |

### Recommended D3 Visualization

**Interactive Chain Rule Explorer:**
1. Display composed function like y = sin(x²)
2. Highlight "inside" (x²) in blue, "outside" (sin) in orange
3. Step 1: "Differentiate outside, leave inside alone" → cos(x²)
4. Step 2: "Multiply by derivative of inside" → cos(x²)·2x
5. Animation showing the multiplication
6. Let students practice with different compositions

**Number Line Animation:**
1. Show three parallel number lines: x, u=g(x), y=f(u)
2. Mark initial point on x-line
3. Show corresponding points on u-line and y-line
4. Animate small change dx
5. Show resulting changes du and dy
6. Display: dy/dx = (dy/du)·(du/dx)

---

## 3. Common Misconceptions

| Misconception | Research Evidence | How to Address |
|---------------|-------------------|----------------|
| **"Forgetting the inside derivative"** | Most common chain rule error: d/dx[sin(x²)] = cos(x²) | Mnemonic: "Outside derivative times inside derivative" — never forget the second part! |
| **"Using product rule for compositions"** | Confusing sin(x²) with sin(x)·x² | Explicitly compare: composition = "one inside the other," product = "side by side" |
| **"Linearity of trig functions"** | Thinking cos(2x) = 2cos(x), so d/dx[cos(2x)] = -2sin(x) | Show counterexample: cos(2·0) = 1, but 2cos(0) = 2. Trig is NOT linear. |
| **"Chain rule only for f(g(x)) form"** | Not recognizing (x²+1)⁵ as a composition | Any function applied to an expression requires chain rule. Power is a function too! |
| **"Forgetting chain rule with basic functions"** | Writing d/dx[e^(2x)] = e^(2x) instead of 2e^(2x) | Even exponentials need chain rule when the exponent isn't just "x" |
| **"Triple compositions are different"** | Not knowing how to handle sin²(3x) | Same rule applied repeatedly: d/dx[sin²(3x)] = 2sin(3x)·cos(3x)·3 |
| **"Weak understanding of composition"** | Not clear what "inside" and "outside" mean | Use function machine visualization: which function processes input first? |

### Misconception-Busting Exercises

1. **Composition vs. Product:**
   - f(x) = sin(x²) ← COMPOSITION: chain rule
   - g(x) = sin(x)·x² ← PRODUCT: product rule
   - h(x) = sin(x²)·cos(x) ← BOTH: chain rule AND product rule

2. **Don't Forget the Inside:**
   - WRONG: d/dx[cos(3x)] = -sin(3x)
   - RIGHT: d/dx[cos(3x)] = -sin(3x)·3 = -3sin(3x)

3. **Recognizing Hidden Compositions:**
   - √(x²+1) = (x²+1)^(1/2) ← Composition! Inside: x²+1, Outside: ()^(1/2)
   - 1/(x+1)³ = (x+1)^(-3) ← Composition! Inside: x+1, Outside: ()^(-3)

---

## 4. Recommended Pedagogical Approach

Based on this research, the Class 14 lesson should:

### Opening (5 min)
- Review: "We know how to differentiate sin(x) and x²"
- Challenge: "But what about sin(x²)? Is it cos(x²)? Let's find out!"
- Quick numerical check: compare actual slope to cos(x²) — they don't match!

### Understanding Composition (8 min)

**What is a Composite Function?**
- One function "inside" another
- f(g(x)): first apply g, then apply f to the result
- Example: sin(x²) means "first square, then take sine"

**Identifying Inside and Outside:**
- sin(x²): outside = sin, inside = x²
- (x²+1)⁵: outside = ()⁵, inside = x²+1
- e^(3x): outside = e^(), inside = 3x

### The Chain Rule: Visual Derivation (12 min)

**Number Line Model (3Blue1Brown approach):**
1. Three number lines: x, u, y
2. Let u = g(x) and y = f(u)
3. Change x by dx → u changes by du = g'(x)·dx
4. Change u by du → y changes by dy = f'(u)·du
5. So: dy/dx = f'(u)·g'(x) = f'(g(x))·g'(x)

**The Formula:**
d/dx[f(g(x))] = f'(g(x))·g'(x)

**Verbal Version:**
"Derivative of outside (evaluated at inside) times derivative of inside"

**Leibniz Notation:**
dy/dx = (dy/du)·(du/dx) — the du's "cancel" (genuinely, not just symbolically!)

### Worked Examples (12 min)

**Graduated Practice:**
1. d/dx[(x+1)⁴] = 4(x+1)³·1 = 4(x+1)³
2. d/dx[sin(3x)] = cos(3x)·3 = 3cos(3x)
3. d/dx[e^(x²)] = e^(x²)·2x = 2xe^(x²)
4. d/dx[√(x²+1)] = (1/2)(x²+1)^(-1/2)·2x = x/√(x²+1)
5. d/dx[sin²(x)] = 2sin(x)·cos(x) = sin(2x) (trig identity!)

**Common Error Alert:**
- Show: d/dx[sin(x²)] ≠ cos(x²) — you MUST include ·2x

### Multiple Rules Combined (8 min)

**Example: d/dx[x²·sin(3x)]**
- This is a PRODUCT of x² and sin(3x)
- sin(3x) itself requires CHAIN RULE
- Solution: 2x·sin(3x) + x²·cos(3x)·3 = 2x sin(3x) + 3x² cos(3x)

**Decision Process:**
1. What's the outermost operation? (Is it +, ×, ÷, or composition?)
2. Apply the appropriate rule
3. If any part is a composition, apply chain rule to that part

### Closing (5 min)
- Summary: Chain rule for compositions
- Key phrase: "Outside derivative times inside derivative"
- Exit ticket: Differentiate f(x) = cos(x³) and g(x) = (2x-1)⁵
- Preview: Implicit differentiation (chain rule with hidden derivatives)

### Key Principles Throughout

1. **Identification first:** Is it a composition? Where's the inside/outside?
2. **Never forget the inside derivative:** This is the #1 error
3. **Leibniz notation helps:** dy/dx = (dy/du)(du/dx) is memorable
4. **Rules combine:** Real functions often need multiple rules
5. **Practice builds fluency:** The chain rule must become automatic

---

## 5. AP Exam Alignment

### CED Topic Coverage
- **3.1:** The Chain Rule

### Mathematical Practices Emphasized
- **MP 1:** Implementing Mathematical Processes (applying chain rule correctly)
- **MP 2:** Connecting Representations (function composition as input-output chain)
- **MP 4:** Communication (correct notation, showing work)

### AP Exam Connection
- Chain rule appears in nearly every differentiation problem
- Often combined with product/quotient rules
- Common AP errors:
  - Forgetting the inside derivative
  - Misidentifying composition vs. product
  - Incomplete simplification
- Both calculator and non-calculator sections require fluency

### Fluency Goal
By the end of this class, students should:
- Instantly recognize composite functions
- Apply chain rule correctly every time
- Handle multi-layer compositions
- Combine chain rule with product/quotient rules

---

## Sources

- [3Blue1Brown: Visualizing the Chain Rule and Product Rule](https://www.3blue1brown.com/lessons/chain-rule-and-product-rule)
- [Khan Academy: Common Chain Rule Misunderstandings](https://www.khanacademy.org/math/ap-calculus-ab/ab-differentiation-2-new/ab-3-1a/v/common-chain-rule-misunderstandings)
- [Professor Leonard: Calculus 1 Playlist](https://www.youtube.com/@ProfessorLeonard)
- [Paul's Online Math Notes: Chain Rule](https://tutorial.math.lamar.edu/classes/calci/chainrule.aspx)
- [Math Mistakes: Common Chain Rule Errors](https://www.mathmistakes.info/mistakes/calculus/Examples/24/ccm.html)
- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
- [ResearchGate: Students' Common Mistakes in Basic Differentiation](https://www.researchgate.net/publication/326061481_Students'_common_mistakes_in_basic_differentiation_topics)
