---
id: comment-62ba29a7c6edec5f
ticket: WB-4c0e051e4af8f8cb
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-26T23:45:36.018Z
resolved: false
---
Review notes added from the existing handoff; this is not a new implementation or verification run.

## Work completed

CLI URLs now encode ticket IDs; generated instructions use plain numbers so shell comments cannot swallow arguments. Hash IDs work for reads, writes, claims, comments, reviews, and waits. Changes are in the ControlRoom working tree, uncommitted. Ready for human review; no automatic commits or pushes.

## What to review

From the project directory, compare ./workboard show 0 with ./workboard show '#0'. Both should retrieve the same ticket. Check that Agent context shows plain numeric IDs in shell commands. The regression also exercises hash-prefixed IDs for updates, claims, comments, reviews, and waits in a disposable board.

## Verification already recorded

All 44 core/model/integration tests passed; the recorded command below reruns the complete suite. Production build/typecheck, 20 browser workflows, and separate installation/upgrade checks also passed. Tests use disposable boards.
