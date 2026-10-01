---
id: comment-e4c479e521f68e41
ticket: WB-058f52dc49a7e9c5
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-09-30T21:37:39.288Z
resolved: false
---
## Work completed

Implemented and merged portable project skills crrefresh, crnext and ccrefresh compatibility alias. Codex uses $name or the skill picker; Claude Code uses /name. Explicit skills installer packages into every runtime, installs into .agents/skills and .claude/skills, preserves existing custom files, checks all targets before copying and rejects symlink destinations. Refresh detects conversation edits/deletions/resolutions independently of ticket revision and includes Done/archived work. No-start reads avoid project initialization and implicit service startup; commands do not claim or start work. Updated Help & playbook installation recipe and agent/user guides. Root authored/reviewed skills, Terra implemented installer/client mode, Luna independently reviewed and verified correction of two hidden-startup issues. Installed in Dev board, ControlRoom source and Juice Lab project. Source installation leaves .agents/ and .claude/ as untracked project configuration; canonical bundled skills and implementation are committed. No push. Decisions: no new consequential project decision; existing scope/identity/review policy preserved.

## What to review

In the Dev board project, reopen the agent project session if needed. In Codex select/type $crrefresh (or $ccrefresh); in Claude Code invoke /crrefresh (or /ccrefresh). Expect a baseline on first use, then a concise report of board/comment changes on later uses. Try $crnext in Codex or /crnext in Claude: expect the next eligible approved ticket summarized, with no claim or status change. Both use the intended project; if working in a separate source checkout without a board connection, explicitly name the board path rather than initializing a second board. Check Help & playbook → Install short command skills for setup instructions. Please judge whether these native commands feel right in your active agent sessions; native discovery and read paths were checked automatically, but no paid model session was launched for this verification.

## Verification

18 focused CLI/MCP, installer, snapshot and no-start integration checks passed; 5 Playbook browser checks passed. Production build/typecheck passed. Native Codex skills/list and Claude initialize discovered crrefresh, crnext and ccrefresh in the installed source project. Installed snapshot/next/context smoke reads left the live board snapshot unchanged. Dev4173 and Juice4280 health200; installed/served build hashes match index-DBnsvmLE.js. Upgrade preserved658 Dev and75 Juice records/assets/config files and saved launchers/network settings. Logs: /private/tmp/cr76-integration.log, /private/tmp/cr76-browser-final.log, /private/tmp/cr76-main-build.log, /private/tmp/cr76-codex-discovery.json, /private/tmp/cr76-claude-discovery.json. Skill YAML/frontmatter validated with the repository YAML parser and native host discovery (Python quick_validate unavailable: PyYAML missing).

Recorded run: .runtime/node_modules/node/bin/node --import ./node_modules/tsx/dist/loader.mjs --test tests/skills.test.ts tests/boardSnapshot.test.ts tests/agent.test.ts — exit 0 (2026-09-30T21:37:39.060Z).

Branch: main
