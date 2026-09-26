# ControlRoom development board

This repository (<https://github.com/Quixotic7/ControlRoomDev>) tracks the tickets, decisions, and history for developing ControlRoom. The tool itself lives in the `ControlRoom/` submodule, a separate repository pushed to <https://github.com/Quixotic7/ControlRoom>.

```text
.workboard/     board records (tracked here) and local-only state (ignored)
ControlRoom/    the tool: its own Git history, pushed to GitHub
workboard       runs ControlRoom/ against this board
```

## Use the board

```sh
./workboard serve --open      # or double-click Workboard.command
./workboard list
```

Because this folder has a board, the tool also finds it from inside the submodule: `ControlRoom/workboard` and agents working in `ControlRoom/` use this same board.

Coding agents follow [ControlRoom/AGENT_GUIDE.md](ControlRoom/AGENT_GUIDE.md), using `./workboard` from this folder (or `ControlRoom/workboard`) as the command.

## Commit and push

Tool changes are committed and pushed inside `ControlRoom/`. The outer repository then records which tool commit the board corresponds to:

```sh
git -C ControlRoom commit -am "…" && git -C ControlRoom push
git add .workboard ControlRoom && git commit -m "…" && git push
```

Push `ControlRoom` first, so the commit this repository points to exists on GitHub.

A fresh setup: `git clone --recurse-submodules https://github.com/Quixotic7/ControlRoomDev.git`, then follow the build steps in [ControlRoom/README.md](ControlRoom/README.md) inside `ControlRoom/`.
