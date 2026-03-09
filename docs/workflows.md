# Workflows Guide

ClaudeSwarm supports two orchestration modes and direct specialist access.

## Systematic Workflow (spec-orchestrator)

A three-phase pipeline with quality gates. Best for new projects and quality-critical work.

### Three Phases

**Phase 1: Planning (20-25%)**
- `spec-analyst` - Requirements and user stories
- `spec-architect` - System architecture and API design
- `spec-planner` - Task breakdown and estimation
- Quality Gate: 95% threshold on planning completeness

**Phase 2: Development (60-65%)**
- `spec-developer` - Implementation following specs
- `spec-tester` - Comprehensive test suites
- Quality Gate: 85% threshold on code quality and test coverage

**Phase 3: Validation (15-20%)**
- `code-reviewer` - Security-aware code review
- `spec-validator` - Production readiness assessment
- Quality Gate: 95% threshold on deployment readiness

### Quality Thresholds

| Project Type | Threshold |
|---|---|
| Prototype/MVP | 75% |
| Internal tools | 85% |
| Customer-facing | 90% |
| Enterprise/financial | 95% |

When gates fail, agents iterate up to 3 times before escalating to you.

### Examples

```bash
# Complete lifecycle
claude "use @spec-orchestrator: Create a blog CMS with user auth and admin dashboard"

# Planning only
claude "use @spec-orchestrator for planning phase only: Design microservices architecture"

# With quality threshold
claude "use @spec-orchestrator with quality threshold 95: Create payment processing system"
```

## Expert Workflow (tech-lead-orchestrator)

Dynamic agent routing for complex, multi-technology tasks. Best for existing projects and integrations.

### How It Works

1. Analyses your request and detects technology needs
2. Selects optimal specialist agents
3. Creates an execution plan (parallel and sequential tasks)
4. You follow the plan, delegating to each agent in order

### Rules

- Maximum 2 agents run in parallel
- Framework-specific agents preferred over universal ones (e.g., `django-api-developer` over `backend-developer`)
- Always includes `code-reviewer` for production work

### Examples

```bash
# Multi-technology feature
claude "use @tech-lead-orchestrator: Add real-time chat to React app with Node.js backend using WebSocket"

# Performance work
claude "use @tech-lead-orchestrator: Optimise my Django app's database queries and add Redis caching"

# Complex integration
claude "use @tech-lead-orchestrator: Integrate Stripe payments into Django API with subscriptions and webhooks"
```

## Common Patterns

### Full-Stack Application
```bash
claude "use @spec-orchestrator: Create task management app with React frontend, Django backend, and PostgreSQL"
```

### API Service
```bash
claude "use @spec-orchestrator: Create REST API for inventory management with auth and OpenAPI docs"
```

### Legacy Modernisation
```bash
# Analyse first
claude "use @code-archaeologist: Analyse this PHP e-commerce system and document architecture"
# Then plan migration
claude "use @tech-lead-orchestrator: Migrate legacy PHP system to Laravel"
```

### Performance Audit
```bash
claude "use @performance-optimizer: Analyse bottlenecks in my Django application"
# Then fix specific issues
claude "use @django-orm-expert: Optimise the queries identified in the performance report"
```

### Security Review
```bash
claude "use @code-reviewer: Comprehensive security audit of authentication and payment systems"
```

## Best Practices

1. **Start with orchestrators** for any multi-step task. Don't manually select framework agents for complex work.
2. **Follow the routing map** from tech-lead-orchestrator exactly. Don't substitute agents.
3. **Match quality thresholds** to project needs. 75% for prototypes, 95% for enterprise.
4. **Be specific** in your prompts. Include features, tech stack preferences, and constraints.
5. **Include code-reviewer** in production workflows for security validation.
6. **Let quality gates work**. If a gate fails, allow agents to iterate rather than forcing progression.

## Slash Command

The `/agent-workflow` command runs the full systematic pipeline in one shot:

```bash
claude "/agent-workflow 'Create REST API with authentication'"
```
