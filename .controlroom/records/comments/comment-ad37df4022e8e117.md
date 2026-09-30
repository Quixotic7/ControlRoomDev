---
id: comment-ad37df4022e8e117
ticket: WB-02564d852b33a295
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T10:27:47.103Z
resolved: false
---
## Orchestrator review: changes

The status editor improvements are useful, but concurrent configuration updates silently discard local edits before Save, violating the reconciliation requirement.

### Acceptance criteria checked
Retain the editor baseline and unsaved name/column/shortcut drafts when configRevision changes externally. Show explicit reconciliation feedback and provide deliberate reload/reapply choices; never automatically replace dirty drafts with remote config. Add a browser regression that changes a status locally, updates config through another client, verifies the draft remains with conflict feedback, then reconciles and saves without losing the other client changes. Also exercise board entry, rename/reorder persistence and populated-column removal in the UI.

### Evidence
Independent source review of exact commit8fc37e3. The new Settings useEffect on state.configRevision unconditionally calls setName, setColumns, setRevision and setShortcut. The SSE state refresh therefore replaces unsaved edits immediately and adopts the new revision, so the Save catch for Configuration changed is never reached in the ordinary concurrent-update case. The added tests/views.test.ts only exercises Store config revisions and cannot detect this UI data loss. Return a corrected snapshot within existing #18 scope; do not merge/deploy.

Reviewer: Codex chat orchestrator; worker: Terra
Code identity: 6b7b12b349a576bd7c2731ac6f0a23ef585593e52fa8721ad2799bc8918830e2
Integration: not performed. Retained branch: controlroom/run-fb7bee01ea448d02