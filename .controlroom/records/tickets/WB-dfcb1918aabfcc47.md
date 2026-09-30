---
title: Fix done ticket stuck in user review
parent: WB-e50c2d9dd072c6f2
status: done
schema: 1
id: WB-dfcb1918aabfcc47
kind: ticket
createdAt: 2026-09-27T05:59:18.393Z
updatedAt: 2026-09-30T05:32:44.777Z
author:
  name: You
  kind: human
number: 51
order: 1790488758402
reviewedRules: {}
priority: 1
handoff: "Confirmed parent #4 was Done but still carried the historical
  permission-check blocker. Needs you now excludes Done and archived tickets
  before evaluating blockers/questions/rule changes. History and original
  blocker/question content are preserved; reopening the ticket restores any
  still-applicable attention reason. Work is within the approved parent scope.
  No consequential decisions changed."
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
exceptions: ""
branch: main
verification:
  command: git diff --check
  exitCode: 0
  output: ""
  at: 2026-09-27T06:20:24.864Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
reviewInstructions: >-
  1. Refresh Needs you: completed parent #4 Screen Capture Permissions should no
  longer appear because of its old blocker. Its Done status remains intact.

  2. Opening #4 should retain its historical conversation and blocker for
  context. No permissions retest is required for this ticket.

  Automated checks passed for Done-with-blocker/question exclusion and attention
  returning after reopening.
reviewOutcome:
  requestId: e45b17e8-5283-482c-b44e-f6c5128f9f58
  fingerprint: 79b2ac1ed260f5401ea8ed351bc785908a386d956d4451940d0294cd35f7f210
archived: true
---
See parent ticket. This ticket is now done, nothing more to do but still showing up under needs you and no way to clear the block.