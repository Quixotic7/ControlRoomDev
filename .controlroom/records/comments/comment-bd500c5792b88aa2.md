---
id: comment-bd500c5792b88aa2
ticket: WB-27c68121ad6a1d44
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T19:28:36.470Z
resolved: false
---
## Work completed

Kept the waveform but now animate only verified running managed work. Claims, recent progress reports and progress-role stage alone never animate. Stops and activity-service failures clear animation. External chat work remains unverified rather than guessed. Actual status names replace the hardcoded In Progress label. Decision DEC-9418e2c38d4d5b4f supersedes the earlier stage-decoration trigger.

## What to review

Reload and inspect idle In Progress and Failed Review cards: neither should animate. They should show their configured stage and No verified running agent. A managed worker with a verified running process receives the waveform; reduced-motion remains respected.

## Verification

Merged main 52a37b4 and installed in Dev (4173) and Juice Lab (4280). Production build/TypeScript passed. Integrated verification: 35 browser checks and 20 focused core checks passed, covering real process identity/start/stop, activity service outage, reduced motion, status layout desktop/narrow/retro plus concurrent draft preservation, playbook copy/portability, approval query/saved views, native dragging and scrolling. Both services return health 200 and exact installed/served artifacts match source dist. Record, attachment and saved-network/settings preservation checks passed. Logs: /private/tmp/cr-final-build.log, cr-final-browser.log, cr-updates-browser.log, cr-updates-unit.log, cr-updates-activity.log, cr-overlap-browser.log, cr-overlap-core.log. Duplicate relationship core checks also passed (7). No Git push.

Recorded run: npm run build; focused core and integrated Playwright suites — exit 0 (2026-09-30T19:28:36.228Z).

Branch: main
