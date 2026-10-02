---
title: Keep agent configuration proposals separate from human-granted runtime
  authority
status: accepted
labels:
  - agents
  - orchestration
schema: 1
id: DEC-f84395d8e0aa6cbc
kind: decision
createdAt: 2026-10-01T09:34:11.810Z
updatedAt: 2026-10-01T09:34:11.810Z
author:
  name: Codex chat orchestrator
  kind: agent
---
## Choice

Agents stage full configuration and optional worker-brief proposals. Only a human applies or discards them. Apply validates both semantic configuration freshness and the exact stored base under the write lock; configuration, brief, proposal status and audit are recovered together. Existing live configuration is unchanged by staging.

## Context and rationale

JuiceLab needs project build permissions, cache environment, role briefs and larger limits, but agents must not expand their own authority. The proposed diff makes that grant concrete and reviewable.

## Alternatives and tradeoffs

Writing provider settings or launcher wrappers implicitly would obscure permission changes. Use explicit native CLI flags instead. Claude allowedTools adds grants alongside ambient provider policy; Codex has no equivalent per-run command allowlist and retains explicit workspace/read-only sandboxing. Additional directories are explicit tool access, not a separate security boundary. Host environment references avoid storing secret values; launch details show environment names only. Verification uses a distinct agent identity.

Configured limit continuation is narrower than general recovery: it retains session, checkout, attempt and prior log segments, verifies ownership and unchanged context, and can be requested by the designated orchestrator. Explicit stops and unknown process identity prohibit automatic continuation. Default limits remain unchanged.

## Attribution and evidence

Accepted by Codex chat orchestrator within approved #78–80; Sol/Terra implementation with independent review and root integration. Main b15c996. 170 core and 5 browser checks pass. Actual human-granted live Claude build/self-test/commit and denial checks remain for #78; no live permissions were enabled or broadened.