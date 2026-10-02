---
id: comment-aeca06878f805fa9
ticket: WB-e86641210b201d27
actor:
  name: Codex chat orchestrator
  kind: agent
kind: review
at: 2026-10-01T09:34:12.085Z
resolved: false
---
## Work completed

Implemented human-only native worker grants, extra directories, literal/host-reference environment, Markdown worker brief, per-profile role notes and redacted launch details. Worker and verification environments retain forced agent attribution. Explicit provider permission denials become a question instead of successful work.

Merged into ControlRoom main b15c996 and installed in Dev4173 and Juice4280. Exact installed/served artifacts match /assets/index-DGqbV24l.js; both health200. Upgrade preserved669 Dev and110 Juice files, records/assets/configuration/network/preferences and launchers. 170 core tests,5 browser checks and production build/typecheck passed. Logs: /private/tmp/cr77-80-release-core.log, /private/tmp/cr77-80-release-browser.log, /private/tmp/cr77-80-main-build.log. Native provider behavior is distinguished from fixture tests; no live authority was changed. No push.

Decision: DEC-f84395d8e0aa6cbc

## What to review

Have the JuiceLab coordinator use agents propose --file CONFIG_JSON (optionally --brief-file MARKDOWN), then inspect the exact permissions, paths, environment references and role notes in Agents before applying. Grant only the build/test/git commands you want. Run a small approved Claude task that builds MachineLab, runs --selftest Examples and commits; inspect the effective launch and log. Also check a safe outside-grant command is denied under your actual ambient Claude policy. The native self-test must finish successfully before this acceptance criterion is satisfied.

## Verification

Merged into ControlRoom main b15c996 and installed in Dev4173 and Juice4280. Exact installed/served artifacts match /assets/index-DGqbV24l.js; both health200. Upgrade preserved669 Dev and110 Juice files, records/assets/configuration/network/preferences and launchers. 170 core tests,5 browser checks and production build/typecheck passed. Logs: /private/tmp/cr77-80-release-core.log, /private/tmp/cr77-80-release-browser.log, /private/tmp/cr77-80-main-build.log. Native provider behavior is distinguished from fixture tests; no live authority was changed. No push.

This ticket still needs real human-granted Claude build/self-test/commit and denial acceptance. Live grants were not broadened or enabled. The standalone MachineLab self-test did not terminate. Claude grants are additive to ambient policy; Codex has no native equivalent per-run command allowlist, so the UI explains its sandbox/path policy rather than claiming one. Fixture tests verify flags, real child environment/identity, denial reporting and403 agent configuration rejection.

Recorded run: npm run build && npm test; playwright test tests/browser/agent-config-proposals.spec.ts tests/browser/agents.spec.ts — exit 0 (2026-10-01T09:34:11.999Z).

Branch: main

## Exceptions and limitations

This ticket still needs real human-granted Claude build/self-test/commit and denial acceptance. Live grants were not broadened or enabled. The standalone MachineLab self-test did not terminate. Claude grants are additive to ambient policy; Codex has no native equivalent per-run command allowlist, so the UI explains its sandbox/path policy rather than claiming one. Fixture tests verify flags, real child environment/identity, denial reporting and403 agent configuration rejection.

Recorded by Codex chat orchestrator (agent) at 2026-10-01T09:34:12.064Z.
