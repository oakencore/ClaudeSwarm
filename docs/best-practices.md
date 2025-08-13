# ClaudeSwarm Best Practices

Expert recommendations for maximizing effectiveness with the ClaudeSwarm agent ecosystem.

## Core Principles

### 1. Orchestration First
**Always start with orchestrators for complex tasks**

✅ **Do This**:
```bash
# Let orchestrators coordinate specialists  
claude "use @tech-lead-orchestrator: Build user authentication with OAuth integration"
claude "use @spec-orchestrator: Create task management application"
```

❌ **Don't Do This**:
```bash
# Avoid manual agent selection for complex tasks
claude "use @django-backend-expert: Build complete e-commerce platform"
```

**Why**: Orchestrators understand agent capabilities, dependencies, and optimal routing patterns.

### 2. Trust the Agent Selection
**Follow orchestrator recommendations exactly**

✅ **Do This**:
```bash
# Tech-lead says use django-api-developer → use django-api-developer
# Spec-orchestrator routes to spec-developer → use spec-developer
```

❌ **Don't Do This**:
```bash
# Don't substitute recommended agents
# If tech-lead says django-api-developer, don't use backend-developer instead
```

**Why**: Orchestrators select agents based on deep analysis of requirements, technology stack, and task complexity.

### 3. Quality-First Mindset
**Set appropriate quality thresholds and respect quality gates**

✅ **Do This**:
```bash
# Match quality to project needs
claude "use @spec-orchestrator with quality threshold 95: Create banking application"
claude "use @spec-orchestrator with quality threshold 75: Create quick prototype"
```

❌ **Don't Do This**:
```bash
# Don't compromise quality for speed on critical systems
# Don't set unrealistic quality thresholds for prototypes
```

**Why**: Quality gates ensure consistent standards and prevent technical debt accumulation.

## Project Setup Best Practices

### Technology Stack Analysis

**Before Starting Development**:
```bash
# Always analyse your project first
claude "use @project-analyst: Analyze this codebase and recommend optimal development approach"

# Or let team-configurator set everything up
claude "use @team-configurator: Setup ClaudeSwarm for this project"
```

**Benefits**:
- Automatic technology detection
- Optimal agent mapping
- Prevents agent selection mistakes
- Creates project-specific guidelines

### CLAUDE.md Configuration

**Essential CLAUDE.md Sections**:

```markdown
# CLAUDE.md

## AI Team Configuration

### Detected Technology Stack
- Frontend: React 18.2 with Next.js 13
- Backend: Django 4.2 with PostgreSQL
- Testing: Jest, Pytest, Cypress
- Deployment: Docker, AWS

### Recommended Agent Mappings
| Task Type | Primary Agent | Fallback Agent |
|-----------|---------------|----------------|
| Frontend Development | react-nextjs-expert | react-component-architect |
| Backend Development | django-backend-expert | backend-developer |
| API Development | django-api-developer | api-architect |
| Code Review | code-reviewer | N/A |
| Performance | performance-optimizer | N/A |

### Quality Standards
- Production threshold: 90%
- Security scans required
- Test coverage >85%
- Documentation required

### Project-Specific Guidelines
[Your custom guidelines here]
```

## Agent Usage Patterns

### Systematic Development (spec-orchestrator)

**When to Use**:
- New features from scratch
- Quality-critical projects  
- Documentation requirements
- Process standardization needs

**Best Practices**:

1. **Complete Phase Execution**:
   ```bash
   # Let each phase complete fully
   claude "use @spec-orchestrator: Create blog platform with user accounts and content management"
   
   # Don't interrupt phases mid-execution
   ```

2. **Quality Threshold Selection**:
   ```bash
   # Enterprise applications
   claude "use @spec-orchestrator with quality threshold 95: Create financial reporting system"
   
   # Internal tools
   claude "use @spec-orchestrator with quality threshold 85: Create admin dashboard"
   
   # Prototypes
   claude "use @spec-orchestrator with quality threshold 75: Create landing page mockup"
   ```

3. **Phase-Specific Usage**:
   ```bash
   # Planning only for complex projects
   claude "use @spec-orchestrator for planning phase only: Design microservices architecture"
   
   # Implementation when requirements exist
   claude "use @spec-developer: Implement authentication based on docs/requirements.md"
   ```

4. **Iterative Improvement**:
   ```bash
   # Allow quality gate failures to drive improvement
   # Don't force progression - let agents refine their work
   ```

### Expert-Driven Development (tech-lead-orchestrator)

