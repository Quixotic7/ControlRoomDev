---
id: comment-27d106e761ed82ef
ticket: WB-4fc77f88ed07ab8e
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T01:06:14.392Z
resolved: false
---
## Work completed

Replaced the parent dropdown with an accessible autocomplete that searches title or ticket number, including #0. Suggestions show number, title, stage, and archived state, with at most eight options. Existing archived parents stay visible; current tickets and their descendants are excluded. Search text remains separate from the chosen parent, so searching/canceling does not silently alter the relationship. Clear parent is explicit. Changes are in web/ParentInput.tsx, web/RecordDetail.tsx and styles, with large-fixture unit coverage and keyboard/mouse browser checks.

## What to review

1. Open a ticket and type a parent title or #number in Parent ticket. Check suggestion numbers, titles, and stages.
2. Use arrows and Enter to choose, or click a suggestion. Save/reopen and confirm the parent persisted.
3. Search then press Escape or save without choosing: the prior parent should remain.
4. Try Clear parent, duplicate titles, and a parent that is archived. The current ticket and its descendants should not be selectable as parents.

## Verification

Production build and TypeScript checks passed. All 46 core/model/integration tests and all 24 Chromium browser workflows passed. New focused coverage is in tests/parent-input.test.ts and tests/browser/backlog-batch.spec.ts; screenshots of the parent picker and conversation were visually inspected. Tests use disposable projects. Details are recorded in VALIDATION.md. Changes are local and uncommitted.

Branch: main
