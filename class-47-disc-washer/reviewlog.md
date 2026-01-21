# Review Log: Disc & Washer Methods

## Class 47 | Unit 8: Applications of Integration

| Date | Review Type | Commit | Reviewer | Result | Notes |
|------|-------------|--------|----------|--------|-------|
| 2026-01-21 | Full V&V | ec7adda | Claude | PASS | Strong emphasis on the critical R^2 - r^2 vs (R-r)^2 distinction; comprehensive axis rotation coverage |

## Detailed Review Notes

### Content Validation (vs Lesson Plan)

**Learning Objectives Coverage:**
1. Explain why volumes of revolution are a special case of cross-sectional volumes - COVERED (Slide 2)
2. Set up and evaluate disc method integrals for rotation around x-axis - COVERED (Slides 4-6)
3. Set up and evaluate disc method integrals for rotation around y-axis - COVERED (Slides 7-8)
4. Distinguish when to use washer vs disc method - COVERED (Slide 3)
5. Set up and evaluate washer method integrals - COVERED (Slides 9-12)
6. Correctly determine radii for rotation around non-standard axes - COVERED (Slides 13-18)
7. Identify which curve provides outer vs inner radius - COVERED (Slides 11, 15, 17)

**Common Misconceptions Addressed:**
1. "Radius = f(x) always" - Addressed: radius = distance from AXIS (Slide 13)
2. "Subtract radii, then square: (R-r)^2" - Addressed: CRITICAL warning with numerical comparison (Slides 10, 20)
3. "Outer radius is always the top function" - Addressed: depends on axis position (Slides 15-16)
4. "Use dx for y-axis rotation" - Addressed: vertical axis uses dy (Slides 17-18)
5. "Washers only when both curves above x-axis" - Addressed: gap from axis matters (Slide 3)
6. "Forgetting pi or putting it inside integral" - Addressed: formulas show pi as coefficient

### Spec Verification

**Slide Inventory Check:**
- Title slide (Slide 0) - Present
- Rotation animation (Slide 1) - Present
- Connection to cross sections (Slide 2) - Present
- Disc vs washer comparison (Slide 3) - Present
- Disc method x-axis formula (Slide 4) - Present
- Disc visualization (Slide 5) - Present
- Example disc around x-axis (Slide 6) - Present
- Disc method y-axis formula (Slide 7) - Present
- Example disc around y-axis (Slide 8) - Present
- Washer introduction (Slide 9) - Present
- Washer formula with warning (Slide 10) - Present
- Washer example setup (Slide 11) - Present
- Washer example evaluation (Slide 12) - Present
- Key insight: radius from axis (Slide 13) - Present
- Interactive axis visualization (Slide 14) - Present with slider
- Example y = -1 setup (Slide 15) - Present
- Example y = -1 evaluation (Slide 16) - Present
- Example x = 2 setup (Slide 17) - Present
- Example x = 2 evaluation (Slide 18) - Present
- Decision flowchart (Slide 19) - Present
- Critical reminder R^2-r^2 (Slide 20) - Present with numerical comparison
- Practice problems (Slide 21) - Present
- Practice solutions (Slide 22) - Present
- Key takeaways (Slide 23) - Present
- Exit ticket (Slide 24) - Present
- Coming up preview (Slide 25) - Present

**D3 Visualizations:**
1. Rotation animation (Slide 1) - Implemented showing region rotating to form solid
2. Disc cross-section view (Slide 5) - Implemented with side and front views
3. Washer decomposition (Slide 9) - Implemented showing big disc - small disc = washer
4. Interactive axis position (Slide 14) - Implemented with draggable axis and radius display

### Technical Check

- [x] Google Fonts loaded (Montserrat, JetBrains Mono)
- [x] TOC overlay present
- [x] Keyboard hints displayed
- [x] Overlay backdrop present
- [x] Progress bar present
- [x] D3.js loaded (version 7)
- [x] MathJax loaded (version 3)
- [x] Theme color: #e11d48 (Unit 8 Rose)
- [x] Keyboard navigation functional
- [x] Slider controls working for axis visualization
- [x] No generic slide-content types (all semantic)

**Slide Types Used:**
- slide-title
- slide-visual (with D3)
- slide-statement
- slide-two-part
- slide-comparison
- slide-example
- slide-list
- slide-exercise

### Notes

Presentation has 26 slides (0-25) providing comprehensive coverage of volumes of revolution. The critical R^2 - r^2 vs (R-r)^2 error is prominently highlighted twice (Slides 10 and 20) with numerical comparison showing 16 vs 4. The decision flowchart (Slide 19) is valuable for students learning to navigate disc vs washer selection. The interactive axis visualization (Slide 14) effectively demonstrates how radius measurement changes with axis position. Strong progression from standard axes to non-standard axes (y = -1, x = 2). Exit ticket tests conceptual reasoning about axis position effect on volume.
