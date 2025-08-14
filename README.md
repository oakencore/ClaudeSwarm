# ClaudeSwarm 🐝

**Transform your ideas into production ready software with a swarm of 35 specialized AI agents.**

**⚠️ Warning: This is an experimental project. Expect high token usage. Use responsibly and monitor your API costs.**

## What is ClaudeSwarm?

ClaudeSwarm is a workflow system built on Claude Code's Sub-Agents feature. It assembles a team of 35 specialised AI agents that collaborate to convert your project ideas into fully functional, production ready code. Think of it as an AI powered development team: orchestrators plan and coordinate, while experts in frameworks, optimisation, and quality assurance handle the details.

At its core, ClaudeSwarm automates the software development lifecycle. You provide a high level idea like "Build a task management app with real-time collaboration" and the agents break it down, select the right tools, write code, test it, and ensure it's secure and documented. No more juggling multiple tools or manual handoffs; it's all coordinated seamlessly.

ClaudeSwarm supports two primary modes:
- **🔄 Systematic Development**: A structured, phase based workflow with built in quality gates for end-to-end projects.
- **🎯 Expert Coordination**: Intelligent agent selection for complex, multi faceted tasks, automatically routing to specialists based on your needs.

Whether you're a solo developer accelerating prototypes or a team tackling enterprise scale projects, ClaudeSwarm supercharges your productivity while maintaining high standards.

## Why ClaudeSwarm?

- **Specialised Expertise**: Agents aren't generalists,they're deep experts in frameworks like Django, React, or Rails, ensuring best practices are followed. Can't find the right specialist, create your own and add them to the team!
- **Intelligent Automation**: Orchestrators detect your tech stack and routes tasks to the right agents, reducing manual decision making.
- **Built in Quality**: Automatic code reviews, security scans, performance optimisation, testing and documentation.
- **Flexible and Scalable**: Handles everything from quick fixes to full stack applications, with configurable quality thresholds (e.g., 75% for prototypes, 95% for enterprise systems).

## Quick Start

