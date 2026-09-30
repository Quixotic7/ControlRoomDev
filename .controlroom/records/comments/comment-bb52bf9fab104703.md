---
id: comment-bb52bf9fab104703
ticket: WB-29d1f2b2f35e9eb7
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T02:54:32.495Z
resolved: false
---
## Work completed

Hardened the screenshot connection-failure path shown in image-9019d4a9b5090ca7. Read-only API requests retry transient connection failures up to twice, including interrupted response bodies. Capture request confirmation is now separate from the later status read: a failed status read offers Check capture status rather than a permanent raw TypeError. Rechecking reads status without starting another capture. An uncertain capture command or any other write is never automatically replayed, to avoid duplicate captures or changes. Permission messages remain distinct, metadata fetches recover without refreshing, and beginning another image upload clears an old upload error.

## What to review

1. Refresh Control Room and use Capture a region or window. A successful capture/status check should leave no stale Failed to fetch banner; new screenshots should remain available in the library.
2. If the status connection fails, use Check capture status. Recovery should clear the connection error without starting a second capture or requiring page refresh.
3. If a capture command cannot be confirmed, finish/cancel an already-open picker and inspect the library before requesting another. The app must not automatically repeat the command.
4. Open a recent screenshot and save an annotation. Genuine macOS permission warnings should still be visible separately from connection errors.

## Verification

Production build/typecheck, 51 core/model/integration tests and all 39 Chromium browser workflows passed. New coverage: tests/api-recovery.test.ts, tests/browser/capture-recovery.spec.ts and tests/browser/view-drag.spec.ts. Connection failures are injected in disposable projects; no actual capture commands or user screenshots were created/deleted during those tests. Recovery banner visually inspected. Details in VALIDATION.md. Changes remain local and uncommitted.

Recorded run: git diff --check — exit 0 (2026-09-27T02:54:32.435Z).

Branch: main

## Exceptions and limitations

The historical cause of the local connection dropping cannot be established from the screenshot alone. The reproduced capture/status failure and recovery paths are covered; live intermittent capture behavior still needs human review.
