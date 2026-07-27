#!/usr/bin/env bash
set -e

STATE_FILE=".agents/state.json"
MAX_ITERATIONS=${1:-10}
COUNTER=0

if [ ! -f "$STATE_FILE" ]; then
  mkdir -p .agents
  echo '{"current_ticket": null, "completed": []}' > "$STATE_FILE"
fi

echo "🚀 Starting State-Aware Execution Loop (Max: $MAX_ITERATIONS runs)..."

while [ $COUNTER -lt $MAX_ITERATIONS ]; do
  echo "--- Loop Iteration $((COUNTER+1)) ---"
  
  if command -v codex &> /dev/null; then
    AGENT_CMD="codex exec"
  elif command -v claude &> /dev/null; then
    AGENT_CMD="claude --dangerously-skip-permissions -p"
  else
    echo "Error: Neither Codex nor Claude Code CLI found in PATH."
    exit 1
  fi

  $AGENT_CMD "Read AGENTS.md and .agents/state.json. Pick the next pending ticket from .agents/tickets/, execute /implement, run tests, update .agents/state.json, and git commit."

  COUNTER=$((COUNTER+1))
done