**When to Use**:
- Complex integrations
- Multi-technology projects
- Performance optimisation
- Legacy system work

**Best Practices**:

1. **Comprehensive Task Descriptions**:
   ```bash
   # Good: Specific requirements with constraints
   claude "use @tech-lead-orchestrator: Integrate Stripe payments into Django API, support subscriptions and webhooks, must handle failed payments gracefully"
   
   # Better: Include context and success criteria
   claude "use @tech-lead-orchestrator: Add real-time chat to React app using WebSocket, support file sharing, maintain chat history, ensure 99% uptime"
   ```

2. **Trust the Agent Routing**:
   ```bash
   # Follow the routing map exactly
   # If tech-lead assigns Task 1 to code-archaeologist, use code-archaeologist
   # If tech-lead says Task 2 and 3 run in parallel, execute them in parallel
   ```

3. **Parallel Execution Management**:
   ```bash
   # Respect the maximum 2 agents in parallel rule
   # Coordinate handoffs between sequential tasks
   # Don't start dependent tasks until dependencies complete
   ```

## Quality Assurance Practices

### Code Review Integration

**Always Include Security-Aware Reviews**:
```bash
# Automatic inclusion in workflows
claude "use @spec-orchestrator: Create user authentication system" 
# (code-reviewer automatically included in validation phase)

# Manual security review
claude "use @code-reviewer: Security audit of payment processing implementation"
```

**Review Checklist Integration**:
- Include code-reviewer in all production workflows
- Run security scans on authentication/payment code
- Performance review for user-facing features
- Documentation review for public APIs

### Performance Optimization

**Proactive Performance Planning**:
```bash
# Include performance considerations from the start
claude "use @spec-orchestrator with performance validation: Create high-traffic API service"

# Targeted optimisation
claude "use @performance-optimizer: Analyze and optimize database queries in user service"
```

**Performance Checkpoints**:
- Database query optimisation
- Frontend bundle size analysis
- API response time validation
- Memory usage profiling

### Documentation Standards

**Comprehensive Documentation**:
```bash
# Include documentation specialist for public APIs
claude "use @documentation-specialist: Create API documentation for e-commerce microservices"

# Systematic documentation
claude "use @spec-orchestrator: Create inventory system with complete user and developer documentation"
```

**Documentation Types**:
- API specifications (OpenAPI/Swagger)
- User guides and tutorials
- Technical architecture documentation
- Deployment and maintenance guides

## Technology-Specific Best Practices

### Backend Development

**Framework-Specific Preferences**:

**Django Projects**:
```bash
# Preferred: Use Django specialists
claude "use @tech-lead-orchestrator: Build Django API with authentication, permissions, and admin interface"
# Routes to: django-backend-expert → django-api-developer

# Database optimisation
claude "use @django-orm-expert: Optimize complex queries in Django ORM for reporting dashboard"
```

**Rails Projects**:
```bash
# Comprehensive Rails development
claude "use @rails-backend-expert: Build Rails application with user management and content creation"

# API-focused development
claude "use @rails-api-developer: Create Rails API with GraphQL endpoint for mobile app"
```

**Laravel Projects**:
```bash
# Full Laravel application
claude "use @laravel-backend-expert: Create Laravel e-commerce with payment integration"

# Advanced ORM usage
claude "use @laravel-eloquent-expert: Implement complex product relationships and inventory tracking"
```

### Frontend Development

**React Ecosystem**:
```bash
# Modern React patterns
claude "use @react-component-architect: Build component library with hooks and context"

# Production Next.js applications
claude "use @react-nextjs-expert: Create Next.js app with SSR, API routes, and authentication"
```

**Vue Ecosystem**:
```bash
# Vue 3 with Composition API
claude "use @vue-component-architect: Build Vue dashboard with reactive data visualization"

# Full-stack Nuxt applications
claude "use @vue-nuxt-expert: Create Nuxt.js e-commerce with SSR and payment integration"

# Complex state management
claude "use @vue-state-manager: Implement Pinia store for multi-step checkout process"
```

### Universal Development

**When No Specialist Exists**:
```bash
# Fallback to universal agents
claude "use @backend-developer: Create Go microservice with gRPC endpoints"
claude "use @frontend-developer: Build vanilla JavaScript SPA with Web Components"
claude "use @api-architect: Design REST API for IoT device management"
```

## Error Handling and Troubleshooting

### Quality Gate Failures

**Understanding Failure Reasons**:
```bash
# Quality gates provide specific feedback
# Common failure categories:
# - Requirements incomplete (planning phase)
# - Test coverage insufficient (development phase)  
# - Security vulnerabilities found (validation phase)
# - Documentation missing (validation phase)
```

