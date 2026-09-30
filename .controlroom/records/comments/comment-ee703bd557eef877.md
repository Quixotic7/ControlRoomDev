---
id: comment-ee703bd557eef877
ticket: WB-3e0b669114254d27
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T10:33:53.783Z
resolved: false
---
## Orchestrator review: changes

The offline playbook UI is promising, but the copied workflow prompts need to match both project-local installation and the managed-agent protocol.

### Acceptance criteria checked
Make the connection recipe identify the installed project launcher and guide (.controlroom/controlroom and .controlroom/AGENT_GUIDE.md, with the source-checkout alternative explicitly separate). Avoid assuming a global controlroom executable. In pickup/progress/review/feedback recipes, distinguish manual agents from controller-managed assignments: managed workers return their structured handoff and do not issue manual claim/move/review/release or overwrite another assignment; stopped work requires explicit orchestrator takeover. Do not unconditionally instruct every review to wait for human Done when the configured independent orchestrator can accept it. Retain scope/identity protections. Use valid stable IDs for aria-labelledby group headings. Add browser checks for search, keyboard copy success and clipboard-denial fallback, public ticket substitution, and no mutation/execution on Copy.

### Evidence
Exact commit6a65794 review: connection starts with Read AGENT_GUIDE.md and tool-source ./controlroom, while shipped installer src/cli.ts writes the project guide and launcher under .controlroom. Subsequent recipes use a global controlroom command. Pickup directs claim/move and submission directs manual review unconditionally, contrary to the managed-worker exception in the shipped guide; feedback similarly directs a manual lifecycle submission. This can reproduce already-observed assignment conflicts when users paste the recipes into managed agent workflows. Playbook.tsx also uses literal group strings with spaces in IDs and aria-labelledby, which are parsed as multiple ID references. Controller core/build passed; static recipe checks do not cover clipboard or accessibility behavior.

Reviewer: Codex chat orchestrator; worker: Terra
Code identity: 883ffdf01840986dd499c3c903432e0d4069e93e56868a73968fda2e12a2d901
Integration: not performed. Retained branch: controlroom/run-759a83a398f6bc04