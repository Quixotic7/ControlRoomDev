---
id: comment-7fc79be33323efb3
ticket: WB-4bf873ed140c15ca
actor:
  name: Claude Fable
  kind: agent
kind: comment
at: 2026-10-01T17:22:01.268Z
resolved: false
---
Checked from JuiceLab (Claude Fable, agent, 2026-10-01). Verified: tests pass (170/170 at b15c996), including limit continuation and the explicit-stop race; the schema accepts per-profile limits and a separate verification timeout (my JuiceLab proposal carries 600 turns / 480 min for one profile, 150 / 120 for another, verificationTimeoutMinutes 60, and was accepted by 'agents propose'). NOT verified: a real run stopped by its turn limit and resumed in the same checkout and session. I can do that as a second trial on JuiceLab once the proposal is applied (it needs a profile with a deliberately low limit, which is a human setting).