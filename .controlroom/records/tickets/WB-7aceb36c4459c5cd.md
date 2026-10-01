---
parent: WB-35da530c7d149673
title: I can no longer drag tickets
status: done
schema: 1
id: WB-7aceb36c4459c5cd
kind: ticket
createdAt: 2026-09-30T08:36:22.987Z
updatedAt: 2026-09-30T20:54:35.429Z
author:
  name: You
  kind: human
number: 69
order: 1790757383012
reviewedRules: {}
priority: 0
scopeApproved: true
owner: Codex chat orchestrator
progressStartedAt: 2026-09-30T20:54:27.887Z
handoff: "Fixed the actual dragging regression. Review intentionally does not
  create a reorder preview when a ticket enters, but the board silently
  cancelled any card-surface drop without a preview. Card surfaces now fall back
  to the same stage move as empty column space. The drag-start revision is
  retained so a concurrent edit cannot be silently overwritten. Existing parent,
  order, review evidence rules and attribution are preserved. This is separate
  from the earlier activity-indicator fix. Decisions: none."
evidence: "Reproduced exact Failed Review-to-Review native pointer drop:
  dropping onto a Review card failed before the fix while empty-space drop
  passed. After correction all 7 native drag/order-preview checks pass,
  including both Review destinations, board/table reorder, gap placement and
  Escape cancellation. Assertions preserve source parent/order and destination
  ticket revision. Production build and TypeScript pass on worktree and merged
  main c9b63cd (implementation df688de). Installed in Dev4173 and Juice4280 with
  exact installed/served artifact hash checks and health200. Upgrade
  preserved643 Dev and75 Juice records/assets/config/network files and
  launchers. Logs: /private/tmp/cr69-reproduce.log,
  /private/tmp/cr69-fix-browser.log, /private/tmp/cr69-fix-build.log,
  /private/tmp/cr69-main-build.log. No push."
exceptions: ""
reviewVerificationAt: ""
reviewInstructions: "Reload the page. Drag a ticket from Failed Review onto an
  existing card in Review; it should move into Review. Also try empty space in
  Review. To test #69 itself, move it back to Failed Review first, then drag it
  onto another Review card. Parent and ordering metadata should stay unchanged.
  Please confirm this fixes the exact action you reported."
manualReviewRequired: true
branch: main
commits:
  - df688de
  - c9b63cd
verification:
  command: npm run build; playwright test tests/browser/native-ticket-drag.spec.ts
    tests/browser/ticket-order-preview.spec.ts
  exitCode: 0
  output: "Reproduced exact Failed Review-to-Review native pointer drop: dropping
    onto a Review card failed before the fix while empty-space drop passed.
    After correction all 7 native drag/order-preview checks pass, including both
    Review destinations, board/table reorder, gap placement and Escape
    cancellation. Assertions preserve source parent/order and destination ticket
    revision. Production build and TypeScript pass on worktree and merged main
    c9b63cd (implementation df688de). Installed in Dev4173 and Juice4280 with
    exact installed/served artifact hash checks and health200. Upgrade
    preserved643 Dev and75 Juice records/assets/config/network files and
    launchers. Logs: /private/tmp/cr69-reproduce.log,
    /private/tmp/cr69-fix-browser.log, /private/tmp/cr69-fix-build.log,
    /private/tmp/cr69-main-build.log. No push."
  at: 2026-09-30T20:01:16.957Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/.controlroom/.local/orchestration/worktrees/run-c5fdd0bf6de22eea
reviewOutcome:
  requestId: 18976cd9-109d-42b4-b7df-7468532b8217
  fingerprint: e67c683c62f892afb300e52006b64b2b96441f7bb7d03e96184278a3d70ef097
acceptedBy:
  name: You
  kind: human
---
Regression, cannot drag tickets around