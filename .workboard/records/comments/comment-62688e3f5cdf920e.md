---
id: comment-62688e3f5cdf920e
ticket: WB-ad9e9720e87b2557
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T02:29:27.487Z
resolved: false
---
## Work completed

Addressed review feedback: removed individual delete links below library thumbnails and placed Delete screenshot inside the editor. Added Select screenshots, checkboxes/card selection, Select visible, Delete selected and Restore selected. Filtering removes hidden selections. Bulk operations use revisions captured on selection, retain failed items with per-image errors, and do not repeat successful deletes. Trash still preserves saved images, annotations and existing ticket links. Editor deletion explicitly warns when unsaved marks will be discarded.

## What to review

1. Refresh Screenshots: individual Delete links should no longer sit under thumbnails. Open an image to find Delete screenshot in its editor; cancel first, then confirm using a disposable image.
2. In the library choose Select screenshots. Select several by checkbox or thumbnail and use Delete selected. Restore them from Trash with Restore selected or from the editor.
3. Select multiple images, then filter: hidden items must drop from selection. If another session edits a selected image, deletion should report that item as failed without deleting its newer annotations. Review and reselect failed items before retrying.

## Verification

Production build and TypeScript checks passed; 47 core/model/integration tests and all 32 Chromium browser workflows passed. The rebuilt native companion passed the double-Option detector and shortcut-registration self-test. New browser coverage is in tests/browser/review-round-two.spec.ts and updated screenshot deletion coverage. Menus, screenshot autocomplete and ticket images were visually inspected. Tests use disposable projects and did not delete real screenshots. See VALIDATION.md. Changes are local and uncommitted.

Branch: main
