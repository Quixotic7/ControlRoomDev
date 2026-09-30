---
id: comment-fca350dd0c83232c
ticket: WB-b65c6ae187397ade
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T08:34:59.108Z
resolved: false
---
## Work completed

Done-role column menus now preview an exact, deduplicated list of matching unarchived tickets from expanded groups. The preview freezes revisions and membership: later arrivals stay untouched and concurrent edits are reported individually, without retrying stale writes. Archived tickets provides searchable history, opens details and restores tickets in their existing stage. Archiving a parent never implicitly archives children; retained parent headers are labeled Archived parent. Decisions: no consequential project decisions changed.

## What to review

In a Done column, open ⋯ → Archive completed tickets. Check the filter, count and linked ticket list; Cancel should change nothing. Try a small filtered set and confirm the results, then open Archived tickets, search by title or number, and Unarchive one. It should return in its existing stage with its details and conversation intact. Collapsed groups and hidden columns are excluded.

## Verification

Production build/typecheck passed. All 64 Chromium browser workflows passed in the full regression run, including 4 new board-management workflows. Checks cover filter/visibility composition, browser persistence, project/view isolation, stable column IDs, all-hidden recovery, keyboard navigation, exact frozen archive scope, collapsed groups, custom Done names, cancellation, stale-write partial results, late arrivals, searchable restoration and preserved relationships/conversation. Compact headers and archive conflict results were visually inspected. Tests use disposable projects. Both local applications refreshed; JuiceLab record hashes and custom launcher preserved. See ControlRoom/VALIDATION.md.

Recorded run: PLAYWRIGHT_BROWSERS_PATH=.runtime/browsers PATH="$PWD/.runtime/node_modules/node/bin:$PATH" npm run test:browser — exit 0 (2026-09-27T08:33:05.858Z).

Branch: main

## Exceptions and limitations

Visibility is a personal preference in this browser, not shared across browsers. No known failures in the exercised workflows. Human workflow review requested. Changes remain uncommitted.
