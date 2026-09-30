---
id: comment-ef151064ac8ff691
ticket: WB-e649ce4e73451111
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-28T19:28:35.038Z
resolved: false
---
## Work completed

Implemented the Agents workspace and managed orchestrator pipeline. Human-configured Codex/Claude profiles delegate approved tickets or decompose approved goals into assigned children. The service launches bounded isolated worktrees, records durable assignments, renews claims, verifies submissions, and runs a separate reviewer. Valid current reviews accept Done with an attributed receipt, request bounded corrections, or create non-expiring human questions. Human-required tickets cannot auto-accept. Authority changes are human-attributed in history. Stale code/context/revisions, lost claims, revoked settings, retries and restart recovery are explicit. CLI/MCP expose the same delegation/status/cancellation protocol. Successful snapshots are committed only in worker branches; no implicit merge/push/deploy. Dependencies wait for manual branch integration. Both installed applications updated with orchestration disabled. Decision DEC-0b5c2fc51bf9cbe2 records the chosen defaults and distinguishes them from your confirmed answers.

## What to review

Refresh the app and open Agents. Expand Agent configuration: inspect reviewer/worker names, providers, executable paths, models, code repository/base, independent verification command, concurrency, time/attempt limits and mandatory-human policy. Orchestration is off until you explicitly enable/save it. For a first real trial, use a small approved ticket and a configured authenticated CLI; Claude Code is not installed on this host. Set the code repository to the code checkout (not necessarily the board checkout), and include dependency setup in the verification command if a fresh worktree needs it. Queue a ticket or decompose a new approved parent goal. Check isolated run details/logs, then the attributed review comment and acceptance receipt. Use Require human acceptance on a ticket to check escalation. Answer/resolve questions to continue, or request changes/accept in the normal ticket review controls. Inspect the retained branch and merge separately; acceptance does not merge. Try Stop and recovery only on a disposable trial. Parent goals stay open for a deliberate outcome review.

## Verification

95 core tests passed; 83 full browser regressions passed; 2 final Agents browser checks passed. Production build and diff check passed. Both installations have matching artifact hashes and healthy services; data/settings/launchers preserved. See VALIDATION.md and tests/orchestration.test.ts.

Recorded run: npm run build; npm test; npm run test:browser; final focused Agents browser suite (private Node 24, bundled Chromium) — exit 0 (2026-09-28T19:25:31.571Z).

Branch: main

## Exceptions and limitations

Provider behavior was validated with deterministic executable fixtures and documented CLI contracts, not live paid models. Codex CLI help was checked; Claude Code is absent on this Mac. Authenticate/configure the chosen CLI before a real trial. Automatic Git integration is not implemented; accepted worker branches remain for a human merge, and dependent runs verify ancestry before proceeding. Process logs/journals stay local and may contain project content; clones preserve Markdown history but cannot resume another machine’s processes. Existing identity labels are attribution, not security isolation between processes sharing the local account. Changes are uncommitted.
