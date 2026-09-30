---
id: comment-a4cea7597ad96328
ticket: WB-074c339baa63d5d6
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T06:33:36.044Z
resolved: false
---
## Orchestrator review: changes

History rendering and answer prefilling look correct, but independent browser verification reproduces a broken reopen/amend flow. Correct this before acceptance.

### Acceptance criteria checked
The new questionnaire regression fails at selected-work.spec.ts:148: Submit amended answers remains disabled after Reopen questionnaire because the explicit reopen advances comment revision while the retained browser draft still has the prior revision. A deliberate reopen should retain existing answers and safely acknowledge the exact returned current revision, so a normal amendment can be submitted directly. Keep genuine concurrent question/answer changes guarded; do not globally suppress stale detection. Preserve draft text including intentional cleared fields. Extend or keep the real user-flow test rather than force-clicking or weakening it.

### Evidence
Reproduced outside worker sandbox: /private/tmp/cr27-corrected-browser.log. Failure screenshot/error-context under retained checkout test-results/selected-work-questionnair-3304a-onflict-and-history-remains/. Existing local .runtime directory is available for root verification. Controller build/core passed but browser did not. Do not change live questionnaire answers. Root will rerun after correction.

Reviewer: Codex chat orchestrator; worker: Terra
Code identity: 57327a0252854a38f2107babb8df78d5863da4c963fdb692bae5cc88731473c9
Integration: not performed. Retained branch: controlroom/run-fa385ca4b8b8e5a1