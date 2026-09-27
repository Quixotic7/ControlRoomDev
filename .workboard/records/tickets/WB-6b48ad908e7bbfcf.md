---
parent: WB-35da530c7d149673
title: More themes
status: backlog
schema: 1
id: WB-6b48ad908e7bbfcf
kind: ticket
createdAt: 2026-09-26T23:21:08.341Z
updatedAt: 2026-09-27T00:55:21.954Z
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
