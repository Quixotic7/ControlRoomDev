---
id: comment-f230234f54db9ab1
ticket: WB-8fae6738f0afb5cc
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T02:29:30.637Z
resolved: false
---
## Work completed

Replaced the screenshot editor’s Attach to ticket dropdown with a searchable autocomplete by title or #number, reusing the parent-picker keyboard behavior. Choices show ticket identity and stage; typing/canceling does not silently change the selected destination. The popup opens above the lower editor fields so it remains clickable. Added up to three attachment thumbnails with an overflow count on board cards and annotated previews with source-image fallback in ticket details. Missing local images and Trash state remain explicit. Addresses A1 note-acef7d1d-9673-4a44-86a2-d1989f3881f8.

## What to review

1. Refresh, open a screenshot, expand Attach to a ticket, and type a title or #number in Attach to ticket. Choose with arrows/Enter or click; Save to ticket should link the selected ticket.
2. Search for another ticket then Escape: the prior selection should remain. Clear the destination to create a new ticket; split mode should offer the same search for its parent.
3. View a ticket with images on the board: thumbnails should appear on its card. Open the ticket and inspect Images & visual feedback; previews should open the correct screenshot. More than three card images should show an overflow count.

## Verification

Production build and TypeScript checks passed; 47 core/model/integration tests and all 32 Chromium browser workflows passed. The rebuilt native companion passed the double-Option detector and shortcut-registration self-test. New browser coverage is in tests/browser/review-round-two.spec.ts and updated screenshot deletion coverage. Menus, screenshot autocomplete and ticket images were visually inspected. Tests use disposable projects and did not delete real screenshots. See VALIDATION.md. Changes are local and uncommitted.

Branch: main
