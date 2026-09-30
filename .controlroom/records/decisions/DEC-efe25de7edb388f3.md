---
title: Preserve duplicate ticket provenance and transact records with their
  audit history
status: accepted
scope:
  - ticket-relationships
references:
  - "#29"
  - src/store.ts
  - web/TicketRelationships.tsx
schema: 1
id: DEC-efe25de7edb388f3
kind: decision
createdAt: 2026-09-30T10:28:16.964Z
updatedAt: 2026-09-30T10:28:16.964Z
author:
  name: Codex chat orchestrator
  kind: agent
---
## Choice

Keep duplicate sources as archived records pointing to their survivor. Retrieve original descriptions, discussions, images, decisions and rules through provenance links rather than copying them into competing records. Related links remain reciprocal and non-blocking. Merge previews freeze every affected record revision and require explicit conflict choices.

## Rationale

The approved ticket requires consolidation without losing attribution or changing old links. Record changes and their audit entries use one local before/after recovery journal. Partial writes roll back together; completed writes retain their audit entries; independent edits block recovery. Merging cannot accept work into Done or bypass managed ownership and claims.

## Alternatives and tradeoffs

Deleting sources loses provenance; copying all content creates duplicates and ambiguous attribution. Linked sources keep the original records authoritative, so they remain accessible in archive history. A local transaction journal adds recovery complexity and rewrites the audit file during infrequent merge/relationship operations, but preserves the existing Markdown format and avoids a second database. Normal comments and progress retain the existing append path.

## Attribution

Chosen by Codex chat orchestrator within approved #29 while completing the retained Sol implementation after an explicit stopped-run takeover. This records an implementation decision, not an inferred human answer or additional scope approval.