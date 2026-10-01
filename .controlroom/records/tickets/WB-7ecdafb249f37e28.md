---
parent: null
title: Need a quick board filter for approved vs not approved tickets
status: review
schema: 1
id: WB-7ecdafb249f37e28
kind: ticket
createdAt: 2026-09-27T06:05:52.916Z
updatedAt: 2026-09-30T19:28:37.220Z
author:
  name: You
  kind: human
number: 52
order: 1790489152924
reviewedRules: {}
priority: 1
labels:
  - ui
  - filters
  - approval
scopeApproved: true
scopeApprovedAt: 2026-09-30T16:01:10.237Z
scopeApprovedBy:
  name: You
  kind: human
progressStartedAt: 2026-09-30T19:02:39.818Z
handoff: "Added Approval filter to board/table: All, Approved, Not approved and honest
  Custom state. Preserves unrelated query terms and per-view saved filters.
  Explicit scope approval stays separate from inherited permission. Filtering
  never edits tickets. Decisions: none."
evidence: "Merged main 52a37b4 and installed in Dev (4173) and Juice Lab (4280).
  Production build/TypeScript passed. Integrated verification: 35 browser checks
  and 20 focused core checks passed, covering real process identity/start/stop,
  activity service outage, reduced motion, status layout desktop/narrow/retro
  plus concurrent draft preservation, playbook copy/portability, approval
  query/saved views, native dragging and scrolling. Both services return health
  200 and exact installed/served artifacts match source dist. Record, attachment
  and saved-network/settings preservation checks passed. Logs:
  /private/tmp/cr-final-build.log, cr-final-browser.log, cr-updates-browser.log,
  cr-updates-unit.log, cr-updates-activity.log, cr-overlap-browser.log,
  cr-overlap-core.log. Duplicate relationship core checks also passed (7). No
  Git push."
exceptions: ""
reviewVerificationAt: 2026-09-30T19:28:37.039Z
reviewInstructions: Try the Approval control in Board and Table, combine with a text/label query,
  save a view and reload. Approved means that ticket’s own checkbox; a child
  authorized only through a parent belongs under Not approved. Confirm the
  control and typed query stay synchronized.
manualReviewRequired: true
branch: main
commits:
  - 1cf98d3
  - 279b198
  - 796bba5
verification:
  command: npm run build; focused core and integrated Playwright suites
  exitCode: 0
  output: "Merged main 52a37b4 and installed in Dev (4173) and Juice Lab (4280).
    Production build/TypeScript passed. Integrated verification: 35 browser
    checks and 20 focused core checks passed, covering real process
    identity/start/stop, activity service outage, reduced motion, status layout
    desktop/narrow/retro plus concurrent draft preservation, playbook
    copy/portability, approval query/saved views, native dragging and scrolling.
    Both services return health 200 and exact installed/served artifacts match
    source dist. Record, attachment and saved-network/settings preservation
    checks passed. Logs: /private/tmp/cr-final-build.log, cr-final-browser.log,
    cr-updates-browser.log, cr-updates-unit.log, cr-updates-activity.log,
    cr-overlap-browser.log, cr-overlap-core.log. Duplicate relationship core
    checks also passed (7). No Git push."
  at: 2026-09-30T19:28:37.039Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
---
## Backlog refinement

Prepared by Codex backlog refinement. This describes planned work; implementation has not started. Proposed behavior remains subject to human scope review.

### Intended outcome

Quickly switch the board between all tickets, tickets explicitly approved for agent work, and tickets still needing explicit approval, without typing filter syntax or opening each ticket.

### Scope and approach

Add a compact, labeled Approval control beside the existing board search/filter field with All, Approved and Not approved options. Reuse the current is:approved and -is:approved filters so the control, typed query and saved view stay in sync. Make the same control available in the project's table view.

Proposed definition: approval means the ticket's own Approve this scope for agent work checkbox, matching the existing filter. This is separate from acceptance into Done. A child may be authorized through an approved parent while lacking its own explicit approval; help text must explain that distinction. Do not change inherited agent permissions or set approval flags as a side effect of filtering.

### Acceptance criteria

- [ ] The Approval control switches between All, Approved and Not approved with a single selection and clearly shows the active choice.
- [ ] Approved matches scopeApproved=true; Not approved includes false or absent values. All removes only the approval constraint, preserving other search text and filters.
- [ ] Typing is:approved or -is:approved updates the control, and using the control updates the query without duplicating or leaving contradictory approval terms.
- [ ] Complex or mixed approval expressions are represented honestly (for example, a Custom state); changing them never silently drops unrelated query constraints.
- [ ] Existing status, label, owner and text filters compose correctly. Board/table counts and empty-state messaging reflect the filtered result. Archived tickets remain excluded unless explicitly requested.
- [ ] The control follows existing saved-view draft/save behavior, survives refresh after saving, and restores each view's own approval filter when switching views.
- [ ] Approval changes made in a ticket or another session update the visible results on refresh/live synchronization without losing the active filter.
- [ ] Keyboard operation and accessible labeling work in both density modes and narrow layouts; the new control does not shift saved-view tab widths.
- [ ] Filtering does not approve, move, claim, archive or accept tickets. Parent-scope authorization continues to behave as before.

### Implementation notes and related work

web/model.ts already supports is:approved and its negation using the explicit scopeApproved flag. Inspect web/ProjectPage.tsx for filter controls and saved-view handling, and src/store.ts approvedScope behavior when explaining inherited permission. Reuse parsed filter behavior rather than fragile string replacement. Related: #16 quick approval actions and #46 column visibility. Bulk approval and changing approval inheritance are outside this ticket.

### Human review / verification

Use a fixture with explicitly approved, unchecked and parent-authorized child tickets. Toggle all three options, combine with a label/text query, save a view and reload. Approve a visible ticket in another session and confirm it enters/leaves the filtered set correctly. Check that changing the filter never modifies any ticket's approval or stage.
