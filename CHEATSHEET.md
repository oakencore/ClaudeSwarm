# ClaudeSwarm Cheat Sheet

Quick reference for common ClaudeSwarm commands and patterns.

## 🚀 Quick Commands

### New Projects
```bash
# Complete web application
claude "use @spec-orchestrator: Create [description] web app"

# API service
claude "use @spec-orchestrator: Create REST API for [domain]"

# Complex project
claude "use @tech-lead-orchestrator: Build [description]"
```

### Existing Projects
```bash
# Add features
claude "use @tech-lead-orchestrator: Add [feature] to existing [project]"

# Fix performance
claude "use @performance-optimiser: Optimise [specific issue]"

# Code review
claude "use @code-reviewer: Review [component] for security and quality"
```

### Quick Fixes
```bash
# Documentation
claude "use @documentation-specialist: Document [API/component]"

# Refactoring
claude "use @refactor-agent: Refactor [component] for better maintainability"

# Legacy analysis
claude "use @code-archaeologist: Analyse [language] codebase"
```

## 🎯 Agent Quick Select

| Need | Agent | Example |
|------|-------|---------|
| **New project** | `@spec-orchestrator` | "Create blog platform" |
| **Complex feature** | `@tech-lead-orchestrator` | "Add real-time chat" |
| **Performance fix** | `@performance-optimiser` | "Optimise database queries" |
| **Code review** | `@code-reviewer` | "Security audit" |
| **Legacy code** | `@code-archaeologist` | "Document PHP system" |
| **API design** | `@api-architect` | "Design REST API" |
| **Frontend work** | `@react-*` / `@vue-*` | "Create dashboard" |
| **Backend work** | `@django-*` / `@rails-*` | "Add authentication" |
| **Testing** | `@spec-tester` | "Create test suite" |
| **Documentation** | `@documentation-specialist` | "Write API docs" |

## 🛠️ Framework Quick Reference

### React
```bash
# Components
claude "use @react-component-architect: [task]"

# Next.js apps  
claude "use @react-nextjs-expert: [task]"
```

### Vue
```bash
# Components
claude "use @vue-component-architect: [task]"

# Nuxt apps
claude "use @vue-nuxt-expert: [task]"

# State management
claude "use @vue-state-manager: [task]"
```

### Backend Frameworks
```bash
# Django
claude "use @django-backend-expert: [task]"
claude "use @django-api-developer: [task]"

# Rails  
claude "use @rails-backend-expert: [task]"
claude "use @rails-api-developer: [task]"

# Laravel
claude "use @laravel-backend-expert: [task]"
```

### Universal
```bash
# Any backend
claude "use @backend-developer: [task]"

# Any frontend
claude "use @frontend-developer: [task]"

# Any API
claude "use @api-architect: [task]"
```

## ⚙️ Quality Control

```bash
# Quality thresholds
claude "use @spec-orchestrator with quality threshold [75|85|95]: [task]"

# Specific phases
claude "use @spec-orchestrator for [planning|development|validation] phase only: [task]"

# Skip agents (if you have existing requirements)
claude "use @spec-orchestrator skip @spec-analyst: [task]"
```

## 📋 Command Templates

### Web Application
```bash
claude "use @spec-orchestrator: Create [type] application with:
- User authentication
- [Core features]
- [Specific requirements]
- Responsive design
- [Tech preferences]"
```

### API Service
```bash
claude "use @spec-orchestrator: Create [domain] API with:
- Authentication and authorization
- CRUD operations for [entities]
- Input validation
- Rate limiting
- API documentation"
```

### Feature Addition
```bash
claude "use @tech-lead-orchestrator: Add [feature] to existing [project type] with:
- [Integration requirements]
- [Performance needs]
- [Security considerations]"
```

### Analysis Task
```bash
claude "use @[analyst-agent]: Analyse [target] and provide:
- [Specific analysis type]
- [Deliverables needed]
- [Recommendations format]"
```

## 🔧 Pro Tips

1. **Be specific**: Include details about features, tech stack, and requirements
2. **Set quality**: Use appropriate quality thresholds (75% = MVP, 95% = enterprise)
3. **Choose right orchestrator**: 
   - New projects → `@spec-orchestrator`
   - Existing projects → `@tech-lead-orchestrator`
4. **Use specialists**: Direct agent calls for focused tasks
5. **Include context**: Mention existing tech stack and constraints

## 🆘 Common Patterns

### Start New Project
```bash
claude "use @spec-orchestrator: Create [description]"
```

### Improve Existing
```bash
claude "use @tech-lead-orchestrator: [improvement] for [existing project]"
```

### Get Help
```bash
claude /agents  # List all agents
claude "use @team-configurator: Setup ClaudeSwarm for this project"
```

### Quick Reference
- **📖 Examples**: See `EXAMPLES.md` for detailed use cases
- **🔍 Agent Guide**: See `templates/agent-selector.md` for choosing agents
- **📚 Documentation**: See `docs/` directory for comprehensive guides