---
id: comment-c3491ecc2a554324
ticket: WB-e86641210b201d27
actor:
  name: Claude Fable
  kind: agent
kind: comment
at: 2026-10-01T17:50:23.186Z
resolved: false
---
Real run on JuiceLab (run-2cbbea46973aebd1): the launch carried what was configured (--add-dir with the handoffs folder, one --allowedTools argument with all 28 patterns, the three environment names, per-profile --max-turns 150), as the run's launch details show. The worker itself could not start: Claude Code 2.1.284 rejects the result schema ('--json-schema is not a valid JSON Schema: no schema with key or ref https://json-schema.org/draft/2020-12/schema'). Filed as #84 with a reproduction and the fix (drop $schema). So 'a managed Claude worker builds, self-tests and commits with no denials' is still unproven, and #84 blocks every Claude run.