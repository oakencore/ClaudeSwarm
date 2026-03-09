# ClaudeSwarm

**A swarm of 35 specialised AI agents for Claude Code.**

> **Warning:** This is an experimental project. Expect high token usage. Use responsibly and monitor your API costs.

## What is ClaudeSwarm?

ClaudeSwarm is a collection of 35 AI agent definitions for Claude Code's sub-agent system. It assembles a development team: orchestrators plan and coordinate, while specialists handle framework-specific implementation, code review, performance optimisation, and more.

It supports two modes:
- **Systematic Development**: A structured, phase-based workflow with quality gates for end-to-end projects.
- **Expert Coordination**: Intelligent agent selection for complex, multi-technology tasks.

## Quick Start

### 1. Clone and Install

```bash
git clone https://github.com/oakencore/ClaudeSwarm.git
cd ClaudeSwarm
./install.sh
```

### 2. Configure Your Project

```bash
cd your-project-directory
claude "use @team-configurator: Set up ClaudeSwarm for this project"
```

### 3. Start Building

**Complete application (Systematic Mode):**
```bash
claude "use @spec-orchestrator: Create a task management web app with authentication and real-time updates"
```

**Complex feature addition (Expert Mode):**
```bash
claude "use @tech-lead-orchestrator: Add payment processing to my e-commerce platform"
```

**Direct specialist:**
```bash
claude "use @performance-optimizer: Optimise slow database queries in my Django app"
```

## How It Works

### Systematic Development (led by `@spec-orchestrator`)

A gated pipeline for reliable end-to-end builds:

1. **Planning** (20-25%): Requirements, architecture, task breakdown
2. **Development** (60-65%): Implementation, testing, integration
3. **Validation** (15-20%): Code review, security scan, documentation

### Expert Coordination (led by `@tech-lead-orchestrator`)

Dynamic routing for multi-technology tasks:

1. Analyse the request and detect technology needs
2. Select and route to optimal specialist agents
3. Coordinate dependencies and merge outputs

### Agent Categories (35 Total)

| Category | Count | Examples |
|----------|-------|---------|
| Orchestrators | 3 | tech-lead-orchestrator, team-configurator, project-analyst |
| Workflow | 7 | spec-orchestrator, spec-analyst, spec-architect, spec-planner, spec-developer, spec-tester, spec-validator |
| Framework Specialists | 13 | django-*, rails-*, laravel-*, react-*, vue-* |
| Universal Experts | 4 | backend-developer, frontend-developer, api-architect, tailwind-css-expert |
| Quality & Architecture | 6 | code-reviewer, performance-optimizer, code-archaeologist, documentation-specialist, senior-backend-architect, senior-frontend-architect |
| Design & Utility | 2 | ui-ux-master, refactor-agent |

**Tip:** Always start with an orchestrator unless you have a very specific, isolated task.

## Quality Assurance

ClaudeSwarm uses configurable quality gates:

- **Prototype/MVP**: 75% threshold
- **Production**: 85-90% threshold
- **Enterprise**: 95% threshold

Gates validate planning completeness, code quality, test coverage (>80%), security vulnerabilities, and deployment readiness.

## Usage Examples

```bash
# Full-Stack Web App
claude "use @spec-orchestrator: Build a social media dashboard with user profiles and analytics"

# API Enhancement
claude "use @tech-lead-orchestrator: Add OAuth authentication and GraphQL endpoints to my Rails API"

# Performance Optimisation
claude "use @performance-optimizer: Identify and fix bottlenecks in my Laravel database"

# Legacy Analysis
claude "use @code-archaeologist: Analyze and document this inherited PHP monolith for modernization"
```

## Documentation

- **[Quick Start Guide](docs/quick-start.md)**: Setup, configuration, and cheat sheet
- **[Agent Reference](docs/agent-reference.md)**: Profiles for all 35 agents
- **[Workflows Guide](docs/workflows.md)**: Workflow patterns and best practices

## Installation Options

**Standard install** (copies agents to `~/.claude/agents/`):
```bash
./install.sh
```

**Development mode** (symlinks for auto-updates):
```bash
./install.sh --symlink
```

**Uninstall:**
```bash
./uninstall.sh
```

## Contributing

Fork the repo, make improvements, and submit a pull request.

## Acknowledgements

Built with inspiration from [claude-sub-agent](https://github.com/zhsama/claude-sub-agent) and [awesome-claude-agents](https://github.com/vijaythecoder/awesome-claude-agents).

## License

MIT License. See [LICENSE](LICENSE) for details.
