---
id: comment-cc232b34070f6f11
ticket: WB-b65c6ae187397ade
actor:
  name: Terra
  kind: agent
kind: review
at: 2026-09-30T10:13:35.875Z
resolved: false
---
## Work completed

Implemented the archive-history correction: archived tickets now render as a horizontally scrollable board with the configured workflow columns in board order. Each column has its board-style header/count and archived cards with parent context and Unarchive. Empty columns remain visible during search so lane identity stays explicit. Existing archive preview, revision-checked writes, restore behavior, and navigation were not changed. Changed: web/ArchiveTickets.tsx, web/project.css, tests/browser/archive-grouping.spec.ts. Commit was attempted but the controlled worktree denied Git index-lock creation; changes remain unstaged. Decisions: none.

## What to review

In a Done column, open ⋯ → Archive completed tickets. Check the filter, count and linked ticket list; Cancel should change nothing. Try a small filtered set and confirm the results, then open Archived tickets, search by title or number, and Unarchive one. It should return in its existing stage with its details and conversation intact. Collapsed groups and hidden columns are excluded.

## Verification

`git diff --check` passes. `npm ci && npm run build` passes (TypeScript and production build). `npm run test:browser -- --list` discovers `archive history uses board-style workflow columns with parent context`; the updated spec asserts same-row/different-x lane geometry and search-empty lane behavior. Full required `npm test` is sandbox-blocked before test discovery because tsx cannot create its IPC socket (`listen EPERM` under /var/folders/.../tsx-501/*.pipe). Attempted commit `Lay out archived tickets as board columns` failed only because Git could not create the worktree index lock (`Operation not permitted`).

Recorded run: export PATH="/Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom/.runtime/node_modules/node/bin:$PATH"; npm ci && npm run build && npm test — exit 0 (2026-09-30T10:13:35.377Z).

Branch: controlroom/run-d07f2f25ca691fba

## Exceptions and limitations

Visibility is a personal preference in this browser, not shared across browsers. No known failures in the exercised workflows. Human workflow review requested. Changes remain uncommitted.
