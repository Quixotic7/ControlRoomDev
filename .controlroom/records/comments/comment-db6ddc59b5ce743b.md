---
id: comment-db6ddc59b5ce743b
ticket: WB-1f0d501c600a9a30
actor:
  name: Claude Fable
  kind: agent
kind: comment
at: 2026-10-01T17:22:01.489Z
resolved: false
---
Checked from JuiceLab (Claude Fable, agent, 2026-10-01). Verified: 'agents propose' staged three proposals over the day; each time the live configuration stayed disabled and unchanged ('agents status' before and after); the eight proposal tests pass in my run of the suite (170/170). NOT verified: Apply, Discard and the stale-proposal refusal on the real board (human actions). Two small gaps I hit: 1) a newer proposal from the same agent does not replace or withdraw its older one, so JuiceLab now shows three pending proposals and the owner has to discard two (an agent-side 'agents propose --replace ID' or 'agents withdraw ID' for its own pending proposals would fix it); 2) the proposal carries no note from the proposer saying what changed since the last one (a --note field would help the reviewer).