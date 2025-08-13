# Agent Reference

Complete reference for all ClaudeSwarm agents, organized by category and use case.

## Quick Reference

| Category | Count | Purpose |
|----------|-------|---------|
| [Orchestrators](#orchestrators) | 3 | Coordinate complex workflows and agent selection |
| [Workflow Agents](#workflow-agents) | 7 | Systematic development with quality gates |
| [Framework Specialists](#framework-specialists) | 13 | Technology-specific expertise |
| [Universal Experts](#universal-experts) | 4 | Framework-agnostic development |
| [Core Team](#core-team) | 4 | Quality assurance and analysis |
| [Architecture Specialists](#architecture-specialists) | 4 | Enterprise-level system design |

**Total: 35 specialised agents**

## Orchestrators

These are your primary coordinators - always start with these for complex tasks.

### tech-lead-orchestrator
**Purpose**: Senior technical lead for multi-step development tasks  
**When to Use**: Complex features, multi-technology projects, architectural decisions  
**Special Features**: 
- Intelligent agent routing based on technology stack
- Parallel and sequential task coordination
- Maximum 2 agents run simultaneously
- Framework-specific agent preference

**Example Usage**:
```bash
claude "use @tech-lead-orchestrator: Build e-commerce platform with Django backend and React frontend"
```

### spec-orchestrator  
**Purpose**: Systematic workflow coordination with quality gates  
**When to Use**: Complete development lifecycles, quality-critical projects  
**Special Features**:
- Three-phase development process
- Automated quality gate validation
- Configurable quality thresholds (75%-95%)
- Iterative improvement loops

**Example Usage**:
```bash
claude "use @spec-orchestrator with quality threshold 90: Create task management application"
```

### project-analyst
**Purpose**: Technology stack detection and intelligent routing  
**When to Use**: Project setup, technology migration, stack analysis  
**Special Features**:
- Automatic framework detection
- Agent capability mapping
- Technology recommendation
- Project structure analysis

**Example Usage**:
```bash
claude "use @project-analyst: Analyze this codebase and recommend optimal development approach"
```

## Workflow Agents

Systematic development specialists that work in coordinated phases.

### Planning Phase

#### spec-analyst
**Purpose**: Requirements analysis and user story creation  
**Inputs**: Project description, business requirements  
**Outputs**: requirements.md, user-stories.md, acceptance criteria  
**Quality Focus**: Requirements completeness and clarity

#### spec-architect  
**Purpose**: System architecture and design  
**Inputs**: Requirements and user stories  
**Outputs**: architecture.md, api-spec.md, system diagrams  
**Quality Focus**: Technical feasibility and scalability

#### spec-planner
**Purpose**: Task breakdown and project planning  
**Inputs**: Architecture and requirements  
**Outputs**: tasks.md, timeline estimates, resource allocation  
**Quality Focus**: Task granularity and completeness

### Development Phase

#### spec-developer
**Purpose**: Code implementation following specifications  
**Inputs**: Tasks, architecture, requirements  
**Outputs**: Source code, unit tests, documentation  
**Quality Focus**: Code quality and specification adherence

#### spec-tester
**Purpose**: Comprehensive testing and validation  
**Inputs**: Implemented code and requirements  
**Outputs**: Test suites, coverage reports, test documentation  
**Quality Focus**: Test coverage and quality assurance

### Validation Phase

#### code-reviewer
**Purpose**: Code review and best practices validation  
**Inputs**: Complete codebase and tests  
**Outputs**: Review reports, improvement recommendations  
**Quality Focus**: Code quality and security standards

#### spec-validator
**Purpose**: Final production readiness assessment  
**Inputs**: All project artifacts  
**Outputs**: Validation report, deployment checklist, quality score  
**Quality Focus**: Production readiness and completeness

## Framework Specialists

Technology-specific experts with deep domain knowledge.

### Backend Frameworks

#### Django Specialists

**django-backend-expert**
- **Expertise**: Django MVC patterns, services, middleware
- **Best For**: Core Django development, model design, view logic
- **Integration**: Works with django-api-developer and django-orm-expert

**django-api-developer**  
- **Expertise**: Django REST Framework, GraphQL, API design
- **Best For**: REST endpoints, API authentication, serialization
- **Integration**: Builds on django-backend-expert foundation

**django-orm-expert**
- **Expertise**: Advanced ORM usage, query optimisation, database performance
- **Best For**: Complex database interactions, performance optimisation
- **Integration**: Supports django-backend-expert with data layer expertise

#### Rails Specialists

**rails-backend-expert**
- **Expertise**: Rails conventions, MVC architecture, full-stack development
- **Best For**: Complete Rails applications, following Rails way
- **Integration**: Works with rails-api-developer for API-focused projects

**rails-api-developer**
- **Expertise**: Rails API mode, RESTful services, GraphQL
- **Best For**: API-only applications, microservices
- **Integration**: Specialized version of rails-backend-expert

**rails-activerecord-expert**
- **Expertise**: ActiveRecord patterns, query optimisation, associations
- **Best For**: Complex database operations, performance optimisation
- **Integration**: Database specialist for Rails projects

#### Laravel Specialists

**laravel-backend-expert**
- **Expertise**: Laravel MVC, Eloquent ORM, Artisan commands
- **Best For**: Full Laravel applications, following Laravel conventions
- **Integration**: Works with laravel-eloquent-expert for advanced ORM

**laravel-eloquent-expert**
- **Expertise**: Advanced Eloquent usage, relationships, query builder
- **Best For**: Complex database operations, model relationships
- **Integration**: Database specialist for Laravel projects

### Frontend Frameworks

#### React Specialists

**react-component-architect**
- **Expertise**: Modern React patterns, hooks, component design
- **Best For**: React component libraries, complex state management
- **Integration**: Works with react-nextjs-expert for full-stack apps

**react-nextjs-expert**
- **Expertise**: Next.js SSR/SSG/ISR, full-stack Next.js applications
- **Best For**: Production React apps with server-side rendering
- **Integration**: Advanced version of react-component-architect

#### Vue Specialists

**vue-component-architect**
- **Expertise**: Vue 3 Composition API, component patterns, reactivity
- **Best For**: Vue component design, complex reactive interfaces
- **Integration**: Works with vue-nuxt-expert and vue-state-manager

**vue-nuxt-expert**
- **Expertise**: Nuxt.js SSR/SSG, full-stack Vue applications  
- **Best For**: Production Vue apps with server-side features
- **Integration**: Advanced version of vue-component-architect

**vue-state-manager**
- **Expertise**: Pinia, Vuex, state architecture patterns
- **Best For**: Complex state management in Vue applications
- **Integration**: Complements vue-component-architect

## Universal Experts

Framework-agnostic specialists for cross-platform development.

### backend-developer
**Expertise**: Multi-language backend development (Node.js, Python, Go, etc.)  
**When to Use**: When no framework-specific agent exists  
**Capabilities**: API design, database integration, authentication, deployment

### frontend-developer  
**Expertise**: Modern web technologies, responsive design, accessibility  
**When to Use**: Cross-framework frontend work, vanilla JavaScript  
**Capabilities**: HTML/CSS/JS, build tools, testing, optimisation

### api-architect
**Expertise**: RESTful design, GraphQL, OpenAPI, API versioning  
**When to Use**: API-first development, microservices architecture  
**Capabilities**: API specification, documentation, authentication, rate limiting

### tailwind-css-expert
**Expertise**: Tailwind CSS, utility-first development, responsive design  
**When to Use**: Modern CSS styling, component libraries  
**Capabilities**: Design systems, custom components, optimisation

## Core Team

Quality assurance and analysis specialists.

### code-archaeologist
**Purpose**: Explores and documents unfamiliar or legacy codebases  
**Best For**: Legacy system analysis, codebase documentation, onboarding  
**Outputs**: Architecture documentation, code analysis reports, improvement recommendations

### code-reviewer
**Purpose**: Security-aware code review with severity-tagged reports  
**Best For**: Pre-merge reviews, security audits, quality gates  
**Outputs**: Detailed review reports, security findings, improvement suggestions

### performance-optimizer
**Purpose**: Identifies bottlenecks and applies scalability optimisations  
**Best For**: Performance audits, database optimisation, caching strategies  
**Outputs**: Performance analysis, optimisation recommendations, implementation

### documentation-specialist
**Purpose**: Creates comprehensive technical documentation  
**Best For**: API documentation, README files, user guides  
**Outputs**: Structured documentation, API specs, user manuals

## Architecture Specialists

Enterprise-level system design experts.

### senior-backend-architect
**Purpose**: Enterprise backend systems and architecture  
**Best For**: Large-scale systems, microservices, distributed architecture  
**Outputs**: System architecture, scalability plans, infrastructure recommendations

### senior-frontend-architect  
**Purpose**: Advanced frontend system architecture  
**Best For**: Large-scale frontend applications, micro-frontends, build optimisation  
**Outputs**: Frontend architecture, build strategies, performance optimisation

### ui-ux-master
**Purpose**: User experience design and interface implementation  
**Best For**: Design systems, user research, accessibility  
**Outputs**: UI/UX designs, accessibility audits, design system documentation

### refactor-agent
**Purpose**: Code quality improvement and refactoring  
**Best For**: Technical debt reduction, code modernization  
**Outputs**: Refactoring plans, code quality improvements, technical debt analysis

## Agent Selection Guidelines

### Preference Order

1. **Orchestrators First**: Always start with tech-lead-orchestrator or spec-orchestrator
2. **Framework-Specific**: Prefer specialised agents (e.g., django-backend-expert over backend-developer)  
3. **Universal Fallback**: Use universal agents when no specialist exists
4. **Core Support**: Include code-reviewer for quality assurance

### Technology Mapping

| Technology | Recommended Agents |
|------------|-------------------|
| Django | django-backend-expert, django-api-developer, django-orm-expert |
| Rails | rails-backend-expert, rails-api-developer, rails-activerecord-expert |
| Laravel | laravel-backend-expert, laravel-eloquent-expert |
| React | react-component-architect, react-nextjs-expert |
| Vue | vue-component-architect, vue-nuxt-expert, vue-state-manager |
| Node.js | backend-developer, api-architect |
| Python | backend-developer, api-architect (+ Django specialists if using Django) |
| API-focused | api-architect, backend-developer |
| Frontend-focused | frontend-developer, tailwind-css-expert |

### Quality Assurance Stack

Always include these for production systems:
- **code-reviewer**: Security and quality review
- **performance-optimizer**: Performance analysis  
- **documentation-specialist**: Complete documentation

## Usage Examples by Category

### Complete Web Application
```bash
claude "use @tech-lead-orchestrator: Build social media platform with user profiles, posts, comments, and real-time notifications"

# Expected routing: project-analyst → django-backend-expert → django-api-developer → react-nextjs-expert → code-reviewer
```

### API-Only Service
```bash
claude "use @spec-orchestrator: Create microservice for payment processing with webhook support"

# Expected workflow: spec-analyst → spec-architect → spec-developer (using api-architect) → spec-tester → spec-validator
```

### Frontend Application
```bash  
claude "use @tech-lead-orchestrator: Build React dashboard with data visualization and real-time updates"

# Expected routing: react-component-architect → tailwind-css-expert → performance-optimizer → code-reviewer
```

### Legacy System Analysis
```bash
claude "use @code-archaeologist: Analyze this inherited PHP codebase and create documentation"

# Standalone usage for exploration and documentation
```

This reference provides the complete ClaudeSwarm agent ecosystem. Choose agents based on your technology stack and project needs, always starting with orchestrators for complex tasks.