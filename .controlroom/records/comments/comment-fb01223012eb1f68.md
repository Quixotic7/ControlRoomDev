---
id: comment-fb01223012eb1f68
ticket: WB-074c339baa63d5d6
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T09:21:58.219Z
resolved: false
---
## Work completed

Structured text/choice questionnaires now extend question comments with stable IDs, optional recommended choices and custom answers. They appear in Needs you independently of stage. Browser drafts have no timeout; only explicit submission records answers. Replacements and amendments preserve wording, timestamps, human attribution and history; stale submissions require reconciliation. CLI/MCP context includes the form and answers, and waiting for comments also wakes on edited/answered forms. Decision: DEC-82978f3191a878c7.

## What to review

Use the review questionnaire on this ticket. Select a choice or type custom text, add a draft note and reload before submitting; the draft should survive. Submit explicitly, then open Conversation and submit amended answers. The earlier answer and wording should remain visible. No recommended choice should count as an answer by itself.

## Verification

Production build/typecheck passed. All 69 core/model/integration tests passed on the final source. All 72 Chromium browser workflows passed in the full regression run; all 8 selected-work workflows passed again against the final compiled build. Six focused storage/checklist cases passed. Coverage includes CLI/MCP, questionnaire answer waits/history/conflicts, Markdown preservation, progress semantics, board/table ordering, themes and the column-width review fix. Both installations were refreshed; record/image/configuration hashes and custom launchers preserved, installed server/browser hashes match, both health endpoints return 200. See ControlRoom/VALIDATION.md.

Recorded run: PLAYWRIGHT_BROWSERS_PATH=.runtime/browsers PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm run test:browser -- tests/browser/selected-work.spec.ts — exit 0 (2026-09-27T09:18:34.434Z).

Branch: main

## Exceptions and limitations

Human visual/workflow review requested. Questionnaire drafts are local to this browser; progress is reported activity, not execution supervision. Vite reports a non-failing main-chunk size advisory. Native capture code was unchanged in this batch. Changes remain uncommitted.
