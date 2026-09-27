---
parent: WB-35da530c7d149673
title: parent ticket box should be a text field with intellisense
status: progress
schema: 1
id: WB-4fc77f88ed07ab8e
kind: ticket
createdAt: 2026-09-26T23:18:01.382Z
updatedAt: 2026-09-27T00:54:40.101Z
author:
  name: You
  kind: human
number: 15
order: 3072
reviewedRules: {}
labels:
  - ui
  - relationships
priority: 1
scopeApproved: true
---
Once there's a lot of tickets this current dropdown list won't work. 

## Backlog refinement

Prepared by Codex backlog refinement. This describes planned work; implementation has not started.

### Intended outcome

Find and assign a parent by typing its title or ticket number instead of browsing an increasingly long dropdown.

### Scope and approach

Replace the parent selector with an accessible autocomplete. Show number, title, and stage in suggestions, the selected parent clearly, and an explicit No parent action. Typing a search query must not create a ticket or change the relationship until a result is selected.

### Acceptance criteria

- [ ] Search matches title text and numeric references including 0 and #0, with a bounded suggestion list and an informative empty state.
- [ ] Arrow keys navigate, Enter selects, Escape dismisses, and focus/selection are announced through combobox semantics.
- [ ] The current ticket and descendants cannot be selected as parents; server validation still rejects cycles and stale writes.
- [ ] An existing parent stays visible even if archived or excluded by current board filters; ordinary suggestions prioritize nonarchived tickets.
- [ ] Selecting, clearing, saving, reopening, and canceling a search preserve the expected relationship and unrelated ticket fields.

### Implementation notes and related work

Start with web/RecordDetail.tsx parent selector, web/TagInput.tsx for existing suggestion patterns, and src/store.ts ticketLinks/validate. Related: #14. Store canonical IDs while displaying public ticket numbers.

### Human review / verification

Use a fixture with hundreds of tickets, duplicate titles, a ticket numbered 0, and nested parents. Confirm keyboard operation, correct disambiguation, and cycle rejection.
