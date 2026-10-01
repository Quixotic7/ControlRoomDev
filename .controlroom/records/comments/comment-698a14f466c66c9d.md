---
id: comment-698a14f466c66c9d
ticket: WB-3e0b669114254d27
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T19:28:36.050Z
resolved: false
---
## Work completed

Added current-project versus reusable template mode to Help & playbook. Added a teaching prompt for /crrefresh and /crnext, and documented the aliases in the installed agent guide. These are read-only conversation conventions after an agent reads the guide/teaching prompt; arbitrary chat tools do not gain native slash commands. Retained the review queue and both previously overlapping features. Decisions: none.

## What to review

Reload Help & playbook. Choose Reusable project template: copied prompts should contain PROJECT_NAME/PROJECT_BRANCH rather than this board name. Find Teach short conversation commands; after giving that prompt to your agent, try /crrefresh. Confirm this level of shorthand matches your intended workflow.

## Verification

Merged main 52a37b4 and installed in Dev (4173) and Juice Lab (4280). Production build/TypeScript passed. Integrated verification: 35 browser checks and 20 focused core checks passed, covering real process identity/start/stop, activity service outage, reduced motion, status layout desktop/narrow/retro plus concurrent draft preservation, playbook copy/portability, approval query/saved views, native dragging and scrolling. Both services return health 200 and exact installed/served artifacts match source dist. Record, attachment and saved-network/settings preservation checks passed. Logs: /private/tmp/cr-final-build.log, cr-final-browser.log, cr-updates-browser.log, cr-updates-unit.log, cr-updates-activity.log, cr-overlap-browser.log, cr-overlap-core.log. Duplicate relationship core checks also passed (7). No Git push.

Recorded run: npm run build; focused core and integrated Playwright suites — exit 0 (2026-09-30T19:28:35.815Z).

Branch: main
