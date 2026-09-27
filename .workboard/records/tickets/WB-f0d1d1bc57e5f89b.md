---
parent: WB-35da530c7d149673
title: View tabs change horizontal size when selecting them
status: review
schema: 1
id: WB-f0d1d1bc57e5f89b
kind: ticket
createdAt: 2026-09-26T23:32:52.103Z
updatedAt: 2026-09-27T02:29:25.623Z
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
handoff: "Fixed the nonfunctional-looking view dropdown: its panel was clipped
  by the horizontally scrolling tab strip. The menu now uses the browser top
  layer, remains anchored while scrolling/resizing, and is verified with actual
  point hit-testing. Replaced the arrow with a compact ellipsis options button
  while retaining stable tab widths, keyboard Escape and rename behavior."
evidence: Production build and TypeScript checks passed; 47
  core/model/integration tests and all 32 Chromium browser workflows passed. The
  rebuilt native companion passed the double-Option detector and
  shortcut-registration self-test. New browser coverage is in
  tests/browser/review-round-two.spec.ts and updated screenshot deletion
  coverage. Menus, screenshot autocomplete and ticket images were visually
  inspected. Tests use disposable projects and did not delete real screenshots.
  See VALIDATION.md. Changes are local and uncommitted.
exceptions: ""
branch: main
reviewInstructions: >-
  1. Refresh and click the ellipsis on the active Board/Table/custom view. The
  menu should appear visibly below it, with working Rename, Duplicate and
  reorder actions.

  2. Press Escape: the menu should close and focus return to the options button.

  3. Switch views, try long names and resize horizontally. Tabs should retain
  their widths when selected, and menus should remain visible and clickable.
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
