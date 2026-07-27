# AGENTS.md — Universal Execution Rules

## 1. Environment & Operations
- Package Manager: `pnpm`
- Type Check Command: `pnpm typecheck`
- Unit Test Command: `pnpm test`

## 2. Engineering Discipline
- **Smart Zone Threshold**: Keep context under 140k tokens. Run `/to-spec` or commit work before hitting context degradation.
- **TDD Requirement**: Always establish a failing unit test seam prior to modifying runtime logic.
- **State Persistence**: Update `.agents/state.json` immediately upon successful ticket completion.

## 3. Quality Verification
- Run type-checker and targeted test suites after every code edit.
- Never mark a task done if type checks fail or unit tests exhibit regressions.
