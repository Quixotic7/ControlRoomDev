---
parent: WB-35da530c7d149673
title: Opening a ticket, the popup window is too small
status: done
schema: 1
id: WB-ceb056ed4a0a69aa
kind: ticket
createdAt: 2026-09-27T05:11:46.584Z
updatedAt: 2026-09-30T05:32:45.182Z
author:
  name: You
  kind: human
number: 40
order: 1790485906594
reviewedRules: {}
attachments:
  - image-4ef84c707d666c4f
scopeApproved: true
priority: 1
handoff: "Expanded centered ticket dialogs to 95% of viewport height and up to
  1800px wide (1.8 times the previous 1000px limit), clamped to the available
  viewport. Small screens keep the dialog and footer within the viewport.
  Decisions: no new project-level decisions."
evidence: Production build/typecheck and 56 core/model/integration tests passed.
  All 50 browser workflows passed across the full regression run and focused
  reruns after fixing test timing/selector/legacy-opening assumptions. New
  coverage is in tests/browser/latest-feedback.spec.ts and
  tests/project-sessions.test.ts. Expanded dialog visually inspected;
  desktop/mobile geometry and footer accessibility verified. Live session check
  passed with both Control Room Dev (4173) and JuiceLab (4280) cookies present.
  JuiceLab upgrade preserved record hashes and its custom launcher. Details in
  VALIDATION.md. Changes remain uncommitted.
exceptions: ""
branch: main
verification:
  command: git diff --check
  exitCode: 0
  output: ""
  at: 2026-09-27T05:41:59.922Z
  cwd: /Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom
reviewInstructions: >-
  1. Refresh and open a ticket on your large display. The dialog should occupy
  about 95% of available height and be substantially wider.

  2. Resize the browser smaller and check that the dialog, close control and
  Save footer remain accessible, with the body scrolling inside it.
reviewOutcome:
  requestId: 0fbb9010-3c43-4ccb-9d07-d165c23e1693
  fingerprint: 82144776481440b48e09262994e6150be0b59da42db15a0b7896c471735ac06f
archived: true
---
The popup should vertically expand to about 95% of space and horizontally be maybe 1.8x wider