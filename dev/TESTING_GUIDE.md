# ClaudeSwarm Testing Guide

How to test ClaudeSwarm in a clean environment before GitHub release.

## 🧪 Testing Strategy

### 1. **Clean Environment Test**
Test the complete user experience from scratch:

```bash
# Create a test directory
mkdir ~/ClaudeSwarm-Test
cd ~/ClaudeSwarm-Test

# Clone your repository (simulate user experience)
git clone /Users/nathan/ClaudeSwarm ./ClaudeSwarm-Fresh
cd ClaudeSwarm-Fresh

# Test installation
./install.sh

# Verify installation worked
ls ~/.claude/agents/ | head -10
```

### 2. **Agent Testing in Test Project**
Create a sample project to test agents:

```bash
# Create test project
mkdir ~/test-project
cd ~/test-project

# Initialize basic project files
echo '# Test Project' > README.md
echo 'console.log("Hello World");' > app.js
echo '{"name": "test-project", "version": "1.0.0"}' > package.json

# Test team configuration
claude "use @team-configurator: Setup ClaudeSwarm for this project"

# Test auto-activation
claude "Create Django REST API with authentication"
# Should auto-activate: django-api-developer

claude "Optimize slow database queries"  
# Should auto-activate: performance-optimizer

claude "Review this code before merging"
# Should auto-activate: code-reviewer
```

### 3. **Orchestrator Testing**
Test complex coordination scenarios:

```bash
# Test multi-step orchestration
claude "Build e-commerce platform with Django backend and React frontend"
# Should auto-activate: tech-lead-orchestrator

# Test systematic development
claude "Create task management web application with quality gates"
# Should auto-activate: spec-orchestrator

# Test project analysis
claude "Analyze this unfamiliar codebase and detect frameworks"
# Should auto-activate: project-analyst
```

## 🔍 Validation Checklist

### Installation Verification
- [ ] `install.sh` runs without errors
- [ ] All 35 agents copied to `~/.claude/agents/`
- [ ] Directory structure preserved
- [ ] No development files included

### Agent Auto-Activation Testing
- [ ] Django keywords trigger `django-api-developer`
- [ ] Performance keywords trigger `performance-optimizer`
- [ ] Review keywords trigger `code-reviewer`
- [ ] Multi-step tasks trigger `tech-lead-orchestrator`
- [ ] Quality gates trigger `spec-orchestrator`

### Documentation Accuracy
- [ ] All agent references work correctly
- [ ] Example commands execute successfully
- [ ] Agent counts match reality (35 total)
- [ ] No broken links or missing files

### Sub-Agent Features
- [ ] YAML frontmatter loads correctly
- [ ] Auto-activation keywords work
- [ ] Agent categories recognized
- [ ] Tool specifications valid
- [ ] Complexity levels appropriate

## 🚨 Common Issues to Check

### Installation Problems
- **Permissions**: Ensure `install.sh` is executable
- **Directory conflicts**: Check if `~/.claude/agents/` already exists
- **File copying**: Verify all agents copied successfully

### Agent Selection Issues
- **Keyword matching**: Test with various phrasings
- **Fallback behavior**: Verify universal agents activate when needed
- **Orchestrator routing**: Confirm complex tasks route correctly

### Sub-Agent Integration
- **YAML parsing**: Check frontmatter syntax is valid
- **Auto-activation**: Verify keywords trigger appropriately
- **Category recognition**: Ensure categories work in Claude Code

## 📝 Test Cases

### Basic Agent Selection
```bash
# Test 1: Specific framework detection
claude "Create Django models for user management"
# Expected: django-backend-expert or django-orm-expert

# Test 2: Performance optimization
claude "The application is too slow and uses too much memory"
# Expected: performance-optimizer

# Test 3: Code quality
claude "Please review this pull request before merging to main"
# Expected: code-reviewer
```

### Orchestration Testing  
```bash
# Test 4: Multi-technology coordination
claude "Build REST API with Django, add React frontend, deploy with Docker"
# Expected: tech-lead-orchestrator → coordinates multiple agents

# Test 5: Systematic development
claude "Create blog platform following best practices with testing"
# Expected: spec-orchestrator → follows workflow phases
```

### Fallback Behavior
```bash
# Test 6: Unknown framework fallback
claude "Create backend API endpoints using Fastify framework"
# Expected: backend-developer (universal fallback)

# Test 7: Generic frontend request
claude "Build responsive user interface"
# Expected: frontend-developer (universal fallback)
```

## 🎯 Success Criteria

### ✅ Installation Success
- All agents available in Claude Code
- No error messages during setup
- Clean file structure maintained

### ✅ Agent Functionality
- Auto-activation works with natural language
- Appropriate specialists selected over generic agents
- Orchestrators coordinate multi-step tasks effectively

### ✅ User Experience
- Documentation clear and accurate
- Examples work as described
- No confusing or broken workflows

### ✅ Sub-Agent Integration
- YAML frontmatter recognized by Claude Code
- Keywords trigger automatic activation
- Agent metadata displays correctly

## 🔧 Debugging Tips

### If Auto-Activation Doesn't Work
1. Check YAML frontmatter syntax in agents
2. Verify keywords are present in natural language input
3. Ensure Claude Code recognizes Sub-Agent format
4. Test with more explicit keywords

### If Installation Fails
1. Check file permissions on `install.sh`
2. Verify `~/.claude/agents/` directory exists
3. Look for path or copying errors
4. Test with manual agent copying

### If Agents Don't Load
1. Validate YAML frontmatter syntax
2. Check agent file encoding (should be UTF-8)
3. Verify file extensions are `.md`
4. Ensure no corrupted files

## 📋 Final Test Report

After testing, document:
- Which features work correctly
- Any bugs or issues found
- Suggested improvements
- User experience feedback

This comprehensive testing ensures ClaudeSwarm works perfectly for end users before GitHub release.