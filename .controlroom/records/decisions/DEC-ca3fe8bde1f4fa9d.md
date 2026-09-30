---
title: Adopt ControlRoom names with explicit legacy-folder migration
parent: null
status: accepted
scope:
  - installation
  - storage
  - agent-workflow
references:
  - WB-07cad09fd156289c
  - ControlRoom/src/files.ts
  - ControlRoom/src/migrate.ts
  - ControlRoom/README.md
schema: 1
id: DEC-ca3fe8bde1f4fa9d
kind: decision
createdAt: 2026-09-27T06:19:37.369Z
updatedAt: 2026-09-27T06:19:37.369Z
author:
  name: Codex fixes
  kind: agent
---
## Choice

New projects use .controlroom and the controlroom command. Existing .workboard projects remain readable in place until an explicit stopped-service migration renames the folder. Refuse ambiguous dual folders. Keep old command/environment aliases, legacy backup import, and stable record/project identifiers.

## Context and rationale

Approved ticket #43 requests ControlRoom naming across commands, MCP and data storage. Projects already contain durable records and ignored screenshots, and agents may refer to existing paths. A silent upgrade-time move could strand those integrations or split the board.

## Alternatives and tradeoffs

A hard rename without compatibility would break existing agents. Keeping Workboard as the primary name would not fulfill the request. Explicit migration requires one deliberate maintenance step and external-path updates, but keeps the rename reviewable. The service must stop, old installed runtimes must upgrade first, and backups are documented. The native capture bundle identifier and shared rendezvous directory remain legacy compatibility identifiers so upgraded and older project services coordinate one companion. The helper's display and executable names are ControlRoom Capture; ad-hoc builds may need renewed macOS permission approval.

## Attribution and related work

Codex fixes, implementation choice within human-approved #43. Related #50 cross-project capture coordination. This record grants no additional implementation approval or ticket acceptance.