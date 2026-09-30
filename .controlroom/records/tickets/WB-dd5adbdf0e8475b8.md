---
title: Improve Save Feedback Button
attachments:
  - image-113e5977b6b08321
labels:
  - visual-feedback
  - ui
  - review
  - layout
schema: 1
id: WB-dd5adbdf0e8475b8
kind: ticket
status: done
createdAt: 2026-09-27T05:53:22.301Z
updatedAt: 2026-09-30T05:32:45.605Z
author:
  name: You
  kind: human
number: 48
order: 1790488402306
reviewedRules: {}
priority: 2
scopeApproved: true
handoff: "Aligned review form buttons with the bottom of their adjacent selects,
  with consistent control height and wrapping on narrow screens. No outcome or
  feedback behavior changed. Decisions: no consequential project decisions
  changed."
evidence: Production build/typecheck passed. All 63 core/model/integration tests
  passed. All 60 browser workflows passed across the full run (57 passed) and
  focused rerun (9 passed including one newly added workflow). Older test
  corrections await save-and-close before reopening and scope question controls
  to the intended thread. Review/question screenshots inspected on desktop and
  narrow screens. Changes are local and uncommitted; no Git commits or pushes.
  Control Room Dev and the installed JuiceLab application have been refreshed.
  See ControlRoom/VALIDATION.md.
exceptions: No known failures in the exercised workflows. Human visual/workflow
  review requested below.
reviewVerificationAt: 2026-09-27T07:03:38.741Z
reviewInstructions: "On a Review ticket, click Request changes. Check that Save
  feedback & return aligns with the Return to select. Narrow the window:
  controls should wrap without clipping. You can inspect alignment without
  submitting a review outcome."
manualReviewRequired: true
branch: main
verification:
  command: PLAYWRIGHT_BROWSERS_PATH=.runtime/browsers
    PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm run test:browser --
    tests/browser/selected-ui-batch.spec.ts tests/browser/backlog-batch.spec.ts
    tests/browser/workboard.spec.ts --grep 'parent autocomplete|create a ticket,
    discuss|parent navigation|open questions|review displays|review
    return|screenshot creation|lost screenshot|screenshot save failures'
  exitCode: 0
  at: 2026-09-27T07:03:38.741Z
  output: "Recorded result from the completed focused Chromium run: 9 passed
    (13.5s). Passed: parent autocomplete; parent navigation and failed draft
    save; prominent questions and reply recovery; current/historical review
    evidence; desktop/narrow review alignment; screenshot
    title/cancel/exact-ticket flow; lost create-response recovery without
    replay; annotation/create failures and duplicate-submit guard; ticket
    conversation and review submission. See
    tests/browser/selected-ui-batch.spec.ts and VALIDATION.md."
reviewOutcome:
  requestId: d2ce547b-10bd-4692-970b-73d1deb3da43
  fingerprint: 17166a7cb3ac95e2fbb895eecaaf47a4e1e46e92f6b05dfee56936eeb8f6cfc4
archived: true
---
## Visual feedback

[![Screenshot](/api/images/image-113e5977b6b08321/base)](#image=image-113e5977b6b08321)

- [ ] A1 (note-99cf8437-c9c4-40a6-a40a-5600720d54dd): I don't like how this button is not vertically aligned with the failed review dropdown. 

## Backlog refinement

Prepared by Codex backlog refinement. This describes planned work; implementation has not started. Proposed behavior remains subject to human scope review.

### Intended outcome

Align the Save feedback & return button with the Failed Review destination dropdown, as requested in screenshot annotation A1 (note-99cf8437-c9c4-40a6-a40a-5600720d54dd).

### Scope and approach

Make a focused layout adjustment to the review feedback action row. Align the button with the dropdown control itself, excluding the Return to label from alignment calculations. Keep control heights and spacing consistent with the existing UI. Use responsive layout rules rather than a fixed offset tied to the screenshot dimensions.

### Acceptance criteria

- [ ] At desktop width, the dropdown and Save feedback & return button share the same vertical alignment and consistent control height; the Return to label remains above the dropdown.
- [ ] At narrow widths or increased text/zoom size, controls wrap or stack cleanly without overlapping, clipping their labels, or causing horizontal overflow.
- [ ] Long/custom destination names, disabled/saving states and validation messages do not break the action row.
- [ ] Keyboard order, visible focus, selected destination and optional feedback behavior remain intact. Submitting still saves feedback and returns the ticket to the chosen stage.
- [ ] The acceptance flow remains correctly laid out, including its optional Done destination selector when multiple Done columns exist.

### Implementation notes and related work

Inspect web/ReviewActions.tsx and scoped review-action styles in web/styles.css. The current inline-actions row contains a labeled field beside a bare button; align the actual controls rather than centering against the entire labeled field. Avoid a global inline-actions change that shifts unrelated toolbars. Related: #30 review feedback and #47 prominent review instructions.

### Human review / verification

Compare the request-changes row against the attached screenshot at desktop and narrow widths, including browser zoom and a long destination name. Check keyboard focus and one feedback submission on a fixture ticket. This is a visual adjustment; use focused browser/visual verification without adding tests that merely duplicate the CSS.
