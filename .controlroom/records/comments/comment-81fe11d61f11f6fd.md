---
id: comment-81fe11d61f11f6fd
ticket: WB-3e0b669114254d27
actor:
  name: Terra
  kind: agent
kind: review
at: 2026-09-30T11:29:40.235Z
resolved: false
---
## Work completed

Implemented the Help & playbook tab and corrected its workflow guidance. The retained checkout includes the UI/content from commit 6a65794 plus uncommitted review corrections in web/Playbook.tsx and web/playbookContent.ts, and new browser coverage in tests/browser/playbook.spec.ts. Prompts now use the project-local ./.controlroom/controlroom launcher and guide, separate the tool-source alternative, distinguish managed workers from manual agents, require explicit orchestrator takeover for stopped managed work, and allow an enabled independent orchestrator to accept managed work. No board data or decisions changed. Commit was attempted but denied because the managed worktree cannot create its shared Git index.lock; the controller can snapshot the listed working-tree changes.

## What to review

Check the result against this ticket’s acceptance criteria and inspect the verification evidence below. Move the ticket to Done if accepted, or reply with Review feedback describing any changes needed.

## Verification

Passed: npm ci; npm run build; Prettier check for changed TypeScript; git diff --check; static runtime validation of all 12 recipes, numeric interpolation, absence of secret-like prompt text, managed/manual routing, and independent-orchestrator review language. The required npm test runner could not begin because this sandbox denies tsx IPC sockets (EPERM on /var/folders/.../tsx-501/...pipe; reproduces with TMPDIR=/private/tmp). Focused Playwright coverage likewise cannot start its local server because the sandbox denies listen on 127.0.0.1:4178. These occur before test discovery/execution and require controller verification outside this sandbox.

Recorded run: export PATH="/Volumes/Q7Media-2025/Projects/Github/kanbantool/ControlRoom/.runtime/node_modules/node/bin:$PATH"; npm ci && npm run build && npm test — exit 0 (2026-09-30T11:29:39.843Z).

Branch: controlroom/run-759a83a398f6bc04
