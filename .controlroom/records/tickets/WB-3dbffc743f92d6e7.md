---
parent: WB-35da530c7d149673
title: Middle Click to open ticket in new tab
status: done
schema: 1
id: WB-3dbffc743f92d6e7
kind: ticket
createdAt: 2026-09-27T05:21:14.523Z
updatedAt: 2026-09-30T05:32:45.207Z
author:
  name: You
  kind: human
number: 42
order: 1790486474534
reviewedRules: {}
priority: 1
scopeApproved: true
handoff: "Middle-click and modifier-click now open a dedicated ticket-only page
  (?ticketOnly=1#ticket=ID), without the board or top navigation underneath. The
  Control Room logo returns to the board through the existing save flow; ticket
  edits persist and failed saves retain the draft. Ordinary board clicks still
  use the centered dialog, and the new tab survives refresh. No consequential
  decisions changed."
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
  at: 2026-09-27T06:20:20.953Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
reviewInstructions: >-
  1. Refresh, then middle-click a board ticket. The new tab should contain just
  that ticket and a Control Room logo at upper left, with no board underneath.

  2. Reload the new tab: the same ticket stays open. Edit its title, then click
  the logo; the board should appear and the edit should be saved.

  3. The original tab should remain on its board. Normal click should still open
  a centered popup. Automated new-tab, reload and save/navigation checks passed.
reviewOutcome:
  requestId: 1ec3e808-5d23-4d72-8010-73d2950c64ec
  fingerprint: fe1c3bbf7660b4930d21b6296d4b0855e02d87096f76650633af62ad48fdd892
archived: true
---
I need to be able to middle click and open the ticket in a new tab. 