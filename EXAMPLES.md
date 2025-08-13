# ClaudeSwarm Usage Examples

Real-world examples of using ClaudeSwarm agents for common development tasks.

## 🚀 Complete Web Applications

### Task Management App
```bash
claude "use @spec-orchestrator: Create a task management web application with user authentication, project creation, task assignment, real-time collaboration, and email notifications"
```

### E-commerce Store
```bash
claude "use @spec-orchestrator: Create an e-commerce platform with product catalog, shopping cart, payment integration (Stripe), user accounts, and admin dashboard"
```

### Blog Platform
```bash
claude "use @spec-orchestrator: Create a blog CMS with user authentication, rich text editor, comment system, SEO optimisation, and responsive design"
```

## 🔧 API Development

### REST API
```bash
claude "use @spec-orchestrator: Create a REST API for inventory management with authentication, CRUD operations, input validation, rate limiting, and OpenAPI documentation"
```

### GraphQL API
```bash
claude "use @api-architect: Design a GraphQL schema for a social media platform"
claude "use @spec-developer: Implement the GraphQL API with authentication and real-time subscriptions"
```

## 🎨 Frontend Development

### React Dashboard
```bash
claude "use @react-nextjs-expert: Create a React analytics dashboard with data visualization, real-time updates, responsive layout, and dark/light themes"
```

### Vue.js SPA
```bash
claude "use @vue-nuxt-expert: Create a Vue.js booking application with calendar integration, payment processing, and mobile-responsive design"
```

## ⚙️ Backend Services

### Authentication Service
```bash
claude "use @tech-lead-orchestrator: Build a microservice for user authentication with JWT tokens, OAuth2 integration, role-based permissions, and audit logging"
```

### File Upload Service
```bash
claude "use @senior-backend-architect: Create a file upload service with cloud storage (AWS S3), image processing, virus scanning, and CDN integration"
```

## 🔍 Code Analysis & Improvement

### Performance Optimisation
```bash
claude "use @performance-optimiser: Analyse my Django application and optimise database queries, API response times, and memory usage"
```

### Security Review
```bash
claude "use @code-reviewer: Comprehensive security audit focusing on authentication, input validation, SQL injection prevention, and dependency vulnerabilities"
```

### Legacy System Analysis
```bash
claude "use @code-archaeologist: Document this inherited PHP e-commerce system, analyse code quality, and recommend modernisation strategy"
```

## 🏗️ System Architecture

### Microservices Design
```bash
claude "use @senior-backend-architect: Design a microservices architecture for an e-learning platform with user service, content service, payment service, and notification service"
```

### Database Design
```bash
claude "use @spec-architect: Design a database schema for a multi-tenant SaaS application with user management, billing, and feature flags"
```

## 🧪 Testing & Quality

### Test Suite Creation
```bash
claude "use @spec-tester: Create comprehensive unit, integration, and E2E tests for my React e-commerce application with 90% coverage"
```

### Code Quality Improvement
```bash
claude "use @refactor-agent: Refactor this monolithic Express.js application into clean, modular components with proper separation of concerns"
```

## 📱 Mobile Development

### React Native App
```bash
claude "use @tech-lead-orchestrator: Build a React Native fitness tracking app with offline sync, push notifications, and biometric authentication"
```

### PWA Development
```bash
claude "use @frontend-developer: Convert my existing web app into a Progressive Web App with offline functionality and push notifications"
```

## 🔐 DevOps & Deployment

### CI/CD Pipeline
```bash
claude "use @tech-lead-orchestrator: Set up CI/CD pipeline with GitHub Actions for my Node.js application including testing, security scanning, and Docker deployment"
```

### Infrastructure Setup
```bash
claude "use @senior-backend-architect: Design AWS infrastructure for a high-traffic web application with load balancing, auto-scaling, and monitoring"
```

## 🎯 Framework-Specific Examples

