---
parent: WB-35da530c7d149673
title: A feed feature would be nice always showing latest updates up top
status: backlog
schema: 1
id: WB-a0a2ebc90aa797ca
kind: ticket
createdAt: 2026-09-26T23:38:51.492Z
updatedAt: 2026-09-27T00:47:58.041Z
author:
  name: You
  kind: human
number: 25
order: 16384
reviewedRules: {}
labels:
  - ui
  - activity
priority: 2
---
## Backlog refinement

Prepared by Codex backlog refinement. This describes planned work; implementation has not started.

### Intended outcome

Offer a newest-first project activity feed so a human can quickly see what changed across tickets and project knowledge.

### Scope and approach

Add a Feed view combining meaningful ticket transitions/edits, comments, review submissions, and decision/rule changes. Reuse durable history and comments with stable event identities; keep Needs you focused on actionable items rather than replacing it.

### Acceptance criteria

- [ ] Entries show actor, time, event type, ticket number/title or knowledge title, and a concise change summary; clicking opens the relevant record/conversation.
- [ ] New activity appears at the top while the user is at the top; when reading older items, offer a new-updates indicator without yanking scroll position.
- [ ] Refresh/reconnect does not duplicate entries; ordering is deterministic for equal timestamps and older history can be loaded incrementally.
- [ ] Filter by actor, event type, and related ticket; group noisy edits without hiding review requests or human questions.
- [ ] Durable comments and record history remain the source of truth; the feed is reconstructible and retains attribution.
- [ ] Archived-ticket events stay traceable, malformed/missing references degrade gracefully, and unrelated routine heartbeats do not flood the feed.

### Implementation notes and related work

Start with src/store.ts historyFor/state/index, src/server.ts state updates, web/useProjectState.ts, web/Pages.tsx and web/TopNav.tsx. Account for current JSONL history and supported legacy events. Related: #23 and #28.

### Human review / verification

Create comments, submit review, change a rule, and update a ticket; verify newest-first attribution and deep links after reload. Test scrolling while new events arrive and loading older events without duplication.
