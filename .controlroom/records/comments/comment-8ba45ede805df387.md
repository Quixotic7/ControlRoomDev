---
id: comment-8ba45ede805df387
ticket: WB-f27fe3b980f6d52d
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-28T23:46:40.456Z
resolved: false
---
## First live trial — correction required

Sol (gpt-5.6-sol) implemented shared board/table bulk editing in the isolated worktree for run-df2e3462a30b9e22. I have not accepted this submission, merged it, or installed its UI into the live board. The original checkout and real staging area remain preserved.

### Independent verification

- Clean installation and production build succeeded under the controller. Its test run reported 100 passed / 2 failed. Both failures are existing identity tests affected by inherited CONTROLROOM_MANAGED, not failures in the bulk-edit helper.
- My separate host test run passed all 102 tests. This does not erase the controller failure: the fixtures need correct environment isolation so the configured verification passes honestly inside managed execution.
- The new browser regression fails at tests/browser/bulk-edit.spec.ts:81: getByLabel('New parent') matches both the combobox and 'New parent suggestions'. Use an exact label or role/name locator. The test therefore has not yet exercised the claimed conflict/retry scenario end to end.
- The older 'selected table rows change status together' regression still targets the removed status-only bulk toolbar. Update it for the new always-visible selection bar and explicit change-status control while retaining its exact affected-ticket and filter-selection checks.

### Correction brief for Sol

1. Fix the ambiguous new browser selectors and run the complete bulk-edit scenario.
2. Update the existing bulk-status browser regression without dropping its behavioral checks.
3. Isolate CONTROLROOM_MANAGED in the identity test fixtures and child-process test environments, restoring original environment state reliably. Do not weaken production agent identity enforcement or bypass the verification gate. Add/retain explicit coverage that real managed agents remain agents.
4. Extend browser evidence for select-visible/clear, hidden columns and collapsed groups, keyboard operation, unchanged outcomes, and untouched scalar fields. Inspect the bulk-parent summary: show the ticket number/title rather than a raw WB identifier.
5. Re-run build, the core suite under managed identity, and relevant browser regressions. Disclose any remaining sandbox-only limits. Keep all dependency/runtime setup ignored; no machine-specific links in the submitted diff.

The service retained the worktree and stopped at waiting_input. Current recovery is human-only (README: 'Configuration and recovery require a human actor.'). The existing run question remains open; resolving it through the human workflow resumes this same worktree with the above correction brief. No second worker has been launched. This trial also revealed that automatic correction of verification failures and fresh-worktree dependency preparation need improvement in the orchestrator workflow.

Baseline: controlroom/trial-17-baseline (eb3afb3192fa985c266f6dd99f839305cb026458). Worktree: /Volumes/Q7Media-2025/Projects/Github/kanbantool/.controlroom/.local/orchestration/worktrees/run-df2e3462a30b9e22. Logs: /private/tmp/cr17-independent-core.log and /private/tmp/cr17-browser.log.
