---
title: Use this chat to orchestrate Sol, Terra and Luna workers
status: accepted
scope:
  - agent-workflow
  - orchestration
supersedes: DEC-0b5c2fc51bf9cbe2
references:
  - WB-e649ce4e73451111
  - src/orchestration.ts
  - web/Agents.tsx
schema: 1
id: DEC-a4884cd85e03cac8
kind: decision
createdAt: 2026-09-28T19:51:01.413Z
updatedAt: 2026-09-28T19:51:01.413Z
author:
  name: Codex fixes
  kind: agent
---
## Choice

Keep the supervised local controller and its admission checks from DEC-0b5c2fc51bf9cbe2, but allow the configured existing chat to plan and review without launching a separate reviewer CLI. Control Room Dev uses Codex chat orchestrator with three Codex CLI workers: Sol (gpt-5.6-sol), Terra (gpt-5.6-terra), and Luna (gpt-5.6-luna).

## Context and attribution

The human explicitly requested these three models and this conversation as orchestrator on 2026-09-28, and reported Claude CLI is installed. Codex fixes implemented chat-led review and applied the requested configuration through the host UI. Claude Code is installed but is a separate provider; these selected models use Codex CLI. Earlier unanswered interview questions remain unanswered.

## Rationale

Preserve the current conversation's context and human contact while delegating approved implementation scopes. Workers still run in isolated worktrees. The service independently verifies submissions, issues a review-context token, and admits the named chat's decision only against current scope, configuration, discussion and code. Mandatory human gates remain enforced.

## Alternatives and tradeoffs

A managed reviewer CLI remains an available mode, but was not selected by the human. Chat mode needs active participation in this conversation; it does not automatically wake or monitor the chat. There is no automatic queueing, merging, pushing or deployment. Accepted branches require separate integration. Three concurrent processes, a thirty-minute step limit and three attempts remain configurable implementation defaults, not separately interviewed preferences.

## Verification and limits

Build passed, 97 core tests and 2 Agents browser tests passed. The requested roster and chat identity are saved and visible. No assignments or live paid model runs were started; authentication/model execution remains a first-run check. Juice Lab agent settings remain disabled. Local identity labels provide attribution, not isolation between processes sharing the account.
