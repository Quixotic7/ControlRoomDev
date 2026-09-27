---
id: comment-decb2dabcfd63970
ticket: WB-f0d1d1bc57e5f89b
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T02:29:25.630Z
resolved: false
---
## Work completed

Fixed the nonfunctional-looking view dropdown: its panel was clipped by the horizontally scrolling tab strip. The menu now uses the browser top layer, remains anchored while scrolling/resizing, and is verified with actual point hit-testing. Replaced the arrow with a compact ellipsis options button while retaining stable tab widths, keyboard Escape and rename behavior.

## What to review

1. Refresh and click the ellipsis on the active Board/Table/custom view. The menu should appear visibly below it, with working Rename, Duplicate and reorder actions.
2. Press Escape: the menu should close and focus return to the options button.
3. Switch views, try long names and resize horizontally. Tabs should retain their widths when selected, and menus should remain visible and clickable.

## Verification

Production build and TypeScript checks passed; 47 core/model/integration tests and all 32 Chromium browser workflows passed. The rebuilt native companion passed the double-Option detector and shortcut-registration self-test. New browser coverage is in tests/browser/review-round-two.spec.ts and updated screenshot deletion coverage. Menus, screenshot autocomplete and ticket images were visually inspected. Tests use disposable projects and did not delete real screenshots. See VALIDATION.md. Changes are local and uncommitted.

Branch: main
