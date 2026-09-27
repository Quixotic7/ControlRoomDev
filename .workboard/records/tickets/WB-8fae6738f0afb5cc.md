---
title: Screenshot feedback
attachments:
  - image-615ed966a3bc6b79
labels:
  - visual-feedback
schema: 1
id: WB-8fae6738f0afb5cc
kind: ticket
status: review
createdAt: 2026-09-27T02:11:55.620Z
updatedAt: 2026-09-27T02:29:30.632Z
author:
  name: You
  kind: human
number: 36
order: 1790475115626
reviewedRules: {}
scopeApproved: true
handoff: "Replaced the screenshot editor’s Attach to ticket dropdown with a searchable
  autocomplete by title or #number, reusing the parent-picker keyboard behavior.
  Choices show ticket identity and stage; typing/canceling does not silently
  change the selected destination. The popup opens above the lower editor fields
  so it remains clickable. Added up to three attachment thumbnails with an
  overflow count on board cards and annotated previews with source-image
  fallback in ticket details. Missing local images and Trash state remain
  explicit. Addresses A1 note-acef7d1d-9673-4a44-86a2-d1989f3881f8."
evidence: Production build and TypeScript checks passed; 47 core/model/integration tests
  and all 32 Chromium browser workflows passed. The rebuilt native companion
  passed the double-Option detector and shortcut-registration self-test. New
  browser coverage is in tests/browser/review-round-two.spec.ts and updated
  screenshot deletion coverage. Menus, screenshot autocomplete and ticket images
  were visually inspected. Tests use disposable projects and did not delete real
  screenshots. See VALIDATION.md. Changes are local and uncommitted.
exceptions: ""
branch: main
reviewInstructions: >-
  1. Refresh, open a screenshot, expand Attach to a ticket, and type a title or
  #number in Attach to ticket. Choose with arrows/Enter or click; Save to ticket
  should link the selected ticket.

  2. Search for another ticket then Escape: the prior selection should remain.
  Clear the destination to create a new ticket; split mode should offer the same
  search for its parent.

  3. View a ticket with images on the board: thumbnails should appear on its
  card. Open the ticket and inspect Images & visual feedback; previews should
  open the correct screenshot. More than three card images should show an
  overflow count.
---
## Visual feedback

- [ ] A1 (note-acef7d1d-9673-4a44-86a2-d1989f3881f8): This should be intellisense textfield

Also images need to show up in the ticket preview as thumbnails