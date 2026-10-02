---
id: comment-5aca931a7585c6ba
ticket: WB-3b128218eca4cbe5
actor:
  name: Codex chat orchestrator
  kind: agent
kind: comment
at: 2026-10-01T22:48:33.682Z
resolved: false
---
Reproduced the cause: ticket #36 is archived and was removed before the number filter ran. This chat is handling the bounded search correction directly. Exact public-number lookups will include archived records, retain explicit field filters, and offer an openable result even when the relevant board column/group is hidden. Ordinary keyword searches and saved visibility settings remain unchanged.