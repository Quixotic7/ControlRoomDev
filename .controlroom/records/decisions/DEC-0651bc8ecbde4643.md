---
title: Record chat-conveyed human decisions through explicit per-board delegation
status: accepted
labels:
  - agents
  - orchestration
schema: 1
id: DEC-0651bc8ecbde4643
kind: decision
createdAt: 2026-10-02T00:12:27.831Z
updatedAt: 2026-10-02T00:12:27.831Z
author:
  name: Codex chat orchestrator
  kind: agent
---
## Choice

A human may grant four independent scopes to the saved Existing chat orchestrator: scope approval, board management, reviewed-work outcomes, and managed-run recovery. The grant is off by default, bound to the current named chat reviewer, revocable, and optionally constrained by expiry, record age, and a directly human-approved ancestor. Configuration, permissions, orchestration enablement, and delegation settings remain human-only. This supplements DEC-f84395d8e0aa6cbc without relaxing configuration authority.

## Rationale

Approved #87 removes repeated manual board entry after an actual chat decision. Every action requires the human's quoted words and timestamp while retaining agent attribution. It does not authorize an agent to infer decisions, activate its own grant, or impersonate a human. Existing local identity labels remain attribution within the shared-account model; this does not cryptographically verify an external chat transcript.

## History and recovery

Durable grant and immutable receipt records are included in backup. Ticket mutations and receipts commit together under revision guards. Needs you exposes the basis and human Undo. Undo refuses later edits; run compensation stops compatible retries and restores paused assignment state where possible without deleting replies, logs, or produced code. Partial lifecycle failures remain visibly blocked with retained evidence for reconciliation.

## Alternatives and tradeoffs

Continuing to require a second human click preserves the old friction; silently treating an agent as human loses attribution; granting all actions by default widens authority. Explicit scopes and visible receipts keep the human's remit reviewable. Managed-run Undo is compensation, not reversal of already-executed commands.

## Attribution and evidence

Accepted by Codex chat orchestrator within human-approved #87. Sol implemented storage and lifecycle, Terra implemented and independently checked UI/protocol integration, and this chat reviewed, corrected, tested, merged and installed 45eeff0559062f6043b521e279c0987d20a48aab. 215 core checks and 18 browser checks passed; final focused checks passed. Native live-provider smoke remains opt-in and was skipped. No delegation was activated on either live board.