Get up and running in minutes. You'll need the Claude Code CLI installed and authenticated (visit [Claude's documentation](https://docs.anthropic.com/claude/reference/getting-started-with-the-api) for setup).

### 1. Clone and Install
```bash
git clone https://github.com/your-username/ClaudeSwarm.git
cd ClaudeSwarm
./install.sh  # Installs dependencies and configures agents
```

### 2. Configure Your Project
Navigate to your project directory and let the setup agent prepare everything:
```bash
cd your-project-directory
claude "use @team-configurator: Set up ClaudeSwarm for this project"
```
This analyses your existing codebase (if any), suggests a tech stack, and initialises the agent swarm.

### 3. Build Your First Project
Start with an orchestrator for smart agent selection, it's the easiest way to begin.

**For a complete application (Systematic Mode):**
```bash
claude "use @spec-orchestrator: Create a task management web app with user authentication, real-time updates, and project collaboration features"
```

**For a complex feature addition (Expert Coordination Mode):**
```bash
claude "use @tech-lead-orchestrator: Add payment processing and inventory tracking to my existing e-commerce platform"
```

The orchestrator will analyse your request, select relevant specialists (e.g., `@django-api-developer` for backend, `@react-nextjs-expert` for frontend), coordinate their work, and deliver structured outputs like code files, docs, and deployment scripts.

For targeted tasks, call specialists directly:
```bash
claude "use @performance-optimizer: Optimise slow database queries in my Django app"
```

## How ClaudeSwarm Works

ClaudeSwarm mimics a real development team, with agents communicating via Claude Code's sub-agent system. Here's the breakdown:

### Core Components
- **Orchestrators**: High level coordinators that plan, select agents, and manage workflows.
- **Specialists**: Framework experts (e.g., Django, React) and utility agents (e.g., for optimisation or reviews).
- **Workflow Engine**: Handles parallel/sequential tasks, quality gates, and integration.

### The Two Modes in Action

**🔄 Systematic Development** (Led by `@spec-orchestrator`):
This mode follows a gated pipeline for reliable, end-to-end builds:
1. **Planning Phase**: Gather requirements, design architecture, and break into tasks.
2. **Development Phase**: Specialists code implementations, handle testing, and integrate features.
3. **Validation Phase**: Run security scans, performance benchmarks, and code reviews.
4. **Production Phase**: Generate documentation, deployment guides, and optimizations.

**🎯 Expert Coordination** (Led by `@tech-lead-orchestrator`):
For dynamic tasks, this mode intelligently adapts:
1. Analyse the request and detect tech needs (e.g., "This requires React for UI and Django for API").
2. Select and route to optimal agents (e.g., parallel work on frontend and backend).
3. Coordinate dependencies, merge outputs, and iterate based on feedback.

Under the hood, agents use Claude's API for reasoning, code generation, and collaboration, ensuring cohesive results.

### Agent Categories (35 Total)
- **Orchestrators (3)**: `@tech-lead-orchestrator`, `@spec-orchestrator`, `@team-configurator` – Plan and delegate.
- **Workflow Agents (7)**: Handle planning, coding, testing, refactoring, and more.
- **Framework Specialists (13)**: Deep dives into Django, Rails, Laravel, React, Vue, etc.
- **Universal Experts (4)**: General backend/frontend, APIs, and styling (e.g., Tailwind CSS).
- **Core Team (4)**: `@code-reviewer`, `@performance-optimizer`, `@documentation-specialist`, `@project-analyst`.
- **Architecture & Utility (4)**: For UI/UX design, system architecture, and legacy code analysis (e.g., `@code-archaeologist`).

**Pro Tip**: Always start with an orchestrator unless you have a very specific, isolated task.

## Quality Assurance

ClaudeSwarm embeds quality at every step:
- **Automated Gates**: Validate planning completeness, scan for vulnerabilities, benchmark performance, and check deployment readiness.
- **Thresholds**: Set levels like 85% for production apps—agents iterate until met.
- **Best Practices**: Enforces secure coding, efficient designs, and comprehensive testing.

## Usage Examples

Here are real world scenarios:

- **Full-Stack Web App**:
  ```bash
  claude "use @spec-orchestrator: Build a social media dashboard with user profiles, real-time feeds, and analytics"
  ```
  *Output*: Complete codebase with React frontend, Django backend, tests, and Docker setup.

- **API Enhancement**:
  ```bash
  claude "use @tech-lead-orchestrator: Add OAuth authentication and GraphQL endpoints to my Rails API"
  ```
  *Output*: Updated API code, security review, and integration guide.

- **Optimisation Task**:
  ```bash
  claude "use @performance-optimizer: Identify and fix bottlenecks in my Laravel e-commerce database"
  ```
  *Output*: Optimised queries, profiling report, and before/after benchmarks.

- **Legacy Analysis**:
  ```bash
  claude "use @code-archaeologist: Analyze and document this inherited PHP monolith for modernization"
  ```
  *Output*: Architecture diagrams, refactor recommendations, and migration plan.

## Documentation and Resources

Dive deeper with these guides:
- **[Quick Start Guide](docs/quick-start.md)**: From zero to first build in 2 minutes.
- **[Cheat Sheet](CHEATSHEET.md)**: Command shortcuts and agent quick-reference.
- **[Agent Reference](docs/agent-reference.md)**: Detailed profiles for all 35 agents.
- **[Workflows Guide](docs/workflows.md)**: Advanced patterns for custom projects.
- **[Best Practices](docs/best-practices.md)**: Tips for optimal results and cost management.
- **[Examples Repo](EXAMPLES.md)**: Downloadable project templates and case studies.

## Getting Help

- **Stuck?** Start with `@tech-lead-orchestrator`—it'll guide you.
- **Community**: Join discussions on GitHub issues or our Discord (link coming soon).
- **Common Pattern**:
  ```bash
  claude "use @orchestrator: [Your idea or task description]"
  ```
- **FAQ**: Check [docs/faq.md](docs/faq.md) for token usage tips and troubleshooting.

## Contributing

Fork the repo, make improvements (e.g., new agents or workflows), and submit a pull request.

## Acknowledgements

Built with inspiration from [claude-sub-agent](https://github.com/zhsama/claude-sub-agent) and [awesome-claude-agents](https://github.com/vijaythecoder/awesome-claude-agents). Thanks to the Anthropic team for Claude Code.

## License

MIT License—see [LICENSE](LICENSE) for details. Free to use, modify, and share.

---

Ready to swarm? Clone the repo and start building today! If this README helped, star the project on GitHub. 🚀