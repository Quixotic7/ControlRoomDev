---
title: Multiple Session Double Alt Screenshot shortcut
parent: WB-e550805ce74dbb84
status: done
schema: 1
id: WB-a9bf6cb0903dc47b
kind: ticket
createdAt: 2026-09-27T05:56:59.136Z
updatedAt: 2026-09-30T05:32:45.296Z
author:
  name: You
  kind: human
number: 50
order: 1790488619143
reviewedRules: {}
priority: 1
scopeApproved: true
handoff: "Capture activation now follows foreground focus and actual
  pointer/keyboard interaction, including interactions inside dialogs.
  Background state polling and unfocused/hidden pages do not activate a
  destination; registering a project preserves its last activity or starts
  inactive, so launching another service cannot steal capture. Active requests
  reuse the running companion instead of reopening it on every interaction. The
  companion already chooses the latest project at trigger time. No new decision
  beyond the compatibility coordination recorded with #43."
evidence: Build/typecheck passed; all 62 core/model/integration tests passed.
  All 53 browser workflows passed across the full run (49 passed) and four
  focused reruns after fixing old fixture paths and font/live-data readiness.
  Installed migration trial passed with byte-preserved assets, custom launcher
  preservation, bundled CLI startup/read/write and legacy command alias. Native
  build and shortcut detector/hotkey registration self-tests passed
  (registration status 0); actual desktop capture routing still requires the
  listed manual check. Live Dev and JuiceLab services were updated without
  migrating their record folders; JuiceLab record hashes were unchanged. See
  VALIDATION.md. Changes remain uncommitted.
exceptions: Actual macOS capture routing/cancellation is not yet manually verified.
branch: main
verification:
  command: git diff --check
  exitCode: 0
  output: ""
  at: 2026-09-27T06:20:23.634Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
reviewInstructions: >-
  Manual macOS check still needed (automated interaction/routing and native
  shortcut self-tests passed):

  1. Refresh both Control Room Dev (4173) and JuiceLab (4280). Click/type in
  Dev, switch to another application, then double-tap Option and capture a small
  region. It should appear in Dev’s Screenshots library.

  2. Click/type in JuiceLab, switch away, then repeat. The image should now
  arrive in JuiceLab. Merely leaving the other window visible or its background
  refresh running must not change the destination.

  3. Cancel one capture and confirm no completed screenshot appears. This check
  confirms actual desktop routing; the test suite alone cannot establish it.
reviewOutcome:
  requestId: 7434dc1b-e3f6-45b7-8a31-814e22924871
  fingerprint: 2f27288684698aef4501935ffb00a3b4d65e007f918dbdaf49a9a99c617145bb
archived: true
---
Since we can have multiple sessions open the double alt screenshot feature should go to the last session I interacted with. 