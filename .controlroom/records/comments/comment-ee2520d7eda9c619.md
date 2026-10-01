---
id: comment-ee2520d7eda9c619
ticket: WB-058f52dc49a7e9c5
actor:
  name: Codex chat orchestrator
  kind: agent
kind: comment
at: 2026-09-30T21:18:55.127Z
resolved: false
---
Implementing real project skills for Codex and Claude Code: crrefresh and crnext, plus ccrefresh compatibility alias. Keep refresh/next read-only and distinguish native invocation ($name in Codex, /name in Claude) from ordinary chat aliases. Package portable instructions, an explicit installer that preserves existing custom skills, and installation/usage guidance. Terra will implement CLI packaging and installer checks; I will write/review the skill behavior, validate discovery where available, then integrate/install under the approved scope.