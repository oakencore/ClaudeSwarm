# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with the ClaudeSwarm unified agent ecosystem.

## Project Overview

ClaudeSwarm combines two powerful AI agent systems:
- **Awesome Claude Agents**: 24 specialised domain experts with intelligent orchestration
- **Spec Workflow System**: Systematic 3-phase development with quality gates

This unified system provides both systematic workflows and specialised expertise for any development task, using Claude Code's Sub-Agent capabilities with explicit agent specification.

## Dual Orchestration System

### Method 1: Workflow-Driven Development

Use **@spec-orchestrator** for systematic, quality-gated development:

```bash
# Complete development lifecycle
claude "use @spec-orchestrator: Create a task management web application"

# Phase-specific execution
claude "use @spec-architect: Design system architecture for microservices platform"
claude "use @spec-developer: Implement authentication based on specifications"
```

**Three-Phase Process**:
1. **Planning Phase** (20-25%): spec-analyst → spec-architect → spec-planner
2. **Development Phase** (60-65%): spec-developer → spec-tester  
3. **Validation Phase** (15-20%): code-reviewer → spec-validator

### Method 2: Expert-Driven Development

Use **@tech-lead-orchestrator** for intelligent agent coordination:

```bash  
# Complex multi-technology tasks
claude "use @tech-lead-orchestrator: Build e-commerce platform with Django backend and React frontend"

# The tech-lead will:
# 1. Analyze requirements and detect technology stack
# 2. Select optimal specialist agents
# 3. Provide step-by-step delegation plan
# 4. Coordinate parallel and sequential execution
```

## CRITICAL: Agent Specification Protocol

### For Multi-Step Tasks - ALWAYS Use Orchestrators First

**NEVER** select framework agents independently for complex tasks. Always use orchestrators:

```
CORRECT FLOW:
User Request → @tech-lead-orchestrator OR @spec-orchestrator → Agent Delegation → Execute

INCORRECT FLOW:  
User Request → @framework-specific-agent → Limited Scope Results
```

### Tech-Lead Orchestrator Rules

1. **ALWAYS start with @tech-lead-orchestrator** for any multi-step task
2. **FOLLOW the agent routing map** returned by tech-lead EXACTLY  
3. **USE ONLY the agents** explicitly recommended by tech-lead
4. **NEVER substitute agents** unless tech-lead provides fallbacks

### Spec-Orchestrator Rules

1. **Follow the three-phase workflow** systematically
2. **Respect quality gates** - scores must meet thresholds to proceed
3. **Allow iterative improvement** when quality gates fail
4. **Use structured handoffs** between workflow phases

## Agent Categories and Selection

### 🎯 Orchestrators (Primary Coordinators)
- **@tech-lead-orchestrator**: Multi-agent coordination, intelligent routing
- **@spec-orchestrator**: Workflow coordination, quality management  
- **@project-analyst**: Technology detection, stack analysis

### 🔄 Workflow Agents (Systematic Development)
- **@spec-analyst**: Requirements analysis and user stories
- **@spec-architect**: System architecture and design  
- **@spec-planner**: Task breakdown and estimation
- **@spec-developer**: Implementation specialist
- **@spec-tester**: Comprehensive testing expert
- **@code-reviewer**: Code review and quality assurance
- **@spec-validator**: Production readiness validation

### 💼 Framework Specialists (Domain Experts)

**Backend Frameworks**:
- **django-backend-expert**: Django MVC, services, patterns
- **django-api-developer**: Django REST Framework, GraphQL
- **django-orm-expert**: ORM optimisation, complex queries
- **rails-backend-expert**: Rails conventions, full-stack
- **rails-api-developer**: RESTful APIs with Rails
- **rails-activerecord-expert**: ActiveRecord optimisation
- **laravel-backend-expert**: Laravel MVC, Eloquent
- **laravel-eloquent-expert**: Advanced ORM usage

**Frontend Frameworks**:
- **react-component-architect**: Modern React, hooks
- **react-nextjs-expert**: SSR, SSG, full-stack Next.js
- **vue-component-architect**: Vue 3, Composition API
- **vue-nuxt-expert**: Nuxt.js applications
- **vue-state-manager**: Pinia, Vuex state management

### 🌐 Universal Experts (Framework-Agnostic)
- **backend-developer**: Multi-language backend systems
- **frontend-developer**: Cross-framework frontend
- **api-architect**: RESTful, GraphQL design
- **tailwind-css-expert**: Modern CSS, utility-first

### 🔧 Core Team (Quality Assurance)
- **code-archaeologist**: Legacy codebase analysis
- **code-reviewer**: Security-aware reviews
- **performance-optimiser**: Scalability specialist
- **documentation-specialist**: Technical writing
- **team-configurator**: Project setup automation

### 🏗 Architecture Specialists
- **senior-backend-architect**: Enterprise backend systems
- **senior-frontend-architect**: Advanced frontend architecture
- **ui-ux-master**: User experience design
- **refactor-agent**: Code quality improvement

## Quality Framework

### Quality Gate Thresholds

**Configurable Quality Levels**:
- **Prototype/MVP**: 75% threshold for rapid development
- **Production**: 85-90% threshold for stable systems
- **Enterprise**: 95% threshold for mission-critical applications

### Three-Phase Quality Gates

