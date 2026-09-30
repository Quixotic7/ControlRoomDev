---
id: comment-177308b7e1837ffc
ticket: WB-07cad09fd156289c
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T06:20:22.409Z
resolved: false
---
## Work completed

Introduced controlroom commands, ControlRoom.command launchers, CONTROLROOM_ACTOR variables and MCP name controlroom. New data defaults to .controlroom; legacy .workboard projects remain readable and explicit migrate refuses live services, outdated installed runtimes and dual directories. Upgrade preserves existing project records/custom launchers. New exports use ControlRoom naming and both old/new formats restore. README documents the full maintenance and rollback procedure. Capture app/executable display names are ControlRoom Capture, retaining internal compatibility identity/rendezvous identifiers. Existing live record folders were deliberately not moved. Decision: DEC-ca3fe8bde1f4fa9d.

## What to review

Automated installed-project upgrade/migration, byte-preservation, refusal cases and old/new export compatibility passed.
1. From this workspace root run ./ControlRoom/controlroom --project . list; it should read the same board. In installed JuiceLab, ./.workboard/controlroom list should work.
2. Review README’s Moving an existing project to ControlRoom names section. No live-folder migration is required to accept the implementation; use the documented backup/stop/upgrade/migrate steps when you want to move a project.
3. The new ControlRoom.command launcher should connect to its project. MCP registration now uses controlroom; legacy workboard and WORKBOARD_ACTOR integrations remain supported.
Native helper display changes take effect on relaunch. If macOS requests permissions after the rebuilt ad-hoc helper, use Settings → Show current capture app to authorize the exact app.

## Verification

Build/typecheck passed; all 62 core/model/integration tests passed. All 53 browser workflows passed across the full run (49 passed) and four focused reruns after fixing old fixture paths and font/live-data readiness. Installed migration trial passed with byte-preserved assets, custom launcher preservation, bundled CLI startup/read/write and legacy command alias. Native build and shortcut detector/hotkey registration self-tests passed (registration status 0); actual desktop capture routing still requires the listed manual check. Live Dev and JuiceLab services were updated without migrating their record folders; JuiceLab record hashes were unchanged. See VALIDATION.md. Changes remain uncommitted.

Recorded run: git diff --check — exit 0 (2026-09-27T06:20:22.319Z).

Branch: main

## Exceptions and limitations

Live record folders remain .workboard pending explicit migration. Native ad-hoc helper permissions may require reapproval on relaunch.
