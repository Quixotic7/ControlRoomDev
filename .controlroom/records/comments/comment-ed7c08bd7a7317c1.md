---
id: comment-ed7c08bd7a7317c1
ticket: WB-ad9e9720e87b2557
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T01:51:48.213Z
resolved: false
---
## Work completed

Added Delete screenshot in the Screenshots library, with confirmation and a Trash view offering Restore screenshot. Deletion retains the base image, editable annotations, preview, and existing ticket links. The editor shows a Trash notice and requires restoration before saving. Serialized, revision-checked mutations reject stale deletion/restoration/annotation saves, and Trash state survives backup/restore. This is reversible deletion; it does not reclaim disk space.

## What to review

1. Refresh, open Screenshots, and use Delete screenshot on an image. Cancel first to verify it remains, then confirm. It should leave the main library.
2. Open Trash: the image should be there. Open it and check the Trash notice and disabled save buttons. Existing ticket references remain available.
3. Restore screenshot from the editor or Trash card. It should return to the library with its annotations intact and allow editing. Deletion is reversible and does not free disk space.

## Verification

Production build and TypeScript checks passed. 47 core/model/integration tests passed. All 27 Chromium workflows passed across the full run (26 passing) and focused rerun correcting an ambiguous older selector, plus expanded zoom/pan assertions. Tests cover preview defaults, Trash/restore and cancellation, stale revisions, backup preservation, normalized coordinates at zoom, Space/middle-button/hand pan, cursor anchoring, preview dimensions, reopening and resize. Fitted and enlarged editor screenshots were visually inspected. Disposable projects only; real screenshots untouched. See VALIDATION.md. Changes are local and uncommitted.

Branch: main
