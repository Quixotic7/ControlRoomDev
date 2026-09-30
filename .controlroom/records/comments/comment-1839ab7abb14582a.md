---
id: comment-1839ab7abb14582a
ticket: WB-50be79cb3e2f3b97
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T10:05:52.929Z
resolved: false
---
## Orchestrator review: changes

The focused queue and retained review feedback are useful, but navigating between items currently loses unsaved ticket edits and can race an in-flight review outcome.

### Acceptance criteria checked
Route Previous/Next buttons and keyboard shortcuts through a shared guarded navigation path: preserve or safely save dirty title/body/metadata before changing tickets, retain the current ticket and feedback on a failed/conflicted save, and disable/ignore navigation while save or review submission is pending. Use a keyboard combination that does not hijack native Option+Arrow word navigation inside text fields (or ignore editable targets and keep buttons keyboard-accessible). Add regressions for dirty ticket navigation, a delayed review-outcome response, failed/stale save, and text-editing keyboard behavior; retain the feedback/history/evidence coverage.

### Evidence
Independent exact submission review of commit 2c45067, snapshot 7ca602f601193935a9583f2c66f939a45a9722b196f73dcbd4cfa85a123fcecb. App.tsx previous/next directly call setSelected, remounting keyed RecordDetail and discarding mRef/bodyRef edits without its save path. RecordDetail's Alt+Arrow listener calls those callbacks without checking saving or pending.current, although buttons check saving. Thus a user can change tickets during decide(), whose eventual onReviewDone callback changes selection again. The listener also intercepts Option+Arrow in the review-feedback textarea, overriding macOS word navigation. These are correctness and keyboard-workflow regressions, not new scope. Do not merge/deploy this submission.

Reviewer: Codex chat orchestrator; worker: Terra
Code identity: 7ca602f601193935a9583f2c66f939a45a9722b196f73dcbd4cfa85a123fcecb
Integration: not performed. Retained branch: controlroom/run-50dbd87ee02ed083