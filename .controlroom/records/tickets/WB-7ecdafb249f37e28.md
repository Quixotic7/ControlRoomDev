---
parent: null
title: Need a quick board filter for approved vs not approved tickets
status: backlog
schema: 1
id: WB-7ecdafb249f37e28
kind: ticket
createdAt: 2026-09-27T06:05:52.916Z
updatedAt: 2026-09-27T06:21:56.701Z
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
