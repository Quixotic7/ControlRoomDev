---
title: Keep matching parent tickets visible when filtering
parent: null
labels:
  - bug
  - code-review
  - ui
priority: 2
status: done
schema: 1
id: WB-0cf44584abbbabb5
kind: ticket
createdAt: 2026-09-26T23:10:06.289Z
updatedAt: 2026-09-30T05:32:45.572Z
author:
  name: Codex code review
  kind: agent
number: 10
order: 1790463175314
reviewedRules: {}
scopeApproved: true
handoff: Parent-grouped views retain a parent that matches a title or number
  search even when none of its children match. The new browser regression
  verifies that the result stays visible and opens correctly. Changes are in the
  ControlRoom working tree, uncommitted. Ready for human review; no automatic
  commits or pushes.
evidence: "All 44 core/model/integration tests passed (shared run recorded on
  #12), including dedicated regressions for these review findings. Production
  build/typecheck, 20 browser workflows, and separate installation/upgrade
  checks passed. Native detector self-tests and unchanged-build reuse also
  passed; live macOS capture remains a separate open acceptance issue on #4."
exceptions: ""
branch: main
archived: true
---
## Finding

In a view grouped by parent, the parent is represented by the group header instead of an item. Filtering drops every group with zero matching children, including groups whose parent itself matched the search.

## Reproduction and evidence

Created a parent titled Unique parent name and a differently named child. Filtering for Unique parent name produced one matching record but zero rendered groups. This also affects searches by the parent ticket number.

## Acceptance criteria

- [ ] Retain a group when its parent matches the active filter, even if none of its children match.
- [ ] Keep the parent visible and openable without falsely reporting no matches.
- [ ] Preserve child-only matches and the intended handling of genuinely empty groups.
- [ ] Add browser coverage for parent-title and parent-number searches in parent-grouped views.

## Source

[ControlRoom/web/ProjectPage.tsx:157](https://github.com/Quixotic7/ControlRoom/blob/07413cb4234f4ce7180a0126c21d6948c2311b19/web/ProjectPage.tsx#L157) at reviewed commit 07413cb4234f4ce7180a0126c21d6948c2311b19. Board repository: ControlRoomDev.

## Review context

Found during the 2026-09-26 Codex review. Type checking, 38 core/model tests, and 19 browser workflows passed; this case needs additional regression coverage.
