---
parent: WB-35da530c7d149673
title: A feed feature would be nice always showing latest updates up top
status: review
schema: 1
id: WB-a0a2ebc90aa797ca
kind: ticket
createdAt: 2026-09-26T23:38:51.492Z
updatedAt: 2026-09-30T13:09:13.696Z
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
owner: Sol
assignment:
  runId: run-75ed7824bb49dc89
  worker: Sol
  assignedBy: Codex chat orchestrator
  assignedAt: 2026-09-30T12:40:59.873Z
  state: submitted
  mode: managed
worktree: /Volumes/Q7Media-2025/Projects/Github/kanbantool/.controlroom/.local/orchestration/worktrees/run-38af809a1804d544
branch: controlroom/run-38af809a1804d544
progressStartedAt: 2026-09-30T12:48:23.416Z
handoff: "Implemented and committed ticket #25. The Feed provides newest-first
  durable activity with filters, deep links, deterministic pagination, grouping,
  archived/missing-record handling, and heartbeat suppression. Review
  corrections now prevent stale pagination responses after filter changes and
  recover every event after reconnect bursts larger than 30 without moving a
  reader’s scroll position. Added authenticated browser coverage for delayed
  pagination and a 35-event reconnect burst.


  Commits:

  - 548205b — retained Feed implementation

  - a78728b — pagination-race and reconnect-gap corrections


  Worktree is clean. No board records, decisions, assignments, merges, pushes,
  or deployments were performed."
evidence: >-
  Passed: `git diff --check`.

  Passed: `npm run build`.

  Passed: `node --import tsx --test tests/feed.test.ts` — 3/3.

  Required command: `npm ci` and build passed; `npm test` could not start
  because the sandbox denied the tsx IPC pipe with `listen EPERM` before test
  execution.

  Fallback full suite: `node --import tsx --test tests/*.test.ts` — 113/120
  passed, including all feed tests; seven service/listener tests failed solely
  on sandbox `listen EPERM` restrictions.

  Browser scenario could not start its local server because binding
  `127.0.0.1:4178` was denied with `listen EPERM`; controller verification
  should execute it in the network-enabled environment.

  Final correction commit: a78728b.
