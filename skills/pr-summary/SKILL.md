---
name: pr-summary
description: Generate structured Pull Request descriptions from Git diffs and state files.
---
# PR-Summary Skill

When invoked:
1. Inspect active git diff main...HEAD and review completed items in .agents/state.json.
2. Generate Markdown output formatted for GitHub Pull Requests.
3. Structure output with:
   - **Summary**: Concise overview of changes.
   - **Key Architectural Changes**: Structural modifications or new abstractions.
   - **Testing Verification**: Proof of passed unit test suites and type-checks.
   - **Breaking Changes**: Any breaking API or schema updates.