---
id: comment-8ddb1d999e8dc352
ticket: WB-7aceb36c4459c5cd
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T08:49:16.845Z
resolved: false
---
## Work completed

Fixed native board/table dragging by retaining the source until a drop preview exists. Collapsing it during dragstart cancelled native startup; synthetic DragEvents missed this. Commit 299f5bb integrated by 0cc8ea597707da4363fecb11dfbdb48978fcc98a. Published frontend-only to ports 4173/4280 without interrupting #68; actual served /assets/index-CTjCZfrC.js matches the tested build. Existing typing and scrolling optimizations remain.

## What to review

Reload your usual board. Drag a ticket to another column; reorder tickets within a column and in Table view; press Escape during a drag to cancel. Insertion previews should appear and the move should persist. Check typing and ticket/board scrolling still feel improved.

## Verification

Production build/typecheck and 11 focused Chromium tests passed: native cross-column dragging, board/table reorder and Escape cancellation, insertion previews, four scrolling regressions and typing/keyboard-save regressions. Original production native-drag test failed before this fix. Logs /private/tmp/cr69-native-repro.log and /private/tmp/cr69-focused.log. No consequential design decisions changed.

Recorded run: npm run build; npm run test:browser -- tests/browser/native-ticket-drag.spec.ts tests/browser/ticket-order-preview.spec.ts tests/browser/scrolling-performance.spec.ts tests/browser/typing-performance.spec.ts — exit 0 (2026-09-30T08:49:16.634Z).

Branch: main

## Exceptions and limitations

I implemented this directly and am leaving acceptance to human review. No server restart or Git push; old hashed frontend assets retained for existing sessions.
