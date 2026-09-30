---
id: comment-30d1b5cd49026afb
ticket: WB-7c299bb562b75da0
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T18:11:05.180Z
resolved: false
---
## Work completed

Addressed your review: Network access now has Require pairing code and Paired access duration (hours). Uncheck the first option to open the board directly on the trusted LAN with no code or session timer. Paired duration supports 0.25–8760 hours, defaults to eight, and applies to new pairings; existing grants retain their expiry. Changing whether pairing is required clears old codes/sessions and re-enforces pairing immediately, preserving browser drafts. Host-only controls and origin restrictions still apply in either mode. Existing settings were preserved during installation. Both ControlRoomDev and JuiceLab are updated. Decision: DEC-0424c8f99e4f4a31 supersedes the mandatory-code/fixed-duration policy in DEC-a50e4388f1a92fca. Human feedback confirmed the original second-device connection worked.

## What to review

Refresh the host board, then open Settings & backups → Network access. Uncheck Require pairing code and open the LAN address in a private browser on the other device: the board should open without a code. Re-check Require pairing code: the remote browser should request a code on its next refresh/API request. Set Paired access duration (hours), save, and generate a code for a new pairing. Confirm the duration is shown on the connection screen and survives reopening Settings. Existing paired sessions keep their original duration unless revoked; the one-use setup code still expires after ten minutes.

## Verification

80 core tests and 3 LAN browser workflows passed; production build/typecheck and git diff --check passed. Browser checks used disposable projects and the actual LAN HTTP origin. Installed bundle hashes and original ports verified; project records/assets/config and custom launchers preserved. Human already confirmed separate-device connectivity in the previous review. See VALIDATION.md.

Recorded run: npm run build; npm test; npm run test:browser -- tests/browser/network.spec.ts (project Node 24 and Chromium) — exit 0 (2026-09-27T18:08:19.458Z).

Branch: main

## Exceptions and limitations

Open mode deliberately allows reachable trusted-LAN devices project-wide access without a code. HTTP remains unencrypted. Session duration changes affect new grants; use Revoke all remote sessions to reset older grants. Changes remain uncommitted.
