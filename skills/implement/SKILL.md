---
name: implement
description: Execute single-ticket work with test backpressure and typing checks.
---
# Implement Skill

When invoked:
1. Read the current assigned ticket from .agents/tickets/ or .agents/state.json.
2. Write a failing test seam first (Red-Green-Refactor approach).
3. Implement minimal production code to pass the test.
4. Run project type checks and unit test suites continuously.
5. Run /code-review upon test pass before declaring the ticket complete.