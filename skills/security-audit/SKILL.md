---
name: security-audit
description: Pre-flight security audit for hardcoded secrets, authorization leaks, and OWASP risks.
---
# Security Audit Skill

When invoked:
1. Scan changed files for hardcoded credentials, API keys, or database connection strings.
2. Verify authorization boundaries on all endpoint handlers, RPC calls, and mutation operations.
3. Check inputs for injection risks (SQL, shell, unsanitized HTML rendering).
4. Output findings to .agents/issues/security-report.md with severity levels (Critical, High, Medium, Low).