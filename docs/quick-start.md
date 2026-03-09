# Quick Start Guide

## Prerequisites

- [Claude Code CLI](https://claude.ai/code) installed and authenticated
- An active project directory

## Installation

```bash
git clone https://github.com/oakencore/ClaudeSwarm.git
cd ClaudeSwarm
./install.sh
```

For development mode (auto-updates via symlinks):

```bash
./install.sh --symlink
```

To uninstall:

```bash
./uninstall.sh
```

## First Project Setup

Navigate to your project and let ClaudeSwarm configure itself:

```bash
cd your-project
claude "use @team-configurator: Set up ClaudeSwarm for this project"
```

This detects your technology stack and configures optimal agent mappings in CLAUDE.md.

## Choose Your Approach

### New Projects (Systematic)

Use `@spec-orchestrator` for a quality-gated pipeline:

```bash
claude "use @spec-orchestrator: Create a task management web application"
```

### Existing Projects (Expert)

Use `@tech-lead-orchestrator` for intelligent agent coordination:

```bash
claude "use @tech-lead-orchestrator: Add payment processing to my e-commerce platform"
```

### Direct Specialist

Call a specific agent for focused tasks:

```bash
claude "use @performance-optimizer: Optimise slow database queries"
claude "use @code-reviewer: Security audit of authentication module"
claude "use @code-archaeologist: Analyse this legacy PHP codebase"
```

## Cheat Sheet

### Agent Quick Select

| Need | Agent |
|------|-------|
| New project | `@spec-orchestrator` |
| Complex feature | `@tech-lead-orchestrator` |
| Performance | `@performance-optimizer` |
| Code review | `@code-reviewer` |
| Legacy code | `@code-archaeologist` |
| API design | `@api-architect` |
| Documentation | `@documentation-specialist` |
| Testing | `@spec-tester` |
| Refactoring | `@refactor-agent` |

### Framework Agents

```bash
# React
claude "use @react-component-architect: [task]"
claude "use @react-nextjs-expert: [task]"

# Vue
claude "use @vue-component-architect: [task]"
claude "use @vue-nuxt-expert: [task]"
claude "use @vue-state-manager: [task]"

# Django
claude "use @django-backend-expert: [task]"
claude "use @django-api-developer: [task]"
claude "use @django-orm-expert: [task]"

# Rails
claude "use @rails-backend-expert: [task]"
claude "use @rails-api-developer: [task]"

# Laravel
claude "use @laravel-backend-expert: [task]"
claude "use @laravel-eloquent-expert: [task]"

# Universal (any stack)
claude "use @backend-developer: [task]"
claude "use @frontend-developer: [task]"
```

### Quality Control

```bash
# Enterprise (95% threshold)
claude "use @spec-orchestrator with quality threshold 95: Create banking app"

# Production (85-90%)
claude "use @spec-orchestrator with quality threshold 85: Create admin dashboard"

# Prototype (75%)
claude "use @spec-orchestrator with quality threshold 75: Create quick MVP"

# Specific phase only
claude "use @spec-orchestrator for planning phase only: Design microservices architecture"
```

## Next Steps

- [Agent Reference](agent-reference.md) - All 35 agents with descriptions
- [Workflows Guide](workflows.md) - Workflow patterns and best practices
