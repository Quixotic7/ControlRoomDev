---
id: comment-4d262115cbda95c3
ticket: WB-7aceb36c4459c5cd
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T20:01:17.231Z
resolved: false
---
## Work completed

Fixed the actual dragging regression. Review intentionally does not create a reorder preview when a ticket enters, but the board silently cancelled any card-surface drop without a preview. Card surfaces now fall back to the same stage move as empty column space. The drag-start revision is retained so a concurrent edit cannot be silently overwritten. Existing parent, order, review evidence rules and attribution are preserved. This is separate from the earlier activity-indicator fix. Decisions: none.

## What to review

Reload the page. Drag a ticket from Failed Review onto an existing card in Review; it should move into Review. Also try empty space in Review. To test #69 itself, move it back to Failed Review first, then drag it onto another Review card. Parent and ordering metadata should stay unchanged. Please confirm this fixes the exact action you reported.

## Verification

Reproduced exact Failed Review-to-Review native pointer drop: dropping onto a Review card failed before the fix while empty-space drop passed. After correction all 7 native drag/order-preview checks pass, including both Review destinations, board/table reorder, gap placement and Escape cancellation. Assertions preserve source parent/order and destination ticket revision. Production build and TypeScript pass on worktree and merged main c9b63cd (implementation df688de). Installed in Dev4173 and Juice4280 with exact installed/served artifact hash checks and health200. Upgrade preserved643 Dev and75 Juice records/assets/config/network files and launchers. Logs: /private/tmp/cr69-reproduce.log, /private/tmp/cr69-fix-browser.log, /private/tmp/cr69-fix-build.log, /private/tmp/cr69-main-build.log. No push.

Recorded run: npm run build; playwright test tests/browser/native-ticket-drag.spec.ts tests/browser/ticket-order-preview.spec.ts — exit 0 (2026-09-30T20:01:16.957Z).

Branch: main
