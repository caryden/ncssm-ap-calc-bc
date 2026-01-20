# Claude Instructions for NCSSM AP Calculus BC Course

## Project Overview

This repository contains HTML presentations and course materials for the **AP Calculus BC** course at NCSSM (North Carolina School of Science and Mathematics). The course follows the College Board's AP Calculus BC Course and Exam Description (CED) while emphasizing the **Rule of Four**: presenting every concept graphically, numerically, analytically, and verbally.

**Delivery Context:** Presentations are shown on ~80" TVs in classrooms AND streamed over Zoom to the Morganton campus. All design decisions must account for both viewing contexts.

---

## CRITICAL GUARDRAILS (READ FIRST)

### NEVER Delete Unstaged Files Without Backup

Before deleting any content files, ALWAYS:
1. Check `git status` to see what's uncommitted
2. If uncommitting content exists, create a commit first as a backup
3. Large deletions (>3 files) should ALWAYS be preceded by a commit checkpoint

### Template-Based Creation

When creating or rebuilding a presentation:
1. **ALWAYS use `class-0-introduction/presentation.html` as the structural template**
2. Copy the template, then modify content - do NOT write from scratch
3. Preserve ALL structural elements: fonts, TOC, keyboard hints, overlays, progress bar

### Required Validation

Before completing work on ANY presentation:
1. Run the validation script: `.claude/skills/presentation-design/validate-presentation.sh <file>`
2. ALL errors must be fixed before considering work complete
3. The script must pass (exit code 0)

### Slide Type Rules

**NEVER use `slide-content` as a catch-all.** The shared CSS does not properly style generic `slide-content` slides.

Use the correct semantic types:
- Lists → `slide-list`
- Two columns → `slide-comparison`
- Definition + explanation → `slide-two-part`
- Key message → `slide-statement`
- Visualizations → `slide-visual`
- Student practice → `slide-exercise`

### Quality Standard: Class 0

Class 0 (`class-0-introduction/presentation.html`) is the gold standard. Any new or rebuilt presentation should be visually indistinguishable in structure and polish from Class 0.

---

## Course Development Workflow (MANDATORY)

When working on this course, you **MUST** follow the build-a-course skill workflow.

**See:** `.claude/skills/build-a-course/SKILL.md`

### The Artifact Hierarchy

Each level **MUST** exist before the next can be created:

```
course-plan.md                  (Pedagogical philosophy)
    ↓
research-{topic}.md             (Expert teaching analysis)
    ↓
lesson-plan-{topic}.md          (Learning objectives, structure)
    ↓
presentation-spec-{topic}.md    (Technical specification)
    ↓
presentation.html               (Implementation)
```

### Blocking Rules

| Before Creating... | You MUST Have... |
|--------------------|------------------|
| Lesson plan | `course-plan.md` + `research-{topic}.md` |
| Presentation spec | `lesson-plan-{topic}.md` |
| Presentation HTML | `presentation-spec-{topic}.md` |

**DO NOT "YOLO" presentations.** Every presentation must be built from a spec.

### V&V at Each Stage

| Check | Type | Question | On Failure |
|-------|------|----------|------------|
| Lesson plan valid? | Validation | Does it achieve course goals? | Revise lesson plan |
| Spec valid? | Validation | Does it achieve lesson objectives? | Revise spec |
| Presentation matches spec? | Verification | Did we build it right? | Fix presentation |
| Presentation achieves objectives? | Validation | Did we build the right thing? | Revise spec, then presentation |

### Research Requirements

Before creating a lesson plan, you need `research-{topic}.md` with:
- Analysis of at least 2 expert teaching sources (3Blue1Brown, Professor Leonard, etc.)
- At least 3 common misconceptions identified
- At least 1 effective visualization pattern documented
- Recommended pedagogical approach

### Key Documents

| Document | Purpose |
|----------|---------|
| `curriculum-design-research.md` | Evidence base from pedagogy research |
| `course-plan.md` | Pedagogical philosophy for entire course |
| `SYLLABUS.md` | Schedule + CED topic mapping |
| `master-presentation-spec.md` | Technical design standards |

---

## Critical Specification Files

### 1. `master-presentation-spec.md` (READ FIRST)

**Purpose:** The master design specification that governs ALL presentations.

**When to read:**
- Before creating or modifying ANY presentation
- When making styling decisions
- When implementing D3/Desmos/GeoGebra visualizations
- When doing code review

