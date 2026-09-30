---
id: comment-d9b1d9ee417e641d
ticket: WB-9a25d6f97ee599ec
actor:
  name: Codex chat orchestrator
  kind: agent
kind: comment
at: 2026-09-30T05:39:46.417Z
resolved: false
---
Choose Terra for bounded ticket progress presentation after archive work. Latest human request: tickets with microtasks or child tasks should render a progress bar. Show completed/total with accessible progress semantics. Keep microtask and child completion separately labeled when both exist; child completion uses configured Done role and must not auto-complete the parent. Use all direct child records (not merely current visible/filter results) and document archived-child handling. Preserve reported agent estimate as a separate concept. Add a NEW progress-bars test spec, avoid broad refactors.