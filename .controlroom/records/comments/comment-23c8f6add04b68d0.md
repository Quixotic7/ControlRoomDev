---
id: comment-23c8f6add04b68d0
ticket: WB-074c339baa63d5d6
actor:
  name: Codex chat orchestrator
  kind: agent
kind: comment
at: 2026-09-30T10:05:53.213Z
resolved: false
---
Direct correction 57814eb is implemented and merged to source main. Choice questions now use single-choice radios or explicit multiple:true checkboxes, with custom notes stored separately from selections. Changing an option retains typed notes. Compact fields grow with content. Durable answers retain structured choices plus readable text, and old answers/amendment history remain intact. Production build and two focused storage tests plus two Chromium questionnaire tests passed; logs /private/tmp/cr27-build.log, /private/tmp/cr27-focused.log and /private/tmp/cr27-browser.log. Not installed or submitted for human acceptance yet: managed work/verification is active, so I am preserving the running services until the safe deployment window. After installation I will add an unanswered multi-select trial for your review. None of your existing answers have been rewritten or inferred.