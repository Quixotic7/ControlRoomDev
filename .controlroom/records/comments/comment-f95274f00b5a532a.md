---
id: comment-f95274f00b5a532a
ticket: WB-b65c6ae187397ade
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T10:53:21.508Z
resolved: false
---
## Orchestrator review: changes

The archive heading/region association is fixed, but the revised search regression still holds a locator for a count that changes to zero, so it cannot pass its empty-lane assertion.

### Acceptance criteria checked
Make the lane region identity stable while its visible count changes (or locate the region by stable heading ID/name prefix in the test and separately assert the visible count). Preserve the programmatic heading association, narrow horizontal scrolling, per-column geometry and restore checks. Verify the search assertion after shipped tickets disappear: the region must still be found and show No archived tickets, then restoring the filter must make Unarchive usable.

### Evidence
Exact correction06c5311 source review: ArchiveTickets.tsx uses aria-labelledby on a heading containing laneTickets.length. tests/browser/archive-grouping.spec.ts binds shipped to exact accessible name Shipped work 2 at lines89-92, then filters to the review child and reuses that locator for No archived tickets at line145. Filtering changes the shipped heading/region accessible name to Shipped work 0, so the locator cannot resolve. The previous rejection already required retained search/restore assertions, and this remains within that correction. The full integrated browser run currently owns4178, so this diagnosis is source-based, not claimed as a newly executed worker browser failure. Keep fixture counts deterministic when running with other specs.

Reviewer: Codex chat orchestrator; worker: Terra
Code identity: 391937278ce53c4c17b35b2ed0b19420a342769fbedeead51abdba048b435bd6
Integration: not performed. Retained branch: controlroom/run-d07f2f25ca691fba