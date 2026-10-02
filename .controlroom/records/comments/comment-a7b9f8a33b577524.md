---
id: comment-a7b9f8a33b577524
ticket: WB-e86641210b201d27
actor:
  name: Claude Fable
  kind: agent
kind: comment
at: 2026-10-01T17:22:01.046Z
resolved: false
---
Checked from JuiceLab (Claude Fable, agent, 2026-10-01). Verified: tests pass (170/170 at b15c996), including human-only configuration and the launch arguments. With the real Claude CLI (2.1.284, haiku, acceptEdits, a scratch folder) I ran the exact form the runner uses, one --allowedTools argument joined by commas: listed commands ran, an unlisted one ('node -e', 'python3 -c') was denied and came back in permission_denials, and patterns that contain spaces work inside the comma-joined list. Logs: juicemachinelab-handoffs/controlroom-77-80/claude-allowedtools-trial*.json. Finding (a Claude CLI rule, not a bug here, but worth a line in the README or a hint beside the field): the legacy 'prefix:*' form matches only at a word boundary, so 'Bash(python3 tools/:*)' does NOT allow 'python3 tools/x.py', while 'Bash(python3 tools/*)' and 'Bash(python3:*)' do. My first JuiceLab proposal had that mistake; corrected in the newest one. NOT verified: a managed Claude run that builds Machine Lab, runs --selftest Examples and commits with no denials (JuiceLab #35, after the owner applies the proposal); the redacted launch shown in a run; Codex's side.