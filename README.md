# ControlRoom development board

This local-only repository tracks the tickets, decisions, and history for developing ControlRoom. The tool itself lives in the `ControlRoom/` submodule, which is the public repository pushed to <https://github.com/Quixotic7/ControlRoom>. This outer repository has no remote.

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

Always go through `./workboard` here. Running `ControlRoom/workboard` directly treats the submodule as its own project and opens an empty board.

Coding agents follow [ControlRoom/AGENT_GUIDE.md](ControlRoom/AGENT_GUIDE.md), using `./workboard` from this folder as the command.

## Commit and push

Tool changes are committed and pushed inside `ControlRoom/`. The outer repository then records which tool commit the board corresponds to:

```sh
git -C ControlRoom commit -am "…" && git -C ControlRoom push
git add .workboard ControlRoom && git commit -m "…"
```

A fresh setup needs `git submodule update --init`, then the build steps in [ControlRoom/README.md](ControlRoom/README.md).
