---
id: comment-fcf3c9a82a7b2d9f
ticket: WB-3e0b669114254d27
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-10-01T21:39:09.511Z
resolved: false
---
## Work completed

Added the requested short command reference at the very top of Help & playbook: refresh, next approved ticket and compatibility alias, with correct Codex $skill and Claude /command forms. It includes the installation prerequisite and a Copy command list action with an accessible success message and visible selected-text fallback if clipboard access is denied. Existing recipes and project/template modes remain available. Terra implemented; root reviewed exact changes and checked the installed UI. Decisions: none.

Merged into ControlRoom main48b2afd and installed in Dev4173 and JuiceLab4280. Both health endpoints return200; installed and served assets match /assets/index-Bi0Awx-3.js. Upgrade preserved707 Dev/151 Juice records/assets/settings files and launchers. Both services were idle before each upgrade. No push. Combined release:199 core tests passed, one optional native-provider test skipped;18 browser checks passed; production build/typecheck passed. Logs:/private/tmp/cr-failed-review-core.log,/private/tmp/cr-failed-review-browser.log,/private/tmp/cr-failed-review-main-build.log.

## What to review

Reload Help & playbook. The Short command skills panel should appear above project context and recipe search, listing refresh, next ticket and compatibility alias for both hosts. Copy command list copies those six lines. Automated checks cover this and narrow layouts; no additional manual verification is required.

## Verification

Merged into ControlRoom main48b2afd and installed in Dev4173 and JuiceLab4280. Both health endpoints return200; installed and served assets match /assets/index-Bi0Awx-3.js. Upgrade preserved707 Dev/151 Juice records/assets/settings files and launchers. Both services were idle before each upgrade. No push. Combined release:199 core tests passed, one optional native-provider test skipped;18 browser checks passed; production build/typecheck passed. Logs:/private/tmp/cr-failed-review-core.log,/private/tmp/cr-failed-review-browser.log,/private/tmp/cr-failed-review-main-build.log.

Recorded run: npm test; playwright test tests/browser/playbook.spec.ts tests/browser/managed-questions.spec.ts tests/browser/agents.spec.ts tests/browser/agent-config-proposals.spec.ts; npm run build — exit 0 (2026-10-01T21:39:09.411Z).

Branch: main

## Exceptions and limitations

The listed commands require bundled skills to be installed in the agent checkout; this is stated in the panel. Native skill installation and discovery were delivered previously in #76.

Recorded by Codex chat orchestrator (agent) at 2026-10-01T21:39:09.489Z.
