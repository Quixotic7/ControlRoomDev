---
id: comment-edb6d5a28a9f5723
ticket: WB-44b695783190797a
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T01:51:49.589Z
resolved: false
---
## Work completed

Added an image viewport with cursor-centered scroll zoom, zoom buttons, Fit image, actual-pixel 100%, and pan via the Pan tool, Space-drag, or middle-button drag. Keyboard +/−, 0 (fit), and 1 (100%) are documented in the in-app shortcut list. Fit accounts for both viewport dimensions and responds to resizing. Image and annotation geometry transform together; saved coordinates, undo history, and native-resolution exports stay independent of the view. This addresses A1 (note-548f3f21-ffc3-467e-a1c7-943669e8830f): details can now be inspected at full size.

## What to review

1. Refresh and open this ticket’s screenshot. Choose 100% or press 1 to inspect details, then scroll over a point to zoom around it.
2. Hold Space and drag, use Pan, or middle-button drag to move around without adding marks. Use Fit image or 0 to recover the full image.
3. Add a mark while zoomed, save, close, and reopen: it should stay aligned to the same image detail. Check Delete/Undo still work.
4. Resize the window while fitted and inspect the in-app keyboard shortcuts.

## Verification

Production build and TypeScript checks passed. 47 core/model/integration tests passed. All 27 Chromium workflows passed across the full run (26 passing) and focused rerun correcting an ambiguous older selector, plus expanded zoom/pan assertions. Tests cover preview defaults, Trash/restore and cancellation, stale revisions, backup preservation, normalized coordinates at zoom, Space/middle-button/hand pan, cursor anchoring, preview dimensions, reopening and resize. Fitted and enlarged editor screenshots were visually inspected. Disposable projects only; real screenshots untouched. See VALIDATION.md. Changes are local and uncommitted.

Branch: main
