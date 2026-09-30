---
title: Admit managed agent outcomes through a supervised, independently verified
  review pipeline
status: accepted
scope:
  - agent-workflow
  - orchestration
references:
  - WB-e649ce4e73451111
  - src/orchestration.ts
  - src/agent-runner.ts
  - src/store.ts
schema: 1
id: DEC-0b5c2fc51bf9cbe2
kind: decision
createdAt: 2026-09-28T19:24:12.831Z
updatedAt: 2026-09-28T19:24:12.831Z
author:
  name: Codex fixes
  kind: agent
---
## Choice

Use a deterministic local controller to launch CLI-based planner, worker and reviewer runs, validate their structured results, and admit board changes through the serialized store. Only a human configures the named reviewer and roster. Ordinary agent updates cannot approve scope, forge assignment/review receipts, or accept Done.

## Context and attribution

The human approved #65 and explicitly chose managed agent launching/supervision and work restricted to approved goals/tickets. Codex fixes selected the implementation defaults below under that authorization. The earlier unanswered provider, merge-policy and mandatory-review interview questions are not represented as human answers.

## Defaults

Support Codex CLI and Claude Code adapters with existing local authentication and configurable models. Orchestration starts disabled; a human enables and configures it on the host. Mandatory human acceptance can be required per ticket, for parent goals, or for all work. Reviewer uncertainty and operational failures create non-expiring questions. Automatic Git integration is off: accepted work remains on its retained worker branch for a separate human merge. Verification commands and bounded process/retry limits are explicit configuration.

## Rationale

Structured model output is a proposal. Admission checks bind it to current ticket revision, approved scope, guidance/discussion, code identity, independent verification and reviewer authority. Separate worker/reviewer runs and human gates make attribution and responsibility visible. Restart recovery holds work rather than silently duplicating agents. Snapshots are committed only in service-created worktrees. Dependent work waits until a prerequisite branch is merged into the configured base.

## Alternatives and tradeoffs

An external model that directly moves tickets can forge completion or race newer evidence; embedding provider APIs introduces separate credentials and subscriptions. CLI adapters reuse the user's coding harness but need version/authentication setup and cannot guarantee isolation from another process sharing the local account. Conservative stale-result rejection and manual integration require extra review steps. Run logs/process journals remain local; durable assignments, review receipts, questions and configuration history remain with project records. A clone keeps history but cannot resume another machine's processes.

## Validation and limits

Executable fixture harnesses exercise both provider output formats, two-worker planning/delegation, independent review, human escalation/resume, retries, stale context/code, scope/authority checks, dependency integration and process-group cancellation. Browser tests exercise dashboard delegation and logs. No paid model evaluation or live Claude Code run is claimed; Claude Code is not installed on this host. Automatic merge, push and deployment are not implemented by this policy.
