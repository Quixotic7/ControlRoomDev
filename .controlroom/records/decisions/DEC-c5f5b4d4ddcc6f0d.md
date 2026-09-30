---
title: Return failed approved work for correction and accept passing
  orchestrator reviews
status: accepted
scope:
  - agent-workflow
  - orchestration
references:
  - WB-e649ce4e73451111
  - "#17"
  - src/orchestration.ts
supersedes: DEC-50fc69a201286cac
schema: 1
id: DEC-c5f5b4d4ddcc6f0d
kind: decision
createdAt: 2026-09-29T00:10:32.413Z
updatedAt: 2026-09-29T00:10:32.413Z
author:
  name: Codex fixes
  kind: agent
---
## Choice

Retain deliberate Sol/Terra/Luna selection and this chat as orchestrator. Routine failed verification and reviewer-requested changes return to the selected worker in its retained worktree without renewed scope approval. A passing independent verification and orchestrator review accepts Done unless human judgment or mandatory human acceptance is required.

## Context and attribution

The human explicitly clarified both behaviors after the first live #17 trial paused on verification failures. The earlier human-only recovery policy incorrectly included ordinary corrective work. Codex fixes implemented the correction under approved #65 scope.

## Rationale

Scope approval covers correcting defects within that scope. The orchestrator is responsible for review and correction, so routine retries should not occupy the human attention queue. Failed checks remain failures; no acceptance gate is bypassed.

## Alternatives and tradeoffs

Preserve bounded attempts to avoid an unproductive loop; exhausted attempts escalate with evidence. Human questions, mandatory acceptance, revoked authority and stopped/unknown process recovery still need judgment or reconciliation. Each retry receives current context and diagnostic evidence and retains its worker and checkout. No automatic Git integration, pushes or deployment. The source snapshot and branch remain reviewable.

## Verification

Build and 102 core tests passed. Tests cover correction to Done, bounded repeated failure, legacy verification-question recovery with agent attribution, and existing mandatory-human and question behavior. The installed service actually resumed Sol on #17 as attempt 2 without human impersonation. The main checkout and index remain preserved.
