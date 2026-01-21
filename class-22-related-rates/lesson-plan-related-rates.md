# Lesson Plan: Related Rates Problem Solving

## Class 22 | Unit 4: Contextual Applications of Differentiation

---

## Overview

This session extends related rates to more complex scenarios involving Pythagorean theorem, similar triangles, and trigonometric relationships. Students will learn to identify which geometric relationship to use and practice solving classic problems like the sliding ladder, shadow problems, and angle of elevation. The emphasis is on strategy selection and careful setup.

**CED Topic:** 4.5 - Solving Related Rates Problems

---

## Learning Objectives

By the end of this class, students will be able to:

1. Identify which geometric relationship (Pythagorean, similar triangles, or trig) applies to a problem
2. Solve related rates problems involving the Pythagorean theorem
3. Apply similar triangles to shadow and conical tank problems
4. Handle related rates problems involving changing angles
5. Correctly manage constants vs. variables in problem setup
6. Verify answers make physical sense (sign and magnitude)

---

## Prior Knowledge Required

- Four-step related rates method (Class 21)
- Implicit differentiation (Class 16)
- Pythagorean theorem
- Similar triangles and proportions
- Basic trigonometry (sin, cos, tan and their derivatives)

---

## Materials Needed

- Presentation slides with animated diagrams
- Graphing calculators
- Problem type reference card (when to use which approach)
- Practice problem set with mixed types
- Exit ticket slips

---

## Class Structure (50 minutes)

### Opening (5 min)

**Review and Preview**

Quick review of the four-step method from Class 21:
1. Draw and label
2. Write equation relating quantities
3. Differentiate with respect to time
4. Substitute and solve

**Today's Focus:** The hardest part is often Step 2 - choosing the right equation. Today we learn three major geometric patterns:
- **Pythagorean theorem:** Right triangles (ladder, dock)
- **Similar triangles:** Proportional shapes (shadow, cone)
- **Trigonometry:** Changing angles (elevation, searchlight)

**Challenge Problem:**
> A 10-foot ladder slides down a wall. If the base moves away at 2 ft/s, how fast is the top sliding down when the base is 6 feet from the wall?

### Pythagorean Theorem Problems (12 min)

**The Sliding Ladder**

**Step 1: Draw and label**
- Ladder of length 10 ft against a wall
- x = distance from wall to base of ladder
- y = height of top of ladder on wall
- Given: $\frac{dx}{dt} = 2$ ft/s (base moving away)
- Find: $\frac{dy}{dt}$ when x = 6 ft

**Step 2: Write equation**

The ladder, wall, and ground form a right triangle:
$$x^2 + y^2 = 100$$

Note: The ladder length (10 ft) is CONSTANT, so we use the number directly.

**Step 3: Differentiate with respect to t**
$$2x\frac{dx}{dt} + 2y\frac{dy}{dt} = 0$$

Note: The right side is 0 because $\frac{d}{dt}[100] = 0$ (constant).

**Step 4: Substitute and solve**

When x = 6: $6^2 + y^2 = 100$ → $y^2 = 64$ → $y = 8$ ft

Substitute into the differentiated equation:
$$2(6)(2) + 2(8)\frac{dy}{dt} = 0$$
$$24 + 16\frac{dy}{dt} = 0$$
$$\frac{dy}{dt} = -\frac{24}{16} = -1.5 \text{ ft/s}$$

**Answer:** The top is sliding DOWN at 1.5 ft/s. (Negative because y is decreasing.)

**Key Insight:** The ladder length is constant, so its derivative is 0. Only x and y change.

**Variation: Boat Approaching Dock**

A boat is pulled toward a dock by a rope attached to the bow. The rope is wound in at 2 ft/s. If the dock is 6 ft above the water, how fast is the boat approaching the dock when 10 ft of rope is out?

*Same Pythagorean setup with rope as hypotenuse.*

### Similar Triangles Problems (12 min)

**Shadow Problem**

