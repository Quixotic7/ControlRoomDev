---
id: comment-2792c98f54ba8eb1
ticket: WB-1fb579187090f9fc
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T08:29:51.545Z
resolved: false
---
## Direct implementation ready for human review

I took over the scrolling correction directly at your request and stopped Sol's managed run. Correction commit 374013e is merged into main as 94ee2aa. Both Control Room Dev (4173) and Juice Lab (4280) now serve the tested build; live JavaScript /assets/index-C-jNkSD8.js matches the source build on both ports. Reload your usual page to test. All records, images, saved network settings and custom launchers were preserved.

### What changed
- Ticket scrolling no longer scans comment positions on every scroll event. Visibility tracking keeps consistent coordinates across different scroll positions.
- Caught and corrected a 480px live-update jump in the first proposal. Also removed estimated-height rendering from comments after it caused jumps with newest-first replies. Real comment heights remain intact.
- Off-screen board cards can skip rendering work while retaining keyboard navigation and drag/drop.
- The prior responsive typing fix remains intact.

### Verification
Production build/typecheck passed. Exact merged source passed 106 core tests and 101 Chromium browser tests. New regressions exercise real wheel scrolling with confirmed movement, large boards/conversations, and stable reading position after live updates in both sort orders and both ticket tabs. Existing image stability, typing, keyboard save, drag/drop, range selection, theme and LAN tests passed.

In a frozen-board headless diagnostic at 1728x1080/DPR2 and 4x CPU throttling, #67's p95 frame interval was 33.3ms before and 16.7ms after; comment geometry reads during 40 scroll events dropped from 188 to zero. Board p95 remained about 16.7ms in that test, so this does not prove the subjective lag is resolved in every browser. Logs: /private/tmp/cr67-main-core.log and /private/tmp/cr67-main-browser.log. Measurements: /private/tmp/cr67-scroll-before.json and /private/tmp/cr67-scroll-direct.json.

### Please test
1. Reload the app, then scroll the board vertically/horizontally and through longer swimlanes.
2. Open this ticket and scroll Details and Conversation, using both comment sort orders. Incoming comments should preserve your reading position.
3. Check typing remains responsive and images, card selection and dragging still behave normally.

### Board bookkeeping
I am not self-accepting my implementation. The app still locks the durable assignment to stopped Sol: claiming as Codex chat orchestrator returned 409 Assigned to Sol, and the same ownership guard prevents normal ticket updates/review submission under my identity. This review comment contains the current handoff; the ticket remains open in In Progress instead of being falsely marked Done or impersonating Sol. Backlog #68 records the explicit takeover/release gap. No consequential project design decisions changed. No push performed.