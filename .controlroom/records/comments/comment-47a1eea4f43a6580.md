---
id: comment-47a1eea4f43a6580
ticket: WB-d927d496ba6a0f2a
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T03:56:28.697Z
resolved: false
---
## Work completed

Added human review actions in the ticket Details and Conversation views. Accept into Done and Request changes save pending ticket edits with the transition. Request changes defaults to a uniquely named Failed Review development column; otherwise it asks for a development destination. Multiple Done columns require an explicit choice. Feedback is attributed and appended to the conversation; existing handoff/evidence and children remain intact. Stale revisions preserve drafts for reconciliation. Review receipts and deterministic comment IDs prevent duplicate feedback when retrying a lost response. Feedback also survives inspecting History and returning to Conversation. Decisions: no new project-level decisions; follows the approved review workflow.

## What to review

1. Refresh Control Room and open a Review ticket. Edit its description, then Accept into Done; the dialog should close, the board should update, and edits should persist. Accept only when you actually accept that ticket.
2. On another Review ticket, choose Request changes, enter a short note, and confirm Return to shows Failed Review. Save feedback & return should close the dialog, move the ticket, and add one human review comment.
3. Begin feedback, inspect History, and return to Conversation: the note and destination should remain.
4. Review destinations follow configured roles. Without a Failed Review column choose a development destination; multiple Done columns require a choice.
5. A concurrent record change should keep the dialog/draft open for reconciliation. Parent acceptance must leave children unchanged.

## Verification

Production build/typecheck, 54 core/model/integration tests and all 44 Chromium browser workflows passed. The five new browser workflows passed again after the final feedback-preservation adjustment. Review and child-entry layouts visually inspected. Tests use disposable projects. Coverage: tests/review-outcome.test.ts, tests/browser/review-children.spec.ts, tests/agent.test.ts. Details in VALIDATION.md. Local service restarted at port 4173; changes remain uncommitted.

Recorded run: git diff --check — exit 0 (2026-09-27T03:56:28.645Z).

Branch: main
