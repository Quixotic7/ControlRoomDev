---
parent: WB-35da530c7d149673
title: In needs you show open questions at top of ticket
status: done
schema: 1
id: WB-42dbe6c776cbbd51
kind: ticket
createdAt: 2026-09-27T05:40:52.778Z
updatedAt: 2026-09-30T05:32:45.030Z
author:
  name: You
  kind: human
number: 47
order: 15872
reviewedRules: {}
labels:
  - ui
  - attention
  - review
priority: 1
scopeApproved: true
handoff: "Unresolved questions now appear above ticket details/conversation with
  author, prompt, reply box and original-thread link. Reply drafts persist
  locally until posted; posting and resolving remain separate actions. Review
  instructions, handoff and current verification sit beside the review actions.
  New review submissions explicitly link their verification, so a previous pass
  cannot certify a newer unverified submission. CLI/MCP support declaring no
  manual checks when justified by the current run. Decisions: no consequential
  project decisions changed."
evidence: Production build/typecheck passed. All 63 core/model/integration tests
  passed. All 60 browser workflows passed across the full run (57 passed) and
  focused rerun (9 passed including one newly added workflow). Older test
  corrections await save-and-close before reopening and scope question controls
  to the intended thread. Review/question screenshots inspected on desktop and
  narrow screens. Changes are local and uncommitted; no Git commits or pushes.
  Control Room Dev and the installed JuiceLab application have been refreshed.
  See ControlRoom/VALIDATION.md.
exceptions: No known failures in the exercised workflows. Human visual/workflow
  review requested below.
reviewVerificationAt: 2026-09-27T07:03:38.741Z
reviewInstructions: "Open a ticket with unanswered questions from Needs you.
  Answer one at the top, then explicitly Resolve it: other questions and pending
  review should remain. Type a reply and refresh before posting; the draft
  should remain. Check this ticket’s What to review area: steps and current
  recorded verification should be visible without searching the thread. Try
  Details and Conversation, including a narrow window."
manualReviewRequired: true
branch: main
verification:
  command: PLAYWRIGHT_BROWSERS_PATH=.runtime/browsers
    PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm run test:browser --
    tests/browser/selected-ui-batch.spec.ts tests/browser/backlog-batch.spec.ts
    tests/browser/workboard.spec.ts --grep 'parent autocomplete|create a ticket,
    discuss|parent navigation|open questions|review displays|review
    return|screenshot creation|lost screenshot|screenshot save failures'
  exitCode: 0
  at: 2026-09-27T07:03:38.741Z
  output: "Recorded result from the completed focused Chromium run: 9 passed
    (13.5s). Passed: parent autocomplete; parent navigation and failed draft
    save; prominent questions and reply recovery; current/historical review
    evidence; desktop/narrow review alignment; screenshot
    title/cancel/exact-ticket flow; lost create-response recovery without
    replay; annotation/create failures and duplicate-submit guard; ticket
    conversation and review submission. See
    tests/browser/selected-ui-batch.spec.ts and VALIDATION.md."
reviewOutcome:
  requestId: c4c6e992-824a-479d-8423-b1f1da5d108f
  fingerprint: d2bddb5e99925145d0bdf3a1ebf14b9c0895592991d0d26c34f859303c2b2e61
archived: true
---
It can be difficult to find what I need to answer in conversation chain. Put the question I need to answer right at top similar to the accept/reject buttons. Also if it's ready to accept or reject and you want me the manually test or give feedback put it in text with accept/reject. If I don't need to check out something, just say it passed the test suite.

## Backlog refinement

Prepared by Codex backlog refinement. This describes planned work; implementation has not started. Proposed behavior below remains subject to human scope review.

### Intended outcome

Opening a ticket from Needs you immediately shows the question to answer or the review action to take, without searching a long conversation. Put manual test/feedback instructions beside Accept/Reject.

### Scope and approach

Add a prominent action area near the top of ticket details and conversation views, aligned with the existing review controls. Surface all unresolved questions with their author and original context, with an answer action and a link to the original thread entry. Render this from the existing question records rather than creating duplicate comments. Show the same action area when opening the ticket directly so the need for attention does not depend on the entry route.

For Review tickets, display the current submission's human review instructions, relevant handoff and verification summary beside Accept/Reject. If the submission explicitly requires no manual checks and recorded verification supports it, say the test suite passed and offer the evidence. Never infer a pass or invent manual checks from missing instructions; missing/failed/unrun verification must be clearly labeled.

### Acceptance criteria

- [ ] Opening a question-bearing ticket from Needs you shows the unresolved question text near the top, regardless of conversation sort order or length.
- [ ] Multiple unresolved questions remain individually identifiable with attribution, links to their original entries and a straightforward answer path. Long content can expand without concealing the existence of other questions.
- [ ] Posting an answer uses the existing durable conversation and retains the draft on failure; resolving a question is explicit and affects only that question. Merely opening a ticket never resolves it.
- [ ] Resolving/reopening a question updates the top area and Needs you after refresh; review instructions remain visible if the ticket also awaits review.
- [ ] Review instructions and requested feedback appear beside the existing Accept/Reject controls, with accessible Markdown and useful links. Acceptance feedback continues to work as implemented in #30.
- [ ] The summary reflects the latest review submission and distinguishes manual checks, successful automated verification, failures, exceptions and missing evidence. An old passing result is not presented as proof of a newer unverified submission.
- [ ] When no manual checks are explicitly required and the current submission has passing verification, concise text says the test suite passed, with access to its recorded command/result. Otherwise the UI states what is requested or unknown truthfully.
- [ ] Needs you remains actionable until all applicable attention reasons are addressed; resolving one question does not hide another question or a pending review.
- [ ] Keyboard and compact-screen users can reach the question/answer and review controls without losing unsaved ticket or reply drafts.

### Implementation notes and related work

Inspect web/Pages.tsx AttentionPage, web/model.ts attention reasons, web/RecordDetail.tsx question comments and review data, and web/ReviewActions.tsx. Use existing handoff, review instructions and verification records; clarify current-submission evidence association during implementation if needed. Related: #30 optional review feedback, #32 conversation ordering, #27 future structured questionnaires. This ticket does not require implementing the full questionnaire system.

### Human review / verification

Open a ticket with two unanswered questions deep in a long conversation; answer and resolve one, then verify the other remains prominent. Test a Review ticket with manual steps, one explicitly requiring only recorded automated checks, and one with missing/failed verification. Check that a fresh review submission cannot inherit a misleading old pass summary.