A 6-foot person walks away from a 15-foot lamppost at 4 ft/s. How fast is the tip of their shadow moving?

**Step 1: Draw and label**
- Lamppost height: 15 ft (constant)
- Person height: 6 ft (constant)
- x = distance from person to lamppost
- s = length of shadow
- Given: $\frac{dx}{dt} = 4$ ft/s
- Find: How fast is shadow tip moving? That's $\frac{d}{dt}(x + s)$

**Step 2: Use similar triangles**

Triangle 1: Lamppost and total distance (x + s)
Triangle 2: Person and shadow (s)

By similar triangles:
$$\frac{15}{x + s} = \frac{6}{s}$$

Cross multiply:
$$15s = 6(x + s)$$
$$15s = 6x + 6s$$
$$9s = 6x$$
$$s = \frac{2}{3}x$$

**Step 3: Differentiate**
$$\frac{ds}{dt} = \frac{2}{3}\frac{dx}{dt}$$

**Step 4: Substitute**
$$\frac{ds}{dt} = \frac{2}{3}(4) = \frac{8}{3} \text{ ft/s}$$

Shadow tip moves at: $\frac{dx}{dt} + \frac{ds}{dt} = 4 + \frac{8}{3} = \frac{20}{3}$ ft/s

**Conical Tank Problem**

Water drains from a conical tank at 3 m³/min. The tank has height 10 m and top radius 5 m. How fast is the water level dropping when h = 4 m?

**Step 1:**
- Given: $\frac{dV}{dt} = -3$ m³/min (negative because draining)
- Find: $\frac{dh}{dt}$ when h = 4 m

**Step 2:** Volume of cone: $V = \frac{1}{3}\pi r^2 h$

Problem: Two variables (r and h). Use similar triangles!

$$\frac{r}{h} = \frac{5}{10} = \frac{1}{2} \implies r = \frac{h}{2}$$

Substitute:
$$V = \frac{1}{3}\pi \left(\frac{h}{2}\right)^2 h = \frac{\pi h^3}{12}$$

**Step 3:** Differentiate:
$$\frac{dV}{dt} = \frac{\pi h^2}{4} \cdot \frac{dh}{dt}$$

**Step 4:** Substitute h = 4 and dV/dt = -3:
$$-3 = \frac{\pi (16)}{4} \cdot \frac{dh}{dt}$$
$$\frac{dh}{dt} = \frac{-3}{4\pi} = -\frac{3}{4\pi} \text{ m/min}$$

**Answer:** The water level is dropping at $\frac{3}{4\pi}$ m/min (about 0.24 m/min).

### Trigonometric Problems (8 min)

**Angle of Elevation**

A balloon rises at 10 ft/s from a point on the ground. An observer stands 500 ft away. How fast is the angle of elevation changing when the balloon is 500 ft high?

**Step 1:**
- h = height of balloon
- θ = angle of elevation
- Given: $\frac{dh}{dt} = 10$ ft/s, horizontal distance = 500 ft (constant)
- Find: $\frac{d\theta}{dt}$ when h = 500 ft

**Step 2:** Use trigonometry:
$$\tan(\theta) = \frac{h}{500}$$

**Step 3:** Differentiate (remember: $\frac{d}{dt}[\tan\theta] = \sec^2\theta \cdot \frac{d\theta}{dt}$):
$$\sec^2(\theta) \cdot \frac{d\theta}{dt} = \frac{1}{500} \cdot \frac{dh}{dt}$$

**Step 4:** When h = 500: $\tan\theta = 1$, so $\theta = \frac{\pi}{4}$ and $\sec^2\theta = 2$

$$2 \cdot \frac{d\theta}{dt} = \frac{1}{500}(10)$$
$$\frac{d\theta}{dt} = \frac{10}{1000} = \frac{1}{100} \text{ rad/s}$$

**Answer:** The angle is increasing at 0.01 rad/s (about 0.57°/s).

### Strategy Guide and Practice (8 min)

**Which Approach to Use?**

