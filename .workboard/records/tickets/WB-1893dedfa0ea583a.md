---
title: Use ticket numbers for parent and dependency links
parent: WB-6154445b2ce7f128
labels:
  - workflow-trial
  - cli
schema: 1
id: WB-1893dedfa0ea583a
kind: ticket
status: done
createdAt: 2026-09-26T14:40:23.471Z
updatedAt: 2026-09-27T00:46:49.094Z
author:
  name: Codex workflow trial
  kind: agent
number: 3
order: 1790433623474
reviewedRules: {}
attachments:
  - image-8a5573e72e5dd781
scopeApproved: true
handoff: "Numeric parent/dependency linking remains implemented. Addressed your
  two conversation review comments: moving agent work into Review now posts a
  durable, attributed summary containing Work completed, What to review,
  verification, and exceptions. CLI --review-notes, MCP review_instructions, and
  the ticket handoff form accept specific human review steps. Conversation
  entries now visibly distinguish Review requested, Review feedback, Handoff
  note, Question, and Comment, with question resolution shown separately.
  Existing Review tickets #6–#12 now have their prior handoffs and human review
  steps in their conversations. Changes remain local and uncommitted."
evidence: "Production build and TypeScript checks passed. All 45
  core/model/integration tests passed, including automatic review summaries,
  rejected/stale submissions without comments, repeated review cycles, and
  CLI/MCP review instructions. All 21 browser workflows passed: 20 in the full
  run plus the new conversation workflow after narrowing an ambiguous test
  selector. The review conversation screenshot was visually inspected. Earlier
  native capture acceptance remains separate on #4."
