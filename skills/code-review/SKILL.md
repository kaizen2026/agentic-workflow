---
name: code-review
description: Sub-agent verification against spec compliance and refactoring code smells.
---
# Code-Review Skill

When invoked:
1. Verify implementation against original acceptance criteria in .agents/issues/spec.md.
2. Analyze modified code for Martin Fowler smells (e.g., Duplicated Code, Primitive Obsession, Feature Envy, Long Methods).
3. Fix identified smells and verify test suite remains 100% green.