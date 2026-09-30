---
id: comment-f142aa18e9bedffc
ticket: WB-1fb579187090f9fc
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T07:24:49.076Z
resolved: false
---
## Orchestrator review: changes

The hot-path fixes build and existing draft/review browser checks pass, but the new performance regression fails during unauthenticated fixture setup. Correct the test, add regression coverage for the draft synchronization edge case, and resubmit.

### Acceptance criteria checked
In typing-performance.spec.ts initialize the browser session cookie with GET / before POSTing fixtures (follow other browser tests); assert every setup response is successful before reading meta.id. Current code produces an error response instead of a ticket. Ensure the large-ticket timing/zero-activation assertions actually execute. Add coverage for editing a microtask while Markdown is open, then typing and saving without losing its checked state; the final value/reset synchronization fixed my reproduction but needs a retained regression. Also cover keyboard save/close while the textarea remains focused so synchronous draft refs are exercised without depending on blur. Preserve the current source fix. Do not rerun socket/IPC-blocked tests: that restriction is already established. Build/typecheck/diff checks are sufficient locally; controller will run browser/core tests. Continue on the existing branch, do not merge or deploy.

### Evidence
Independent browser run: 18 existing tests passed (images/scroll, review writes/conflicts, standalone save, questionnaire drafts, microtasks). New typing-performance test failed before measurements with TypeError ticket.meta undefined at comment fixture creation; no initial GET / exists to set authentication cookie. Root isolated final-build microtask reproduction passes: Markdown and saved body retain - [x] after checkbox plus typing. Real-board benchmark confirms activation requests fall from one per key to zero; frame timing comparison was noisy under concurrent verification, so do not claim a measured speedup yet. Test artifacts are in this worktree test-results/typing-performance-title-a-ae7c3--without-per-key-activation.

Reviewer: Codex chat orchestrator; worker: Sol
Code identity: b08bd8a818811c03a9a5417a9d669ebf3957de8c4d757ebf1d76d196051acf6c
Integration: not performed. Retained branch: controlroom/run-e7f5890d3b60fa20