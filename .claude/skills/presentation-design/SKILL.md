---
name: presentation-design
description: Validates and enforces NCSSM AP Calculus presentation standards for structure, fonts, layouts, and navigation. Automatically triggered when creating, modifying, or reviewing presentation HTML files.
---

# Presentation Design Skill

## CRITICAL: Structural Template

**Every presentation MUST include these elements from class-0-introduction/presentation.html:**

### Required Head Elements
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../shared/styles.css">
```

### Required Body Elements
```html
<!-- Progress Bar -->
<div class="progress-bar"><div class="progress-fill"></div></div>

<!-- Slide Counter -->
<div class="slide-counter">1 / N</div>

<!-- Keyboard Hint -->
<div class="keyboard-hint">
    <kbd>←</kbd> <kbd>→</kbd> Navigate | <kbd>T</kbd> TOC | <kbd>S</kbd> Syllabus | <kbd>F</kbd> Fullscreen
</div>

<!-- Overlay Backdrop -->
<div id="overlay-backdrop" class="overlay-backdrop"></div>

<!-- TOC Overlay -->
<div id="toc-overlay" class="toc-overlay">
    <button id="toc-close" class="toc-close">&times;</button>
    <div class="toc-header">
        <h3>Table of Contents</h3>
        <div class="class-info">Class N: Topic</div>
    </div>
    <div id="toc-content" class="toc-content"></div>
    <div class="toc-footer">
        <a href="../index.html">← Back to Course Syllabus</a>
    </div>
</div>

<!-- Appendix Overlay -->
<div id="appendix-overlay" class="appendix-overlay">...</div>
```

## Slide Type Requirements

**NEVER use `slide-content` as a catch-all.** Use specific types:

| Slide Purpose | Class to Use | When |
|---------------|--------------|------|
| Title/Opening | `slide-title` | First slide, section openers |
| Key message/theorem | `slide-statement` | Single important idea |
| Bulleted lists | `slide-list` | Multiple points, criteria |
| Two-column layout | `slide-comparison` | Before/after, AB vs BC |
| Primary + secondary text | `slide-two-part` | Definition + explanation |
| D3/Desmos visualizations | `slide-visual` | Interactive content |
| Student practice | `slide-exercise` | Activities, exploration |
| Rule of Four | `slide-gnaw` | G.N.A.W. quadrant layout |

## Minimum Font Sizes (NON-NEGOTIABLE)

| Element | Minimum | Notes |
|---------|---------|-------|
| Titles | `2.5rem` (40px) | Slide headers |
| Primary content | `1.5rem` (24px) | Main text |
| Secondary content | `1.25rem` (20px) | Supporting text, labels |
| D3 labels | `1.25rem` (20px) | **NEVER use px values in D3** |
| Absolute minimum | `1rem` (16px) | Only for metadata |

## Validation Checklist

Before committing any presentation changes, verify:

- [ ] Google Fonts loaded (check for `fonts.googleapis.com`)
- [ ] TOC overlay present (`toc-overlay` class)
- [ ] Keyboard hints present (`keyboard-hint` class)
- [ ] Progress bar present (`progress-bar` class)
- [ ] No `slide-content` class used (use specific types)
- [ ] No font sizes below 1rem in CSS
- [ ] No hardcoded light backgrounds (#fff, #f8f, etc.)
- [ ] Uses CSS variables from shared/styles.css

## Reference Files

For detailed specifications:
- [Master Presentation Spec](../../master-presentation-spec.md)
- [Class 0 Template](../../class-0-introduction/presentation.html)
- [Shared Styles](../../shared/styles.css)

## DO NOT

1. Use `slide-content` class (it doesn't exist in the spec)
2. Create inline styles when shared CSS classes exist
3. Skip the TOC/Appendix overlays
4. Forget the Google Fonts imports
5. Use px values for font sizes in D3 visualizations
6. Hardcode light background colors
