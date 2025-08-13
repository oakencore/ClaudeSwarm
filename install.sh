#!/bin/bash

# ClaudeSwarm Installation Script
# Installs ClaudeSwarm agents and commands to Claude Code

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print colored output
print_status() {
    echo -e "${BLUE}[ClaudeSwarm]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if Claude Code is installed
check_claude() {
    if ! command -v claude &> /dev/null; then
        print_error "Claude Code CLI not found. Please install Claude Code first:"
        print_status "Visit: https://claude.ai/code"
        exit 1
    fi
    print_success "Claude Code CLI found"
}

# Create directory structure
create_directories() {
    print_status "Creating Claude Code directories..."
    
    CLAUDE_DIR="$HOME/.claude"
    AGENTS_DIR="$CLAUDE_DIR/agents"
    COMMANDS_DIR="$CLAUDE_DIR/commands"
    
    mkdir -p "$AGENTS_DIR"
    mkdir -p "$COMMANDS_DIR"
    
    print_success "Directories created at $CLAUDE_DIR"
}

# Install agents
install_agents() {
    print_status "Installing ClaudeSwarm agents..."
    
    # Check if we're in the ClaudeSwarm directory
    if [[ ! -d "./agents" ]]; then
        print_error "agents/ directory not found. Please run this script from the ClaudeSwarm root directory."
        exit 1
    fi
    
    # Copy all agents
    cp -r ./agents/* "$HOME/.claude/agents/"
    
    # Count installed agents
    AGENT_COUNT=$(find "$HOME/.claude/agents" -name "*.md" | wc -l)
    print_success "Installed $AGENT_COUNT agents"
}

# Install commands
install_commands() {
    print_status "Installing ClaudeSwarm commands..."
    
    if [[ -d "./commands" ]]; then
        cp ./commands/*.md "$HOME/.claude/commands/"
        print_success "Commands installed"
    else
        print_warning "No commands directory found"
    fi
}

# Install with symlinks (for development)
install_symlinks() {
    print_status "Installing ClaudeSwarm with symlinks (for auto-updates)..."
    
    CURRENT_DIR="$(pwd)"
    
    # Remove existing installation
    rm -rf "$HOME/.claude/agents/ClaudeSwarm"
    
    # Create symlinks
    ln -sf "$CURRENT_DIR/agents" "$HOME/.claude/agents/ClaudeSwarm"
    
    if [[ -d "./commands" ]]; then
        for cmd in ./commands/*.md; do
            if [[ -f "$cmd" ]]; then
                basename_cmd=$(basename "$cmd")
                ln -sf "$CURRENT_DIR/commands/$basename_cmd" "$HOME/.claude/commands/$basename_cmd"
            fi
        done
    fi
    
    print_success "Symlinks created (agents will auto-update)"
}

# Verify installation
verify_installation() {
    print_status "Verifying installation..."
    
    # Check if agents are installed
    AGENT_COUNT=$(find "$HOME/.claude/agents" -name "*.md" 2>/dev/null | wc -l || echo "0")
    
    if [[ $AGENT_COUNT -gt 0 ]]; then
        print_success "Found $AGENT_COUNT agents installed"
    else
        print_error "No agents found. Installation may have failed."
        exit 1
    fi
    
    # Test Claude Code can see the agents
    print_status "Testing Claude Code agent detection..."
    if claude /agents &>/dev/null; then
        print_success "Claude Code can access installed agents"
    else
        print_warning "Could not verify Claude Code agent access"
    fi
}

# Show post-install instructions
show_instructions() {
    print_status "Installation complete!"
    echo
    print_success "Quick Start Commands:"
    echo
    echo "1. Configure your project:"
    echo "   cd your-project"
    echo "   claude \"use @team-configurator: Setup ClaudeSwarm for this project\""
    echo
    echo "2. Start building:"
    echo "   claude \"use @spec-orchestrator: Create a [description] web application\""
    echo "   claude \"use @tech-lead-orchestrator: Add [feature] to existing project\""
    echo
    echo "3. Get help:"
    echo "   claude /agents  # List all available agents"
    echo
    print_status "Documentation available at: docs/quick-start.md"
    echo
}

# Main installation function
main() {
    echo
    print_status "ClaudeSwarm Installation Script"
    print_status "==============================="
    echo
    
    # Parse command line arguments
    SYMLINK_MODE=false
    
    while [[ $# -gt 0 ]]; do
        case $1 in
            --symlink)
                SYMLINK_MODE=true
                shift
                ;;
            --help)
                echo "Usage: $0 [--symlink] [--help]"
                echo
                echo "Options:"
                echo "  --symlink    Install with symlinks for auto-updates (development mode)"
                echo "  --help       Show this help message"
                echo
                exit 0
                ;;
            *)
                print_error "Unknown option: $1"
                echo "Use --help for usage information"
                exit 1
                ;;
        esac
    done
    
    # Run installation steps
    check_claude
    create_directories
    
    if [[ $SYMLINK_MODE == true ]]; then
        install_symlinks
    else
        install_agents
        install_commands
    fi
    
    verify_installation
    show_instructions
}

# Run main function
main "$@"