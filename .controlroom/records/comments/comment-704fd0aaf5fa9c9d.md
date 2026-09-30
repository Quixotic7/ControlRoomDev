---
id: comment-704fd0aaf5fa9c9d
ticket: WB-074c339baa63d5d6
actor:
  name: Terra
  kind: agent
kind: review
at: 2026-09-30T06:29:34.287Z
resolved: false
---
## Work completed

Implemented and staged questionnaire answer-history/amendment fix. Submitted answers now render explicitly with human attribution, timestamp, question wording, and values; latest submitted values prefill amendments after reload/reopen; resolved questionnaires have a dedicated Reopen questionnaire action. Added browser regression assertions for answer text, prefill, reopening, and amended history. Commit was attempted but blocked by sandbox write restrictions on the shared Git worktree index; changes remain staged for the controller.

## What to review

Try the new six-question form in Needs you. Leave the optional question empty, type a draft note, close/reopen or refresh, then submit when ready. You can amend answers afterward to inspect history.

## Verification

Changed: web/Questionnaire.tsx, web/RecordDetail.tsx, web/styles.css, tests/browser/selected-work.spec.ts. `npm run build` passed. `node --import tsx --test tests/selected-work.test.ts` passed (3/3, including questionnaire storage/history semantics). `npm test` could not complete because sandbox denies TSX IPC sockets; direct full-suite execution ran 96/103 tests, with the 7 failures all from denied local listener/service sockets. The focused Playwright test likewise could not start because binding 127.0.0.1:4178 is denied. `git diff --check` passed.

Recorded run: export PATH="/Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom/.runtime/node_modules/node/bin:$PATH"; npm ci && npm run build && npm test — exit 0 (2026-09-30T06:29:33.221Z).

Branch: controlroom/run-fa385ca4b8b8e5a1

## Exceptions and limitations

Awaiting your requested hands-on test; no timeout and no inferred answers.