| Situation | Relationship | Example |
|-----------|--------------|---------|
| Right angle in setup | Pythagorean theorem | Ladder, dock, kite |
| Proportional shapes | Similar triangles | Shadow, cone, light |
| Angle changing | Trigonometric | Elevation, searchlight |

**Mixed Practice (students work in pairs):**

1. A kite is 100 ft high and moving horizontally at 8 ft/s. How fast is the string being let out when 200 ft of string is out? *(Pythagorean)*

2. A conical pile of sand has height equal to its radius. Sand is added at 2 ft³/min. How fast is the height increasing when h = 3 ft? *(Similar triangles: r = h)*

3. A lighthouse beam rotates at 2 rev/min. How fast is the beam moving along a straight shore 1 mile away? *(Trigonometric)*

### Closing (5 min)

**Summary:**
- Choose equation based on geometry:
  - Right triangle → Pythagorean
  - Proportional shapes → Similar triangles
  - Angle involved → Trigonometry
- Constants have derivative = 0
- Check your answer: Does the sign make sense? Is the magnitude reasonable?

**Exit Ticket:**
Identify which approach (Pythagorean, similar triangles, or trig) you would use for:
1. A searchlight rotates, illuminating a wall.
2. A ladder slides down a wall.
3. A person's shadow lengthens as they walk from a streetlight.

**Preview:** Next class covers linearization and L'Hospital's Rule - powerful approximation tools.

---

## Differentiation Strategies

### For students who need more support:
- Provide the strategy guide as a reference card
- Start each problem type with identical setup before variations
- Practice diagram labeling separately before full problems
- Use dimensional analysis to check answers make sense

### For advanced students:
- Challenge: Two cars leave an intersection at the same time, one going north at 30 mph, one going east at 40 mph. How fast is the distance between them changing after 2 hours?
- Explore: Why does the ladder appear to accelerate as it falls? (dy/dt increases in magnitude as y decreases)
- Research: Related rates in 3D - how would the ladder problem change?

---

## Common Misconceptions to Address

1. **"Ladder length changes"**
   - Address: The LADDER is constant (its length doesn't change). Only the base distance x and height y change. Label the ladder with a number, not a variable.

2. **"Similar triangles have equal sides"**
   - Address: Similar triangles have PROPORTIONAL sides (ratios are equal), not equal sides. Write: $\frac{a}{b} = \frac{c}{d}$

3. **"All variables must be positive"**
   - Address: If the top of the ladder moves DOWN, dy/dt is NEGATIVE. Negative rates mean decreasing quantities.

4. **"Use quotient rule for similar triangle ratios"**
   - Address: After setting up the proportion, cross-multiply to get a simpler equation before differentiating.

5. **"Angles don't need derivatives"**
   - Address: If θ changes, we must differentiate it: $\frac{d}{dt}[\tan\theta] = \sec^2\theta \cdot \frac{d\theta}{dt}$

6. **"One rate determines another directly"**
   - Address: Rates are related THROUGH an equation, not directly equal. The relationship depends on the geometry.

---

## Assessment Notes

- Exit ticket checks strategy identification (critical thinking skill)
- Monitor diagram quality during practice - poor diagrams lead to errors
- Check for correct handling of constants (not differentiating them)
- Note which students struggle with which problem type

---

## Connections

**Prior knowledge:**
- Four-step method (Class 21)
- Implicit differentiation (Class 16)
- Geometry (Pythagorean theorem, similar triangles)
- Trigonometry (tan, sec, derivatives)

**Future connections:**
- Linearization (Class 23)
- Optimization (Unit 5)
- Related rates FRQs on AP exam
- Physics applications (kinematics, optics)

---

## AP Exam Notes

- Related rates FRQs often involve Pythagorean theorem or similar triangles
- Must show clear work for partial credit:
  - Diagram (helpful but not required)
  - Equation setup
  - Differentiation with chain rule terms
  - Correct answer with units
- Common prompts: ladder problems, shadow problems, draining/filling tanks
- Students must justify why constants don't appear in derivative
