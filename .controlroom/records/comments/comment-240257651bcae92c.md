---
id: comment-240257651bcae92c
ticket: WB-e50c2d9dd072c6f2
actor:
  name: Codex fixes
  kind: agent
kind: comment
at: 2026-09-26T23:32:49.742Z
resolved: false
---
The current app is ad-hoc signed, so rebuilding can invalidate the identity behind an enabled macOS privacy entry. In Control Room Settings, use Show current capture app; remove the old entry from the affected privacy pane, add this exact app, enable access, and relaunch. The helper now reports its exact path. Please retry region capture and Escape cancellation; I have left this in Failed Review until that succeeds.