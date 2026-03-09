#!/bin/bash

# ClaudeSwarm Release Verification Script
# Run this script from the dev/ directory to verify everything is ready for release

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "ClaudeSwarm Release Verification"
echo "=================================="
echo

# Count agents (recursive to catch specialized/ subdirectories)
AGENT_COUNT=$(find "$ROOT_DIR/agents" -name "*.md" -type f | wc -l | tr -d ' ')
echo "Agent Count Verification:"
echo "  Total agents found: $AGENT_COUNT"
if [ "$AGENT_COUNT" -ge 30 ]; then
    echo "  OK: Agent count ($AGENT_COUNT)"
else
    echo "  FAIL: Only $AGENT_COUNT agents found (expected 30+)"
fi
echo

# Check for development files in main directory
echo "Development File Check:"
DEV_FILES_IN_MAIN=$(find "$ROOT_DIR" -maxdepth 1 -name "TEST_*.md" -o -name "SUB_AGENT_*.md" | wc -l | tr -d ' ')
if [ "$DEV_FILES_IN_MAIN" -eq 0 ]; then
    echo "  OK: No development files in main directory"
else
    echo "  FAIL: Development files found in main directory:"
    find "$ROOT_DIR" -maxdepth 1 -name "TEST_*.md" -o -name "SUB_AGENT_*.md"
fi
echo

# Check .gitignore exists
echo ".gitignore Verification:"
if [ -f "$ROOT_DIR/.gitignore" ]; then
    echo "  OK: .gitignore exists"
else
    echo "  FAIL: .gitignore missing"
fi
echo

# Check required files exist
echo "Required Files Check:"
REQUIRED_FILES=("README.md" "LICENSE" "CLAUDE.md" "install.sh" "uninstall.sh")
for file in "${REQUIRED_FILES[@]}"; do
    if [ -f "$ROOT_DIR/$file" ]; then
        echo "  OK: $file exists"
    else
        echo "  FAIL: $file missing"
    fi
done
echo

# Check agent categories
echo "Agent Category Verification:"
for dir in orchestrators workflow core backend frontend ui-ux universal utility; do
    if [ -d "$ROOT_DIR/agents/$dir" ]; then
        count=$(find "$ROOT_DIR/agents/$dir" -name "*.md" -type f | wc -l | tr -d ' ')
        echo "  $dir: $count"
    fi
done
# Specialized has subdirectories
if [ -d "$ROOT_DIR/agents/specialized" ]; then
    count=$(find "$ROOT_DIR/agents/specialized" -name "*.md" -type f | wc -l | tr -d ' ')
    echo "  specialized (all): $count"
    for subdir in "$ROOT_DIR/agents/specialized"/*/; do
        if [ -d "$subdir" ]; then
            subcount=$(find "$subdir" -name "*.md" -type f | wc -l | tr -d ' ')
            echo "    $(basename "$subdir"): $subcount"
        fi
    done
fi
echo

# Check for YAML frontmatter in agents (recursive find)
echo "YAML Frontmatter Check:"
AGENTS_WITHOUT_YAML=0
while IFS= read -r agent; do
    if ! head -1 "$agent" | grep -q "^---$"; then
        echo "  FAIL: Missing YAML frontmatter: $agent"
        ((AGENTS_WITHOUT_YAML++))
    fi
done < <(find "$ROOT_DIR/agents" -name "*.md" -type f)

if [ "$AGENTS_WITHOUT_YAML" -eq 0 ]; then
    echo "  OK: All agents have YAML frontmatter"
else
    echo "  FAIL: $AGENTS_WITHOUT_YAML agents missing YAML frontmatter"
fi
echo

# Check tools field in frontmatter
echo "Tools Field Check:"
AGENTS_WITHOUT_TOOLS=0
while IFS= read -r agent; do
    if ! grep -q "^tools:" "$agent"; then
        echo "  FAIL: Missing tools field: $(basename "$agent")"
        ((AGENTS_WITHOUT_TOOLS++))
    fi
done < <(find "$ROOT_DIR/agents" -name "*.md" -type f)

if [ "$AGENTS_WITHOUT_TOOLS" -eq 0 ]; then
    echo "  OK: All agents have tools field"
else
    echo "  FAIL: $AGENTS_WITHOUT_TOOLS agents missing tools field"
fi
echo

# Check for duplicate agent names
echo "Duplicate Name Check:"
DUPES=$(find "$ROOT_DIR/agents" -name "*.md" -type f -exec grep -h "^name:" {} \; | sort | uniq -d)
if [ -z "$DUPES" ]; then
    echo "  OK: No duplicate agent names"
else
    echo "  FAIL: Duplicate agent names found:"
    echo "$DUPES" | while read -r line; do echo "    $line"; done
fi
echo

# Final summary
echo "Release Readiness Summary:"
echo "=================================="
ALL_GOOD=true

if [ "$AGENT_COUNT" -lt 30 ]; then
    echo "FAIL: Fix agent count issue"
    ALL_GOOD=false
fi

if [ "$DEV_FILES_IN_MAIN" -ne 0 ]; then
    echo "FAIL: Move development files to /dev/"
    ALL_GOOD=false
fi

if [ "$AGENTS_WITHOUT_YAML" -ne 0 ]; then
    echo "FAIL: Add YAML frontmatter to all agents"
    ALL_GOOD=false
fi

if [ "$AGENTS_WITHOUT_TOOLS" -ne 0 ]; then
    echo "FAIL: Add tools field to all agents"
    ALL_GOOD=false

fi

if [ -n "$DUPES" ]; then
    echo "FAIL: Fix duplicate agent names"
    ALL_GOOD=false
fi

if ! [ -f "$ROOT_DIR/.gitignore" ]; then
    echo "FAIL: Create .gitignore file"
    ALL_GOOD=false
fi

if $ALL_GOOD; then
    echo "ClaudeSwarm is ready for release!"
else
    echo "Please fix the issues above before release."
fi

echo
echo "ClaudeSwarm Release Verification Complete"
