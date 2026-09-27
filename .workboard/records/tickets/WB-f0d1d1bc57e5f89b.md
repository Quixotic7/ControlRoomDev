---
parent: WB-35da530c7d149673
title: View tabs change horizontal size when selecting them
status: progress
schema: 1
id: WB-f0d1d1bc57e5f89b
kind: ticket
createdAt: 2026-09-26T23:32:52.103Z
updatedAt: 2026-09-27T00:54:38.061Z
author:
  name: You
  kind: human
number: 24
order: 2048
reviewedRules: {}
labels:
  - bug
  - ui
priority: 1
scopeApproved: true
---
I would like these to keep same horizontal width. 

## Backlog refinement

Prepared by Codex backlog refinement. This describes planned work; implementation has not started.

### Intended outcome

Keep each saved-view tab at the same width and position when selected so the tab strip does not shift under the pointer.

### Scope and approach

Reserve space for active-only controls and state indicators rather than changing tab width on selection. Preserve variable widths for different names; the requirement is stable width across selection states, not identical widths for all names.

### Acceptance criteria

- [ ] Switching among Board, Table, and custom views does not change each tab’s measured width or shift neighboring tabs.
- [ ] Options controls and unsaved indicators fit within the reserved space without overlapping labels.
- [ ] Inactive hidden controls are not focusable, and active options remain usable with keyboard and pointer.
- [ ] Long names, renaming, overflow, comfortable/compact density, and light/dark appearance continue to work.
- [ ] A browser regression compares tab bounding boxes before and after selection with a small subpixel tolerance.

### Implementation notes and related work

web/ProjectPage.tsx currently mounts the options Menu only for the active tab. Inspect that markup and web/project.css view-tab styles for the width change before altering layout.

### Human review / verification

Repeatedly switch between short and long named tabs using pointer and keyboard; check that tab edges remain fixed and options/renaming still work.
