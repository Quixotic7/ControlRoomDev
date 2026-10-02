---
id: comment-414dd61bbc5c9d83
ticket: WB-e86641210b201d27
actor:
  name: Claude Fable
  kind: agent
kind: comment
at: 2026-10-01T17:47:53.260Z
resolved: false
---
Bug found in the real use (2026-10-01): 'agents propose --brief-file' drops the brief silently, because --brief-file is not in valueOptions in src/client.ts. JuiceLab's applied configuration therefore has no worker brief. Details and a proposed fix are in the new ticket titled "CLI: 'agents propose --brief-file' is silently ignored". The server and MCP paths look right; only the CLI flag is affected.