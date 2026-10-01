---
parent: WB-35da530c7d149673
title: Tickets stuck on showing in prgress even without active work.
status: review
schema: 1
id: WB-d9d54eabebf21a53
kind: ticket
createdAt: 2026-09-30T18:35:14.682Z
updatedAt: 2026-09-30T19:28:36.957Z
author:
  name: You
  kind: human
number: 72
order: 1790793314712
reviewedRules: {}
scopeApproved: true
scopeApprovedAt: 2026-09-30T18:43:06.680Z
scopeApprovedBy:
  name: You
  kind: human
decisions:
  - DEC-9418e2c38d4d5b4f
progressStartedAt: 2026-09-30T19:06:24.358Z
handoff: "Corrected the screenshot behavior alongside #28: Failed Review is displayed
  as Failed Review, time is labelled in-stage rather than agent runtime, and no
  worker is inferred from stage, claim or report. Decision DEC-9418e2c38d4d5b4f
  records the verified-process requirement."
evidence: "Merged main 52a37b4 and installed in Dev (4173) and Juice Lab (4280).
  Production build/TypeScript passed. Integrated verification: 35 browser checks
  and 20 focused core checks passed, covering real process identity/start/stop,
  activity service outage, reduced motion, status layout desktop/narrow/retro
  plus concurrent draft preservation, playbook copy/portability, approval
  query/saved views, native dragging and scrolling. Both services return health
  200 and exact installed/served artifacts match source dist. Record, attachment
  and saved-network/settings preservation checks passed. Logs:
  /private/tmp/cr-final-build.log, cr-final-browser.log, cr-updates-browser.log,
  cr-updates-unit.log, cr-updates-activity.log, cr-overlap-browser.log,
  cr-overlap-core.log. Duplicate relationship core checks also passed (7). No
  Git push."
exceptions: ""
reviewVerificationAt: 2026-09-30T19:28:36.642Z
reviewInstructions: "Reload and compare the formerly misleading #69/#28 cards. No activity
  waveform should appear without verified managed work. Stage labels must match
  their columns. External chat agents cannot be process-verified by this service
  and remain labelled unverified."
manualReviewRequired: true
branch: main
commits:
  - 2ed556f
verification:
  command: npm run build; focused core and integrated Playwright suites
  exitCode: 0
  output: "Merged main 52a37b4 and installed in Dev (4173) and Juice Lab (4280).
    Production build/TypeScript passed. Integrated verification: 35 browser
    checks and 20 focused core checks passed, covering real process
    identity/start/stop, activity service outage, reduced motion, status layout
    desktop/narrow/retro plus concurrent draft preservation, playbook
    copy/portability, approval query/saved views, native dragging and scrolling.
    Both services return health 200 and exact installed/served artifacts match
    source dist. Record, attachment and saved-network/settings preservation
    checks passed. Logs: /private/tmp/cr-final-build.log, cr-final-browser.log,
    cr-updates-browser.log, cr-updates-unit.log, cr-updates-activity.log,
    cr-overlap-browser.log, cr-overlap-core.log. Duplicate relationship core
    checks also passed (7). No Git push."
  at: 2026-09-30T19:28:36.642Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
---
These tickets in screenshot 69 and 28 are showing that they are in progress without any agent actually working on them. 