---
id: comment-8454bdf51cb11fbd
ticket: WB-2b3ea94d3a79cc73
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-28T07:47:21.440Z
resolved: false
---
## Work completed

Fixed images flickering/reloading and shifting the comment composer while typing. Inline React Markdown link/image component definitions were recreating the rendered nodes on every keystroke. Stable module-level renderers now receive the latest annotation callback through context, preserving loaded images and their height. New regression workflows reproduced the failure before the fix and pass afterward. Both installed applications updated. Decisions: no consequential architecture or product decision changed.

## What to review

Refresh #19, which has your five image comments. In Details, scroll to Add to the conversation and type several sentences: images should stay loaded, the editor should stay in view, and the caret should remain focused. Repeat in Conversation and in the ticket-only tab. Check that clicking an image still opens the annotation editor. A normal draft can be cleared afterward; posting is optional.

## Verification

Build/typecheck and git diff --check passed. All 82 browser workflows passed across full/focused runs (80 + 11); typing failure reproduced before the fix. Reference screenshots visually checked. Both installations verified, preserving board data and settings. See VALIDATION.md.

Recorded run: npm run build; npm run test:browser; focused final rerun of comment-images, retro-themes, selected-work theme checks, and standalone screenshot/discard checks (private Node 24, bundled Chromium) — exit 0 (2026-09-28T07:45:04.250Z).

Branch: main

## Exceptions and limitations

Images still load normally when first opened or when their actual source changes. This fix prevents unnecessary remounts during typing. Human reproduction check requested. Changes remain uncommitted.
