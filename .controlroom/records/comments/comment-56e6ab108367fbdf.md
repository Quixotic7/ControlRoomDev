---
id: comment-56e6ab108367fbdf
ticket: WB-783315bc0ba24854
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-10-01T09:51:41.823Z
resolved: false
---
## Work completed

Removed whole-annotation serialization from each drawing movement/keystroke, memoized unchanged SVG paths and ticket destination options, and batched drawing samples once per animation frame. Undo snapshots share immutable data instead of deep-copying all points. Pending samples are flushed before save, undo, close and cancellation; a second pointer cannot steal the active stroke. Independent Sol review found two edge cases; both were corrected and covered by tests.

Merged into main 9ff7c6c and installed in Dev4173 and Juice4280. Both services return health200 and serve /assets/index-BhABzEO9.js matching the built source. Upgrade hashes preserved675 Dev and110 Juice record/asset/configuration files plus launchers. No push.

Decisions: none; focused performance implementation preserves existing editing, persistence and workflow choices.

## What to review

Reload Control Room in Juice Lab (and Dev if open). Reopen a screenshot that previously felt laggy, draw several long strokes, and type annotation text. Confirm responsiveness is comfortable with your actual image/browser. Move a mark, undo/redo, save, close and reopen; text and geometry should remain unchanged. Automated checks pass, but the original report has no attached reproduction image, so your actual-input performance is the remaining human validation.

## Verification

Production build and typecheck pass. All3 focused annotation browser tests pass. The broader run passed10 checks and failed1 ticket-description deep-link navigation check; an isolated rerun also failed, while the earlier worktree run and previous-build comparison passed. That startup/navigation issue is recorded separately for investigation. Passing coverage includes a6240×3548 screenshot with60000 saved stroke points, typing/drawing, exact saved geometry, preview dimensions and reopening, cancellation before a frame, competing pointers, undo/redo/move, close/dirty detection, text-on-image, zoom/pan, screenshot lifecycle and capture recovery. Prior build fails the no-per-input-serialization regression (60 collection serializations during typing,120 counted during drawing); fixed build performs0. Final two-frame p95 measurements57.8ms typing/34.2ms drawing, under75ms test ceiling. Timing is a local automated fixture, not a claim of measured improvement on your real screenshot. Logs: /private/tmp/cr81-final-annotation.log, /private/tmp/cr81-release-browser.log (10passed/1failed), /private/tmp/cr81-preview-recheck.log, /private/tmp/cr81-navigation-baseline.log, /private/tmp/cr81-baseline.log, /private/tmp/cr81-main-build.log.

Recorded run: npm run build; playwright test tests/browser/annotation-performance.spec.ts — exit 0 (2026-10-01T09:51:41.738Z).

Branch: main

## Exceptions and limitations

No UI/format rule changes. Existing Vite bundle-size advisory remains; build passes. Broader ticket-description deep-link navigation test fails intermittently across builds/checkouts; the unchanged App.tsx startup/hash handling needs separate investigation, so the whole browser suite is not claimed green. User-specific responsiveness needs the real screenshot/browser check described above.

Recorded by Codex chat orchestrator (agent) at 2026-10-01T09:51:41.809Z.
