---
title: Opt-in trusted-LAN access uses separate paired browser sessions
status: accepted
scope:
  - network
references:
  - "#63"
  - src/network.ts
  - src/server.ts
  - src/cli.ts
schema: 1
id: DEC-a50e4388f1a92fca
kind: decision
createdAt: 2026-09-27T17:29:53.025Z
updatedAt: 2026-09-27T17:29:53.025Z
author:
  name: Codex fixes
  kind: agent
---
## Choice

Keep loopback-only as the default. An explicit per-project LAN setting enables IPv4 listening with an allowlist of current private interface addresses. Local agent discovery stays at 127.0.0.1. Host and Origin checks remain active, and socket address—not forwarding headers—determines local access.

Remote browsers pair using a host-generated, single-use random code expiring after ten minutes. Each gets a separate project/port-scoped HttpOnly SameSite=Strict session cookie expiring after eight hours. Persist only session hashes in ignored local state. The host can revoke all remote sessions and disable remote access immediately; existing event streams are closed on revocation. The local project token is never automatically issued to remote page requests.

## Context and rationale

The original local browser bootstrap deliberately trusted loopback page loads. Extending that bootstrap unchanged to the LAN would expose project data. Separate credentials keep local agents and native capture independent of remote sessions and their revocation.

## Alternatives and tradeoffs

No anonymous LAN access and no shared long-lived project token in a URL. Local-only operation remains simplest; SSH/VPN or a separately configured trusted TLS transport remain alternatives. This release uses explicitly labeled HTTP on a trusted LAN, not encrypted or public internet hosting. There is no automatic router/firewall configuration. Changing from a loopback-bound service to LAN binding requires a restart; disabling access immediately rejects remote requests and clears remote credentials.

Remote browsers can use board records, comments, screenshots and authenticated backups. Native capture, service shutdown, network administration, canonical-branch reconciliation, configuration changes, host-document import and backup restore stay local. Identity labels remain attribution, not multiple-user permissions.

## Attribution

Implemented by Codex fixes under approved ticket #63. This does not imply a new human approval of public hosting or multi-user collaboration.
