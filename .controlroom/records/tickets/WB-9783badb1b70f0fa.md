---
title: Retro and hardware theme preset collection
status: done
parent: WB-6b48ad908e7bbfcf
labels:
  - ui
  - themes
priority: 1
schema: 1
id: WB-9783badb1b70f0fa
kind: ticket
createdAt: 2026-09-27T09:03:26.723Z
updatedAt: 2026-09-30T05:32:45.105Z
author:
  name: Codex fixes
  kind: agent
number: 62
order: 1790499806728
reviewedRules: {}
handoff: "Added all ten requested presets: Windows 95, Windows 3.1, Commodore
  64, Classic Mac System 7, AmigaOS, NES, SNES, Synthwave, Elektron and Game
  Boy. Presets vary typography, panel treatments, borders, focus and semantic
  signals through the shared token system. Preview tiles describe each
  appearance. Neutral chrome/group headers preserve readability. Representative
  desktop and narrow layouts were visually inspected. Decisions: no additional
  consequential decisions."
evidence: Production build/typecheck passed. All 69 core/model/integration tests
  passed on the final source. All 72 Chromium browser workflows passed in the
  full regression run; all 8 selected-work workflows passed again against the
  final compiled build. Six focused storage/checklist cases passed. Coverage
  includes CLI/MCP, questionnaire answer waits/history/conflicts, Markdown
  preservation, progress semantics, board/table ordering, themes and the
  column-width review fix. Both installations were refreshed;
  record/image/configuration hashes and custom launchers preserved, installed
  server/browser hashes match, both health endpoints return 200. See
  ControlRoom/VALIDATION.md.
exceptions: Human visual/workflow review requested. Questionnaire drafts are
  local to this browser; progress is reported activity, not execution
  supervision. Vite reports a non-failing main-chunk size advisory. Native
  capture code was unchanged in this batch. Changes remain uncommitted.
reviewVerificationAt: 2026-09-27T09:18:34.434Z
reviewInstructions: Try the ten named themes in More actions → Theme. Check a
  board with blocked/review tickets, a ticket dialog, Rulebook and Screenshots.
  Confirm text, labels, errors and keyboard focus remain readable; try a narrow
  window and both density modes. Personal aesthetic review is especially useful
  here.
manualReviewRequired: true
branch: main
verification:
  command: PLAYWRIGHT_BROWSERS_PATH=.runtime/browsers
    PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm run test:browser --
    tests/browser/selected-work.spec.ts
  exitCode: 0
  output: >
    
    > controlroom@0.1.0 test:browser

    > playwright test tests/browser/selected-work.spec.ts


    [WebServer] (node:17640) Warning: The 'NO_COLOR' env is ignored due to the
    'FORCE_COLOR' env being set.

    [WebServer] (Use `node --trace-warnings ...` to show where the warning was
    created)

    [WebServer] (node:17640) Warning: The 'NO_COLOR' env is ignored due to the
    'FORCE_COLOR' env being set.

    [WebServer] (Use `node --trace-warnings ...` to show where the warning was
    created)


    Running 8 tests using 1 worker


    (node:21215) Warning: The 'NO_COLOR' env is ignored due to the 'FORCE_COLOR'
    env being set.

    (Use `node --trace-warnings ...` to show where the warning was created)

    (node:21215) Warning: The 'NO_COLOR' env is ignored due to the 'FORCE_COLOR'
    env being set.

    (Use `node --trace-warnings ...` to show where the warning was created)
      ✓  1 tests/browser/selected-work.spec.ts:45:1 › microtasks retain focus, preserve prose, reorder, save and render on cards (1.3s)
      ✓  2 tests/browser/selected-work.spec.ts:92:1 › questionnaire drafts survive refresh and require explicit answers; edits conflict and history remains (1.5s)
      ✓  3 tests/browser/selected-work.spec.ts:175:1 › all theme presets persist, preserve page state and offer legible token contrast (896ms)
      ✓  4 tests/browser/selected-work.spec.ts:220:1 › drag preview is local, supports before/after and cancellation, with keyboard ordering (958ms)
      ✓  5 tests/browser/selected-work.spec.ts:267:1 › reported estimates, expired claims and reduced motion remain honest (713ms)
      ✓  6 tests/browser/selected-work.spec.ts:314:1 › table insertion preview rejects stale targets and supports keyboard ordering (1.2s)
      ✓  7 tests/browser/selected-work.spec.ts:380:1 › theme pages remain usable and representative layouts can be visually reviewed (1.8s)
      ✓  8 tests/browser/selected-work.spec.ts:420:1 › cross-parent drag is invalid and leaving a drag target clears its preview (342ms)

      8 passed (11.8s)
  at: 2026-09-27T09:18:34.434Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
reviewOutcome:
  requestId: b0ec1ce6-87c3-4f10-bb2f-73dd06c767b9
  fingerprint: 1f18f7948beece2d458c7234a43fc88b609a1acdc8ddeb9509c8c9838c4af993
acceptedBy:
  name: You
  kind: human
archived: true
---
Implement all ten requested presets: Win95, Windows 3.1, Commodore 64, Classic Mac System 7, AmigaOS, NES, SNES, Synthwave, Elektron and Game Boy. Use the shared framework, vary typography/surfaces/borders/focus treatment and maintain readable semantics. Review representative screenshots and all preset states.