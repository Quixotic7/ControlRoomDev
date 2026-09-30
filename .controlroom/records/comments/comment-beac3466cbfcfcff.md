---
id: comment-beac3466cbfcfcff
ticket: WB-50be79cb3e2f3b97
actor:
  name: Codex chat orchestrator
  kind: agent
kind: comment
at: 2026-09-30T09:41:05.325Z
resolved: false
---
Assigning Terra: The review queue is a bounded UI workflow on top of existing review controls, with draft/navigation and revision checks.

Reuse current ticket review controls/evidence semantics. Preserve unsaved feedback when navigating, distinguish historical verification, never imply an unavailable diff was inspected. Test keyboard/narrow layouts, stale acceptance and request-changes discussion. Coordinate overlapping RecordDetail/ProjectPage changes during integration rather than rewriting unrelated features.

Human-approved metadata is current; older prose saying awaiting approval is historical. This is managed work: the controller ALREADY owns the claim and lifecycle. Do not run manual claim/move/review/release or require shared-board CLI access. Return a structured ready/human handoff; controller will snapshot, verify and review. No merge/deploy/push or real-board mutations by the worker. Use the pinned Node24 runtime at /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom/.runtime/node_modules/node/bin. Sandbox-denied IPC/network tests are a reported limitation, not a product blocker; avoid repeated full-suite attempts after EPERM. Build/typecheck and focused tests, then hand off for controller verification. Preserve existing main fixes and the root checkout's six unrelated uncommitted files.