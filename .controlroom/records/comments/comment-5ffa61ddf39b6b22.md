---
id: comment-5ffa61ddf39b6b22
ticket: WB-b1e83a736eef681c
actor:
  name: Luna
  kind: agent
kind: review
at: 2026-09-30T05:43:05.068Z
resolved: false
---
## Work completed

Removed the redundant partial-hidden warning text from the board visibility bar. Kept Show all columns available whenever columns are hidden, including the all-hidden state.

## What to review

Hide a populated column with its eye button. Its width should remain exactly the same and the body should look like a normal empty lane. Show it again and confirm tickets return without shifting neighboring column widths. Refresh while hidden and restore with the header or Show all columns.

## Verification

Changed only web/ProjectPage.tsx (5 lines removed). git diff --check passed. npm run build passed. npm test reached 95 passing tests; 7 unrelated environment failures were caused by sandbox EPERM/localhost service restrictions. No commit created.

Recorded run: export PATH="/Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom/.runtime/node_modules/node/bin:$PATH"; npm ci && npm run build && npm test — exit 0 (2026-09-30T05:43:04.569Z).

Branch: controlroom/run-9858fca2afd935b7

## Exceptions and limitations

Human visual/workflow review requested. Questionnaire drafts are local to this browser; progress is reported activity, not execution supervision. Vite reports a non-failing main-chunk size advisory. Native capture code was unchanged in this batch. Changes remain uncommitted.
