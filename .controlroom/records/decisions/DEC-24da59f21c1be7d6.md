---
title: Retain screenshot deletion records and written annotations after clearing Trash
status: accepted
scope:
  - screenshot-trash
references:
  - "#53"
  - src/media.ts
  - web/Screenshots.tsx
schema: 1
id: DEC-24da59f21c1be7d6
kind: decision
createdAt: 2026-09-30T10:45:33.400Z
updatedAt: 2026-09-30T10:45:33.400Z
author:
  name: Codex chat orchestrator
  kind: agent
---
## Choice

Remove local image derivatives only after an explicit frozen Trash confirmation. Retain the existing attachment JSON and Markdown annotation instructions with permanent-deletion timestamp and actor. Old ticket and conversation links display a deletion placeholder; no unrelated prose or ticket record is rewritten.

## Rationale

Approved #53 requires reclaiming ignored image storage while preserving project knowledge and existing references. The same durable record ID keeps pre-deletion backups restorable and post-deletion backups honest about missing pixels. Each candidate is checked against its confirmation revision and current Trash state.

## Alternatives and tradeoffs

Deleting metadata would break old links and lose instructions. Rewriting every reference would touch unrelated Markdown and attribution. Retaining small records preserves this context at negligible storage cost. Filesystem removal can partially fail; report each result separately and distinguish removed pixels from failure to save the final deletion record. Never automatically replay uncertain requests. A later explicit confirmation can finish a record for already missing pixels. Existing backups remain untouched.

## Attribution

Codex chat orchestrator chose this format within approved #53, completing Sol's retained implementation after an explicit stopped-run takeover. This is not a human acceptance or new scope approval.