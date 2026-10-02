---
title: Review companion repositories as one managed source snapshot
status: accepted
labels:
  - agents
  - orchestration
schema: 1
id: DEC-d1b2ace9c5e9eda0
kind: decision
createdAt: 2026-10-01T09:34:11.791Z
updatedAt: 2026-10-01T09:34:11.791Z
author:
  name: Codex chat orchestrator
  kind: agent
---
## Choice

Create isolated sibling worktrees for configured companion repositories. Ticket repository selection controls which may change; children generated from an approved goal retain its selection. The default remains main-only. Review freshness, changed paths, receipts and dependency integration cover every repository.

## Context and rationale

JuiceLab MachineLab and JUICEBOX use reciprocal relative package paths. Independent single-repository runs cannot build that layout and a main-only review could miss companion changes.

## Alternatives and tradeoffs

Using the user’s live sibling checkout would mix unrelated edits into verification. Separate boards would lose one task’s combined acceptance. Detached read-only companions identify a fixed base; they are not an OS security boundary. Refuse changed read-only HEAD/content before committing writable work. Generated build caches may remain Git-ignored. Branch integration still needs an explicit merge for each writable repository.

## Attribution and evidence

Accepted as an implementation decision by Codex chat orchestrator within approved #77. Sol implementation and root review. Main b15c996; two-repository fixture review and stale-snapshot tests pass; actual MachineLab/JUICEBOX pin check and isolated Swift build pass. MachineLab self-test did not finish and is not claimed as passed.