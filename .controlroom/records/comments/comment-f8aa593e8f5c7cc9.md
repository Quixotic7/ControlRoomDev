---
id: comment-f8aa593e8f5c7cc9
ticket: WB-9783badb1b70f0fa
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T09:21:58.453Z
resolved: false
---
## Work completed

Added all ten requested presets: Windows 95, Windows 3.1, Commodore 64, Classic Mac System 7, AmigaOS, NES, SNES, Synthwave, Elektron and Game Boy. Presets vary typography, panel treatments, borders, focus and semantic signals through the shared token system. Preview tiles describe each appearance. Neutral chrome/group headers preserve readability. Representative desktop and narrow layouts were visually inspected. Decisions: no additional consequential decisions.

## What to review

Try the ten named themes in More actions → Theme. Check a board with blocked/review tickets, a ticket dialog, Rulebook and Screenshots. Confirm text, labels, errors and keyboard focus remain readable; try a narrow window and both density modes. Personal aesthetic review is especially useful here.

## Verification

Production build/typecheck passed. All 69 core/model/integration tests passed on the final source. All 72 Chromium browser workflows passed in the full regression run; all 8 selected-work workflows passed again against the final compiled build. Six focused storage/checklist cases passed. Coverage includes CLI/MCP, questionnaire answer waits/history/conflicts, Markdown preservation, progress semantics, board/table ordering, themes and the column-width review fix. Both installations were refreshed; record/image/configuration hashes and custom launchers preserved, installed server/browser hashes match, both health endpoints return 200. See ControlRoom/VALIDATION.md.

Recorded run: PLAYWRIGHT_BROWSERS_PATH=.runtime/browsers PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm run test:browser -- tests/browser/selected-work.spec.ts — exit 0 (2026-09-27T09:18:34.434Z).

Branch: main

## Exceptions and limitations

Human visual/workflow review requested. Questionnaire drafts are local to this browser; progress is reported activity, not execution supervision. Vite reports a non-failing main-chunk size advisory. Native capture code was unchanged in this batch. Changes remain uncommitted.