**Key sections:**
- **Color Palette** - NCSSM brand colors, calculus theme colors, CSS variables
- **Typography** - Font families, type scale, font loading
- **Minimum Font Sizes** - CRITICAL for classroom readability
- **Layout System** - Slide types and their purposes
- **Shared Resources** - How to use shared/styles.css and shared/presentation.js
- **Keyboard Navigation** - Standard shortcuts (T, A, S, F, 0-9, arrows)
- **Calculus Unit Theme Colors** - Color coding for the 10 units

### 2. `SYLLABUS.md`

**Purpose:** Course schedule, learning objectives, and class topics.

**When to read:**
- To understand the overall course structure
- To see which CED topics map to which classes
- For context about the AP exam and assessment

### 3. Class-Specific Specs (`class-N-topic/presentation-spec-*.md`)

**Purpose:** Detailed specifications for each individual presentation.

**When to read:**
- Before modifying a specific class presentation
- To understand the intended slide content and flow
- To see which visualizations are expected

### 4. Lesson Plans (`class-N-topic/lesson-plan-*.md`)

**Purpose:** Teaching notes and activity instructions for instructors.

**When to read:**
- To understand the pedagogical intent
- For context about in-class exercises
- When the presentation content seems unclear

---

## Minimum Font Size Requirements (CRITICAL)

**These presentations must be readable from the back of a classroom AND over Zoom.**

| Element Type | Minimum Size | Notes |
|--------------|--------------|-------|
| Titles/Headlines | `2.5rem` (40px) | Slide titles, section headers |
| Primary Content | `1.5rem` (24px) | Main text, bullet points |
| Secondary Content | `1.25rem` (20px) | Supporting text |
| Labels & Captions | `1.25rem` (20px) | **Chart labels, D3 text, axis labels** |
| Absolute Minimum | `1rem` (16px) | Only non-essential metadata |

### Code Review Rules

```javascript
// REJECT - Too small for classroom
.attr('font-size', '12px')
.attr('font-size', '14px')
.attr('font-size', '0.8rem')

// ACCEPT - Classroom readable
.attr('font-size', '1rem')      // Minimum
.attr('font-size', '1.25rem')   // Preferred for labels
.attr('font-size', '1.5rem')    // Body text
```

**Always use `rem` units, never small `px` values for D3 visualizations.**

---

## Shared Resources

### `shared/styles.css`

Common CSS for all presentations including:
- Slide type layouts (`.slide-title`, `.slide-statement`, `.slide-content`, `.slide-visual`, `.slide-quote`, `.slide-list`, `.slide-two-part`, `.slide-comparison`)
- TOC and Appendix overlay styles
- Progress bar and navigation UI
- Animation keyframes
- Responsive breakpoints

**All slides use flexbox centering. Content should be centered both vertically and horizontally with balanced whitespace.**

### `shared/presentation.js`

Navigation and interaction logic including:
- Keyboard navigation (arrows, T for TOC, A for Appendix, S for Syllabus, F for fullscreen)
- TOC overlay (auto-generated from slide data attributes)
- Appendix overlay navigation
- Slide animations via `animateSlide()` function
- Hash navigation for direct linking to slides

**Custom D3 visualizations should override `window.Presentation.goToSlide` to trigger drawing on slide entry.**

---

## Calculus-Specific Visualization Guidelines

### The Rule of Four

Every major concept should be presented in four ways:
1. **Graphically** (G) - Visual representation, graphs, diagrams
2. **Numerically** (N) - Tables, numerical approximations
3. **Analytically** (A) - Algebraic/symbolic representation
4. **Verbally** (W) - Written/spoken description

Use the mnemonic **G.N.A.W.** when designing slides.

### Interactive Visualization Tools

**D3.js** - For custom, animated visualizations
- Riemann sums with adjustable rectangles
- Derivative as slope of tangent line
- Related rates animations
- Series convergence visualizations

**Desmos** - For graphing and function exploration
- Embed using `<iframe>` with Desmos Calculator API
- Use for student exploration activities
- Great for showing parameter effects with sliders

**GeoGebra** - For geometric constructions and 3D
- Polar and parametric curves
- Volume of revolution visualizations
- Vector-valued functions in 3D

### Example: Derivative Visualization

```javascript
// Interactive visualization: Show how secant line approaches tangent
function drawDerivativeViz() {
    const container = document.getElementById('derivative-viz');
    if (!container || container.querySelector('svg')) return;

    const width = 600;
    const height = 400;

    const svg = d3.select(container)
        .append('svg')
        .attr('viewBox', `0 0 ${width} ${height}`)
        .attr('preserveAspectRatio', 'xMidYMid meet');

    // Draw function curve
    // Draw moveable secant line
    // Add slider for delta-x
    // Show slope calculation updating in real-time

    // All text must be 1.25rem minimum!
    svg.append('text')
        .attr('font-size', '1.25rem')
        .text('Slope = ...');
}
```

