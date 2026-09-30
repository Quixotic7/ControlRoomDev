---
parent: WB-35da530c7d149673
title: I can no longer drag tickets
status: done
schema: 1
id: WB-7aceb36c4459c5cd
kind: ticket
createdAt: 2026-09-30T08:36:22.987Z
updatedAt: 2026-09-30T08:52:41.657Z
author:
  name: You
  kind: human
number: 69
order: 1790757383012
reviewedRules: {}
priority: 0
scopeApproved: true
owner: Codex chat orchestrator
progressStartedAt: 2026-09-30T08:38:36.213Z
handoff: "Fixed native board/table dragging by retaining the source until a drop
  preview exists. Collapsing it during dragstart cancelled native startup;
  synthetic DragEvents missed this. Commit 299f5bb integrated by
  0cc8ea597707da4363fecb11dfbdb48978fcc98a. Published frontend-only to ports
  4173/4280 without interrupting #68; actual served /assets/index-CTjCZfrC.js
  matches the tested build. Existing typing and scrolling optimizations remain."
evidence: "Production build/typecheck and 11 focused Chromium tests passed:
  native cross-column dragging, board/table reorder and Escape cancellation,
  insertion previews, four scrolling regressions and typing/keyboard-save
  regressions. Original production native-drag test failed before this fix. Logs
  /private/tmp/cr69-native-repro.log and /private/tmp/cr69-focused.log. No
  consequential design decisions changed."
exceptions: I implemented this directly and am leaving acceptance to human
  review. No server restart or Git push; old hashed frontend assets retained for
  existing sessions.
reviewVerificationAt: 2026-09-30T08:49:16.634Z
reviewInstructions: Reload your usual board. Drag a ticket to another column;
  reorder tickets within a column and in Table view; press Escape during a drag
  to cancel. Insertion previews should appear and the move should persist. Check
  typing and ticket/board scrolling still feel improved.
manualReviewRequired: true
branch: main
commits:
  - 299f5bb
  - 0cc8ea597707da4363fecb11dfbdb48978fcc98a
verification:
  command: npm run build; npm run test:browser --
    tests/browser/native-ticket-drag.spec.ts
    tests/browser/ticket-order-preview.spec.ts
    tests/browser/scrolling-performance.spec.ts
    tests/browser/typing-performance.spec.ts
  exitCode: 0
  output: "

    > controlroom@0.1.0 test:browser

    > playwright test tests/browser/native-ticket-drag.spec.ts
    tests/browser/ticket-order-preview.spec.ts
    tests/browser/scrolling-performance.spec.ts
    tests/browser/typing-performance.spec.ts


    \e[2m[WebServer] \e[22m(node:98257) Warning: The 'NO_COLOR' env is ignored
    due to the 'FORCE_COLOR' env being set.

    \e[2m[WebServer] \e[22m(Use `node --trace-warnings ...` to show where the
    warning was created)

    \e[2m[WebServer] \e[22m(node:98257) Warning: The 'NO_COLOR' env is ignored
    due to the 'FORCE_COLOR' env being set.

    \e[2m[WebServer] \e[22m(Use `node --trace-warnings ...` to show where the
    warning was created)


    Running 11 tests using 1 worker


    (node:98720) Warning: The 'NO_COLOR' env is ignored due to the 'FORCE_COLOR'
    env being set.

    (Use `node --trace-warnings ...` to show where the warning was created)

    (node:98720) Warning: The 'NO_COLOR' env is ignored due to the 'FORCE_COLOR'
    env being set.

    (Use `node --trace-warnings ...` to show where the warning was created)

    \  ✓   1 tests/browser/native-ticket-drag.spec.ts:20:1 › ordinary pointer
    dragging moves a board ticket across columns (1.1s)

    \  ✓   2 tests/browser/native-ticket-drag.spec.ts:52:3 › native pointer
    reorders tickets and cancels safely in Board (1.0s)

    \  ✓   3 tests/browser/native-ticket-drag.spec.ts:52:3 › native pointer
    reorders tickets and cancels safely in Table (1.1s)

    \  ✓   4 tests/browser/scrolling-performance.spec.ts:65:1 › large ticket
    scrolling avoids per-event comment layout scans (7.2s)

    \  ✓   5 tests/browser/scrolling-performance.spec.ts:114:1 › large boards
    contain off-screen cards while retaining navigation (11.3s)

    \  ✓   6 tests/browser/scrolling-performance.spec.ts:154:3 › gradual
    scrolling keeps the reading position on incoming updates (oldest) (5.6s)

    \  ✓   7 tests/browser/scrolling-performance.spec.ts:154:3 › gradual
    scrolling keeps the reading position on incoming updates (newest) (5.3s)

    \  ✓   8 tests/browser/ticket-order-preview.spec.ts:34:1 › board opens a
    stable ticket-sized gap and commits that exact position (1.2s)

    \  ✓   9 tests/browser/ticket-order-preview.spec.ts:90:1 › table reserves
    the dragged row height and disables movement animation when requested
    (923ms)

    \  ✓  10 tests/browser/typing-performance.spec.ts:61:1 › title and
    description stay responsive on a large ticket without per-key activation
    (15.3s)

    \  ✓  11 tests/browser/typing-performance.spec.ts:127:1 › open Markdown
    keeps microtask changes through focused keyboard saves (2.1s)


    \  11 passed (58.0s)\n"
  at: 2026-09-30T08:49:16.634Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/.controlroom/.local/orchestration/worktrees/run-55ab1dec62f77f03
reviewOutcome:
  requestId: b35aa9ec-cbd9-4392-b1e0-b259e94609f7
  fingerprint: ae3b1d7ecc240cc037aa2e83c5418d5ea804033318fe292768f45eb051d42947
acceptedBy:
  name: You
  kind: human
---
Regression, cannot drag tickets around