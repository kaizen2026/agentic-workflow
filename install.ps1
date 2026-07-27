$ErrorActionPreference = "Stop"
$RepoUrl = "https://github.com/kaizen2026/agentic-workflow"

Write-Host "📦 Injecting Agentic Workflow into current project..." -ForegroundColor Green

New-Item -ItemType Directory -Force -Path ".agents/skills", ".agents/issues", ".agents/tickets" | Out-Null

$GlobalSkillsDir = "$env:USERPROFILE\.agents\skills"
New-Item -ItemType Directory -Force -Path $GlobalSkillsDir | Out-Null

$WorkflowDir = "$GlobalSkillsDir\agentic-workflow"
if (Test-Path $WorkflowDir) {
    git -C $WorkflowDir pull
} else {
    git clone $RepoUrl $WorkflowDir
}

Copy-Item -Path "$WorkflowDir\skills\*" -Destination ".agents\skills" -Recurse -Force

if (-not (Test-Path "AGENTS.md")) {
    Copy-Item -Path "$WorkflowDir\templates\AGENTS.md" -Destination "AGENTS.md"
}

Copy-Item -Path "$WorkflowDir\scripts\loop.sh" -Destination "loop.sh"

Write-Host "✅ Installed successfully! Codex, Claude Code, and Cursor are ready to go." -ForegroundColor Green