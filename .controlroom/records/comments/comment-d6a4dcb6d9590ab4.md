---
id: comment-d6a4dcb6d9590ab4
ticket: WB-02564d852b33a295
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T13:52:47.886Z
resolved: false
---
## Work completed

Statuses can be named, added, reordered and assigned workflow roles with removal/default safeguards. Concurrent settings changes retain the local draft; reapplying a draft keeps the persisted remote baseline, so a second remote update cannot silently discard it. Merged on main 1797295 and installed in Control Room Dev and Juice Lab.

## What to review

Open Customize statuses and inspect the names, roles and ordering controls. If useful, try a disposable added status and review the used-column removal warning. Please confirm the setup feels clear before accepting this direct correction.

## Verification

Production build and TypeScript passed; all 131 core tests passed. Full browser run passed 126 of 129 checks; three selector-only fixture ambiguities were corrected, then all 16 interacting approval, relationship and review checks passed. No production changes followed the full run. Focused #21 native gesture also passed ten consecutive runs. Both installed apps serve the verified artifacts with preserved records, attachments and saved settings. Logs: /private/tmp/cr-final-build.log, cr-final-core.log, cr-final-browser.log, cr-final-browser-recheck.log, cr-final-typecheck.log. Six pre-existing local edits remain unchanged. No push performed.

Recorded run: npm run build && npm test; playwright test — exit 0 (2026-09-30T13:50:56.467Z).

Branch: main