verification:
  command: export
    PATH="/Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom/.runtime/node_modules/node/bin:$PATH";
    npm ci && npm run build && npm test
  exitCode: 0
  output: >
    hani-devanagari-700-normal-BQQOj9BB.woff2   77.14 kB

    ../dist/web/assets/rajdhani-devanagari-500-normal-B_DH_jja.woff2   77.44 kB

    ../dist/web/assets/rajdhani-devanagari-600-normal-DhS7ScYx.woff2   79.34 kB

    ../dist/web/assets/index-BmVfkvGu.css                              88.05 kB
    │ gzip:  17.13 kB

    ../dist/web/assets/index-CDdmenyv.js                              568.23 kB
    │ gzip: 176.29 kB

    ✓ built in 2.62s


    (!) Some chunks are larger than 500 kB after minification. Consider:

    - Using dynamic import() to code-split the application

    - Use build.rollupOptions.output.manualChunks to improve chunking:
    https://rollupjs.org/configuration-options/#output-manualchunks

    - Adjust chunk size limit for this warning via build.chunkSizeWarningLimit.

      dist/cli.js  252.2kb

    ⚡ Done in 24ms


    > controlroom@0.1.0 test

    > tsx --test tests/*.test.ts


    ✔ next picks approved, unblocked, unclaimed work: Selected first, then
    priority (1829.306042ms)

    ✔ context Markdown is a prompt-ready brief with an etag and token estimate
    (941.694417ms)

    ✔ history appends to one JSON Lines file and still reads legacy events
    (600.983ms)

    ✔ the index serves unchanged files from memory and notices direct edits
    (801.719708ms)

    ✔ review records code links and structured verification (536.340833ms)

    ✔ --set parses JSON, lists, and strings; list filters match ids, names,
    roles, and claims (1.438417ms)

    ✔ identity comes from the environment before flags, and agents never default
    to human (1.051292ms)

    ✔ CLI: next, context brief, --set, --latest, review --run, wait, and MCP
    over stdio (33858.051708ms)

    ✔ read requests recover from connection loss, including interrupted response
    bodies (632.616875ms)

    ✔ persistent read failures stop after three attempts with a useful
    connection message (607.033625ms)

    ✔ writes with lost responses are never retried automatically (1.016083ms)

    ✔ HTTP and malformed-response errors retain their semantics without retries
    (0.63325ms)

    ✔ bulk mixed values and visibility reconciliation are ID based (0.827959ms)

    ✔ bulk patches only enabled scalar fields and preserves unrelated metadata
    (0.159458ms)

    ✔ label add and remove operations preserve every other label and report
    no-ops (0.104042ms)

    ✔ background project registration cannot take capture away from the last
    interacted project (610.303959ms)

    ✔ screenshot trash preserves references and backup content and rejects stale
    edits (2179.963917ms)

    ✔ permanent screenshot deletion freezes revisions, retains tombstones, and
    round-trips backups (5115.235333ms)

    ✔ permanent deletion reports filesystem failures without claiming removed
    pixels remain (1249.523292ms)

    ✔ Markdown updates preserve unknown YAML, comments, and unrelated body
    (552.843125ms)

    ✔ concurrent coordinated edits reject the stale writer (645.795583ms)

    ✔ ticket numbers start at zero, serialize concurrent creates, and survive
    backup (1667.642583ms)

    ✔ legacy tickets acquire durable numbers without breaking links or custom
    prose (806.905ms)

    ✔ approved parents allow agent work; completion remains human
    (1207.582125ms)

    ✔ review submission requires meaningful handoff and evidence (490.915084ms)

    ✔ parent cycles and missing dependencies are rejected (731.729583ms)

    ✔ claims are exclusive, renewable and expire visibly (753.400458ms)

    ✔ active rules are scoped, versioned, and changed guidance is detectable
    (612.913458ms)

    ✔ successor decisions retain history and replace prior context
    (555.945583ms)

    ✔ external malformed files remain on disk and produce visible errors
    (279.353791ms)

    ✔ unsupported schema is reported without rewriting (417.587667ms)

    ✔ source images and normalized geometry round-trip in backups (997.901875ms)

    ✔ missing images retain readable annotations and show placeholders
    (382.919208ms)

    ✔ stale annotation edits and invalid coordinates are rejected (550.702167ms)

    ✔ imports preview and preserve originals; changed sources stop application
    (615.346833ms)

    ✔ rulebook briefings include components and local screenshot references
    (337.714459ms)

    ✔ paths and symbolic links cannot escape the project (361.41725ms)

    ✔ two actual Git worktrees resolve to one canonical board; branch changes
    pause writes (1028.392292ms)

    ✔ a submodule shares its superproject's board only when one exists
    (1514.437333ms)

    ✔ API requires local authentication and rejects cross-origin writes
    (467.276459ms)

    ✔ API roundtrip, persistent preferences, and comment resolution
    (629.706917ms)

    ✔ feed reconstructs attributed activity, groups edits, filters, and
    paginates without duplicates (1819.777542ms)

    ✔ feed keeps valid history around malformed data and degrades missing
    references (422.080625ms)

    ✔ feed API validates and applies pagination query parameters (1091.958875ms)

    ✔ microtask edits preserve surrounding prose, acceptance criteria and direct
    edits (3.01675ms)

    ✔ a documented checklist in a fenced example is not the editable checklist
    (0.3125ms)

    ✔ fenced examples inside the Microtasks section stay untouched (0.288167ms)

    ✔ new data naming and explicit legacy migration preserve every record and
    local asset (1361.419833ms)

    ✔ migration refuses running, ambiguous and old-runtime installations without
    moving data (684.03225ms)

    ✔ new exports restore and legacy exports remain compatible (1680.567166ms)

    ✔ ControlRoom identity variables take precedence over compatibility aliases
    (2.829375ms)

    ✔ LAN is opt-in; remote Host spoofing and unpaired readers receive no
    project credentials (898.299958ms)

    ✔ pairing grants separate project/port cookies and blocks host controls and
    cross-origin requests (1456.992917ms)

    ✔ pairing codes are one-use, expire, replace safely and rate limit guesses;
    sessions expire (575.831292ms)

    ✔ disable and revoke invalidate sessions while keeping local tokens and
    persisted mode independent (858.093375ms)

    ✔ revocation immediately closes an established remote event stream
    (534.362333ms)

    ✔ private IPv4 matching excludes public and malformed destinations
    (0.17775ms)

    ✔ paired sessions survive a LAN restart and are removed by local-only
    startup (1668.659792ms)

    ✔ CLI persists LAN choice, keeps discovery on loopback, and returns to
    local-only explicitly (7603.512958ms)

    ✔ open LAN permits board work without credentials while retaining host
    controls and origin checks (846.692708ms)

    ✔ access duration validates atomically, applies to new sessions, and
    upgrades legacy preferences (545.266792ms)

    ✔ requiring pairing again closes an open-mode event stream immediately
    (479.209708ms)

    ✔ managed plan launches two distinct harness workers, independently reviews
    both, and preserves parent and main checkout (15228.988708ms)

    ✔ scope, assignment, authority and receipt forgery are rejected
    (1536.624958ms)

    ✔ mandatory human review survives reload and never becomes automatic Done
    (5389.484125ms)

    ✔ stale evidence and reviewer authority changes cannot accept
    (4276.199708ms)

    ✔ restart holds queued work for explicit recovery without duplicate
    processes (5611.573583ms)

    ✔ process cancellation stops descendants and retains bounded output
    (35.607833ms)

    ▶ changed code during review, failed verification, expired claim and revoked
    settings all block acceptance
      ✔ code (4377.477125ms)
      ✔ verification (2803.825084ms)
      ✔ claim (2749.315292ms)
      ✔ revoked (4352.525708ms)
    ✔ changed code during review, failed verification, expired claim and revoked
    settings all block acceptance (14284.862167ms)

    ✔ review changes retry with history, then exhaust the configured limit
    without spinning (14284.410458ms)

    ✔ a human answer resumes with new context and dependency work waits for an
    actual merge (11252.592583ms)

    ✔ a resolved human question resumes the worker while unanswered questions
    stay pending (7510.751292ms)

    ✔ cancelling a process group also terminates its child tool (109.474125ms)

    ✔ chat-led review never launches a reviewer CLI and requires a fresh
    designated review (7112.895ms)

    ps: process id too large: 987654321

    ✔ chat review waits survive restart and mandatory human gates still apply
    (6279.822625ms)

    ✔ delegation requires a deliberate worker choice and never rotates repeated
    selections (1384.658875ms)

    ✔ recovery does not substitute another worker when the selected profile is
    removed (1251.48875ms)

    ✔ designated orchestrator takes over a stopped worker with stale, identity
    and unrelated-work guards (4059.79375ms)

    ps: process id too large: 987654320

    ✔ takeover preserves an unanswered managed-run question (2900.913125ms)

    ✔ takeover refuses active and uncertain original worker processes
    (2784.663917ms)

    ✔ takeover of submitted work requires reopened development and no other live
    run (6347.045417ms)

    ✔ parent search scales past a dropdown, preserves zero, and excludes
    descendants and cycles (65.156666ms)

    ✔ ticket progress keeps microtasks and all direct children distinct
    (5.948583ms)

    ✔ two project sessions coexist on one host without overwriting each other
    (1670.7745ms)

    ✔ screenshots referenced only in a conversation are included in agent
    context (925.080458ms)

    ✔ related tickets are reciprocal, revision checked, removable, and
    non-blocking context (1169.090375ms)

    ✔ merge preview requires conflict decisions and merge preserves provenance
    while redirecting incoming links (2238.249916ms)

    ✔ merge rejects stale affected records and parent cycles before writing
    (1132.349ms)

    ✔ relationship transactions preserve managed ownership and cannot accept
    Done (1210.095792ms)

    ✔ merge rejects indirect dependency cycles and clears prior evidence on
    entering Review (1135.202542ms)

    ✔ transaction failures roll back records and audit entries together
    (583.919916ms)

    ✔ interrupted transaction recovery restores partial records but preserves
    completed audit history (1012.532791ms)

    ✔ new review submissions never silently reuse a prior verification pass or
    manual-check exemption (981.763083ms)

    ✔ startup resolves the source loader outside the tool directory
    (4173.484333ms)

    ✔ numeric links persist canonical IDs and preserve relationship validation
    (1202.402292ms)

    ✔ briefs retain ancestor approval boundaries and generate executable
    commands (639.719959ms)

    ✔ verification records signal, timeout, and spawn errors as failures
    (353.912625ms)

    ✔ agent review transitions publish durable summaries without duplicating
    routine edits (1356.86225ms)

    ✔ CLI accepts hash IDs for reads, writes, relationships, and rejects
    interrupted review (9687.739958ms)

    ✔ MCP uses the execution checkout and responds during a cancellable wait
    (2218.30525ms)

    ✔ review outcomes preserve edits and evidence, do not accept children, and
    retry once across restarts (1236.204791ms)

    ✔ stale reviews, agents, and wrong destination roles cannot write feedback
    or overwrite drafts (1238.965042ms)

    ✔ decision protocol stays consistent and knowledge survives supersession and
    ticket archival (1056.128834ms)

    ✔ questionnaires retain drafts protocol, wording, amendments and replacement
    history; revisions guard answers (1835.84525ms)

    ✔ progress sessions reset only on entry, reports are bounded and attributed,
    and 100 does not complete work (1071.497833ms)

    ✔ placement is serialized against target revisions and preserves source on
    conflict (796.476625ms)

    ✔ questionnaire choice selections and custom notes round trip independently
    with immutable amendments (1403.951667ms)

    ✔ Done tickets leave Needs you while retaining historical blockers and
    questions (2.960333ms)

    ✔ is:archived matches archived tickets and -is:archived excludes them
    (2.781875ms)

    ✔ showsArchived only for a positive is:archived term (0.343625ms)

    ✔ filters parse GitHub-style keys, negation, lists, quotes, and free text
    (59.390833ms)

    ✔ filters match status names, labels, owners, priority, parent, and flags
    (4.875417ms)

    ✔ grouping by parent heads each goal and keeps children nested (1.362666ms)

    ✔ grouping by status, priority, owner, and label; sorting (17.748584ms)

    ✔ attention covers blockers, reviews, open questions, and changed rules
    (1.12625ms)

    ✔ saved views are validated in the project configuration (682.751167ms)

    ℹ tests 120

    ℹ suites 0

    ℹ pass 120

    ℹ fail 0

    ℹ cancelled 0

    ℹ skipped 0

    ℹ todo 0

    ℹ duration_ms 114175.551667
  at: 2026-09-30T13:09:12.613Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/.controlroom/.local/orchestration/worktrees/run-38af809a1804d544
reviewVerificationAt: 2026-09-30T13:09:12.613Z
manualReviewRequired: false
commits:
  - a78728be27b9a52291bb846a15b141c8fbdaa877
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
