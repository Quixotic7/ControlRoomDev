---
id: comment-4c77fe5dd2919a5e
ticket: WB-35a8bbf89985fae6
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T01:06:11.607Z
resolved: false
---
## Work completed

Added an explicit Oldest first / Newest first icon control in ticket conversations. Oldest first remains the default; equal timestamps use a stable ID tie-breaker. The preference persists per project. New comments preserve the visible reading position in both Details and Conversation, and authors can jump to their newly posted comment. Changes are in web/App.tsx and web/RecordDetail.tsx with styling and browser regression coverage.

## What to review

1. Refresh the app and open a ticket with several comments. In Conversation, verify Oldest first and switch to Newest first using the icon/button.
2. Close/reopen and refresh: the chosen order should persist.
3. Read an older comment while another session adds a comment: your position should stay steady in both Details and Conversation.
4. Post a reply and use View your new comment to find it. Existing review/question labels and resolution should still work.

## Verification

Production build and TypeScript checks passed. All 46 core/model/integration tests and all 24 Chromium browser workflows passed. New focused coverage is in tests/parent-input.test.ts and tests/browser/backlog-batch.spec.ts; screenshots of the parent picker and conversation were visually inspected. Tests use disposable projects. Details are recorded in VALIDATION.md. Changes are local and uncommitted.

Recorded run: git diff --check — exit 0 (2026-09-27T01:06:11.529Z).

Branch: main