exceptions: ""
branch: main
verification:
  command: PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm test
  exitCode: 0
  output: >-
    > project-workboard@0.1.0 test

    > tsx --test tests/*.test.ts


    ✔ next picks approved, unblocked, unclaimed work: Selected first, then
    priority (384.239583ms)

    ✔ context Markdown is a prompt-ready brief with an etag and token estimate
    (258.052292ms)

    ✔ history appends to one JSON Lines file and still reads legacy events
    (164.405375ms)

    ✔ the index serves unchanged files from memory and notices direct edits
    (175.952583ms)

    ✔ review records code links and structured verification (115.1785ms)

    ✔ --set parses JSON, lists, and strings; list filters match ids, names,
    roles, and claims (1.99325ms)

    ✔ identity comes from the environment before flags, and agents never default
    to human (0.317916ms)

    ✔ CLI: next, context brief, --set, --latest, review --run, wait, and MCP
    over stdio (9009.620541ms)

    ✔ Markdown updates preserve unknown YAML, comments, and unrelated body
    (120.261458ms)

    ✔ concurrent coordinated edits reject the stale writer (168.614708ms)

    ✔ ticket numbers start at zero, serialize concurrent creates, and survive
    backup (542.47ms)

    ✔ legacy tickets acquire durable numbers without breaking links or custom
    prose (183.891625ms)

    ✔ approved parents allow agent work; completion remains human (171.262625ms)

    ✔ review submission requires meaningful handoff and evidence (123.160542ms)

    ✔ parent cycles and missing dependencies are rejected (252.331541ms)

    ✔ claims are exclusive, renewable and expire visibly (195.720917ms)

    ✔ active rules are scoped, versioned, and changed guidance is detectable
    (131.09625ms)

    ✔ successor decisions retain history and replace prior context (97.070834ms)

    ✔ external malformed files remain on disk and produce visible errors
    (52.320708ms)

    ✔ unsupported schema is reported without rewriting (74.530084ms)

    ✔ source images and normalized geometry round-trip in backups (194.5755ms)

    ✔ missing images retain readable annotations and show placeholders
    (79.152625ms)

    ✔ stale annotation edits and invalid coordinates are rejected (124.347792ms)

    ✔ imports preview and preserve originals; changed sources stop application
    (115.943542ms)

    ✔ rulebook briefings include components and local screenshot references
    (99.287375ms)

    ✔ paths and symbolic links cannot escape the project (84.638ms)

    ✔ two actual Git worktrees resolve to one canonical board; branch changes
    pause writes (278.597792ms)

    ✔ a submodule shares its superproject's board only when one exists
    (466.7045ms)

    ✔ API requires local authentication and rejects cross-origin writes
    (167.708792ms)

    ✔ API roundtrip, persistent preferences, and comment resolution (163.3695ms)

    ✔ startup resolves the source loader outside the tool directory
    (1570.336208ms)

    ✔ numeric links persist canonical IDs and preserve relationship validation
    (276.001792ms)

    ✔ briefs retain ancestor approval boundaries and generate executable
    commands (113.4585ms)

    ✔ verification records signal, timeout, and spawn errors as failures
    (103.799208ms)

    ✔ agent review transitions publish durable summaries without duplicating
    routine edits (219.395041ms)

    ✔ CLI accepts hash IDs for reads, writes, relationships, and rejects
    interrupted review (3580.126166ms)

    ✔ MCP uses the execution checkout and responds during a cancellable wait
    (917.737875ms)

    ✔ is:archived matches archived tickets and -is:archived excludes them
    (13.636958ms)

    ✔ showsArchived only for a positive is:archived term (0.406334ms)

    ✔ filters parse GitHub-style keys, negation, lists, quotes, and free text
    (1.412375ms)

    ✔ filters match status names, labels, owners, priority, parent, and flags
    (5.923166ms)

    ✔ grouping by parent heads each goal and keeps children nested (0.416625ms)

    ✔ grouping by status, priority, owner, and label; sorting (11.152792ms)

    ✔ attention covers blockers, reviews, open questions, and changed rules
    (0.308709ms)

    ✔ saved views are validated in the project configuration (141.8085ms)

    ℹ tests 45

    ℹ suites 0

    ℹ pass 45

    ℹ fail 0

    ℹ cancelled 0

    ℹ skipped 0

    ℹ todo 0

    ℹ duration_ms 10638.775792
  at: 2026-09-26T23:46:45.551Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
reviewInstructions: >-
  1. Open this ticket’s Conversation: this new Review requested entry should
  contain the work summary, these review steps, and verification.

  2. Check that your earlier human comments display their comment type clearly.
  Post a Review feedback or Question entry; a question should show Needs an
  answer, then Resolved after resolution.

  3. Open #6–#12 and check that their conversations explain what changed and
  what to inspect.

  4. Numeric linking: in a disposable ticket, use an existing ticket number as
  its parent or dependency and verify that it resolves correctly; missing links
  and cycles should still be rejected.

  5. Accept this ticket into Done if satisfied, or add Review feedback with any
  remaining changes.
---
## Problem
Tickets now display simple numbers such as #0, but parent and dependency validation compares incoming links directly against internal WB identifiers. The main ticket argument can use a number while links still require looking up the internal identifier.

## Intended behavior
Accept a numeric ticket reference such as "0" or "#0" for parent and dependency inputs, resolve it to the canonical internal ID before validation and persistence, and keep supporting existing WB identifiers.

## Acceptance criteria
- Creating a child with --parent 0 or --parent '#0' succeeds for an existing ticket.
- Updating parent and dependency links accepts the same numeric string forms, including zero.
- Stored links and context use stable canonical IDs; existing links remain unchanged.
- Missing references, self-dependencies, and parent cycles are rejected.
- Focused tests cover create, update, resolution, and rejection behavior.
- CLI documentation includes a short numbered-reference example.

## Implementation starting points
src/store.ts: createNow, updateNow, validate, get.
src/cli.ts: create --parent and update --patch.

## Review evidence expected
Describe the before/after behavior, list tests run and their results, and identify any limits. Submit to Review rather than Done.
[![image.png](/api/images/image-8a5573e72e5dd781/base)](#image=image-8a5573e72e5dd781)