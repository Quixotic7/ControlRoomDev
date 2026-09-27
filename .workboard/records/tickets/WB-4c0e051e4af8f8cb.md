---
title: Fix generated CLI commands and hash-prefixed ticket IDs
parent: null
labels:
  - bug
  - code-review
  - cli
priority: 1
status: done
schema: 1
id: WB-4c0e051e4af8f8cb
kind: ticket
createdAt: 2026-09-26T23:10:07.128Z
updatedAt: 2026-09-26T23:48:45.986Z
author:
  name: Codex code review
  kind: agent
number: 12
order: 1790464202792
reviewedRules: {}
scopeApproved: true
handoff: CLI URLs now encode ticket IDs; generated instructions use plain
  numbers so shell comments cannot swallow arguments. Hash IDs work for reads,
  writes, claims, comments, reviews, and waits. Changes are in the ControlRoom
  working tree, uncommitted. Ready for human review; no automatic commits or
  pushes.
evidence: All 44 core/model/integration tests passed; the recorded command below
  reruns the complete suite. Production build/typecheck, 20 browser workflows,
  and separate installation/upgrade checks also passed. Tests use disposable
  boards.
exceptions: ""
branch: main
verification:
  command: PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm test
  exitCode: 0
  output: >-
    > project-workboard@0.1.0 test

    > tsx --test tests/*.test.ts


    ✔ next picks approved, unblocked, unclaimed work: Selected first, then
    priority (660.24475ms)

    ✔ context Markdown is a prompt-ready brief with an etag and token estimate
    (233.786666ms)

    ✔ history appends to one JSON Lines file and still reads legacy events
    (116.509667ms)

    ✔ the index serves unchanged files from memory and notices direct edits
    (115.137ms)

    ✔ review records code links and structured verification (89.222875ms)

    ✔ --set parses JSON, lists, and strings; list filters match ids, names,
    roles, and claims (1.082833ms)

    ✔ identity comes from the environment before flags, and agents never default
    to human (0.293333ms)

    ✔ CLI: next, context brief, --set, --latest, review --run, wait, and MCP
    over stdio (10038.725459ms)

    ✔ Markdown updates preserve unknown YAML, comments, and unrelated body
    (113.960875ms)

    ✔ concurrent coordinated edits reject the stale writer (130.965708ms)

    ✔ ticket numbers start at zero, serialize concurrent creates, and survive
    backup (404.674708ms)

    ✔ legacy tickets acquire durable numbers without breaking links or custom
    prose (173.874458ms)

    ✔ approved parents allow agent work; completion remains human (186.34975ms)

    ✔ review submission requires meaningful handoff and evidence (80.929917ms)

    ✔ parent cycles and missing dependencies are rejected (129.568084ms)

    ✔ claims are exclusive, renewable and expire visibly (119.550583ms)

    ✔ active rules are scoped, versioned, and changed guidance is detectable
    (144.780166ms)

    ✔ successor decisions retain history and replace prior context
    (141.534791ms)

    ✔ external malformed files remain on disk and produce visible errors
    (58.756959ms)

    ✔ unsupported schema is reported without rewriting (73.637458ms)

    ✔ source images and normalized geometry round-trip in backups (216.144208ms)

    ✔ missing images retain readable annotations and show placeholders
    (98.196917ms)

    ✔ stale annotation edits and invalid coordinates are rejected (117.563958ms)

    ✔ imports preview and preserve originals; changed sources stop application
    (168.039083ms)

    ✔ rulebook briefings include components and local screenshot references
    (91.263708ms)

    ✔ paths and symbolic links cannot escape the project (128.434416ms)

    ✔ two actual Git worktrees resolve to one canonical board; branch changes
    pause writes (358.490916ms)

    ✔ a submodule shares its superproject's board only when one exists
    (693.663041ms)

    ✔ API requires local authentication and rejects cross-origin writes
    (392.661709ms)

    ✔ API roundtrip, persistent preferences, and comment resolution
    (184.152292ms)

    ✔ startup resolves the source loader outside the tool directory
    (1222.83225ms)

    ✔ numeric links persist canonical IDs and preserve relationship validation
    (215.2835ms)

    ✔ briefs retain ancestor approval boundaries and generate executable
    commands (142.767542ms)

    ✔ verification records signal, timeout, and spawn errors as failures
    (125.465709ms)

    ✔ CLI accepts hash IDs for reads, writes, relationships, and rejects
    interrupted review (4482.201791ms)

    ✔ MCP uses the execution checkout and responds during a cancellable wait
    (1111.355542ms)

    ✔ is:archived matches archived tickets and -is:archived excludes them
    (6.442917ms)

    ✔ showsArchived only for a positive is:archived term (0.120834ms)

    ✔ filters parse GitHub-style keys, negation, lists, quotes, and free text
    (12.076917ms)

    ✔ filters match status names, labels, owners, priority, parent, and flags
    (22.748625ms)

    ✔ grouping by parent heads each goal and keeps children nested (1.759417ms)

    ✔ grouping by status, priority, owner, and label; sorting (31.715708ms)

    ✔ attention covers blockers, reviews, open questions, and changed rules
    (0.334291ms)

    ✔ saved views are validated in the project configuration (390.046542ms)

    ℹ tests 44

    ℹ suites 0

    ℹ pass 44

    ℹ fail 0

    ℹ cancelled 0

    ℹ skipped 0

    ℹ todo 0

    ℹ duration_ms 11687.700916
  at: 2026-09-26T23:32:39.689Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
---
## Finding

Generated agent instructions contain commands such as workboard claim #3, where the shell treats #3 and the rest of the line as a comment. Quoting the number still fails in CLI paths because an unencoded # becomes a URL fragment. The shared wait helper also interpolates IDs without encoding.

## Reproduction and evidence

Read the generated protocol commands in contextMarkdown. A read-only invocation of ./workboard show '#0' against the live board returned "400: Invalid record ID", despite ticket #0 existing. MCP tools encode most IDs, but wait_for_update uses the shared unencoded wait helper.

## Acceptance criteria

- [ ] Generate shell-safe commands using plain numeric arguments such as workboard claim 3.
- [ ] Encode ticket identifiers when constructing CLI and shared wait API paths, preserving quoted #0, plain 0, and internal ID support.
- [ ] Test read, mutation, and wait paths with hash-prefixed IDs, and verify generated command examples actually work in a non-interactive shell.
- [ ] Coordinate with existing ticket #3, which covers parent/dependency field resolution; this ticket covers command arguments, generated instructions, and URL encoding.

## Source

[ControlRoom/src/store.ts:948](https://github.com/Quixotic7/ControlRoom/blob/07413cb4234f4ce7180a0126c21d6948c2311b19/src/store.ts#L948) at reviewed commit 07413cb4234f4ce7180a0126c21d6948c2311b19. Board repository: ControlRoomDev.

## Review context

Found during the 2026-09-26 Codex review. Type checking, 38 core/model tests, and 19 browser workflows passed; this case needs additional regression coverage.
