---
id: comment-7b6a1565aedef201
ticket: WB-a9bf6cb0903dc47b
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T06:20:23.690Z
resolved: false
---
## Work completed

Capture activation now follows foreground focus and actual pointer/keyboard interaction, including interactions inside dialogs. Background state polling and unfocused/hidden pages do not activate a destination; registering a project preserves its last activity or starts inactive, so launching another service cannot steal capture. Active requests reuse the running companion instead of reopening it on every interaction. The companion already chooses the latest project at trigger time. No new decision beyond the compatibility coordination recorded with #43.

## What to review

Manual macOS check still needed (automated interaction/routing and native shortcut self-tests passed):
1. Refresh both Control Room Dev (4173) and JuiceLab (4280). Click/type in Dev, switch to another application, then double-tap Option and capture a small region. It should appear in Dev’s Screenshots library.
2. Click/type in JuiceLab, switch away, then repeat. The image should now arrive in JuiceLab. Merely leaving the other window visible or its background refresh running must not change the destination.
3. Cancel one capture and confirm no completed screenshot appears. This check confirms actual desktop routing; the test suite alone cannot establish it.

## Verification

Build/typecheck passed; all 62 core/model/integration tests passed. All 53 browser workflows passed across the full run (49 passed) and four focused reruns after fixing old fixture paths and font/live-data readiness. Installed migration trial passed with byte-preserved assets, custom launcher preservation, bundled CLI startup/read/write and legacy command alias. Native build and shortcut detector/hotkey registration self-tests passed (registration status 0); actual desktop capture routing still requires the listed manual check. Live Dev and JuiceLab services were updated without migrating their record folders; JuiceLab record hashes were unchanged. See VALIDATION.md. Changes remain uncommitted.

Recorded run: git diff --check — exit 0 (2026-09-27T06:20:23.634Z).

Branch: main

## Exceptions and limitations

Actual macOS capture routing/cancellation is not yet manually verified.
