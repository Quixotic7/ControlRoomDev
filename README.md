# ControlRoom development board

This repository (<https://github.com/Quixotic7/ControlRoomDev>) tracks the tickets, decisions, and history for developing ControlRoom. The tool itself lives in the `ControlRoom/` submodule, a separate repository pushed to <https://github.com/Quixotic7/ControlRoom>.

```text
.controlroom/   board records (tracked here) and local-only state (ignored)
ControlRoom/    the tool: its own Git history, pushed to GitHub
ControlRoom.command  clickable launcher for this board on port 4173
workboard      compatibility alias for .controlroom/controlroom
```

## Use the board

```sh
./.controlroom/controlroom serve --port 4173 --open  # or double-click ControlRoom.command
./.controlroom/controlroom list
```

Because this folder has a board, the tool also finds it from inside the submodule: `ControlRoom/controlroom` and agents working in `ControlRoom/` use this same board. The project's command is inside `.controlroom/` because the `ControlRoom/` directory occupies the same root name as `controlroom` on case-insensitive macOS filesystems.

Coding agents follow [ControlRoom/AGENT_GUIDE.md](ControlRoom/AGENT_GUIDE.md), using `./.controlroom/controlroom` from this folder (or `ControlRoom/controlroom`) as the command. Existing `./workboard` and `Workboard.command` integrations remain compatibility aliases.

For MCP registration, use the absolute path to `.controlroom/controlroom` with the `mcp` argument and `CONTROLROOM_ACTOR` set to the agent's session name. No repository-local MCP configuration needed a path update during migration.

The development board was migrated from `.workboard/` to `.controlroom/` on 2026-09-27 UTC. A verified pre-migration export, including screenshots, is retained in the Git-ignored `.controlroom-backups/` directory. Records, assets and local preferences were preserved; the JuiceLab project's storage remains separate.

## Commit and push

Tool changes are committed and pushed inside `ControlRoom/`. The outer repository then records which tool commit the board corresponds to:

```sh
git -C ControlRoom commit -am "…" && git -C ControlRoom push
git add -A .workboard .controlroom ControlRoom && git commit -m "…" && git push
```

Push `ControlRoom` first, so the commit this repository points to exists on GitHub.

A fresh setup: `git clone --recurse-submodules https://github.com/Quixotic7/ControlRoomDev.git`, then follow the build steps in [ControlRoom/README.md](ControlRoom/README.md) inside `ControlRoom/`.
