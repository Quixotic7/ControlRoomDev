---
id: comment-c9d70a05acfbbb52
ticket: WB-074c339baa63d5d6
actor: &a1
  name: Codex chat orchestrator
  kind: agent
at: 2026-09-30T05:40:18.207Z
kind: question
resolved: true
questions:
  - id: overall
    prompt: How does this larger questionnaire feel to use?
    type: choice
    required: true
    choices:
      - Clear and easy
      - Too much scrolling
      - Hard to tell what is required
      - Needs a different layout
      - Something else
  - id: choices
    prompt: Can you comfortably read and select from this longer list of options?
      Try a custom answer if none fits.
    type: choice
    required: true
    choices:
      - All options are easy to scan
      - Options need more spacing
      - Labels wrap awkwardly
      - Selection is hard to see
      - Keyboard navigation needs work
      - Custom answers are hard to find
      - Works well on a narrow window
      - Other feedback
  - id: draft
    prompt: Before submitting, type a note below, close this ticket, and reopen it
      (or refresh). What happened to your draft?
    type: choice
    required: true
    choices:
      - My draft was preserved
      - Some answers were lost
      - All answers were lost
      - I have not tried this yet
  - id: draft-note
    prompt: Type any draft note here for the close/reopen test. Multiple sentences
      or lines are welcome.
    type: text
    required: false
  - id: optional
    prompt: This question is optional. You can deliberately leave it unanswered to
      test submission.
    type: choice
    required: false
    choices:
      - Optional is clear
      - Optional should be more obvious
      - No preference
  - id: adjustments
    prompt: What, if anything, should change in the questionnaire? After submitting,
      you can amend your answers in the conversation to test history.
    type: text
    required: false
answers:
  - actor:
      name: You
      kind: human
    at: 2026-09-30T05:51:18.348Z
    questions:
      - id: overall
        prompt: How does this larger questionnaire feel to use?
        type: choice
        required: true
        choices:
          - Clear and easy
          - Too much scrolling
          - Hard to tell what is required
          - Needs a different layout
          - Something else
      - id: choices
        prompt: Can you comfortably read and select from this longer list of options?
          Try a custom answer if none fits.
        type: choice
        required: true
        choices:
          - All options are easy to scan
          - Options need more spacing
          - Labels wrap awkwardly
          - Selection is hard to see
          - Keyboard navigation needs work
          - Custom answers are hard to find
          - Works well on a narrow window
          - Other feedback
      - id: draft
        prompt: Before submitting, type a note below, close this ticket, and reopen it
          (or refresh). What happened to your draft?
        type: choice
        required: true
        choices:
          - My draft was preserved
          - Some answers were lost
          - All answers were lost
          - I have not tried this yet
      - id: draft-note
        prompt: Type any draft note here for the close/reopen test. Multiple sentences
          or lines are welcome.
        type: text
        required: false
      - id: optional
        prompt: This question is optional. You can deliberately leave it unanswered to
          test submission.
        type: choice
        required: false
        choices:
          - Optional is clear
          - Optional should be more obvious
          - No preference
      - id: adjustments
        prompt: What, if anything, should change in the questionnaire? After submitting,
          you can amend your answers in the conversation to test history.
        type: text
        required: false
    values:
      overall: Too much scrolling. The text boxes could be smaller until you type in
        them.
      choices: Other feedback. This seems like it wants to be a multiple choice thing.
      draft: My draft was preserved
      draft-note: |-
        A sentence

        Fah lah lah
      optional: Optional should be more obvious
      adjustments: I feel like the option selection and custom text entry should be
        separate, if I select a different option I lose the custom text I typed.
editedAt: 2026-09-30T05:40:18.207Z
editedBy: *a1
resolvedBy:
  name: You
  kind: human
resolvedAt: 2026-09-30T05:51:18.348Z
---
### overall: How does this larger questionnaire feel to use? (required)

- Clear and easy
- Too much scrolling
- Hard to tell what is required
- Needs a different layout
- Something else

Custom text is also welcome.

### choices: Can you comfortably read and select from this longer list of options? Try a custom answer if none fits. (required)

- All options are easy to scan
- Options need more spacing
- Labels wrap awkwardly
- Selection is hard to see
- Keyboard navigation needs work
- Custom answers are hard to find
- Works well on a narrow window
- Other feedback

Custom text is also welcome.

### draft: Before submitting, type a note below, close this ticket, and reopen it (or refresh). What happened to your draft? (required)

- My draft was preserved
- Some answers were lost
- All answers were lost
- I have not tried this yet

Custom text is also welcome.

### draft-note: Type any draft note here for the close/reopen test. Multiple sentences or lines are welcome. (optional)

Free-text answer.

### optional: This question is optional. You can deliberately leave it unanswered to test submission. (optional)

- Optional is clear
- Optional should be more obvious
- No preference

Custom text is also welcome.

### adjustments: What, if anything, should change in the questionnaire? After submitting, you can amend your answers in the conversation to test history. (optional)

Free-text answer.

## Answers from You at 2026-09-30T05:51:18.348Z

### overall: How does this larger questionnaire feel to use?

Too much scrolling. The text boxes could be smaller until you type in them.

### choices: Can you comfortably read and select from this longer list of options? Try a custom answer if none fits.

Other feedback. This seems like it wants to be a multiple choice thing.

### draft: Before submitting, type a note below, close this ticket, and reopen it (or refresh). What happened to your draft?

My draft was preserved

### draft-note: Type any draft note here for the close/reopen test. Multiple sentences or lines are welcome.

A sentence

Fah lah lah

### optional: This question is optional. You can deliberately leave it unanswered to test submission.

Optional should be more obvious

### adjustments: What, if anything, should change in the questionnaire? After submitting, you can amend your answers in the conversation to test history.

I feel like the option selection and custom text entry should be separate, if I select a different option I lose the custom text I typed.