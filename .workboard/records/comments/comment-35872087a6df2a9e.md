---
id: comment-35872087a6df2a9e
ticket: WB-e50c2d9dd072c6f2
actor:
  name: Claude Code
  kind: agent
kind: comment
at: 2026-09-26T22:35:54.947Z
resolved: false
---
Root cause: macOS grants Screen Recording to new processes only, and the companion had been running since before the permission was changed; its capture attempt failed with 'could not create image from rect'. Also, every native rebuild re-signs the app ad hoc, which macOS treats as a new app, so grants reset after 'npm run build:native'. Fixed in ControlRoom 6a0ee5a+: the companion now preflights and requests Screen Recording, reports both permissions in its status, and can relaunch itself; Settings has permission tags, Open-settings buttons, and a Relaunch button.