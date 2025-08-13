# Agent Selection Guide

Quick reference for choosing the right ClaudeSwarm agent for your task.

## Decision Tree

### 🎯 What do you need?

#### New Complete Project
**→ Use `@spec-orchestrator`**
- Full development lifecycle
- Quality gates and validation
- Comprehensive documentation
- Testing and deployment

#### Improve Existing Code
**→ Use `@tech-lead-orchestrator`**
- Intelligent agent routing
- Multi-technology coordination
- Complex feature additions
- System integrations

#### Quick Fix or Analysis
**→ Use specific specialist agents**
- Direct expert assistance
- Targeted improvements
- Focused analysis

## By Task Type

### 📋 Project Planning
- **Requirements gathering**: `@spec-analyst`
- **System architecture**: `@spec-architect` 
- **Technology selection**: `@project-analyst`
- **Task breakdown**: `@spec-planner`

### 💻 Development
- **Full implementation**: `@spec-developer`
- **Backend systems**: `@backend-developer` or `@senior-backend-architect`
- **Frontend applications**: `@frontend-developer` or framework specialists
- **API design**: `@api-architect`

### 🔍 Analysis & Review
- **Code review**: `@code-reviewer`
- **Performance issues**: `@performance-optimiser`
- **Legacy systems**: `@code-archaeologist`
- **Security audit**: `@code-reviewer` (specify security focus)

### 🧪 Testing & Quality
- **Test creation**: `@spec-tester`
- **Quality validation**: `@spec-validator`
- **Code quality**: `@refactor-agent`

### 📝 Documentation
- **Technical writing**: `@documentation-specialist`
- **API documentation**: `@api-architect`
- **System documentation**: `@code-archaeologist`

## By Technology Stack

### Backend Frameworks
- **Django**: `@django-backend-expert`, `@django-api-developer`, `@django-orm-expert`
- **Rails**: `@rails-backend-expert`, `@rails-api-developer`, `@rails-activerecord-expert`  
- **Laravel**: `@laravel-backend-expert`, `@laravel-eloquent-expert`
- **Node.js/Rust/Go**: `@backend-developer` or `@senior-backend-architect`

### Frontend Frameworks
- **React**: `@react-component-architect`, `@react-nextjs-expert`
- **Vue.js**: `@vue-component-architect`, `@vue-nuxt-expert`, `@vue-state-manager`
- **General**: `@frontend-developer` or `@senior-frontend-architect`

### Styling & Design
- **Tailwind CSS**: `@tailwind-css-expert`
- **UI/UX Design**: `@ui-ux-master`
- **General styling**: `@frontend-developer`

## Command Patterns

### Complete Projects
```bash
# Systematic approach with quality gates
claude "use @spec-orchestrator: [description]"

# Expert coordination for complex projects  
claude "use @tech-lead-orchestrator: [description]"

# One-command workflow
claude "/agent-workflow '[description]'"
```

### Specific Tasks
```bash
# Framework-specific work
claude "use @[framework-agent]: [specific task]"

# Cross-cutting concerns
claude "use @[specialist]: [focused task]"

# Analysis and review
claude "use @[analyst]: [analysis request]"
```

### With Options
```bash
# Quality threshold
claude "use @spec-orchestrator with quality threshold [75-95]: [description]"

# Phase-specific
claude "use @spec-orchestrator for [planning|development|validation] phase only: [description]"

# Skip agents
claude "use @spec-orchestrator skip @spec-analyst: [description]" # if requirements exist
```

## Quick Reference Cards

### 🚀 Starting New Project
1. **Systematic**: `@spec-orchestrator`
2. **Expert-driven**: `@tech-lead-orchestrator`
3. **Quick prototype**: `/agent-workflow` with `--quality=75`

### 🔧 Improving Existing
1. **Add features**: `@tech-lead-orchestrator`
2. **Fix performance**: `@performance-optimiser`
3. **Review code**: `@code-reviewer`
4. **Refactor**: `@refactor-agent`

### 🎨 Frontend Work
1. **React projects**: `@react-component-architect` or `@react-nextjs-expert`
2. **Vue projects**: `@vue-component-architect` or `@vue-nuxt-expert`
3. **Styling**: `@tailwind-css-expert` or `@frontend-developer`
4. **Design**: `@ui-ux-master`

### ⚙️ Backend Work  
1. **Django**: `@django-backend-expert`
2. **Rails**: `@rails-backend-expert`
3. **Laravel**: `@laravel-backend-expert`
4. **APIs**: `@api-architect`
5. **General**: `@backend-developer`

### 📊 Analysis & Quality
1. **Performance**: `@performance-optimiser`
2. **Security**: `@code-reviewer` (specify security)
3. **Legacy code**: `@code-archaeologist`
4. **Documentation**: `@documentation-specialist`

## Tips for Success

1. **Start with orchestrators** for complex tasks
2. **Be specific** about requirements and constraints
3. **Mention technology preferences** if you have them
4. **Set appropriate quality thresholds** for your needs
5. **Use specialists** for focused, specific tasks
6. **Include context** about existing codebase when relevant