#!/bin/bash

# Script to remove auto_activate sections from all agents
# and replace with explicit usage guidance

echo "🔄 Removing auto-activation from ClaudeSwarm agents..."
echo "=================================================="

# Find all agent files
AGENT_FILES=$(find ../agents -name "*.md" -type f)
UPDATED_COUNT=0

for agent_file in $AGENT_FILES; do
    if grep -q "auto_activate:" "$agent_file"; then
        echo "📝 Updating: $(basename "$agent_file")"
        
        # Create temporary file without auto_activate section
        awk '
        /^auto_activate:/ { 
            skip = 1
            next 
        }
        /^[a-zA-Z]/ && skip { 
            skip = 0 
        }
        !skip || /^[a-zA-Z]/ { 
            if (!skip) print 
        }
        ' "$agent_file" > "$agent_file.tmp"
        
        # Replace original file
        mv "$agent_file.tmp" "$agent_file"
        
        ((UPDATED_COUNT++))
    fi
done

echo
echo "✅ Updated $UPDATED_COUNT agent files"
echo "🔧 Manual updates still needed:"
echo "   - Update usage examples in documentation"
echo "   - Replace auto-activation examples with explicit @agent syntax"
echo "   - Update README.md and CLAUDE.md"

echo
echo "🎯 Agents now use explicit specification:"
echo "   claude 'Use @django-api-developer: Create REST API'"
echo "   claude 'Use @performance-optimizer: Fix slow queries'"
echo "   claude 'Use @tech-lead-orchestrator: Build e-commerce platform'"