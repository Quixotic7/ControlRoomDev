---
id: comment-c1d0dfdb6258a3bb
ticket: WB-f3b374e6da0904c0
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-26T23:45:36.001Z
resolved: false
---
Review notes added from the existing handoff; this is not a new implementation or verification run.

## Work completed

MCP dispatches independent requests without blocking its reader. Waits support cancellation, bounded timeouts, stream/timer cleanup, and connection-close cancellation. Verification commands are asynchronous as well. Changes are in the ControlRoom working tree, uncommitted. Ready for human review; no automatic commits or pushes.

## What to review

Inspect the MCP regression where wait_for_update stays pending while get_ticket and ping return. Cancellation should end that wait, and closing stdin should stop pending waits without leaving the process running. The test uses a disposable board.

## Verification already recorded

All 44 core/model/integration tests passed (shared run recorded on #12), including dedicated regressions for these review findings. Production build/typecheck, 20 browser workflows, and separate installation/upgrade checks passed. Native detector self-tests and unchanged-build reuse also passed; live macOS capture remains a separate open acceptance issue on #4.
