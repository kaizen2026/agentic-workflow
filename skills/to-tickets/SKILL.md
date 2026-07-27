---
name: to-tickets
description: Slice specifications into context-sized execution tickets.
---
# To-Tickets Skill

When invoked:
1. Read `.agents/issues/spec.md`.
2. Slice the work into tracer-bullet tickets scoped to fit within a single agent smart-zone session (<140k tokens).
3. Save each ticket sequentially in `.agents/tickets/TICKET-XXX.md`.
4. Initialize or update `.agents/state.json` listing pending and completed tickets.