**Failure Response Strategy**:
1. **Review specific feedback** - Don't ignore failure details
2. **Allow agent iteration** - Up to 3 rounds of improvement
3. **Adjust scope if needed** - Sometimes requirements need refinement
4. **Escalate persistent issues** - Use human judgment for complex cases

**Example Failure Handling**:
```bash
# Quality gate fails on test coverage
# System provides: "Test coverage at 65%, requires 80%"
# spec-tester automatically adds more tests
# Re-evaluation occurs automatically
```

### Agent Selection Issues

**Common Problems**:
- Agent not found (incorrect installation)
- Wrong agent selected (bypassed orchestrator)
- Task too complex for single agent (needs orchestration)

**Solutions**:
```bash
# Verify agent installation
claude /agents

# Use orchestrator for complex tasks
claude "use @tech-lead-orchestrator: [complex task description]"

# Check agent capabilities in system context
```

### Workflow Coordination Issues

**Sequential vs Parallel Confusion**:
```bash
# Follow orchestrator guidance exactly
# If tech-lead says "Task 1 → Task 2 → Task 3" (sequential)
# Execute Task 1, wait for completion, then Task 2, etc.

# If tech-lead says "Tasks 2 and 3 in parallel after Task 1"
# Execute Task 1, then start both Task 2 and Task 3 simultaneously
```

## Advanced Usage Patterns

### Custom Workflow Development

**Domain-Specific Orchestrators**:
```bash
# Create patterns for your organization
# Example: E-commerce development pattern
# 1. Always include payment security review
# 2. Performance testing for checkout flow
# 3. Accessibility audit for public pages
```

**Quality Criteria Customization**:
```bash
# Add organization-specific quality criteria
# Example: Financial services
# - PCI DSS compliance validation
# - GDPR privacy impact assessment  
# - Regulatory audit trail requirements
```

### Team Collaboration

**Shared Agent Configurations**:
```bash
# Team-level CLAUDE.md templates
# Standardized quality thresholds
# Common agent routing patterns
# Shared code review checklists
```

**Knowledge Sharing**:
```bash
# Document successful patterns
# Share workflow templates
# Create agent usage guidelines
# Build institutional knowledge base
```

### Continuous Improvement

**Workflow Optimization**:
```bash
# Monitor agent effectiveness
# Track quality gate success rates
# Identify common failure patterns
# Refine orchestrator usage patterns
```

**Performance Monitoring**:
```bash
# Track development velocity
# Measure code quality trends
# Monitor agent utilization
# Optimize resource allocation
```

## Common Anti-Patterns to Avoid

### ❌ Manual Agent Selection for Complex Tasks
```bash
# Wrong: Bypassing orchestrators
claude "use @django-backend-expert: Build complete social media platform"

# Right: Let orchestrator coordinate
claude "use @tech-lead-orchestrator: Build social media platform with Django backend and React frontend"
```

### ❌ Ignoring Quality Gate Feedback
```bash
# Wrong: Forcing progression when quality gates fail
# Right: Allow iterative improvement and address specific feedback
```

### ❌ Inconsistent Quality Standards
```bash
# Wrong: Random quality thresholds
claude "use @spec-orchestrator with quality threshold 60: Create banking app"

# Right: Match quality to risk and requirements
claude "use @spec-orchestrator with quality threshold 95: Create banking app"
```

### ❌ Interrupting Systematic Workflows
```bash
# Wrong: Skipping phases or interrupting mid-process
# Right: Let systematic workflows complete their phases
```

### ❌ Substituting Recommended Agents
```bash
# Wrong: Ignoring orchestrator routing
# Tech-lead says use django-api-developer → using backend-developer instead

# Right: Follow routing exactly as specified
```

## Success Metrics

### Project Success Indicators
- Quality gates pass consistently (>90% first-pass rate)
- Agent routing followed without substitutions
- Documentation generated automatically
- Test coverage meets or exceeds targets
- Security vulnerabilities addressed proactively

### Team Effectiveness Metrics
- Reduced time from concept to working code
- Consistent code quality across team members
- Improved knowledge sharing through documentation
- Faster onboarding for new team members
- Reduced technical debt accumulation

### Process Optimization Indicators
- Workflow selection matches project characteristics
- Quality thresholds appropriate for project risk
- Agent utilization balanced and effective
- Continuous improvement based on learnings

By following these best practices, you'll maximize the effectiveness of ClaudeSwarm and build high-quality software efficiently and consistently.