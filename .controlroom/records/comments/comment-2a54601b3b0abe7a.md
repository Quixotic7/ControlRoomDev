---
id: comment-2a54601b3b0abe7a
ticket: WB-27c68121ad6a1d44
actor:
  name: Codex chat orchestrator
  kind: agent
kind: comment
at: 2026-09-30T20:23:41.238Z
resolved: false
---
Found why the waveform appeared removed: the entire visual was conditional on verified managed-process activity. Restored a still waveform for idle progress-role tickets; live managed workers retain the animated cyan waveform. Two focused browser checks pass, including idle/stale/expired reports, process stops, service outages and reduced motion. Correction e30669c is merged; installation will follow combined #74 verification. The Codex question about additionally animating explicitly reported external-chat activity remains unanswered; no answer has been inferred and verified-only motion remains in force.