---
parent: WB-35da530c7d149673
title: View tabs change horizontal size when selecting them
status: done
schema: 1
id: WB-f0d1d1bc57e5f89b
kind: ticket
createdAt: 2026-09-26T23:32:52.103Z
updatedAt: 2026-09-30T05:32:44.908Z
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
handoff: "Added dragging to reorder saved view tabs, per the new review request.
  Drop on the left or right half of a tab to insert before/after it; an
  insertion line shows the destination. Reordering preserves the selected view
  and unsaved view drafts, retains stable tab widths, and saves the order for
  refresh. Existing Move left/right menu actions remain the keyboard
  alternative. The drag captures the starting configuration revision so a
  concurrent view change rejects the drop instead of overwriting newer
  settings."
evidence: "Production build/typecheck, 51 core/model/integration tests and all
  39 Chromium browser workflows passed. New coverage:
  tests/api-recovery.test.ts, tests/browser/capture-recovery.spec.ts and
  tests/browser/view-drag.spec.ts. Connection failures are injected in
  disposable projects; no actual capture commands or user screenshots were
  created/deleted during those tests. Recovery banner visually inspected.
  Details in VALIDATION.md. Changes remain local and uncommitted."
exceptions: ""
branch: main
reviewInstructions: >-
  1. Refresh the app. Drag Board, Table, or a custom tab before and after
  another tab; check the insertion line and resulting order.

  2. Leave a filter draft unsaved, reorder tabs, and confirm the selected view
  and draft stay intact. Refresh after saving the draft: tab order should
  persist.

  3. Check the options menu’s Move left/right actions still work.

  4. If another session changes view configuration during a drag, the drop
  should report Configuration changed and preserve the newer settings.
reviewOutcome:
  requestId: d133dd3f-77bd-4011-9f03-675958efaace
  fingerprint: c83eb426beba95fdf0f61b265157eca6570b2116df17f77bc6dff3f90ba8172f
archived: true
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
