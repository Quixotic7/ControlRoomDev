---
id: comment-f734b5372f03af72
ticket: WB-8972377c62d56499
actor:
  name: Terra
  kind: agent
kind: review
at: 2026-09-30T11:11:45.331Z
resolved: false
---
## Work completed

Implemented the requested drag-regression coverage in tests/browser/priority-planning.spec.ts. The primary scenario now performs a native pointer drag to the explicit top edge of the target row, asserts the insert-before preview, then verifies persisted rank. Added focused checks for filtered visible anchors, empty priority buckets, and stale-placement reload behavior. No board records were changed. Commit was attempted but sandbox denied the worktree index lock; the test change remains uncommitted.

## What to review

Check the result against this ticket’s acceptance criteria and inspect the verification evidence below. Move the ticket to Done if accepted, or reply with Review feedback describing any changes needed.

## Verification

npm run build passed (TypeScript, Vite, CLI bundle). git diff --check passed. npm test could not start because tsx IPC pipe creation is sandbox-denied (EPERM). Focused Playwright could not start because the sandbox denies binding 127.0.0.1:4178 (EPERM). Changed file: tests/browser/priority-planning.spec.ts. Existing implementation changes remain on commits 620fddf and 0caa73f; current uncommitted diff is the regression repair.

Recorded run: export PATH="/Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom/.runtime/node_modules/node/bin:$PATH"; npm ci && npm run build && npm test — exit 0 (2026-09-30T11:11:44.900Z).

Branch: controlroom/run-cf282ad7d372071b
