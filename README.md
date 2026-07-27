# Agentic Workflow (kaizen2026/agentic-workflow)

A portable, cross-tool AI software engineering workflow built for Codex Desktop/CLI, Claude Code, and Cursor.

## Quick Start (Plug & Play)

To inject this workflow into any existing project, run:

curl -sSL https://raw.githubusercontent.com/kaizen2026/agentic-workflow/main/install.sh | bash

Or install individual skills via skills.sh:

npx skills@latest add kaizen2026/agentic-workflow

run /setup-matt-pocock-skills

## Core Workflow Loop

1. /wayfinder — Interactive requirements gathering & architectural planning.
2. /to-spec — Compress context into .agents/issues/spec.md.
3. /to-tickets — Slice spec into context-sized ticket files in .agents/tickets/.
4. ./loop.sh — Run stateless autonomous execution with test backpressure.
5. /code-review — Validate against spec and refactor code smells.
