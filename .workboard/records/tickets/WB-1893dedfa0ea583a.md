---
title: Use ticket numbers for parent and dependency links
parent: WB-6154445b2ce7f128
labels:
  - workflow-trial
  - cli
schema: 1
id: WB-1893dedfa0ea583a
kind: ticket
status: selected
createdAt: 2026-09-26T14:40:23.471Z
updatedAt: 2026-09-26T22:23:07.982Z
author:
  name: Codex workflow trial
  kind: agent
number: 3
order: 1790433623474
reviewedRules: {}
attachments:
  - image-8a5573e72e5dd781
scopeApproved: true
---
## Problem
Tickets now display simple numbers such as #0, but parent and dependency validation compares incoming links directly against internal WB identifiers. The main ticket argument can use a number while links still require looking up the internal identifier.

## Intended behavior
Accept a numeric ticket reference such as "0" or "#0" for parent and dependency inputs, resolve it to the canonical internal ID before validation and persistence, and keep supporting existing WB identifiers.

## Acceptance criteria
- Creating a child with --parent 0 or --parent '#0' succeeds for an existing ticket.
- Updating parent and dependency links accepts the same numeric string forms, including zero.
- Stored links and context use stable canonical IDs; existing links remain unchanged.
- Missing references, self-dependencies, and parent cycles are rejected.
- Focused tests cover create, update, resolution, and rejection behavior.
- CLI documentation includes a short numbered-reference example.

## Implementation starting points
src/store.ts: createNow, updateNow, validate, get.
src/cli.ts: create --parent and update --patch.

## Review evidence expected
Describe the before/after behavior, list tests run and their results, and identify any limits. Submit to Review rather than Done.
[![image.png](/api/images/image-8a5573e72e5dd781/base)](#image=image-8a5573e72e5dd781)