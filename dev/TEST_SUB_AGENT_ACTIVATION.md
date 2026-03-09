# ClaudeSwarm Sub-Agent Activation Testing

Test various natural language inputs to verify auto-activation works correctly.

## Test Cases

### 1. Django Development
**Input**: "Create Django REST API with authentication"
**Expected**: `django-api-developer`  
**Keywords**: django, REST, API, authentication

### 2. Performance Issues
**Input**: "The application is running slow and needs optimization"
**Expected**: `performance-optimizer`
**Keywords**: slow, optimization

### 3. Multi-Step Projects  
**Input**: "Build e-commerce platform with Django backend and React frontend"
**Expected**: `tech-lead-orchestrator`
**Keywords**: multi-step implied, coordinate, architecture

### 4. Code Quality
**Input**: "Review this code before merging to main branch"  
**Expected**: `code-reviewer`
**Keywords**: review, merge

### 5. Project Analysis
**Input**: "Analyze this unfamiliar codebase and detect the framework"
**Expected**: `project-analyst`  
**Keywords**: analyze codebase, detect framework

### 6. React/Next.js Development
**Input**: "Build Next.js app with server-side rendering"
**Expected**: `react-nextjs-expert`
**Keywords**: next.js, ssr

### 7. General Backend (Fallback)
**Input**: "Create backend API endpoints"  
**Expected**: `backend-developer` (fallback when no specific framework)
**Keywords**: backend, api

### 8. Team Setup
**Input**: "Configure AI team for this project"
**Expected**: `team-configurator`
**Keywords**: configure team, project

### 9. Systematic Development
**Input**: "Follow systematic development process with quality gates"  
**Expected**: `spec-orchestrator`
**Keywords**: systematic, quality gates, process

### 10. Frontend Development
**Input**: "Build responsive user interface with accessibility"
**Expected**: `frontend-developer`
**Keywords**: ui, responsive, accessibility

## Validation Process

To test these patterns:

1. Use each test input as a natural language prompt
2. Observe which agent(s) are suggested/activated  
3. Verify the selection matches expected agent
4. Check that keywords trigger appropriate auto-activation
5. Confirm fallback hierarchy works (specific → general)

## Expected Auto-Activation Behavior

### High Priority Triggers
- **Orchestrators** should activate for complex/multi-step tasks
- **Framework specialists** should activate over universal agents
- **Code reviewer** should trigger on merge/review keywords

### Keyword Matching
- Django keywords → Django specialists
- Performance keywords → Performance optimizer
- Review keywords → Code reviewer
- Architecture/coordination → Tech lead orchestrator

### Context Sensitivity  
- Multiple technologies → Orchestrator coordination
- Single technology → Specific specialist
- Unknown/generic → Universal fallback

## Success Criteria

✅ **Automatic Selection**: Agents activate without explicit `@agent` syntax
✅ **Correct Matching**: Keywords trigger appropriate specialists  
✅ **Smart Fallbacks**: Specific agents preferred over general ones
✅ **Orchestration**: Multi-step tasks route to orchestrators
✅ **Context Awareness**: Technology context influences selection

## Known Limitations

- Keywords must be present in natural language input
- Complex scenarios may require explicit orchestrator mention
- Fallback behavior depends on keyword strength matching
- Context persistence may need explicit mention across turns

## Usage Examples

### ✅ Good Patterns
```
"Create Django REST API with authentication and testing"
"Optimize PostgreSQL queries in the user service"  
"Build React components for the dashboard"
"Review security before production deployment"
```

### ❌ Patterns Needing Improvement  
```
"Fix the thing" (too vague)
"Make it work" (no context)
"Update code" (no technology context)
```

### 🔧 Enhanced Patterns
```  
"Fix Django serialization issue in user API"
"Make React component render faster" 
"Update Node.js authentication middleware"
```

This testing framework ensures ClaudeSwarm's Sub-Agent auto-activation works as intended with natural language inputs.