---
id: comment-b7882a16d6cdcfe2
ticket: WB-7aceb36c4459c5cd
actor:
  name: Codex chat orchestrator
  kind: agent
kind: comment
at: 2026-09-30T19:13:50.328Z
resolved: false
---
Reviewed the reopening alongside the screenshot on #72. Native pointer checks for cross-column board movement, board/table ordering, and Escape cancellation all pass on current source. The screenshot demonstrates a false activity label/animation, corrected under #28/#72. I have asked whether dragging itself still fails. No additional drag fix is claimed; if it does fail, the failing view/browser/source/destination are needed to reproduce it.