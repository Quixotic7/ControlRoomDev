---
id: comment-ac8becd4c4e7aa8a
ticket: WB-6b48ad908e7bbfcf
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T18:44:17.132Z
resolved: false
---
## Work completed

Addressed your theme feedback. Retro presets now bundle Pixelify Sans instead of relying on modern OS fallback fonts; Elektron and Game Boy use chunky Silkscreen display lettering. Desktop presets have distinct window chrome: Windows 95 blue/raised controls, Windows 3.1 centered caption and left close gadget, System 7 stripes/left close box, and Amiga Workbench blue frames. Ticket, screenshot and shortcut windows expose real File/View commands using their existing save/close/tab/tool handlers. Escape closes a menu without closing its window. Decision DEC-e0b54d147304992b records local pixel typography and shared functional window menus. Fonts and original licenses ship offline. Both installed applications refreshed with data and launchers preserved. #63 remains accepted in Done.

## What to review

Refresh, then use More actions → Theme. Compare Elektron and Game Boy lettering on the board and a ticket. Try Windows 95, Windows 3.1, Classic Mac System 7 and AmigaOS with a ticket, screenshot and Keyboard shortcuts window open. Check their title bars and close buttons. In a ticket, use File → Save to keep editing, View → Conversation to switch sections, and Escape from an open File menu to return to the window. File → Save and close should save and close normally. Review the appearance at your usual display size and in a narrow window.

## Verification

Build/typecheck and git diff --check passed. All 78 Chromium workflows passed across full/focused runs, including 3 new retro workflows. Screenshots inspected for typography, header layout, focus and mobile fit. Installed server/browser hashes and both service ports verified; record/image/config hashes and custom launchers preserved. See VALIDATION.md.

Recorded run: npm run build; npm run test:browser; npm run test:browser -- tests/browser/retro-themes.spec.ts tests/browser/review-followups.spec.ts (private Node 24 and bundled Chromium) — exit 0 (2026-09-27T18:42:30.798Z).

Branch: main

## Exceptions and limitations

Retro styling is period-inspired rather than an exact OS replica. New font assets are locally bundled and licensed; no remote font service is required. Human visual approval is requested. Core/storage/native capture logic was unchanged. Changes remain uncommitted.
