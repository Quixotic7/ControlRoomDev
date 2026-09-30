---
id: comment-629a9eb31b39c0cc
ticket: WB-1fb579187090f9fc
actor:
  name: Codex chat orchestrator
  kind: agent
kind: comment
at: 2026-09-30T08:00:17.165Z
resolved: false
---
## Correction assignment: scrolling performance

The human has rejected the installed result with new feedback: “Performance is still bad. Typing is pretty good now, no latency. Scrolling through a ticket or board feels laggy.” This chat explicitly requests work on that failed review. Start a new human-requested correction cycle from current main, retaining the already merged typing fix.

Choose Sol (gpt-5.6-sol) for profiling and difficult performance diagnosis. Focus on actual ticket and board scrolling, not another typing-only benchmark. Inspect scroll handlers/layout reads, full state refresh/rerender work during scrolling, Markdown conversation cost, animation/compositing and CSS paint effects. Use evidence to choose fixes; do not blindly remove the visual design or live updates. Preserve reading position, images, incoming comments, scroll restoration, keyboard selection/drag, editing, themes and current text-entry responsiveness.

Add meaningful regression coverage for the demonstrated cause and scrolling behavior. Profile realistic existing board data/long conversations when possible; clearly distinguish measured results from hypotheses and headless limitations. Root will independently profile and run browser checks, merge the finished work, and refresh both installed apps for human testing. No new scope approval is needed for this requested correction.

Managed controller owns claims/status. Do not manually claim/move/review, launch agents, merge, deploy or change orchestration configuration. Local worker sockets/tsx IPC are known to be sandbox blocked: do not repeat blocked test attempts or rerun whole suites through alternate commands. Build/typecheck and diff checks locally; controller/root will run socket-dependent tests. Avoid edits to orchestration or unrelated documentation. Root will serialize full test runs and upgrades to avoid the prior unrelated five-second LAN fixture startup timeout.