### Common Calculus Visualizations

| Topic | Visualization Type | Tool |
|-------|-------------------|------|
| Limits | Approaching value animation | D3.js |
| Derivatives | Tangent line slider | D3.js/Desmos |
| Riemann Sums | Interactive rectangles | D3.js |
| FTC | Area accumulation | D3.js |
| Related Rates | Animated diagrams | D3.js |
| Optimization | 3D surface/contour | GeoGebra |
| Volumes | Revolution animation | GeoGebra |
| Polar Curves | r = f(θ) plotter | Desmos |
| Taylor Series | Polynomial approximation | D3.js/Desmos |
| Convergence | Series partial sums | D3.js |

---

## Slide Types and When to Use Them

| Slide Type | Class | Use For |
|------------|-------|---------|
| `slide-title` | Opening slide | Unit/class title, branding |
| `slide-statement` | Key message | Theorems, definitions, key insights |
| `slide-content` | Bullet points | Lists, steps, key points |
| `slide-visual` | Visualizations | D3 charts, Desmos embeds, diagrams |
| `slide-quote` | Attributed quotes | Mathematician quotes |
| `slide-list` | Lists with wrapper | Numbered steps, criteria |
| `slide-two-part` | Primary + secondary | Definition + explanation |
| `slide-comparison` | Two columns | Before/after, different approaches |
| `slide-exercise` | Interactive | Student practice, exploration |
| `slide-example` | Worked problems | Step-by-step solutions |

---

## D3 Visualization Guidelines

1. **Always read `master-presentation-spec.md`** before creating visualizations
2. **Use theme colors** from the spec (CSS custom properties or hex values)
3. **Font sizes must be `1.25rem` minimum** for all labels and text
4. **Use `rem` units** instead of `px` for scalability
5. **Make visualizations fully responsive** (see Responsive D3 section in master spec)
6. **Override `goToSlide`** to trigger visualization drawing:

```javascript
const originalGoToSlide = window.Presentation.goToSlide;
window.Presentation.goToSlide = function(n) {
    originalGoToSlide(n);
    if (n === 10) setTimeout(drawMyVisualization, 300);
};
```

### Responsive D3 Pattern (CRITICAL)

All D3 visualizations must be fully responsive:

```javascript
function drawVisualization() {
    const container = document.getElementById('my-viz');
    if (!container || container.querySelector('svg')) return;

    // Define logical coordinate space (viewBox dimensions)
    const width = 700;
    const height = 500;

    // Create responsive SVG
    const svg = d3.select(container)
        .append('svg')
        .attr('viewBox', `0 0 ${width} ${height}`)
        .attr('preserveAspectRatio', 'xMidYMid meet');

    // Calculate all positions as proportions
    const scale = Math.min(width, height);
    const center = { x: width / 2, y: height / 2 };
    const nodeSize = scale * 0.08;
    const fontSize = scale * 0.03;

    // Draw elements using proportional values
    // All font sizes: Math.max(fontSize, 14) for minimum readability
}
```

---

## File Structure

```
ncssm-ap-calc-bc/
├── CLAUDE.md                        # This file
├── curriculum-design-research.md    # Pedagogy research evidence
├── course-plan.md                   # Pedagogical philosophy
├── master-presentation-spec.md      # Master design spec (READ FIRST)
├── SYLLABUS.md                      # Course schedule
├── index.html                       # Course homepage/syllabus
├── shared/
│   ├── styles.css                  # Common CSS
│   └── presentation.js             # Navigation logic
├── .claude/
│   └── skills/
│       ├── build-a-course/         # Master workflow skill
│       │   └── SKILL.md
│       └── presentation-design/    # Presentation validation
│           ├── SKILL.md
│           └── validate-presentation.sh
└── class-{n}-{topic}/
    ├── presentation.html           # The actual presentation
    ├── presentation-spec-*.md      # Class-specific spec
    ├── lesson-plan-*.md            # Teaching notes
    └── research-*.md               # Topic research (if exists)
```

---

## Common Tasks

### Modifying a Presentation

1. Read `master-presentation-spec.md` for design guidelines
2. Read the class-specific `presentation-spec-*.md`
3. Make changes following the minimum font size rules
4. Test that content is centered and readable
5. Verify D3 visualizations use `1.25rem`+ font sizes

### Adding a New Visualization

1. Check `master-presentation-spec.md` for color palette and animation timings
2. Decide on tool: D3.js (custom), Desmos (graphing), GeoGebra (3D/geometry)
3. Use theme colors from CSS variables or documented hex values
4. Set all text to `1.25rem` minimum
5. Use the `goToSlide` override pattern to trigger drawing
6. Test on an actual large display if possible

