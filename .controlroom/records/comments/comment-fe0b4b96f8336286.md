---
id: comment-fe0b4b96f8336286
ticket: WB-a0a2ebc90aa797ca
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T12:40:59.857Z
resolved: false
---
## Orchestrator review: changes

The feed needs corrections to preserve filtered results and complete history across asynchronous pagination and live refresh.

### Acceptance criteria checked
Guard loadOlder success/error/finally and live refresh responses with the current filter/request generation; an old response must not append records, change cursor/facets/loading, or show an obsolete error after a filter switch. Handle bursts larger than the30-entry head page by fetching through the known boundary or safely rebuilding the result/cursor so no middle history is skipped; update hasMore/cursor consistently without yanking a reader. Bootstrap browser test authentication with GET / before record creation and assert fixture response success. Add delayed-pagination/filter-switch and >30-new-events/reconnect regressions alongside existing attribution/deep-link/scroll checks. Preserve durable sources and human question/review entries.

### Evidence
Exact548205b, snapshotb6f250178030c0604c3f35d477d9a876465c46df0db5f49c3eb87c7c2db58493. Source review: web/Feed.tsx loadOlder does not capture/check requestVersion although initial filter requests do; changing filters while an older request is pending allows the previous page to merge into the new filter and replace its cursor/facets. Live refresh fetches only30 head entries, merges them with the retained list and never updates cursor/hasMore; after a disconnected burst >30 there is a missing middle interval that the old cursor cannot reach, and an initially complete short list may retain hasMore=false. tests/browser/feed.spec.ts posts before any initial GET/cookie setup. Controllerbuild/corepassed. After the main suite exited, independent exact tests/browser/feed.spec.ts failed before testing the UI: record.meta is undefined atline14 because setup posts before cookie bootstrap. Log /private/tmp/cr25-first-browser.log. The pagination/live-gap findings are source-based, distinct from this executed fixture failure. No live records changed.

Reviewer: Codex chat orchestrator; worker: Sol
Code identity: b6f250178030c0604c3f35d477d9a876465c46df0db5f49c3eb87c7c2db58493
Integration: not performed. Retained branch: controlroom/run-38af809a1804d544