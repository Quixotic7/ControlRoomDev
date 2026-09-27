---
id: comment-94b6dfcb34aceaf3
ticket: WB-f0d1d1bc57e5f89b
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T01:06:13.013Z
resolved: false
---
## Work completed

Reserved fixed space for view options and unsaved indicators so selecting a view does not shift its tab or neighboring tabs. Inactive placeholders are not interactive or focusable. Long names, renaming, view options, themes, and density settings remain supported. Changes are in web/ProjectPage.tsx and web/project.css with geometry-based browser regression coverage.

## What to review

1. Refresh the app and repeatedly switch between Board, Table, and your custom views. Each tab should keep its width and neighboring tabs should stay put.
2. Edit a view filter so an unsaved dot appears; the tab should still keep its width.
3. Open the active view menu and rename a view; check keyboard access and both density settings. Different view names can have different widths; selection alone should not change them.

## Verification

Production build and TypeScript checks passed. All 46 core/model/integration tests and all 24 Chromium browser workflows passed. New focused coverage is in tests/parent-input.test.ts and tests/browser/backlog-batch.spec.ts; screenshots of the parent picker and conversation were visually inspected. Tests use disposable projects. Details are recorded in VALIDATION.md. Changes are local and uncommitted.

Branch: main
