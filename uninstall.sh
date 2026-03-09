#!/bin/bash

# ClaudeSwarm Uninstall Script
# Removes ClaudeSwarm agents and commands from Claude Code

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

print_status() { echo -e "${BLUE}[ClaudeSwarm]${NC} $1"; }
print_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
print_error() { echo -e "${RED}[ERROR]${NC} $1"; }

CLAUDE_DIR="$HOME/.claude"
AGENTS_DIR="$CLAUDE_DIR/agents"
COMMANDS_DIR="$CLAUDE_DIR/commands"

echo
print_status "ClaudeSwarm Uninstall Script"
print_status "============================"
echo

# Remove symlinked installation
if [[ -L "$AGENTS_DIR/ClaudeSwarm" ]]; then
    rm "$AGENTS_DIR/ClaudeSwarm"
    print_success "Removed symlinked agents"
fi

# Remove copied agent directories
AGENT_DIRS=(backend core frontend orchestrators specialized ui-ux universal utility workflow)
for dir in "${AGENT_DIRS[@]}"; do
    if [[ -d "$AGENTS_DIR/$dir" ]]; then
        rm -rf "$AGENTS_DIR/$dir"
        print_success "Removed agents/$dir"
    fi
done

# Remove commands
if [[ -f "$COMMANDS_DIR/agent-workflow.md" ]]; then
    rm "$COMMANDS_DIR/agent-workflow.md"
    print_success "Removed agent-workflow command"
fi

echo
print_success "ClaudeSwarm has been uninstalled."
echo "Your Claude Code configuration is otherwise untouched."
echo
