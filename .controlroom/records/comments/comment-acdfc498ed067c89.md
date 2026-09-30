---
id: comment-acdfc498ed067c89
ticket: WB-e649ce4e73451111
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-28T22:35:42.480Z
resolved: false
---
## Work completed

Removed round-robin delegation and recovery fallback. Every work assignment requires an explicit worker selected by the orchestrator; the dashboard shows model names and requires a choice. Managed planners receive the provider/model roster and explain selection based on task needs in child descriptions. Documented provisional Sol/Terra/Luna heuristics and reassessment from observed results. Chat-led review, scope and human gates remain intact. Decision DEC-50fc69a201286cac records your explicit selection policy. No live assignments started.

## What to review

Refresh Agents. Choose an approved ticket: Queue assignment must remain disabled until a worker is selected. The Worker selector should show model names and no round-robin option. The chat orchestrator should explain which worker fits each task before explicitly delegating. Repeated jobs may deliberately use the same worker; removing a saved worker must block recovery rather than substitute another. A live model trial remains separate; no ticket was launched during this change.

## Verification

99 core tests and 2 Agents browser tests passed; build/typecheck and git diff --check passed. See VALIDATION.md.

Recorded run: npm run build; npm test; npm run test:browser -- tests/browser/agents.spec.ts — exit 0 (2026-09-28T22:34:12.089Z).

Branch: main

## Exceptions and limitations

Selection heuristics are provisional, not benchmarked guarantees. Live model/authentication behavior has not been exercised. Existing chat does not auto-wake. Changes are uncommitted.
