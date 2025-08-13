
# ClaudeSwarm 🐝
**35 specialised Claude Code agents that coordinate to build production-ready software**

**Warning: This is an experimental project! Expect High Token Usage**

## What is ClaudeSwarm?
ClaudeSwarm helps you transform your ideas into production ready code through the use of specialised AI agents working in coordinated phases.

ClaudeSwarm offers two ways to utilise AI for coding:
- **🔄 Systematic Development**: Step-by-step workflows with quality checks for complete projects.
- **🎯 Expert Coordination**: Intelligent selection of specialist agents for complex tasks.

### Why Use It?
- **Rapid Development**: Transform ideas into working code within hours.
- **Reliable Quality**: Automatic checks ensure code meets standards.
- **Specialist Skills**: Agents with deep knowledge of specific frameworks, not just general assistance.
- **Intelligent Selection**: Detects technical requirements and selects appropriate agents.
- **Production Ready**: Includes security, performance optimisation, and documentation.

## Quick Start
**Prerequisites**: Install and authenticate the Claude Code CLI.

### 1. Install ClaudeSwarm
```bash
git clone https://github.com/your-username/ClaudeSwarm.git
cd ClaudeSwarm
./install.sh
```

### 2. Set Up Your Project
```bash
cd your-project
claude "use @team-configurator: Setup ClaudeSwarm for this project"
```

### 3. Start Building

**🎯 Smart Agent Selection (Recommended)**

Instead of selecting individual specialists, allow orchestrators to automatically choose the best agents for your project:

```bash
# For complex multi-step tasks - analyses your project and selects optimal specialists
claude "use @tech-lead-orchestrator: Build e-commerce platform with user authentication and payment processing"

# For systematic development with quality gates - manages complete project lifecycle  
claude "use @spec-orchestrator: Create a task management web application"
```

The orchestrators will:
- Analyse your requirements and technology stack
- Automatically select the best specialist agents (Django, React, etc.)
- Coordinate parallel and sequential execution
- Provide structured task breakdowns

**⚡ Direct Specialist Selection (Advanced)**

For targeted tasks, you can directly specify framework specialists:
```bash
claude "use @django-api-developer: Build REST API with authentication"  
claude "use @react-nextjs-expert: Create Next.js app with SSR"
claude "use @performance-optimizer: Fix slow database queries"
```

## Agent Selection Guide

### 🤖 Orchestrators (Let Them Choose For You)

**Start here for most projects** - these agents automatically select and coordinate specialists:

**🎯 `@tech-lead-orchestrator`** - **MUST BE USED** for multi-step development tasks
- Analyses complex software projects 
- Automatically selects optimal specialist agents
- Provides strategic recommendations and task breakdowns
- Coordinates framework specialists (Django, React, etc.)

**🔄 `@spec-orchestrator`** - Systematic workflow coordination
- Quality-gated development with structured phases  
- Project organization and progress tracking
- Manages complete project lifecycle

### 🛠️ Direct Specialist Selection

**For targeted, single-technology tasks:**

**Framework Specialists:**
- `@django-api-developer` - Django REST APIs and GraphQL
- `@react-nextjs-expert` - Next.js with App Router and SSR
- `@rails-api-developer` - Rails APIs and Active Record

**Quality & Performance:**
- `@code-reviewer` - Security-aware code review
- `@performance-optimizer` - Database and system optimization
- `@documentation-specialist` - Comprehensive documentation

**Analysis & Setup:**
- `@project-analyst` - Technology stack detection and analysis
- `@team-configurator` - Project setup automation

## Agent Categories
ClaudeSwarm comprises 35 agents organised into these groups:
- **Orchestrators (3)**: Manage workflows and select agents (e.g., tech-lead-orchestrator).
- **Workflow Agents (7)**: Handle planning, coding, testing, and reviews.
- **Framework Specialists (13)**: Experts in Django, Rails, Laravel, React, Vue.
- **Universal Experts (4)**: For general backend, frontend, APIs, and Tailwind CSS.
- **Core Team (4)**: For code reviews, performance, documentation, and analysis.
- **Architecture & Utility (4)**: For advanced design, UI/UX, and refactoring.

## How It Works

### Two Development Approaches

**🔄 Systematic Development** (spec-orchestrator)
```
Project → Planning → Development → Validation → Production
          ↓         ↓             ↓
      Requirements  Implementation  Security
      Architecture  Testing        Documentation  
      Task Planning               Quality Gates
```

**🎯 Expert Coordination** (tech-lead-orchestrator)  
```
Complex Task → Technology Analysis → Agent Selection → Execution
                ↓                    ↓                ↓
            Stack Detection      Specialist Routing   Parallel Work
            Requirements         Dependency Planning   Integration
```

### Quality Assurance

**Configurable Quality Thresholds**:
- **75%** - Rapid prototyping and MVPs
- **85%** - Production applications  
- **95%** - Enterprise and financial systems

**Automated Quality Gates**:
- Planning completeness validation
- Code quality and security scanning  
- Performance benchmarking
- Documentation and deployment readiness

## Usage Examples

**Web Application Development**:
```bash
claude "use @spec-orchestrator: Create task management app with user accounts, project collaboration, and real-time updates"
```

**API Development**:
```bash
claude "use @tech-lead-orchestrator: Build REST API for inventory management with authentication and reporting"
```

**Performance Optimisation**:
```bash
claude "use @performance-optimizer: Analyse and optimise database queries in Django application"
```

**Legacy System Analysis**:
```bash
claude "use @code-archaeologist: Document and analyse inherited PHP e-commerce system"
```

## Documentation

### Getting Started
- **[Quick Start Guide](docs/quick-start.md)** - 2-minute setup and first project
- **[Cheat Sheet](CHEATSHEET.md)** - Quick command reference
- **[Usage Examples](EXAMPLES.md)** - Real-world project examples

### Advanced Guides  
- **[Agent Reference](docs/agent-reference.md)** - Complete guide to all 36 agents
- **[Agent Selector](templates/agent-selector.md)** - Choose the right agent for your task
- **[Workflows](docs/workflows.md)** - Development patterns and examples
- **[Best Practices](docs/best-practices.md)** - Expert recommendations

## Getting Help

### 🚀 Quick Agent Selection

**Most Common Use Cases:**
- **Any complex/multi-step task**: `@tech-lead-orchestrator` (allow it to select specialists)
- **New systematic project**: `@spec-orchestrator` (quality-gated workflow)
- **Performance issues**: `@performance-optimizer`
- **Code review required**: `@code-reviewer`
- **Legacy system analysis**: `@code-archaeologist`

**Pro Tip**: When in doubt, start with `@tech-lead-orchestrator` - it will analyse your requirements and route to the best specialists automatically.

### Common Patterns
```bash
# Complete web application
claude "use @spec-orchestrator: Create [description] with [features]"

# Targeted improvements  
claude "use @tech-lead-orchestrator: Add [feature] to existing [project type]"

# Quick fixes
claude "use @[specialist]: [specific task]"
```

## Contributing

Contributions are welcome! Please open an issue or pull request to discuss proposed changes.

## Acknowledgements  

Inspired and built upon https://github.com/zhsama/claude-sub-agent and https://github.com/vijaythecoder/awesome-claude-agents


## Licence

MIT Licence - see [LICENCE](LICENSE) for details.

---

