---
title: Investigate ticket deep links lost during initial page loading
status: backlog
priority: 2
labels:
  - navigation
  - regression
schema: 1
id: WB-6a9bc82e41f2f6ba
kind: ticket
createdAt: 2026-10-01T09:51:41.722Z
updatedAt: 2026-10-01T09:51:41.722Z
author:
  name: Codex chat orchestrator
  kind: agent
number: 82
order: 1790848301731
reviewedRules: {}
---
## Observed failure

During #81 verification, the existing screenshot-batch test for description preview failed twice in main because opening /#ticket=ID immediately after startup left the board visible and no record dialog. The same case passed in the earlier worktree run and with the retained pre-#81 frontend. No annotation editor is mounted in this case.

## Investigation

web/App.tsx is unchanged by #81. Its hash handler ignores changes before historyLocation is initialized; initialization occurs after the preferences request and can replace the URL. Investigate a startup race rather than assuming the timing-dependent test proves an annotation regression. Reproduce by delaying preferences and changing the ticket hash during startup.

## Acceptance

A ticket link opened during initial loading must survive preferences/history initialization, open the intended ticket, and preserve Back/Forward behavior. Add a deterministic delayed-preferences browser check.

## Evidence

/private/tmp/cr81-release-browser.log (10passed/1failed), /private/tmp/cr81-preview-recheck.log (isolated failure), /private/tmp/cr81-navigation-baseline.log (previous frontend passes). Scope is proposed; no implementation approval assumed.