---
name: build-a-course
description: Master workflow for research-driven curriculum development. Ensures artifacts are created in the correct order with proper validation at each stage. Automatically triggered when creating lesson plans, specs, or presentations.
---

# Build-a-Course Skill

## MANDATORY WORKFLOW

This skill defines the **required artifact hierarchy** for course development. Each level **MUST** exist before the next can be created.

```
RESEARCH: Best practices for curriculum design
    ↓
course-plan.md (Pedagogical philosophy, overall approach)
    ↓
SYLLABUS.md (Schedule + CED topic mapping)
    ↓
For each class:
    ↓
    research-{topic}.md (How do experts teach THIS concept?)
    ↓
    lesson-plan-{topic}.md (Learning objectives, pedagogical approach)
    ↓
    presentation-spec-{topic}.md (Technical specification)
    ↓
    presentation.html (Implementation)
```

---

## V&V Definitions (CRITICAL DISTINCTION)

| Term | Question | Measures | On Failure |
|------|----------|----------|------------|
| **Verification** | "Did we build the thing right?" | Efficiency | Fix the **code** |
| **Validation** | "Did we build the right thing?" | Effectiveness | Fix the **spec**, then update code |

### Why This Matters

- **Verification failure**: The presentation doesn't match the spec → Fix the presentation
- **Validation failure**: The spec doesn't achieve learning objectives → Fix the spec FIRST, then update the presentation

---

## Artifact Hierarchy

### Level 0: Course-Wide Artifacts

| Artifact | Purpose | Created Once |
|----------|---------|--------------|
| `curriculum-design-research.md` | Evidence base from pedagogy research | ✓ |
| `course-plan.md` | Pedagogical philosophy, overall approach | ✓ |
| `SYLLABUS.md` | Schedule, CED mapping, assessment structure | ✓ |
| `master-presentation-spec.md` | Technical design standards | ✓ |

### Level 1: Topic Research

| Artifact | Location | Contents |
|----------|----------|----------|
| `research-{topic}.md` | `class-N-topic/` | Expert teaching analysis, visualization patterns, misconceptions |

**Required research sources:**
- 3Blue1Brown (if relevant topic exists)
- Professor Leonard lecture analysis
- Khan Academy approach
- YouTube educator transcripts
- Textbook treatments
- Screenshots of effective visualizations

### Level 2: Lesson Plan

| Artifact | Location | Contents |
|----------|----------|----------|
| `lesson-plan-{topic}.md` | `class-N-topic/` | Learning objectives, class structure, differentiation |

**Lesson Plan Required Sections:**
1. Learning Objectives (specific, measurable)
2. Prior Knowledge Required
3. Common Misconceptions to Address
4. Class Structure with Timing
5. Rule of Four Balance (G, N, A, W coverage)
6. Assessment Strategy
7. Differentiation Notes

### Level 3: Presentation Spec

| Artifact | Location | Contents |
|----------|----------|----------|
| `presentation-spec-{topic}.md` | `class-N-topic/` | Slide-by-slide specification |

**Presentation Spec Required Sections:**
1. Overview (objectives, duration, CED topics)
2. Slide-by-slide breakdown with:
   - Slide number and title
   - Slide type (from vocabulary)
   - Content description
   - Visualization specifications (if any)
   - Speaker notes
3. Visualization specifications with:
   - Technology choice (D3/Desmos/GeoGebra)
   - Rationale for choice
   - Interactivity requirements
4. Appendix content (worked examples)

### Level 4: Presentation

| Artifact | Location | Contents |
|----------|----------|----------|
| `presentation.html` | `class-N-topic/` | Implementation following spec |

**Must use** `class-0-introduction/presentation.html` as structural template.

### Level 5: Review Log (Control Document)

| Artifact | Location | Contents |
|----------|----------|----------|
| `reviewlog.md` | `class-N-topic/` | Audit trail of all reviews and validations |

**Purpose:** Prevents re-reviewing presentations and provides accountability trail.

**Required columns:**
- Date
- Review Type (Technical Audit, Content Validation, Spec Verification, Full V&V)
- Commit Hash (of presentation.html being reviewed)
- Reviewer
- Result (PASS, FAIL, NEEDS-UPDATE)
- Notes

**Template:**
```markdown
# Review Log: [Topic Name]

## Class N | Unit U: [Unit Name]

| Date | Review Type | Commit | Reviewer | Result | Notes |
|------|-------------|--------|----------|--------|-------|
| YYYY-MM-DD | Technical Audit | abc1234 | Claude | PASS | TOC ✓, Fonts ✓, D3 ✓ |
| YYYY-MM-DD | Content vs Lesson Plan | abc1234 | Claude | PASS | All objectives covered |
| YYYY-MM-DD | Spec Verification | abc1234 | Claude | PASS | 22/22 slides match |
```

