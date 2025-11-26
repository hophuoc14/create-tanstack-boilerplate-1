#!/bin/bash

# Demo script to test the CLI tool

echo "🧪 Testing Create TanStack Boilerplate CLI"
echo ""
echo "This will create a test project with the following configuration:"
echo "  - Project name: test-app"
echo "  - Package manager: pnpm"
echo "  - Features: i18n, ui, quality"
echo "  - Languages: en, vi"
echo "  - Base locale: en"
echo "  - Init git: yes"
echo ""

# Run the CLI with predefined answers
node index.js << EOF
test-debug
pnpm
 
yes
EOF
