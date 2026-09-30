---
id: comment-67dd29e0343d10ee
ticket: WB-b1e83a736eef681c
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T09:21:58.565Z
resolved: false
---
## Work completed

Applied your review feedback: hiding a column now keeps the normal swimlane width and header, and the lane looks like an ordinary empty lane. Cards, quick entry and drop targets remain hidden; the eye button and Show all columns still restore them. Browser project/view visibility preferences and filters remain independent. A browser assertion verifies identical column width before and after hiding. Decisions: no additional consequential decisions.

## What to review

Hide a populated column with its eye button. Its width should remain exactly the same and the body should look like a normal empty lane. Show it again and confirm tickets return without shifting neighboring column widths. Refresh while hidden and restore with the header or Show all columns.

## Verification

Production build/typecheck passed. All 69 core/model/integration tests passed on the final source. All 72 Chromium browser workflows passed in the full regression run; all 8 selected-work workflows passed again against the final compiled build. Six focused storage/checklist cases passed. Coverage includes CLI/MCP, questionnaire answer waits/history/conflicts, Markdown preservation, progress semantics, board/table ordering, themes and the column-width review fix. Both installations were refreshed; record/image/configuration hashes and custom launchers preserved, installed server/browser hashes match, both health endpoints return 200. See ControlRoom/VALIDATION.md.

Recorded run: PLAYWRIGHT_BROWSERS_PATH=.runtime/browsers PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm run test:browser -- tests/browser/selected-work.spec.ts — exit 0 (2026-09-27T09:18:34.434Z).

Branch: main

## Exceptions and limitations

Human visual/workflow review requested. Questionnaire drafts are local to this browser; progress is reported activity, not execution supervision. Vite reports a non-failing main-chunk size advisory. Native capture code was unchanged in this batch. Changes remain uncommitted.
