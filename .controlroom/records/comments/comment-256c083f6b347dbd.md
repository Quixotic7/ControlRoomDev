---
id: comment-256c083f6b347dbd
ticket: WB-2956d3f6e91725c4
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T03:56:32.086Z
resolved: false
---
## Work completed

Added a meaningful-decision protocol to AGENT_GUIDE.md and a shared runtime source used by Markdown/JSON ticket context and MCP onboarding. Guidance covers searching existing knowledge, recording consequential choices with rationale/alternatives/tradeoffs/scope/attribution/references, labeling proposals and assumptions, preserving superseded rationale, linking tickets, and identifying decisions in review handoffs. Added MCP create_decision and searchable list_knowledge with inactive/history discovery; default current knowledge excludes accepted predecessors. Decisions remain available after ticket archival and do not approve scope or grant Done authority. Decisions: no additional project-level decision records were needed; this implements the approved protocol.

## What to review

1. Read AGENT_GUIDE.md, Record meaningful decisions. Check that its threshold for documenting choices, proposal handling and supersession rules match your expectations.
2. Open a ticket Agent context or run ./workboard context 31 --brief. The same protocol should be included.
3. Reconnect an MCP client to load the updated onboarding/tools: list_knowledge supports text search and include_inactive, and create_decision records proposals or accepted choices. Link returned IDs through the ticket decisions field while retaining existing links.
4. Inspect the review handoff guidance: it calls out decisions made or changed, or none. The protocol preserves human scope approval and Done acceptance.

## Verification

Production build/typecheck, 54 core/model/integration tests and all 44 Chromium browser workflows passed. The five new browser workflows passed again after the final feedback-preservation adjustment. Review and child-entry layouts visually inspected. Tests use disposable projects. Coverage: tests/review-outcome.test.ts, tests/browser/review-children.spec.ts, tests/agent.test.ts. Details in VALIDATION.md. Local service restarted at port 4173; changes remain uncommitted.

Recorded run: git diff --check — exit 0 (2026-09-27T03:56:32.039Z).

Branch: main
