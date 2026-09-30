---
id: comment-b431b9d91d95a938
ticket: WB-3dbffc743f92d6e7
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T05:42:01.831Z
resolved: false
---
## Work completed

Added middle-click and Command/Ctrl-click new-tab opening to ticket cards, parent group headers, table ticket/parent controls, child ticket links, and overview record links. Each tab uses a stable #ticket= URL; explicit URL selection wins over shared last-selection preferences, survives refresh and keeps the original tab in place. Normal click and board keyboard behavior remain intact. Decisions: no new project-level decisions.

## What to review

1. Refresh, middle-click a ticket card, and confirm it opens in a new tab while the original board stays in place.
2. Refresh the new tab: the same ticket should reopen. Open another ticket in the original tab and confirm the first tab keeps its ticket.
3. Try Command-click, a table title, a parent group heading and a child link. Normal clicks should still open the centered dialog.

## Verification

Production build/typecheck and 56 core/model/integration tests passed. All 50 browser workflows passed across the full regression run and focused reruns after fixing test timing/selector/legacy-opening assumptions. New coverage is in tests/browser/latest-feedback.spec.ts and tests/project-sessions.test.ts. Expanded dialog visually inspected; desktop/mobile geometry and footer accessibility verified. Live session check passed with both Control Room Dev (4173) and JuiceLab (4280) cookies present. JuiceLab upgrade preserved record hashes and its custom launcher. Details in VALIDATION.md. Changes remain uncommitted.

Recorded run: git diff --check — exit 0 (2026-09-27T05:42:01.779Z).

Branch: main
