# NCSSM AP Calculus BC Course Materials

**An experiment in AI-assisted curriculum development using Claude Code**

> This repository is an experimental project exploring what's possible when using [Claude Code](https://docs.anthropic.com/en/docs/claude-code) to develop and share high-quality STEM curriculum. The course materials are under active development and **not yet intended for classroom use**.

---

## Project Purpose

This repository contains HTML presentations and course materials for an **AP Calculus BC** course designed for the North Carolina School of Science and Mathematics (NCSSM). The project serves two goals:

1. **Create excellent course materials** - Research-driven presentations that follow the Rule of Four (graphical, numerical, analytical, verbal) for every concept
2. **Explore AI-assisted curriculum development** - Document a rigorous, reproducible process for using Claude Code to build educational content

The presentations are designed for dual delivery: classroom display on large screens and simultaneous Zoom streaming to remote students.

---

## The Development Process

This project follows a strict **research-driven, artifact-based workflow**. No presentation is created without first establishing the pedagogical foundation through a hierarchy of documents.

### Artifact Hierarchy

```
curriculum-design-research.md    ← Evidence base from pedagogy research
         ↓
    course-plan.md               ← Pedagogical philosophy for entire course
         ↓
    SYLLABUS.md                  ← Schedule + AP CED topic mapping
         ↓
For each class session:
    research-{topic}.md          ← How do experts teach THIS concept?
         ↓
    lesson-plan-{topic}.md       ← Learning objectives, structure, timing
         ↓
    presentation-spec-{topic}.md ← Slide-by-slide technical specification
         ↓
    presentation.html            ← Final implementation
```

Each level **must exist** before the next can be created. This ensures every presentation is grounded in research and aligned with course goals.

---

## Key Documents

| Document | Purpose | Link |
|----------|---------|------|
| **Curriculum Design Research** | Evidence base from pedagogy literature (Understanding by Design, Rule of Four, 3Blue1Brown approach) | [curriculum-design-research.md](curriculum-design-research.md) |
| **Course Plan** | Pedagogical philosophy: why understanding matters over memorization, visual-first approach, addressing misconceptions | [course-plan.md](course-plan.md) |
| **Syllabus** | 64-session schedule mapping to College Board CED topics, class structure, assessment philosophy | [SYLLABUS.md](SYLLABUS.md) |
| **Master Presentation Spec** | Technical design standards: color palette, typography, minimum font sizes, D3/Desmos guidelines | [master-presentation-spec.md](master-presentation-spec.md) |
| **Build-a-Course Skill** | The mandatory workflow defining blocking rules and validation gates | [.claude/skills/build-a-course/SKILL.md](.claude/skills/build-a-course/SKILL.md) |

---

## How Documents Create Course Materials

### 1. Research Phase

Before creating any lesson, we analyze how expert educators teach the topic:

- **3Blue1Brown** - Visual intuition and "aha moment" approaches
- **Professor Leonard** - Lecture structure and example progression
- **Khan Academy** - Interactive elements and scaffolding
- **Textbooks & Research** - Common misconceptions and error patterns

This research is captured in `research-{topic}.md` files within each class folder.

### 2. Lesson Planning

The lesson plan translates research into instructional design:

- Specific, measurable learning objectives
- Prior knowledge requirements
- Common misconceptions to address
- Class structure with timing (50-minute sessions)
- Rule of Four balance (which representations to emphasize)

### 3. Presentation Specification

The spec provides a slide-by-slide blueprint:

- Slide type (statement, visual, comparison, exercise, etc.)
- Exact content and layout
- Visualization technology (D3.js, Desmos, GeoGebra)
- Speaker notes and transitions

### 4. Implementation

The final HTML presentation implements the spec using:

- **Shared CSS** for consistent styling across all presentations
- **D3.js** for custom interactive visualizations
- **Desmos/GeoGebra** embeds for function exploration
- **MathJax** for mathematical notation

### 5. Validation

Every presentation must pass verification:

```bash
.claude/skills/presentation-design/validate-presentation.sh class-N-topic/presentation.html
```

This checks structural elements, proper slide types, and readability requirements.

---

## Course Design Principles

The course follows research-backed pedagogy documented in the [Course Plan](course-plan.md):

- **Understanding over memorization** - Students should know *why* calculus works, not just procedures
- **Visual-first approach** - Lead with intuition before formulas (inspired by 3Blue1Brown)
- **Rule of Four (G.N.A.W.)** - Every concept presented graphically, numerically, analytically, and verbally
- **Address misconceptions directly** - Explicitly confront common errors, don't hope students avoid them
- **Connection over isolation** - Emphasize how calculus topics interconnect

---

## Repository Structure

```
ncssm-ap-calc-bc/
├── README.md                        # This file
├── curriculum-design-research.md    # Pedagogy research evidence
├── course-plan.md                   # Pedagogical philosophy
├── SYLLABUS.md                      # Course schedule + CED mapping
├── master-presentation-spec.md      # Technical design standards
├── index.html                       # Course homepage
├── shared/
│   ├── styles.css                   # Common CSS for all presentations
│   └── presentation.js              # Navigation and interaction logic
├── .claude/
│   └── skills/                      # Claude Code workflow definitions
│       ├── build-a-course/          # Master development workflow
│       └── presentation-design/     # Validation tools
└── class-{n}-{topic}/               # 64 class session folders
    ├── presentation.html            # The presentation
    ├── research-{topic}.md          # Expert teaching analysis
    ├── lesson-plan-{topic}.md       # Instructional design
    └── presentation-spec-{topic}.md # Technical specification
```

---

## Current Status

This is an active experiment. The repository contains:

- **Complete course framework** - All foundational documents in place
- **64 class session folders** - Structure for full AP Calculus BC course
- **Presentations in development** - Various stages of completion
- **Research files** - Topic research for several units

---

## Why Claude Code?

This project explores several capabilities:

1. **Consistent quality** - Following documented standards across many presentations
2. **Research synthesis** - Analyzing multiple teaching approaches to find best practices
3. **Technical implementation** - Building interactive D3.js visualizations from specifications
4. **Workflow enforcement** - Using skills and validation to maintain the artifact hierarchy

The [CLAUDE.md](CLAUDE.md) file contains detailed instructions that guide Claude Code's behavior when working on this repository.

---

## License & Attribution

This is an experimental educational project. Course content aligns with the [College Board AP Calculus BC Course and Exam Description](https://apcentral.collegeboard.org/courses/ap-calculus-bc).

---

*"Calculus is a framework for understanding change and accumulation, not a collection of procedures to memorize."*