### Django Projects
```bash
# Full Django application
claude "use @django-backend-expert: Create a Django blog with user authentication, admin interface, and REST API"

# Django API optimization
claude "use @django-orm-expert: Optimise these complex Django ORM queries and implement proper caching"

# Django REST API
claude "use @django-api-developer: Build a Django REST API with token authentication, serializers, and pagination"
```

### Rails Projects
```bash
# Rails web application
claude "use @rails-backend-expert: Create a Rails project management tool with user roles, project tracking, and reporting"

# Rails API performance
claude "use @rails-activerecord-expert: Optimise ActiveRecord queries and implement efficient database relationships"
```

### React Projects
```bash
# React component library
claude "use @react-component-architect: Create a reusable React component library with TypeScript, Storybook, and comprehensive testing"

# Next.js application
claude "use @react-nextjs-expert: Build a Next.js e-commerce site with SSG, API routes, and payment integration"
```

### Vue Projects
```bash
# Vue 3 application
claude "use @vue-component-architect: Create a Vue 3 project dashboard with Composition API, Pinia state management, and TypeScript"

# Nuxt.js application
claude "use @vue-nuxt-expert: Build a Nuxt.js content management system with SSR, authentication, and file uploads"
```

## 🎛️ Advanced Usage Patterns

### Quality Threshold Control
```bash
# Enterprise quality (95%)
claude "use @spec-orchestrator with quality threshold 95: Create banking application with multi-factor authentication"

# Rapid prototyping (75%)
claude "use @spec-orchestrator with quality threshold 75: Create quick MVP for user feedback"
```

### Phase-Specific Development
```bash
# Planning only
claude "use @spec-orchestrator for planning phase only: Design architecture for social media platform"

# Implementation with existing requirements
claude "use @spec-developer: Implement user authentication based on docs/requirements.md"

# Validation only
claude "use @spec-orchestrator for validation phase: Review and validate existing codebase for production readiness"
```

### Multi-Agent Workflows
```bash
# Complex feature addition
claude "use @tech-lead-orchestrator: Add real-time chat feature to existing React/Node.js application with WebSocket, message persistence, and file sharing"

# Performance and security review
claude "use @performance-optimiser: Analyse application performance"
# Then follow up with:
claude "use @code-reviewer: Security audit focusing on chat feature and file uploads"
```

## 💡 Pro Tips

### 1. Be Specific with Requirements
```bash
# Good: Detailed requirements
claude "use @spec-orchestrator: Create todo app with drag-and-drop task organisation, deadline reminders, team collaboration, and mobile sync"

# Better: Include technical preferences
claude "use @spec-orchestrator: Create todo app using React/TypeScript frontend, Node.js/Express backend, PostgreSQL database, with drag-and-drop, deadlines, team features, and mobile sync"
```

### 2. Use Appropriate Quality Levels
- **75%**: Quick prototypes, MVPs, proof of concepts
- **85%**: Production applications, internal tools
- **95%**: Enterprise applications, financial systems, high-stakes projects

### 3. Technology-Specific Requests
```bash
# Leverage framework expertise
claude "use @django-backend-expert: Add Django admin customisation and bulk operations"

# Cross-platform with preferences
claude "use @backend-developer: Create REST API preferring Rust/Axum for high performance requirements"
```

### 4. Iterative Development
```bash
# Start with core features
claude "use @spec-orchestrator: Create basic user authentication and profile management"

# Then extend
claude "use @tech-lead-orchestrator: Add OAuth integration and two-factor authentication to existing user system"
```

### 5. Context-Aware Requests
```bash
# Include existing codebase context
claude "use @code-archaeologist: Analyse this Ruby on Rails 5 application and create modernisation plan for Rails 7"

# Reference existing documentation
claude "use @spec-developer: Implement payment processing based on the API specification in docs/api-spec.yml"
```

These examples showcase the flexibility and power of ClaudeSwarm agents for real-world development scenarios. Start with these patterns and adapt them to your specific needs!