**Review Types:**
1. **Technical Audit** - Structural checks: TOC, fonts, slide types, D3 presence
2. **Content vs Lesson Plan** - Learning objectives achieved, misconceptions addressed
3. **Spec Verification** - Slide-by-slide match against presentation-spec
4. **Full V&V** - Complete validation and verification (all of the above)

---

## Blocking Rules

### BEFORE Creating a Lesson Plan

**REQUIRED:**
- [ ] `course-plan.md` exists
- [ ] `research-{topic}.md` exists for this class

**If missing:** Create research file first. Do NOT proceed without research.

### BEFORE Creating a Presentation Spec

**REQUIRED:**
- [ ] `lesson-plan-{topic}.md` exists for this class
- [ ] Lesson plan has specific learning objectives
- [ ] Lesson plan has Rule of Four balance specified

**If missing:** Create or complete lesson plan first.

### BEFORE Creating/Modifying a Presentation

**REQUIRED:**
- [ ] `presentation-spec-{topic}.md` exists for this class
- [ ] Spec has slide-by-slide breakdown
- [ ] Spec specifies visualization technologies

**If missing:** Create spec first. Do NOT YOLO presentations.

---

## Validation Gates

### Gate 1: Lesson Plan Validation

**Question:** Does the lesson plan achieve course goals?

**Checklist:**
- [ ] Learning objectives align with `course-plan.md` pedagogy
- [ ] Prior knowledge requirements are realistic
- [ ] Common misconceptions identified (from research)
- [ ] Rule of Four balance appropriate for topic
- [ ] Time allocations sum to 50 minutes
- [ ] Differentiation addresses both struggling and advanced students

**On Failure:** Revise lesson plan. Do NOT proceed to spec.

### Gate 2: Spec Validation

**Question:** Does the spec achieve lesson objectives?

**Checklist:**
- [ ] Every learning objective has corresponding slides
- [ ] Visualizations support stated pedagogical goals
- [ ] Rule of Four representations present per lesson plan
- [ ] Timing matches lesson plan structure
- [ ] Slide types appropriate for content
- [ ] Technology choices justified

**On Failure:** Revise spec. Do NOT proceed to presentation.

### Gate 3: Presentation Verification

**Question:** Does the presentation match the spec?

**Checklist:**
- [ ] Every slide in spec exists in presentation
- [ ] Slide content matches spec description
- [ ] Visualizations implement spec requirements
- [ ] Structural elements present (TOC, keyboard hints, etc.)
- [ ] Run `validate-presentation.sh` - must pass

**On Failure:** Fix presentation code.

### Gate 4: Presentation Validation

**Question:** Does the presentation achieve learning objectives?

**Checklist:**
- [ ] Learning objectives achievable through content
- [ ] Visualizations actually clarify (not confuse)
- [ ] Pacing appropriate for 50-minute class
- [ ] Rule of Four balance achieved
- [ ] Common misconceptions addressed
- [ ] Quality matches class-0 standard

**On Failure:** This is a spec problem. Return to Gate 2, revise spec, then update presentation.

### Gate 5: Review Log Update (MANDATORY)

**After ANY review or validation:**
1. Get current commit hash: `git log -1 --format=%h class-N-topic/presentation.html`
2. Add row to `reviewlog.md` with:
   - Today's date
   - Review type performed
   - Commit hash
   - Result (PASS/FAIL/NEEDS-UPDATE)
   - Specific notes about what was checked and any issues found
3. Commit the reviewlog.md update

**Purpose:** Creates audit trail so presentations don't need re-reviewing unless presentation.html changes.

---

## Research Guidelines

### What to Include in `research-{topic}.md`

```markdown
# Research: [Topic Name]

## Expert Teaching Analysis

### 3Blue1Brown
- Video title and timestamp references
- Key visualization techniques used
- "Aha moment" approaches
- [Screenshot or description of key visual]

### Professor Leonard
- Lecture approach
- How prerequisites are connected
- Example progression

### Khan Academy
- Module structure
- Interactive elements
- Practice problem patterns

### Other Sources
- Textbook approaches
- Research papers on teaching this topic

## Effective Visualization Patterns

| Pattern | Description | Why It Works |
|---------|-------------|--------------|
| ... | ... | ... |

## Common Misconceptions

| Misconception | Evidence | How to Address |
|---------------|----------|----------------|
| ... | ... | ... |

## Recommended Approach

Based on this research, the lesson should:
1. ...
2. ...
3. ...
```

### Research Quality Standards

**Minimum research for each topic:**
- At least 2 video sources analyzed
- At least 3 misconceptions identified
- At least 1 visualization pattern documented
- Recommended approach synthesizes sources

