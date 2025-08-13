# ClaudeSwarm Quick Start Guide

Get up and running with the unified AI development team in under 2 minutes.

## Prerequisites

- **Claude Code CLI** installed and authenticated
- Active project directory

## Super Quick Installation

### 1. Clone and Install
```bash
git clone https://github.com/your-username/ClaudeSwarm.git
cd ClaudeSwarm
./install.sh
```

That's it! The installation script handles everything automatically.

### Manual Installation (Alternative)

<details>
<summary>Click here for manual installation steps</summary>

#### 1. Clone ClaudeSwarm
```bash
git clone https://github.com/your-username/ClaudeSwarm.git
cd ClaudeSwarm
```

#### 2. Install Agents

**Quick Install:**
```bash
mkdir -p ~/.claude/agents ~/.claude/commands
cp -r agents/* ~/.claude/agents/
cp commands/*.md ~/.claude/commands/
```

**Development Install (auto-updates):**
```bash
mkdir -p ~/.claude/agents ~/.claude/commands
ln -sf "$(pwd)/agents" ~/.claude/agents/ClaudeSwarm
ln -sf "$(pwd)/commands"/*.md ~/.claude/commands/
```

#### 3. Verify Installation
```bash
claude /agents
# Should show 36 ClaudeSwarm agents
```

</details>

## First Project Setup

### Auto-Configuration (Recommended)

Navigate to your project and let ClaudeSwarm configure itself:

```bash
cd your-project
claude "use @agent-team-configurator and optimise this project for ClaudeSwarm"
```

This will:
- Detect your technology stack
- Configure optimal agent mappings in CLAUDE.md
- Provide usage recommendations

### Manual Configuration

If you prefer manual setup, copy the CLAUDE.md template:

```bash
cp ClaudeSwarm/CLAUDE.md your-project/CLAUDE.md
```

## Choose Your Development Approach

ClaudeSwarm offers two orchestration methods:

### Method 1: Workflow-Driven (Systematic)

Best for: New features, complete applications, quality-critical projects

```bash
# Complete development lifecycle
claude "use @spec-orchestrator: Create a task management web application"

# Specific phases
claude "use @spec-architect: Design microservices architecture for e-commerce platform"
```

**Process**: Planning → Development → Validation with quality gates

### Method 2: Expert-Driven (Dynamic)

Best for: Complex integrations, multi-technology tasks, debugging

```bash
# Intelligent agent coordination
claude "use @tech-lead-orchestrator: Build user authentication with OAuth and JWT"

# The tech-lead will analyse and coordinate specialists automatically
```

**Process**: Analysis → Agent Selection → Parallel Coordination

### Method 3: Slash Command (One-Command)

Best for: Quick development, prototyping, standardized workflows

```bash
# Complete workflow in one command
claude "/agent-workflow 'Create REST API with authentication'"

# With custom settings
claude "/agent-workflow 'E-commerce platform' --quality=95 --phase=all"
```

## Example Workflows

### Building a Web Application

```bash
# Workflow approach - systematic development
claude "use @spec-orchestrator with quality threshold 90: 
Create a blog platform with:
- User authentication and profiles
- Post creation and editing
- Comment system with moderation  
- Admin dashboard
- Responsive design"
```

### Optimizing Existing Code

```bash
# Expert approach - targeted specialists
claude "use @tech-lead-orchestrator:
Optimize the performance of my Django application's database queries and add caching"
```

### Quick Prototype

```bash
# Slash command approach - rapid development
claude "/agent-workflow 'Landing page with email signup' --quality=75 --skip-agent=spec-tester"
```

## Understanding Quality Gates

ClaudeSwarm uses quality gates to ensure consistent standards:

### Quality Thresholds
- **Prototype**: 75% - Fast development, basic quality
- **Production**: 85-90% - Balanced quality and speed  
- **Enterprise**: 95% - Maximum quality, thorough validation

### Three Quality Gates

1. **Planning Gate** (95%): Requirements, architecture, task breakdown
2. **Development Gate** (85%): Code quality, tests, performance
3. **Validation Gate** (95%): Security, documentation, deployment readiness

### When Quality Gates Fail

The system will:
1. Provide specific feedback on what failed
2. Allow agents to revise and improve their work
3. Re-evaluate with the same criteria
4. Continue when threshold is met

## Common Usage Patterns

### Full-Stack Development
```bash
claude "use @tech-lead-orchestrator: Build a social media app with React frontend and Node.js backend"
```

### API Development
```bash  
claude "use @spec-orchestrator: Create RESTful API for inventory management with authentication"
```

### Code Review & Optimization
```bash
claude "use @code-reviewer: Review my authentication implementation for security issues"
claude "use @performance-optimiser: Analyze and optimise my React app's render performance"
```

### Legacy Code Analysis
```bash
claude "use @code-archaeologist: Document and analyse this inherited PHP codebase"
```

## Tips for Success

### 1. Start with Orchestrators
- Always use `@tech-lead-orchestrator` or `@spec-orchestrator` for complex tasks
- Let them coordinate specialist agents rather than selecting agents manually
- Trust their agent selection expertise

### 2. Provide Clear Requirements
```bash
# Good: Specific requirements
claude "use @spec-orchestrator: Create todo app with user accounts, due dates, categories, and mobile-responsive design"

# Better: Include constraints
claude "use @spec-orchestrator: Create todo app using React and Node.js, must support offline mode, target completion in 2 hours"
```

### 3. Leverage Quality Settings
```bash
# For quick prototypes
claude "use @spec-orchestrator with quality threshold 75: Create simple calculator app"

# For production systems  
claude "use @spec-orchestrator with quality threshold 95: Create payment processing system"
```

### 4. Use Phase-Specific Development
```bash
# Just planning and design
claude "use @spec-orchestrator for planning phase only: Design architecture for microservices e-commerce"

# Implementation only (when requirements exist)
claude "use @spec-developer: Implement the authentication module based on docs/requirements.md"
```

## Next Steps

- Explore the [Agent Reference](agent-reference.md) to understand all available specialists
- Learn [Advanced Workflows](workflows.md) for complex development patterns  
- Read [Best Practices](best-practices.md) for optimal results
- Check out [Examples](../examples/) for real-world usage patterns

## Getting Help

- Use `claude /agents` to see all available agents
- Check `claude /help` for Claude Code commands
- Review agent descriptions for usage guidance
- See [Troubleshooting](troubleshooting.md) for common issues

Happy coding with ClaudeSwarm! 🚀