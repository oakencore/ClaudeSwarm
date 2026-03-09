# How to Verify Auto-Activation Works

## 🔍 **Visual Indicators of Auto-Activation**

When you run:
```bash
claude "Create Django REST API with user authentication"
```

### **What You Should See:**

#### **1. Agent Selection in Response**
Claude should mention which agent it's using:
```
I'll use the django-api-developer agent to create a Django REST API...
```

#### **2. Agent-Specific Knowledge**
The response should show Django-specific expertise:
- Mentions Django REST Framework (DRF)
- Discusses serializers, viewsets, permissions
- References Django-specific patterns
- Shows knowledge of Django authentication

#### **3. Specialized Output Format**
Django agents should provide Django-specific structure:
```
## Django API Implementation

### Models Created:
- User model extensions
- Authentication models

### Serializers:
- UserSerializer with validation
- LoginSerializer for authentication

### ViewSets:
- UserViewSet with proper permissions
- AuthenticationViewSet
```

## 🚨 **Signs Auto-Activation ISN'T Working**

#### **❌ Generic Responses**
If you see:
- Generic backend advice without Django specifics
- No mention of DRF, serializers, or Django patterns
- Basic REST API concepts without framework specifics

#### **❌ No Agent Mention**
- No reference to using a specific agent
- Generic language like "I'll help you create an API"
- No Django-specific terminology

## 🧪 **Test Cases to Verify**

### **Test 1: Django Specialist**
```bash
claude "Create Django REST API with JWT authentication and user permissions"
```
**Expected**: Should activate `django-api-developer`
**Look for**: DRF, serializers, viewsets, JWT tokens, Django permissions

### **Test 2: Performance Optimizer**
```bash
claude "The application is running slowly and database queries are taking too long"
```
**Expected**: Should activate `performance-optimizer`
**Look for**: Query optimization, profiling, caching strategies, database indexes

### **Test 3: Code Reviewer**
```bash
claude "Please review this code before I merge it to the main branch"
```
**Expected**: Should activate `code-reviewer`
**Look for**: Security check, code quality metrics, best practices review

### **Test 4: Tech Lead Orchestrator**
```bash
claude "Build an e-commerce platform with Django backend, React frontend, and payment integration"
```
**Expected**: Should activate `tech-lead-orchestrator`
**Look for**: Task breakdown, agent assignment, coordination plan

## 🔍 **Detailed Verification Steps**

### **Step 1: Check Agent Response Pattern**
Look for these phrases in responses:
- "I'll use the [agent-name] to..."
- "As a [Django/React/etc.] specialist..."
- "Using my expertise in [specific technology]..."

### **Step 2: Verify Technical Depth**
- **Django Agent**: Should mention models, serializers, viewsets, DRF
- **React Agent**: Should mention components, hooks, state management
- **Performance Agent**: Should mention profiling, optimization, metrics

### **Step 3: Check Output Structure**
Agents should follow their specific output formats:
- Django agents: Models → Serializers → Views → URLs
- React agents: Components → Props → State → Testing
- Performance agents: Analysis → Bottlenecks → Solutions → Metrics

## 🎯 **Quick Verification Commands**

### **Immediate Feedback Test**
```bash
# This should be very obvious if working correctly
claude "Debug Django ORM query performance issues with PostgreSQL"
```
**Should activate**: `django-orm-expert` or `performance-optimizer`
**Should mention**: Django ORM, query optimization, PostgreSQL specifics

### **Fallback Test**
```bash
# Test with unknown framework
claude "Create API endpoints using Fastify.js framework"
```
**Should activate**: `backend-developer` (universal fallback)
**Should mention**: General API patterns, not framework-specific

## 🔧 **Troubleshooting Non-Working Auto-Activation**

### **If Auto-Activation Seems Broken:**

1. **Check Keywords**: Make sure your prompt includes the trigger keywords
   ```bash
   # Instead of: "Make an API"
   # Try: "Create Django REST API with authentication"
   ```

2. **Be More Specific**:
   ```bash
   # Instead of: "Fix the performance"
   # Try: "Optimize slow database queries and improve response times"
   ```

3. **Verify Agent Installation**:
   ```bash
   ls ~/.claude/agents/specialized/django/
   # Should show: django-api-developer.md, django-backend-expert.md, etc.
   ```

4. **Check YAML Frontmatter**:
   ```bash
   head -20 ~/.claude/agents/specialized/django/django-api-developer.md
   # Should show proper YAML with keywords and auto_activate section
   ```

## 📋 **Expected vs Actual Response Examples**

### **Good Auto-Activation Response:**
```
I'll use the django-api-developer agent to create a comprehensive Django REST API with user authentication.

## Django REST API Implementation

### 1. User Model Extension
```python
# models.py
from django.contrib.auth.models import AbstractUser
...
```

### **Poor/No Auto-Activation Response:**
```
I can help you create a REST API. Here's a general approach:

1. Set up your backend framework
2. Create user models
3. Add authentication
...
```

## ✅ **Success Confirmation**

Auto-activation is working correctly when:
- [ ] Specific agents are mentioned by name
- [ ] Responses show deep framework knowledge
- [ ] Output follows agent-specific patterns
- [ ] Technical terminology matches the framework
- [ ] No generic "I'll help you" responses

If you see all these indicators, your ClaudeSwarm auto-activation is working perfectly! 🎉