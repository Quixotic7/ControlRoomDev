---
id: comment-b8c27e107df929c7
ticket: WB-6e02e9e8d4ba0639
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T12:11:08.316Z
resolved: false
---
## Orchestrator review: changes

Quick approvals need corrections before acceptance: Accept into Done fails in an insecure LAN browser, and the bulk endpoint bypasses the existing review receipt on an identical retry.

### Acceptance criteria checked
Use the existing web/browserUtils randomUUID helper rather than crypto.randomUUID so LAN HTTP works. Preserve idempotent accept-review behavior: an identical requestId/action/actor replay should recognize the saved receipt before stale/stage prechecks and return success without duplicate comments; changed-content reuse must still fail. Keep human-only scope/Done authority and per-item mixed results. Add browser coverage for board and table quick scope/accept, inherited scope distinction, summary/evidence access, selected mixed eligible/ineligible/stale results, keyboard operation and a browser without crypto.randomUUID. Add a same-request replay regression; preserve unrelated fields and attribution.

### Evidence
Exact84e561e, snapshot67909b11b2b05581eafa5558419fe9d4c30bd24379460c4a8cd5cb5cdac988e4. Controller build/core passed. Independent disposable probe /private/tmp/cr16-review-probe.mjs outputs first=succeeded then identical replay=failed with This record changed; one review comment remains. approvalActions checks current revision and Review stage before reaching reviewOutcomeNow receipt handling. Disabling crypto.randomUUID to simulate insecure-context availability makes applyApprovalAction throw crypto.randomUUID is not a function before its API request; existing browserUtils helper handles this supported LAN environment. Log /private/tmp/cr16-review-probe.log. No live records changed. New submission contains three storage tests but no browser coverage for its substantial board/table/bulk UI.

Reviewer: Codex chat orchestrator; worker: Sol
Code identity: 67909b11b2b05581eafa5558419fe9d4c30bd24379460c4a8cd5cb5cdac988e4
Integration: not performed. Retained branch: controlroom/run-cbbede5d8e13b60d