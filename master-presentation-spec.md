# Master Presentation Specification

## Overview
This document defines the common styling, fonts, layout, and technical guidelines for all HTML presentations in the AP Calculus BC course. Each class-specific presentation spec should reference this document for consistency.

**Brand Integration:** This spec combines NCSSM's official brand guidelines with a modern, mathematics-focused aesthetic appropriate for calculus education.

**Pedagogical Foundation:** All presentations follow the **Rule of Four** (G.N.A.W.) - every concept presented Graphically, Numerically, Analytically, and Verbally.

---

## NCSSM Brand Reference

Based on [NCSSM's official branding kit](https://brand.ncssm.edu/):

- **Primary Colors:** Royal Blue and Gray (School colors: "Royal and Gray")
- **Brand Blue:** Chambray Blue `#356093`
- **Typography:** Montserrat (primary), Georgia (secondary), Verdana (fallback)
- **Mascot:** Unicorns
- **Style:** Clean, professional, academically rigorous with innovation energy

---

## Design Philosophy

### NCSSM + Mathematics Aesthetic
- **Dark mode** primary design - reduces eye strain, modern feel, focuses attention
- **NCSSM Royal Blue** as primary accent - connects to school identity
- **Bold, confident typography** - using Montserrat for headings, Georgia for body
- **Dynamic animations** - purposeful motion that reinforces mathematical concepts
- **Clean, minimal chrome** - mathematics is the hero
- **Accessible** - keyboard navigation, high contrast, semantic HTML

### Visual Principles
1. **Contrast** - Dark backgrounds with NCSSM blue and bright text
2. **Hierarchy** - Use scale (3.5rem → 1.5rem) not just color for importance
3. **Whitespace** - Generous padding, centered max-width containers
4. **Consistency** - Same patterns across all presentations
5. **Academic Credibility** - Professional feel befitting NCSSM's reputation
6. **Mathematical Clarity** - Equations and visualizations are prominent and readable

---

## Color Palette

```css
:root {
  /* ===== NCSSM Brand Colors ===== */
  --ncssm-blue: #356093;           /* Official Chambray Blue */
  --ncssm-blue-light: #4a7ab8;     /* Lighter variant */
  --ncssm-blue-dark: #264570;      /* Darker variant */
  --ncssm-blue-glow: rgba(53, 96, 147, 0.4);
  --ncssm-gray: #6b7280;           /* Brand gray */
  --ncssm-gray-light: #9ca3af;     /* Light gray */
  --ncssm-gray-dark: #4b5563;      /* Dark gray */

  /* ===== Backgrounds (Dark Mode) ===== */
  --bg-primary: #0c1220;           /* Main slide - deep blue-black */
  --bg-secondary: #141c2e;         /* Cards, sidebar - blue-tinted dark */
  --bg-tertiary: #1c2640;          /* Nested content, code blocks */
  --bg-hover: #243352;             /* Interactive hover states */

  /* ===== Text ===== */
  --text-primary: #ffffff;         /* Main headings, emphasis */
  --text-secondary: #b8c4d6;       /* Body text, descriptions (blue-tinted) */
  --text-tertiary: #6b7a94;        /* Captions, metadata */
  --text-dim: #4a5568;             /* Inactive, placeholder */

  /* ===== Primary Accent (NCSSM Blue) ===== */
  --accent: #356093;               /* Primary accent - NCSSM Chambray Blue */
  --accent-bright: #4a7ab8;        /* Bright variant for hover/emphasis */
  --accent-glow: rgba(53, 96, 147, 0.4);

  /* ===== Secondary Accent (Mathematical Gold) ===== */
  --accent-secondary: #d4a028;     /* Gold - highlights, important results */
  --accent-secondary-bright: #e8b84a;
  --accent-secondary-glow: rgba(212, 160, 40, 0.3);

  /* ===== Status Colors ===== */
  --success: #22c55e;              /* Green - correct, convergent */
  --warning: #f59e0b;              /* Amber - caution, attention */
  --danger: #ef4444;               /* Red - error, divergent */
  --info: #356093;                 /* NCSSM Blue - information */

  /* ===== Calculus-Specific Colors ===== */
  --color-function: #60a5fa;       /* Blue - f(x) curves */
  --color-derivative: #f97316;     /* Orange - f'(x) curves */
  --color-integral: #22c55e;       /* Green - area, accumulation */
  --color-tangent: #fbbf24;        /* Yellow - tangent lines */
  --color-secant: #a78bfa;         /* Purple - secant lines */
  --color-limit: #ec4899;          /* Pink - limit values */

  /* ===== Gradients ===== */
  --gradient-hero: linear-gradient(135deg, #356093 0%, #d4a028 100%);
  --gradient-ncssm: linear-gradient(135deg, #264570 0%, #4a7ab8 100%);
  --gradient-text: linear-gradient(135deg, #ffffff 0%, #d4a028 100%);
  --gradient-dark: linear-gradient(180deg, #0c1220 0%, #141c2e 100%);
}
```

---

## Typography

### Fonts (NCSSM Brand Guidelines)
```css
/* Primary font - headings and display (NCSSM: Montserrat) */
--font-display: 'Montserrat', Verdana, -apple-system, BlinkMacSystemFont, sans-serif;

/* Secondary font - body text (NCSSM: Georgia) */
--font-body: 'Georgia', 'Times New Roman', serif;

/* Monospace - numbers, data, code */
--font-mono: 'JetBrains Mono', 'Fira Code', monospace;

/* Math - for mathematical expressions (via MathJax) */
--font-math: 'STIX Two Math', 'Cambria Math', serif;
```

### Font Loading
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">

<!-- MathJax for mathematical notation -->
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
```

**Note:** Georgia is a system font and doesn't require loading. The combination of Montserrat (modern, geometric sans-serif) for headings with Georgia (classic, readable serif) for body text creates the professional-yet-innovative feel appropriate for NCSSM.

### Type Scale
```css
/* Hero/Title */
.slide-title h1 {
  font-size: 4rem;
  font-weight: 800;
  line-height: 1.1;
  letter-spacing: -0.02em;
}

/* Major Statement / Theorem */
.statement {
  font-size: 3.5rem;
  font-weight: 700;
  line-height: 1.2;
}

/* Section Heading */
.slide h2 {
  font-size: 2.5rem;
  font-weight: 600;
  line-height: 1.3;
}

/* Primary Text */
.primary-text {
  font-size: 2rem;
  font-weight: 600;
  line-height: 1.4;
}

/* Secondary Text */
.secondary-text {
  font-size: 1.5rem;
  font-weight: 400;
  line-height: 1.5;
  color: var(--text-secondary);
}

/* Body Text */
.body-text {
  font-size: 1.25rem;
  font-weight: 400;
  line-height: 1.6;
}

/* Caption */
.caption {
  font-size: 1rem;
  font-weight: 400;
  color: var(--text-tertiary);
}

/* Mathematical Display */
.math-display {
  font-size: 2rem;
  line-height: 1.8;
  text-align: center;
  margin: 1.5rem 0;
}

/* Big Numbers (for statistics, limits) */
.big-number {
  font-size: 6rem;
  font-weight: 800;
  font-family: var(--font-mono);
  background: var(--gradient-hero);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}
```

### Minimum Font Sizes (Classroom Readability)

**Context:** These presentations are delivered on ~80" TVs in classrooms (students 10-30 feet away) AND simultaneously over Zoom to the Morganton campus. All text must be readable in both contexts.

| Element Type | Minimum Size | Notes |
|--------------|--------------|-------|
| **Titles/Headlines** | `2.5rem` (40px) | Slide titles, section headers |
| **Primary Content** | `1.5rem` (24px) | Main text, bullet points, key messages |
| **Secondary Content** | `1.25rem` (20px) | Supporting text, descriptions |
| **Labels & Captions** | `1.25rem` (20px) | Chart labels, axis labels, D3 text |
| **Mathematical Expressions** | `1.5rem` (24px) | Equations, formulas |
| **Absolute Minimum** | `1rem` (16px) | Only for non-essential metadata |

**Critical Rules:**
1. **No pixel values under 16px** - Ever. For any visible text.
2. **Use rem units** - Scales properly with browser/display settings
3. **D3 visualizations** - All `.attr('font-size', ...)` must use rem: `'1.25rem'` minimum
4. **Chart labels** - Must be readable from back of room; prefer `1.25rem` or larger
5. **Test readability** - Preview on actual classroom TV before final delivery

---

## Layout System

### Slide Container
```css
.slide {
  position: absolute;
  inset: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 4rem;
  background: var(--bg-primary);
}

.slide-content {
  max-width: 1200px;
  width: 100%;
  text-align: center;
}
```

### Slide Types

1. **Title Slide** (`.slide-title`)
   - Large title, subtitle, course branding
   - Used for: Unit title, chapter intros

2. **Statement Slide** (`.slide-statement`)
   - Single powerful statement or theorem
   - Used for: Definitions, theorems, key insights

3. **Two-Part Slide** (`.slide-two-part`)
   - Primary + secondary text, optional icon
   - Used for: Definitions with explanations

4. **Visual Slide** (`.slide-visual`)
   - Title + large visualization area + caption
   - Used for: D3 charts, Desmos embeds, diagrams

5. **List Slide** (`.slide-list`)
   - Heading + bullet points (animated entrance)
   - Used for: Steps, principles, criteria

6. **Comparison Slide** (`.slide-comparison`)
   - Two columns for contrast
   - Used for: Different approaches, graphical vs analytical

7. **Quote Slide** (`.slide-quote`)
   - Large quote + attribution
   - Used for: Mathematician quotes, inspiration

8. **Number Slide** (`.slide-number`)
   - Big statistic + context
   - Used for: Limits, important values

9. **Example Slide** (`.slide-example`)
   - Worked problem with steps
   - Used for: Demonstrations, solutions

10. **Exercise Slide** (`.slide-exercise`)
    - Interactive prompt for class activity
    - Used for: Student practice, exploration

11. **Rule of Four Slide** (`.slide-gnaw`)
    - Four-quadrant layout
    - Used for: Showing G, N, A, W representations simultaneously

---

## Animation Guidelines

### Transition Timings
```css
--transition-fast: 150ms ease;
--transition-normal: 300ms ease;
--transition-slow: 500ms ease;
--transition-enter: 600ms cubic-bezier(0.16, 1, 0.3, 1);
```

### Slide Transitions
```css
.slide {
  opacity: 0;
  visibility: hidden;
  transform: translateX(30px);
  transition:
    opacity var(--transition-slow),
    transform var(--transition-slow),
    visibility var(--transition-slow);
}

.slide.active {
  opacity: 1;
  visibility: visible;
  transform: translateX(0);
}

.slide.prev {
  transform: translateX(-30px);
}
```

### Content Entrance Animations
```css
/* Fade up (default for content) */
@keyframes fadeUp {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Scale in (for equations, numbers) */
@keyframes scaleIn {
  from {
    opacity: 0;
    transform: scale(0.8);
  }
  to {
    opacity: 1;
    transform: scale(1);
  }
}

/* Draw in (for graphs, lines) */
@keyframes drawIn {
  from {
    stroke-dashoffset: 1000;
  }
  to {
    stroke-dashoffset: 0;
  }
}
```

### D3.js Animation Patterns
```javascript
// Standard easing functions to use
d3.easeQuadOut      // Deceleration (entering)
d3.easeQuadIn       // Acceleration (exiting)
d3.easeQuadInOut    // Smooth both ways
d3.easeElastic      // Bouncy, attention-grabbing

// Recommended durations
const DURATION_FAST = 300;
const DURATION_NORMAL = 600;
const DURATION_SLOW = 1000;
const STAGGER_DELAY = 150;

// Pattern: Animated graph drawing
path.attr('stroke-dasharray', totalLength)
    .attr('stroke-dashoffset', totalLength)
    .transition()
    .duration(DURATION_SLOW)
    .ease(d3.easeQuadOut)
    .attr('stroke-dashoffset', 0);
```

---

## Responsive D3 Visualizations (CRITICAL)

### Use viewBox for SVG Scaling
```javascript
// GOOD - Responsive SVG that scales to container
const svg = d3.select(container)
    .append('svg')
    .attr('viewBox', `0 0 ${width} ${height}`)
    .attr('preserveAspectRatio', 'xMidYMid meet');
    // Do NOT set width/height attributes - let viewBox handle scaling

// BAD - Fixed size that won't adapt
const svg = d3.select(container)
    .append('svg')
    .attr('width', 800)
    .attr('height', 400);
```

### Calculate Positions as Proportions
```javascript
// GOOD - Proportional positioning
const margin = { top: height * 0.1, right: width * 0.1, bottom: height * 0.15, left: width * 0.12 };
const plotWidth = width - margin.left - margin.right;
const plotHeight = height - margin.top - margin.bottom;

// BAD - Hardcoded pixels
const margin = { top: 40, right: 40, bottom: 60, left: 50 };
```

### Standard Responsive Pattern for Calculus Visualizations
```javascript
function drawFunctionGraph() {
    const container = document.getElementById('function-graph');
    if (!container || container.querySelector('svg')) return;

    // Define logical coordinate space
    const width = 700;
    const height = 450;
    const margin = { top: height * 0.08, right: width * 0.08, bottom: height * 0.15, left: width * 0.12 };

    const svg = d3.select(container)
        .append('svg')
        .attr('viewBox', `0 0 ${width} ${height}`)
        .attr('preserveAspectRatio', 'xMidYMid meet');

    const plotWidth = width - margin.left - margin.right;
    const plotHeight = height - margin.top - margin.bottom;

    // Create scales
    const xScale = d3.scaleLinear().domain([-5, 5]).range([0, plotWidth]);
    const yScale = d3.scaleLinear().domain([-3, 3]).range([plotHeight, 0]);

    // Create axes with appropriate font sizes
    const xAxis = d3.axisBottom(xScale).tickSize(-plotHeight);
    const yAxis = d3.axisLeft(yScale).tickSize(-plotWidth);

    const g = svg.append('g')
        .attr('transform', `translate(${margin.left},${margin.top})`);

    // Add axes with readable labels
    g.append('g')
        .attr('transform', `translate(0,${plotHeight})`)
        .call(xAxis)
        .selectAll('text')
        .attr('font-size', '1.25rem');  // Minimum readable size

    g.append('g')
        .call(yAxis)
        .selectAll('text')
        .attr('font-size', '1.25rem');

    // Draw function curve
    const f = x => Math.sin(x);
    const line = d3.line()
        .x(d => xScale(d))
        .y(d => yScale(f(d)))
        .curve(d3.curveCatmullRom);

    const xValues = d3.range(-5, 5.1, 0.1);

    g.append('path')
        .datum(xValues)
        .attr('fill', 'none')
        .attr('stroke', 'var(--color-function)')
        .attr('stroke-width', 3)
        .attr('d', line);

    // Add labels
    svg.append('text')
        .attr('x', width / 2)
        .attr('y', height - 10)
        .attr('text-anchor', 'middle')
        .attr('font-size', '1.25rem')
        .attr('fill', 'var(--text-secondary)')
        .text('x');
}
```

---

## Interactive Visualizations

### Derivative Slider Example
```javascript
// Interactive: Drag to change Δx and see secant approach tangent
function drawDerivativeExplorer() {
    const container = document.getElementById('derivative-explorer');
    if (!container) return;

    const width = 700;
    const height = 500;

    // State
    let deltaX = 1;
    const a = 1;  // Point of tangency
    const f = x => x * x;  // f(x) = x²
    const fPrime = x => 2 * x;  // f'(x) = 2x

    const svg = d3.select(container)
        .append('svg')
        .attr('viewBox', `0 0 ${width} ${height}`)
        .attr('preserveAspectRatio', 'xMidYMid meet');

    // ... setup scales, axes ...

    // Slider control
    const sliderG = svg.append('g')
        .attr('transform', `translate(${width * 0.15}, ${height * 0.9})`);

    sliderG.append('text')
        .attr('font-size', '1.25rem')
        .attr('fill', 'var(--text-primary)')
        .text('Δx = ');

    const sliderValue = sliderG.append('text')
        .attr('x', 60)
        .attr('font-size', '1.5rem')
        .attr('font-family', 'var(--font-mono)')
        .attr('fill', 'var(--accent-secondary)')
        .text(deltaX.toFixed(2));

    // Slope display
    const slopeDisplay = svg.append('text')
        .attr('x', width * 0.7)
        .attr('y', height * 0.15)
        .attr('font-size', '1.5rem')
        .attr('fill', 'var(--text-primary)');

    function update() {
        const secantSlope = (f(a + deltaX) - f(a)) / deltaX;
        const tangentSlope = fPrime(a);

        sliderValue.text(deltaX.toFixed(2));
        slopeDisplay.text(`Secant slope: ${secantSlope.toFixed(3)}`);

        // Update secant line
        // Update tangent line
        // Animate transition
    }

    // Add drag behavior for slider
    // ...
}
```

### Desmos Embed Pattern
```html
<div class="slide slide-visual" data-slide="15" data-title="Explore the Function">
    <h2>Drag the slider to see how a changes the graph</h2>
    <div class="desmos-container">
        <iframe src="https://www.desmos.com/calculator/abcdef123?embed"
                width="100%"
                height="500"
                style="border: 1px solid var(--bg-tertiary); border-radius: 8px;"
                frameborder="0">
        </iframe>
    </div>
    <p class="caption">Try different values of a to see how it affects f(x)</p>
</div>
```

### GeoGebra Embed Pattern
```html
<div class="slide slide-visual" data-slide="42" data-title="Volume of Revolution">
    <h2>Rotate the region around the x-axis</h2>
    <div class="geogebra-container">
        <iframe src="https://www.geogebra.org/material/iframe/id/xyz123/width/800/height/500"
                width="100%"
                height="500"
                style="border: none; border-radius: 8px;"
                allowfullscreen>
        </iframe>
    </div>
</div>
```

---

## Common Components

### Cards
```css
.card {
  background: var(--bg-secondary);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 12px;
  padding: 2rem;
  transition: transform var(--transition-normal),
              box-shadow var(--transition-normal);
}

.card:hover {
  transform: translateY(-4px);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
}

.card-highlight {
  border-color: var(--accent);
  box-shadow: 0 0 30px var(--accent-glow);
}
```

### Theorem Box
```css
.theorem-box {
  background: var(--bg-secondary);
  border-left: 4px solid var(--accent-secondary);
  padding: 1.5rem 2rem;
  margin: 1.5rem 0;
  border-radius: 0 8px 8px 0;
}

.theorem-box .theorem-name {
  font-size: 1.25rem;
  font-weight: 600;
  color: var(--accent-secondary);
  margin-bottom: 0.5rem;
}

.theorem-box .theorem-statement {
  font-size: 1.5rem;
  color: var(--text-primary);
}
```

### Definition Box
```css
.definition-box {
  background: var(--bg-tertiary);
  border: 1px solid var(--accent);
  padding: 1.5rem 2rem;
  margin: 1.5rem 0;
  border-radius: 8px;
}

.definition-box .term {
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--accent-bright);
}

.definition-box .definition {
  font-size: 1.25rem;
  color: var(--text-secondary);
  margin-top: 0.5rem;
}
```

### Progress Indicators
```css
.progress-bar {
  height: 8px;
  background: var(--bg-tertiary);
  border-radius: 4px;
  overflow: hidden;
}

.progress-fill {
  height: 100%;
  background: var(--gradient-hero);
  transition: width var(--transition-slow);
}
```

### Icons
Use Lucide Icons (https://lucide.dev) for consistency:
```html
<script src="https://unpkg.com/lucide@latest"></script>
<script>lucide.createIcons();</script>

<!-- Usage -->
<i data-lucide="function-square"></i>
<i data-lucide="sigma"></i>
<i data-lucide="infinity"></i>
<i data-lucide="trending-up"></i>
```

---

## Required Libraries

```html
<!-- D3.js for visualizations -->
<script src="https://d3js.org/d3.v7.min.js"></script>

<!-- MathJax for mathematical notation -->
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>

<!-- Lucide icons -->
<script src="https://unpkg.com/lucide@latest"></script>

<!-- Optional: Cola.js for force-directed layouts -->
<script src="https://unpkg.com/webcola@3.4.0/WebCola/cola.min.js"></script>
```

---

## Keyboard Navigation

All presentations support these keyboard shortcuts:

| Key | Action |
|-----|--------|
| `← →` | Previous/Next slide |
| `↑ ↓` | Previous/Next slide (or appendix slide when appendix is open) |
| `Space` | Next slide |
| `Home` | First slide |
| `End` | Last slide |
| `T` | Toggle Table of Contents (TOC) overlay from left |
| `S` | Return to course syllabus (index.html) |
| `A` | Toggle Appendix overlay from right |
| `F` | Toggle fullscreen |
| `Escape` | Close any open overlay |
| `Enter` | Close appendix overlay (alternative to Escape) |
| `1-9` | Jump to slide 1-9 (when not in an input field) |

---

## Calculus Unit Theme Colors

Each unit has a theme color for visual organization:

| Unit | Topic | Color | Hex |
|------|-------|-------|-----|
| 1 | Limits and Continuity | NCSSM Blue | `#356093` |
| 2 | Differentiation Fundamentals | Purple | `#7c3aed` |
| 3 | Advanced Differentiation | Violet | `#8b5cf6` |
| 4 | Contextual Applications | Emerald | `#059669` |
| 5 | Analytical Applications | Teal | `#0d9488` |
| 6 | Integration | Gold | `#d4a028` |
| 7 | Differential Equations | Orange | `#ea580c` |
| 8 | Applications of Integration | Rose | `#e11d48` |
| 9 | Parametric/Polar/Vectors (BC) | Cyan | `#0891b2` |
| 10 | Infinite Series (BC) | Indigo | `#4f46e5` |

```css
/* Unit theme color variables */
--unit-1-limits: #356093;
--unit-2-diff-fund: #7c3aed;
--unit-3-diff-adv: #8b5cf6;
--unit-4-context: #059669;
--unit-5-analysis: #0d9488;
--unit-6-integration: #d4a028;
--unit-7-diffeq: #ea580c;
--unit-8-int-apps: #e11d48;
--unit-9-param: #0891b2;
--unit-10-series: #4f46e5;
```

---

## File Structure

```
ncssm-ap-calc-bc/
├── CLAUDE.md                    # Claude instructions
├── master-presentation-spec.md  # This file
├── SYLLABUS.md                  # Course schedule
├── index.html                   # Course homepage/syllabus
├── shared/
│   ├── styles.css              # Common CSS
│   └── presentation.js         # Navigation logic
└── class-{n}-{topic}/
    ├── presentation.html       # The actual presentation
    ├── presentation-spec-*.md  # Class-specific spec
    └── lesson-plan-*.md        # Teaching notes
```

---

## Accessibility Requirements

1. **Color contrast** - Minimum 4.5:1 ratio for text
2. **Focus indicators** - Visible focus states for keyboard nav
3. **Alt text** - All visualizations and diagrams described
4. **Semantic HTML** - Proper heading hierarchy, landmarks
5. **Reduced motion** - Respect `prefers-reduced-motion` media query

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

---

## Branding Elements

### NCSSM Identity
**North Carolina School of Science and Mathematics**

| Element | Value |
|---------|-------|
| Primary Color | Chambray Blue `#356093` |
| Secondary Color | Gray family |
| Typography | Montserrat + Georgia |
| Mascot | Unicorns |
| School Colors | Royal Blue and Gray |

**Logo Usage:**
- Include NCSSM logo on title slides (available at [brand.ncssm.edu/logos](https://brand.ncssm.edu/logos))
- Use logo with adequate clear space
- Do not modify colors or proportions

### Course Title
**AP Calculus BC**
Subtitle: Spring 2026 | NCSSM

### Title Slide Template
```
[NCSSM Logo]

AP Calculus BC
Class [N]: [Topic]
Unit [U]: [Unit Name]

[Instructor Name] | [Date]
```

### Attribution
- College Board AP Calculus BC Course and Exam Description
- NCSSM Communications: communications@ncssm.edu for brand questions

---

## Sources

- [NCSSM Branding Kit](https://brand.ncssm.edu/)
- [NCSSM Fonts and Colors](https://brand.ncssm.edu/fonts-and-colors)
- [NCSSM Logos](https://brand.ncssm.edu/logos)
- [College Board AP Calculus BC](https://apcentral.collegeboard.org/courses/ap-calculus-bc)
- [3Blue1Brown Essence of Calculus](https://www.3blue1brown.com/topics/calculus)
- [D3.js Documentation](https://d3js.org/)
- [Desmos API](https://www.desmos.com/api/v1.8/docs/)
- [GeoGebra](https://www.geogebra.org/)
