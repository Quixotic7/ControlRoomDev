---
parent: WB-35da530c7d149673
title: More themes
status: done
schema: 1
id: WB-6b48ad908e7bbfcf
kind: ticket
createdAt: 2026-09-26T23:21:08.341Z
updatedAt: 2026-09-30T05:32:45.069Z
author:
  name: You
  kind: human
number: 19
order: 19456
reviewedRules: {}
priority: 1
labels:
  - ui
  - themes
scopeApproved: true
handoff: "Updated all five presets against the screenshots you attached.
  Commodore 64 now uses lavender music-tracker panels, silver rails, ivory pixel
  lettering and yellow signals. Elektron uses charcoal hardware, acid-yellow LCD
  surfaces and blue-gray key controls. SNES uses the city-builder blue grid,
  green toolbars and cream/stone panels. Synthwave has stronger magenta framing,
  purple panels and cyan grid/glow. Game Boy follows the grass/moss/brown
  adventure palette with stepped frames. Existing actions, theme IDs and saved
  preferences remain intact. Inverted header labels/counters and status pills
  stay readable. Decisions: DEC-17e468e6128cf597 records your latest visual
  references and preserves DEC-e0b54d147304992b’s typography/menu approach. Both
  installed applications updated."
evidence: Build/typecheck and git diff --check passed. All 82 browser workflows
  passed across full/focused runs (80 + 11); typing failure reproduced before
  the fix. Reference screenshots visually checked. Both installations verified,
  preserving board data and settings. See VALIDATION.md.
exceptions: Original CSS inspired by the reference images; no game sprites, OS
  screenshots or hardware artwork bundled. Some palette values are adjusted for
  readable text. Visual acceptance remains yours. Changes remain uncommitted.
reviewVerificationAt: 2026-09-28T07:45:04.250Z
reviewInstructions: "Refresh and compare Commodore 64, Elektron, SNES, Synthwave
  and Game Boy with your five image comments. Check each board and an open
  ticket at your usual size and in a narrow browser window. Check parent
  headings, counts, approval tags and text contrast. Try C64 File/View menus and
  keyboard close; theme switching should preserve the current ticket and view.
  #64 separately addresses typing flicker in this image-heavy conversation."
manualReviewRequired: true
branch: main
verification:
  command: npm run build; npm run test:browser; focused final rerun of
    comment-images, retro-themes, selected-work theme checks, and standalone
    screenshot/discard checks (private Node 24, bundled Chromium)
  exitCode: 0
  at: 2026-09-28T07:45:04.250Z
  output: Production build/typecheck passed. All 82 Chromium workflows passed
    across the full run (80 passed) and final focused rerun (11 passed). The two
    full-run failures were broad Pin selectors matching the new Typing
    regression image cards; selectors now scope the annotation editor. Typing
    regressions failed on the old implementation and passed with stable
    renderers, covering modal/standalone, Details/Conversation, image identity,
    no replacement preview requests, scroll/focus, preview/base fallback,
    posting and annotation links. Five reference themes visually inspected on
    desktop boards/tickets and 390px layouts; all-preset contrast/persistence
    and real retro menus passed. Final theme refinements validated in the
    focused rerun. Core/storage/native capture implementation unchanged; core
    suite not repeated. Both installed builds verified by hashes and health
    checks, preserving records/assets/configuration and custom launchers.
reviewOutcome:
  requestId: 3d08d4f6-9d6f-4d41-ba72-6ee66985008d
  fingerprint: 4b9cf314a1fca0fc1f946afda372fe751082f583b78a8ff14771567265bf4059
progressStartedAt: 2026-09-28T07:16:22.577Z
decisions:
  - DEC-e0b54d147304992b
  - DEC-17e468e6128cf597
attachments:
  - image-b452f7f6cd26cffc
  - image-40c67e3baacbfa02
  - image-57de405e022a4342
archived: true
---
We have themes now for System, Light, and Dark. I like current theme but it would be cool to have more:
- Win95
- Win 3.1
- Commodore 64
- Classic Mac System 7
- AmigaOS
- NES
- SNES
- Synthwave
- Elektron
- Gameboy



## Backlog refinement

Prepared by Codex backlog refinement. This describes planned work; implementation has not started.

### Intended outcome

Offer the requested retro and music-hardware-inspired themes while retaining the current Control Room appearance and readable, usable controls.

### Scope and approach

Treat this as an umbrella for a reusable theme structure and all requested presets: Win95, Win 3.1, Commodore 64, Classic Mac System 7, AmigaOS, NES, SNES, Synthwave, Elektron, and Gameboy. Keep System, Light, and Dark available. Develop representative previews first, then deliver presets in reviewable batches; this ticket is complete only when the agreed full set is available.

### Acceptance criteria

- [ ] A theme picker presents clear names and previews and persists the selected theme with the existing preference model.
- [ ] Each requested preset has a coherent palette, typography, surfaces, borders, focus treatment, and semantic state colors; presets need more than a background-color swap.
- [ ] Board, table, ticket dialogs, conversation, knowledge views, menus, settings, and screenshot tools remain legible and usable in every preset.
- [ ] Keyboard focus, contrast, validation states, blocked/review states, and responsive layouts remain distinguishable without relying solely on color.
- [ ] Theme switching preserves application state and annotation geometry; System continues to follow the operating system appearance.
- [ ] Shared tokens and reusable overrides avoid duplicating application layout or behavior for each theme.

### Implementation notes and related work

Start with web/styles.css tokens, web/project.css, web/TopNav.tsx themes, and web/App.tsx preference handling. Use original styling/assets inspired by the references. Create child implementation tickets when this umbrella is selected for development.

### Human review / verification

Review a consistent set of desktop/mobile screenshots for every preset and exercise keyboard focus, long content, error states, and reload persistence. Obtain visual review of representative presets before extending the full set.
