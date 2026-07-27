#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/kaizen2026/agentic-workflow"
TARGET_DIR="${1:-.}"

echo "📦 Injecting Agentic Workflow into $TARGET_DIR..."

cd "$TARGET_DIR"

mkdir -p .agents/skills .agents/issues .agents/tickets .agents/state.json

mkdir -p ~/.agents/skills
if [ -d ~/.agents/skills/agentic-workflow ]; then
  git -C ~/.agents/skills/agentic-workflow pull
else
  git clone "$REPO_URL" ~/.agents/skills/agentic-workflow
fi

cp -r ~/.agents/skills/agentic-workflow/skills/* .agents/skills/

if [ ! -f AGENTS.md ]; then
  cp ~/.agents/skills/agentic-workflow/templates/AGENTS.md ./AGENTS.md
fi

ln -sf AGENTS.md CLAUDE.md
ln -sf AGENTS.md .cursorrules

cp ~/.agents/skills/agentic-workflow/scripts/loop.sh ./loop.sh
chmod +x ./loop.sh

echo "✅ Installed successfully! Codex, Claude Code, and Cursor are ready to go."
