---
parent: WB-35da530c7d149673
title: A feed feature would be nice always showing latest updates up top
status: done
schema: 1
id: WB-a0a2ebc90aa797ca
kind: ticket
createdAt: 2026-09-26T23:38:51.492Z
updatedAt: 2026-09-30T20:57:04.116Z
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
scopeApproved: true
owner: Codex chat orchestrator
assignment:
  runId: run-75ed7824bb49dc89
  worker: Codex chat orchestrator
  assignedBy: Codex chat orchestrator
  assignedAt: 2026-09-30T19:18:45.508Z
  state: acknowledged
  mode: takeover
worktree: /Volumes/Q7Media-2025/Projects/Github/kanbantool/.controlroom/.local/orchestration/worktrees/run-38af809a1804d544
branch: main
progressStartedAt: 2026-09-30T19:02:29.781Z
handoff: "Resolved the worktree overlap by reviewing both submissions and
  preserving both Feed and #21 priority planning. The accepted Feed snapshot is
  already an ancestor of main; its CSS and navigation coexist with priority
  controls. Verified the integrated feed browser/core checks. Cleared the
  obsolete escalation without changing historical review evidence."
evidence: >-
  Merged main 52a37b4 and installed in Dev (4173) and Juice Lab (4280).
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
  Git push.
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
  at: 2026-09-30T19:28:38.355Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
reviewVerificationAt: 2026-09-30T19:28:38.355Z
manualReviewRequired: true
commits:
  - a78728b
  - 52a37b4
agentReview:
  runId: run-d169e36fd3d51dc9
  submission: run-75ed7824bb49dc89
  reviewer: Codex chat orchestrator
  worker: Sol
  at: 2026-09-30T13:09:13.407Z
  revision: 653a9d2294195fe24232de4dc4f21b6597a9388f791d7753c25712a4e8886cc9
  code: f45573074aeed042f7e7699d77261b95f355d409ed1da9f953833af0f3273188
  contextHash: 8b99068c916468365adcd7a669151fca5fc3a9add6091be59a8699858f8a74fc
  outcome: human
  rationale: Accepted the activity feed after verifying durable reconstruction,
    filter isolation and complete live refresh across multi-page bursts.
  criteria: Newest-first attributed activity derives from durable audit/comments,
    with stable source IDs, meaningful summaries, archived/missing record
    handling and valid record/conversation navigation. Filters and cursor
    pagination retain their own request generation; delayed old pages cannot
    overwrite a new filter. Live scans fetch through known history, retain older
    pagination and queue non-disruptive updates while reading. Questions/reviews
    remain individual and routine heartbeats are excluded.
  evidence: "Exacta78728b,
    snapshotf45573074aeed042f7e7699d77261b95f355d409ed1da9f953833af0f3273188.
    Controllerbuild/corepassed. Independent three storage/API feed tests passed
    /private/tmp/cr25-final-core.log. Independent browser regression passed10.8s
    /private/tmp/cr25-final-browser.log: initialpagination, actor/recordfilters,
    delayedoldpageafterfilterchange, liveattop, queued35eventburst preserving
    scroll, and focused conversation navigation. Source confirms generation
    guards cover success/error/finally and newer live scans supersede older
    ones. No live records modified by tests. Merge, combinedverification and
    deployment remain; do not mark installation complete yet."
  integration: not-integrated
reviewOutcome:
  requestId: f1d1db82-f2ed-431a-9f03-dac1f6bb4e29
  fingerprint: bbf74c7509be57c3a08c46b2fdf840630268bcd6d9a9839627c633832bd0c401
exceptions: ""
reviewInstructions: Reload and open Feed. Confirm newest updates and comment
  navigation suit your workflow. The old worktree-overlap warning is resolved;
  no merge choice is needed.
acceptedBy:
  name: You
  kind: human
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