### Code Review Checklist

- [ ] No font sizes below `1rem` (16px)
- [ ] D3/Desmos labels use `1.25rem` or larger
- [ ] Using `rem` units, not small `px` values
- [ ] Slides are centered (flexbox layout working)
- [ ] Colors match the theme palette
- [ ] Keyboard navigation works (T, A, S, arrows)
- [ ] Rule of Four: Concept shown multiple ways
- [ ] Interactive elements are intuitive

---

## Calculus Unit Theme Colors

Each unit has a theme color for visual organization:

| Unit | Topic | Color | Variable |
|------|-------|-------|----------|
| 1 | Limits and Continuity | NCSSM Blue `#356093` | `--unit-1-limits` |
| 2 | Differentiation Fundamentals | Purple `#7c3aed` | `--unit-2-diff-fund` |
| 3 | Advanced Differentiation | Violet `#8b5cf6` | `--unit-3-diff-adv` |
| 4 | Contextual Applications | Emerald `#059669` | `--unit-4-context` |
| 5 | Analytical Applications | Teal `#0d9488` | `--unit-5-analysis` |
| 6 | Integration | Gold `#d4a028` | `--unit-6-integration` |
| 7 | Differential Equations | Orange `#ea580c` | `--unit-7-diffeq` |
| 8 | Applications of Integration | Rose `#e11d48` | `--unit-8-int-apps` |
| 9 | Parametric/Polar/Vectors | Cyan `#0891b2` | `--unit-9-param` |
| 10 | Infinite Series | Indigo `#4f46e5` | `--unit-10-series` |

Each class presentation uses its unit's theme color as `--theme-color` for accents.

---

## Mathematical Notation

### LaTeX/MathJax

Include MathJax for mathematical notation:

```html
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
```

### Inline Math Examples

```html
<!-- Derivative definition -->
<p>\( f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h} \)</p>

<!-- Fundamental Theorem -->
<p>\( \int_a^b f(x)\,dx = F(b) - F(a) \)</p>

<!-- Taylor Series -->
<p>\( f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n \)</p>
```

### Font Size for Math

Math expressions should be at least `1.5rem` for primary content:

```css
.math-display {
    font-size: 1.75rem;
}
.math-inline {
    font-size: 1.5rem;
}
```

---

## AP Exam Alignment

### CED Topic Numbers

Every slide should reference the relevant CED topic number(s) for AP alignment:

```html
<div class="slide" data-slide="5" data-ced="2.1, 2.2" data-title="Defining the Derivative">
```

### AP Practice Integration

- Include AP-style multiple choice questions where appropriate
- Model free-response question format in examples
- Use AP rubric language for justifications
- Practice calculator vs. non-calculator contexts

### Common AP Exam Errors to Address

- Dropping limit notation prematurely
- Forgetting +C in indefinite integrals
- Sign errors with chain rule
- Not showing sufficient justification
- Rounding too early

---

## Accessibility Requirements

1. **Color contrast** - Minimum 4.5:1 ratio for text
2. **Focus indicators** - Visible focus states for keyboard nav
3. **Alt text** - All visualizations described
4. **Semantic HTML** - Proper heading hierarchy
5. **Reduced motion** - Respect `prefers-reduced-motion`

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

---

## Skills and Tools

### Build-a-Course Skill (MASTER WORKFLOW)

**Location:** `.claude/skills/build-a-course/SKILL.md`

This is the **mandatory** workflow for course development. It defines:
- Required artifact hierarchy (research → lesson plan → spec → presentation)
- Blocking rules (what must exist before proceeding)
- Validation and verification gates
- Research requirements for each topic

**Always follow this workflow when creating or modifying course content.**

### Presentation Design Skill

**Location:** `.claude/skills/presentation-design/SKILL.md`

Provides presentation-specific guidance:
- Structural template requirements
- Validation checklist
- Slide type vocabulary

The skill is automatically activated when working on presentation files.

### Validation Script (Verification)

Run before completing any presentation work:
```bash
.claude/skills/presentation-design/validate-presentation.sh class-N-topic/presentation.html
```

This script checks for:
- Google Fonts loading
- TOC overlay presence
- Keyboard hints
- Proper slide types (no generic `slide-content`)
- Overlay backdrop

**The script must pass before work is considered complete.**

---

## Sources and Attribution

- [College Board AP Calculus BC CED](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
- [NCSSM Branding Kit](https://brand.ncssm.edu/)
- [3Blue1Brown Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [Paul's Online Math Notes](https://tutorial.math.lamar.edu/)
