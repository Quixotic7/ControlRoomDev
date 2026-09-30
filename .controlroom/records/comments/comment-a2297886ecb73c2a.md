---
id: comment-a2297886ecb73c2a
ticket: WB-e649ce4e73451111
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-28T19:51:01.535Z
resolved: false
---
## Work completed

Added existing-chat orchestration alongside managed CLI review. Configured this chat as Codex chat orchestrator with Sol/gpt-5.6-sol, Terra/gpt-5.6-terra, Luna/gpt-5.6-luna through Codex CLI. Workers await token-bound chat review; independent verification, current scope/code checks and mandatory human gates remain enforced. Configuration is enabled only in Dev; no tickets queued. CLI/MCP provide review-context and review submission. Decision DEC-a4884cd85e03cac8 supersedes the earlier reviewer-location choice and records explicit human model preferences. Both installed builds updated. This implementation is submitted for human review, not self-accepted.

## What to review

Refresh Control Room Dev and open Agents. Confirm Existing chat orchestrator, Codex chat orchestrator, and the Sol/Terra/Luna roster. No managed runs should exist yet. For a first live trial, delegate one small approved ticket; review its worktree diff and verification, then use agents review-context and agents review as the named chat identity. Workers should wait without launching a separate reviewer. Mandatory human review must still route to you. This chat does not wake automatically; review proceeds while we are active here. Accepted branches remain for separate integration.

## Verification

97 core tests and 2 focused Agents browser tests passed. Production build and installed artifact/health checks passed. See VALIDATION.md.

Recorded run: npm run build; npm test; npm run test:browser -- tests/browser/agents.spec.ts (private Node 24 / bundled Chromium) — exit 0 (2026-09-28T19:44:29.022Z).

Branch: main

## Exceptions and limitations

No live provider/model execution or authentication trial was performed. Claude Code is installed, but the requested models use Codex CLI. No automatic chat wakeup or Git integration. Changes remain uncommitted.