**Gate 1: Planning Quality (95% threshold)**:
- Requirements completeness and clarity
- Architecture feasibility validation
- Task breakdown adequacy
- Risk assessment coverage

**Gate 2: Development Quality (85% threshold)**:
- Code quality standards adherence  
- Test coverage achievement (>80%)
- Performance benchmark compliance
- Security vulnerability scanning

**Gate 3: Production Readiness (95% threshold)**:
- Code review completion
- All tests passing
- Documentation completeness
- Deployment checklist verification

### Quality Gate Failure Response

When quality gates fail:
1. **Identify root causes** and create improvement tasks
2. **Allow agents to iterate** and refine their work
3. **Maximum 3 iterations** to prevent infinite loops
4. **Escalate to human** if persistent failures occur

## Agent Communication Protocol

### Structured Handoffs

Agents communicate through structured artifacts:
- Each agent produces specific documentation (requirements.md, architecture.md, etc.)
- Next agent uses previous outputs as input
- Orchestrators manage the workflow progression
- Quality gates ensure consistency

### Expected Output Structure

```
project/
├── docs/
│   ├── {YYYY_MM_DD}/
│   │   ├── specs/           # Requirements, specifications
│   │   ├── design/          # Architecture, system design
│   │   ├── tasks/           # Task breakdowns, TODOs
│   │   └── reports/         # Quality reports, reviews
├── src/                     # Source code
├── tests/                   # Test suites
├── package.json            # Dependencies
└── README.md               # Project documentation
```

## Slash Command Integration

### /agent-workflow Command

Quick execution of complete development workflows:

```bash
# Basic usage
/agent-workflow "Create a todo list web application"

# Advanced configuration
/agent-workflow "Enterprise CRM system" --quality=95 --phase=all

# Quick prototyping  
/agent-workflow "Landing page with email capture" --quality=75 --skip-agent=spec-tester
```

**Command Options**:
- `--quality=[75-95]`: Set quality gate threshold
- `--skip-agent=[agent-name]`: Skip specific workflow agents
- `--phase=[planning|development|validation|all]`: Execute specific phases
- `--language=[zh|en]`: Documentation language preference

## Best Practices for Agent Coordination

### For Systematic Development
1. **Start with spec-orchestrator** for complete project workflows
2. **Respect the three-phase process** - don't skip phases
3. **Trust the quality gates** - they ensure consistent standards
4. **Allow iterative improvement** when quality scores are below threshold
5. **Review artifacts between phases** for course correction

### For Expert-Driven Development
1. **Always use tech-lead-orchestrator** for multi-step tasks
2. **Follow the agent routing map exactly** - don't substitute agents
3. **Execute in recommended order** (parallel vs sequential)
4. **Use deep reasoning** when coordinating multiple specialists
5. **Trust the tech-lead's agent selection** expertise

### For Quality Assurance
1. **ALWAYS include code-reviewer** in the workflow
2. **Use performance-optimiser** for scalability requirements
3. **Include security-aware reviews** for production systems
4. **Document decisions and rationale** throughout the process
5. **Maintain reusable templates** and checklists

## Integration Points

### Technology Stack Detection
The system automatically detects your project's technology stack through:
- Package managers (package.json, composer.json, requirements.txt, etc.)
- Framework files (settings.py, config/application.rb, etc.)  
- Build configurations (webpack, vite, rollup, etc.)
- Database schemas and migrations

### Agent Selection Logic
1. **Framework-specific agents preferred** over universal ones
2. **Automatic fallback** to universal agents when no specialist exists
3. **Human override capability** for manual agent selection
4. **Context-aware routing** based on task requirements

### CI/CD Integration
- GitHub Actions compatibility for workflow validation
- Custom quality gates and validation criteria
- Automated testing and deployment preparation
- Integration with existing development tools

## Troubleshooting

### Common Issues

**Agent Not Found**:
- Verify agents are in correct ~/.claude/agents/ directory
- Check YAML frontmatter format in agent files
- Ensure proper file permissions

**Quality Gate Failures**:
- Review specific criteria that failed
- Allow agents to revise and improve work
- Consider adjusting quality thresholds for project needs
- Escalate to human review if persistent

**Workflow Coordination Issues**:
- Always start with appropriate orchestrator
- Follow agent routing exactly as specified
- Don't substitute agents without orchestrator approval
- Check for conflicting agent selections

### Debug Mode

Enable verbose logging:
```bash
Use spec-orchestrator with debug mode: Show all agent interactions and decision points
Use tech-lead-orchestrator with debug mode: Display complete routing analysis
```

## Advanced Usage

### Custom Workflows
- Create domain-specific orchestrators for specialised needs
- Define custom quality criteria and validation rules
- Implement specialised development patterns
- Integrate with external tools and APIs

### Team Collaboration
- Share agent configurations via CLAUDE.md
- Establish team-specific quality standards
- Create reusable workflow templates
- Enable cross-project knowledge sharing

### Performance Optimization
- Enable parallel execution for independent tasks (max 2 simultaneous)
- Cache results for iterative development
- Use phase-specific execution for targeted improvements
- Monitor and optimise resource utilization

Remember: The ClaudeSwarm system combines systematic workflows with specialised expertise. Choose the orchestration method that best fits your project needs - workflow-driven for systematic development, expert-driven for complex multi-technology tasks.