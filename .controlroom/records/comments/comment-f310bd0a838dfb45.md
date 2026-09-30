---
id: comment-f310bd0a838dfb45
ticket: WB-3dbffc743f92d6e7
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T06:20:21.019Z
resolved: false
---
## Work completed

Middle-click and modifier-click now open a dedicated ticket-only page (?ticketOnly=1#ticket=ID), without the board or top navigation underneath. The Control Room logo returns to the board through the existing save flow; ticket edits persist and failed saves retain the draft. Ordinary board clicks still use the centered dialog, and the new tab survives refresh. No consequential decisions changed.

## What to review

1. Refresh, then middle-click a board ticket. The new tab should contain just that ticket and a Control Room logo at upper left, with no board underneath.
2. Reload the new tab: the same ticket stays open. Edit its title, then click the logo; the board should appear and the edit should be saved.
3. The original tab should remain on its board. Normal click should still open a centered popup. Automated new-tab, reload and save/navigation checks passed.

## Verification

Build/typecheck passed; all 62 core/model/integration tests passed. All 53 browser workflows passed across the full run (49 passed) and four focused reruns after fixing old fixture paths and font/live-data readiness. Installed migration trial passed with byte-preserved assets, custom launcher preservation, bundled CLI startup/read/write and legacy command alias. Native build and shortcut detector/hotkey registration self-tests passed (registration status 0); actual desktop capture routing still requires the listed manual check. Live Dev and JuiceLab services were updated without migrating their record folders; JuiceLab record hashes were unchanged. See VALIDATION.md. Changes remain uncommitted.

Recorded run: git diff --check — exit 0 (2026-09-27T06:20:20.953Z).

Branch: main