---

## Technology Selection Guidelines

### When to Use D3.js

- Custom interactive visualizations
- Animated mathematical relationships
- Data-driven graphics
- Riemann sums with adjustable parameters
- Secant-to-tangent animations

### When to Use Desmos

- Function graphing with sliders
- Student exploration activities
- Quick parameter effect demonstrations
- Multiple functions on same axes

### When to Use GeoGebra

- 3D visualizations
- Geometric constructions
- Polar/parametric curves
- Volumes of revolution

### When to Use Static Images

- Simple diagrams
- Reference material
- Non-interactive concepts

---

## Slide Type Vocabulary

**Use these exact classes - no others:**

| Purpose | Class | When to Use |
|---------|-------|-------------|
| Opening/Title | `slide-title` | First slide, unit openers |
| Key statement | `slide-statement` | Theorems, definitions |
| Bulleted list | `slide-list` | Steps, criteria, principles |
| Two columns | `slide-comparison` | Contrast, parallel concepts |
| Primary + secondary | `slide-two-part` | Definition + explanation |
| Visualization | `slide-visual` | D3, Desmos, GeoGebra |
| Practice | `slide-exercise` | Student activities |
| Rule of Four | `slide-gnaw` | G.N.A.W. quadrant layout |
| Worked problem | `slide-example` | Step-by-step solutions |
| Quote | `slide-quote` | Mathematician quotes |

**NEVER USE:** `slide-content` (not properly styled)

---

## Command Reference

### Check Artifact Status (All Classes)

```bash
.claude/skills/build-a-course/check-artifacts.sh status
```

Shows which artifacts exist for each class (research, lesson plan, spec, presentation).

### Check Prerequisites Before Creating Artifacts

```bash
# Can I create a lesson plan for this class?
.claude/skills/build-a-course/check-artifacts.sh can-lesson-plan class-9-derivative-definition

# Can I create a spec for this class?
.claude/skills/build-a-course/check-artifacts.sh can-spec class-9-derivative-definition

# Can I create a presentation for this class?
.claude/skills/build-a-course/check-artifacts.sh can-presentation class-9-derivative-definition
```

### Check Single Class Details

```bash
.claude/skills/build-a-course/check-artifacts.sh check class-9-derivative-definition
```

### Verify Presentation Structure

```bash
.claude/skills/presentation-design/validate-presentation.sh class-N-topic/presentation.html
```

---

## Example Workflow

### Creating Class 9: Derivative Definition

```
1. CHECK: Does course-plan.md exist? Yes ✓

2. CREATE: research-derivative-definition.md
   - Watch 3Blue1Brown "Derivative formulas through geometry"
   - Analyze Professor Leonard's "Definition of the Derivative" lecture
   - Document visualization patterns and misconceptions

3. VALIDATE RESEARCH:
   - ≥2 sources? ✓
   - ≥3 misconceptions? ✓
   - Visualization patterns? ✓

4. CREATE: lesson-plan-derivative-definition.md
   - Based on course-plan pedagogy + research findings
   - Define specific learning objectives
   - Plan Rule of Four balance

5. VALIDATE LESSON PLAN: (Gate 1)
   - Aligns with course goals? ✓
   - Misconceptions addressed? ✓
   - Timing works? ✓

6. CREATE: presentation-spec-derivative-definition.md
   - Slide-by-slide breakdown
   - Specify D3 visualization for secant→tangent
   - Include rationale from research

7. VALIDATE SPEC: (Gate 2)
   - Covers all learning objectives? ✓
   - Visualizations support goals? ✓

8. CREATE: presentation.html
   - Copy class-0 template
   - Implement per spec
   - Build D3 visualization

9. VERIFY PRESENTATION: (Gate 3)
   - Run validate-presentation.sh ✓
   - Matches spec? ✓

10. VALIDATE PRESENTATION: (Gate 4)
    - Achieves objectives? ✓
    - Quality matches class-0? ✓
```

---

## Anti-Patterns (NEVER DO THESE)

1. **YOLOing presentations** - Creating HTML without a spec
2. **Skipping research** - Making lesson plans without studying how experts teach the topic
3. **Generic slide-content** - Using slide-content class for everything
4. **Fixing validation failures in code** - When the spec is wrong, fix the spec first
5. **Ignoring misconceptions** - Not addressing known student errors
6. **Template-less builds** - Not using class-0 as structural base

---

## References

- `curriculum-design-research.md` - Pedagogical research foundation
- `course-plan.md` - Course-wide pedagogical approach
- `master-presentation-spec.md` - Technical design standards
- `class-0-introduction/presentation.html` - Structural template
