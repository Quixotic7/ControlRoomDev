---
id: comment-6a931db99c6cc5e1
ticket: WB-2b11b3d0901a9aff
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T09:21:58.340Z
resolved: false
---
## Work completed

Board cards and table rows show an insertion line before/after the hovered item. Hover makes no writes; Escape or leaving the target clears the preview. Drops preserve the displayed placement, with source and ordering-peer revisions checked through a serialized placement API. Invalid parent moves show no insertion target. Alt/Option + Up/Down moves a focused ticket under Manual/Priority sorting; the in-app shortcut guide documents it. Decisions: no additional consequential decisions.

## What to review

With Manual or Priority sorting, drag over the top and bottom halves of a card and then a table row. Check that the insertion line matches the result. Try first/last positions, press Escape before a drop, and use Alt/Option + Up/Down on a focused ticket. A concurrent change to the target should cancel the stale move without losing that change.

## Verification

Production build/typecheck passed. All 69 core/model/integration tests passed on the final source. All 72 Chromium browser workflows passed in the full regression run; all 8 selected-work workflows passed again against the final compiled build. Six focused storage/checklist cases passed. Coverage includes CLI/MCP, questionnaire answer waits/history/conflicts, Markdown preservation, progress semantics, board/table ordering, themes and the column-width review fix. Both installations were refreshed; record/image/configuration hashes and custom launchers preserved, installed server/browser hashes match, both health endpoints return 200. See ControlRoom/VALIDATION.md.

Recorded run: PLAYWRIGHT_BROWSERS_PATH=.runtime/browsers PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm run test:browser -- tests/browser/selected-work.spec.ts — exit 0 (2026-09-27T09:18:34.434Z).

Branch: main

## Exceptions and limitations

Human visual/workflow review requested. Questionnaire drafts are local to this browser; progress is reported activity, not execution supervision. Vite reports a non-failing main-chunk size advisory. Native capture code was unchanged in this batch. Changes remain uncommitted.
