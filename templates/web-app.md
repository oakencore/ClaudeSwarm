# Web Application Template

Quick commands for building common web applications with ClaudeSwarm.

## Full-Stack Web Applications

### Task Management App
```bash
claude "use @spec-orchestrator: Create a task management web application with:
- User authentication and profiles
- Project creation and management
- Task assignment and tracking
- Real-time collaboration
- Responsive design
- Email notifications"
```

### E-commerce Platform
```bash
claude "use @spec-orchestrator: Create an e-commerce platform with:
- Product catalog with categories
- Shopping cart and checkout
- User accounts and order history
- Payment integration (Stripe)
- Admin dashboard
- Inventory management"
```

### Blog Platform
```bash
claude "use @spec-orchestrator: Create a blog platform with:
- Content management system
- User authentication
- Rich text editor
- Comment system
- SEO optimisation
- Responsive design"
```

### Social Media App
```bash
claude "use @spec-orchestrator: Create a social media application with:
- User profiles and authentication
- Post creation and sharing
- Real-time messaging
- Follow/unfollow system
- Image and video upload
- Mobile-responsive design"
```

## API-First Development

### REST API
```bash
claude "use @spec-orchestrator: Create a REST API for [domain] with:
- Authentication and authorization
- CRUD operations for main entities
- Input validation and error handling
- API documentation (OpenAPI)
- Rate limiting
- Database integration"
```

### GraphQL API
```bash
claude "use @api-architect: Design a GraphQL schema for [domain]"
claude "use @spec-developer: Implement the GraphQL API based on the schema"
```

## Frontend Applications

### React Dashboard
```bash
claude "use @react-nextjs-expert: Create a React dashboard with:
- Data visualisation charts
- Real-time updates
- Responsive layout
- User authentication
- Dark/light theme
- Export functionality"
```

### Vue.js SPA
```bash
claude "use @vue-nuxt-expert: Create a Vue.js single-page application with:
- Modern component architecture
- State management (Pinia)
- Routing and navigation
- API integration
- Progressive Web App features"
```

## Backend Services

### Microservice
```bash
claude "use @senior-backend-architect: Create a microservice for [domain] with:
- RESTful API endpoints
- Database integration
- Message queue integration
- Health checks and metrics
- Docker containerisation
- Comprehensive testing"
```

### Authentication Service
```bash
claude "use @tech-lead-orchestrator: Build an authentication service with:
- JWT token management
- OAuth2 integration
- Role-based permissions
- Password reset functionality
- Rate limiting
- Audit logging"
```

## Quick Improvements

### Performance Optimisation
```bash
claude "use @performance-optimiser: Analyse and optimise:
- Database query performance
- API response times
- Frontend bundle size
- Memory usage
- Caching strategies"
```

### Security Audit
```bash
claude "use @code-reviewer: Comprehensive security review focusing on:
- Authentication vulnerabilities
- Input validation
- SQL injection prevention
- XSS protection
- Dependency security"
```

### Legacy System Analysis
```bash
claude "use @code-archaeologist: Document and analyse this [language] codebase:
- Architecture overview
- Code quality assessment
- Modernisation recommendations
- Technical debt analysis
- Migration strategy"
```

## Usage Tips

1. **Be Specific**: Include detailed requirements in your requests
2. **Start Simple**: Begin with core features, then add complexity
3. **Use Quality Thresholds**: Specify quality level (75% for prototypes, 95% for production)
4. **Technology Choice**: Mention preferred frameworks if you have them
5. **Timeline**: Include urgency or timeline constraints

## Example with Options

```bash
claude "use @spec-orchestrator with quality threshold 90: Create a project management tool with:
- User authentication (OAuth preferred)
- Project and task management
- Real-time collaboration via WebSocket
- File upload and sharing
- Email notifications
- Mobile-responsive design
- Tech stack: React + Node.js + PostgreSQL
- Timeline: MVP in 2 weeks"
```