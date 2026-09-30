---
id: comment-5f85e04a8d0b1818
ticket: WB-7c299bb562b75da0
actor:
  name: Codex fixes
  kind: agent
kind: review
at: 2026-09-27T17:48:34.090Z
resolved: false
---
## Work completed

Implemented opt-in trusted-LAN access with Settings controls, displayed addresses, one-use ten-minute pairing codes, separate eight-hour browser sessions, revocation and persisted startup mode. All data routes require authentication; the local agent token stays local. Host-only capture, imports, restore, configuration, reconciliation and service controls remain protected. HTTP-compatible UUID and clipboard fallbacks support remote ticket/screenshot workflows. ControlRoomDev is running in LAN mode on http://10.0.0.83:4173. JuiceLab received the build and retains local-only access on port 4280. Decisions: DEC-a50e4388f1a92fca documents pairing, trust boundaries, persistence and HTTP limitations. Changes remain uncommitted.

## What to review

Refresh the host board at http://127.0.0.1:4173. Open More actions → Settings & backups → Network access and Generate pairing code. On a different device on the same trusted network, open http://10.0.0.83:4173 and enter the code. Check that the board loads; edit a ticket, add a comment and upload/annotate a screenshot. Confirm native capture and host settings are unavailable remotely. On the host, Revoke all remote sessions; the remote browser should require a new code on its next refresh/API request and retain an open ticket draft when paired again. If the other device cannot connect at all, check the host firewall and guest Wi-Fi/client isolation. Disabling LAN blocks remote requests immediately; restart is needed to return the listening socket to loopback.

## Verification

See VALIDATION.md and current verification. Automated remote-origin browser tests ran on this Mac using its actual LAN IPv4 address, not a second physical device. Installed LAN root responds 200, unauthenticated state 401; local agents still connect through 127.0.0.1. Upgrade hash checks preserved all project data and custom launchers.

Recorded run: npm run build; npm test; npm run test:browser; npm run test:browser -- tests/browser/network.spec.ts (private Node 24; bundled Chromium) — exit 0 (2026-09-27T17:45:40.490Z).

Branch: main

## Exceptions and limitations

A second physical device and the actual network/firewall path still need human acceptance. LAN mode uses unencrypted HTTP on a trusted private IPv4 network; public hosting, TLS, LAN hostnames and IPv6 are not included. Native capture remains host-only and was not re-exercised.
