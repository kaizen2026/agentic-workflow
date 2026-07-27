---
name: root-cause
description: Systematic error analysis and diagnostic tracing prior to writing fixes.
---
# Root Cause Skill

When invoked:
1. Inspect error stack traces, execution logs, or failing test outputs.
2. Formulate 3 plausible hypotheses for the bug's origin.
3. Test hypotheses against codebase reality using non-destructive inspection (prints/logs/types).
4. Identify the single root cause and document it in .agents/issues/root-cause.md.
5. Propose a targeted patch strategy before delegating to /implement.