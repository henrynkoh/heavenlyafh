#!/bin/bash

# Script to push to GitHub (assumes xcode-select is already fixed)
# Heavenly AFH Project

set -e  # Exit on error

echo "=========================================="
echo "Heavenly AFH - Push to GitHub"
echo "=========================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Step 1: Check current directory
echo -e "${YELLOW}Step 1: Checking current directory...${NC}"
CURRENT_DIR=$(pwd)
echo "Current directory: $CURRENT_DIR"

if [[ "$CURRENT_DIR" != *"heavenlyafh"* ]]; then
    echo -e "${RED}ERROR: Not in heavenlyafh directory!${NC}"
    echo "Please run this script from: /Users/henryoh/Documents/heavenlyafh"
    exit 1
fi
echo -e "${GREEN}✓ Directory is correct${NC}"
echo ""

# Step 2: Verify git works
echo -e "${YELLOW}Step 2: Verifying git...${NC}"
if /usr/bin/git --version > /dev/null 2>&1; then
    GIT_VERSION=$(/usr/bin/git --version)
    echo -e "${GREEN}✓ Git is working: $GIT_VERSION${NC}"
else
    echo -e "${RED}✗ Git is not working${NC}"
    echo "You may need to fix xcode-select first:"
    echo "  sudo xcode-select --switch /Library/Developer/CommandLineTools"
    exit 1
fi
echo ""

# Step 3: Check git status
echo -e "${YELLOW}Step 3: Checking git repository status...${NC}"
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    /usr/bin/git init
    echo -e "${GREEN}✓ Git repository initialized${NC}"
else
    echo -e "${GREEN}✓ Git repository already exists${NC}"
fi
echo ""

# Step 4: Check remote
echo -e "${YELLOW}Step 4: Checking git remote...${NC}"
REMOTE_URL=$(/usr/bin/git remote get-url origin 2>/dev/null || echo "none")

if [[ "$REMOTE_URL" == "none" ]]; then
    echo "Setting up remote repository..."
    /usr/bin/git remote add origin git@github.com:henrynkoh/heavenlyafh.git
    echo -e "${GREEN}✓ Remote added: git@github.com:henrynkoh/heavenlyafh.git${NC}"
else
    echo "Current remote: $REMOTE_URL"
    if [[ "$REMOTE_URL" != *"henrynkoh/heavenlyafh"* ]]; then
        echo "Updating remote URL..."
        /usr/bin/git remote set-url origin git@github.com:henrynkoh/heavenlyafh.git
        echo -e "${GREEN}✓ Remote updated${NC}"
    else
        echo -e "${GREEN}✓ Remote is correct${NC}"
    fi
fi
echo ""

# Step 5: Create/update .gitignore if needed
echo -e "${YELLOW}Step 5: Checking .gitignore...${NC}"
if [ ! -f ".gitignore" ]; then
    echo "Creating .gitignore..."
    cat > .gitignore << 'EOF'
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# next.js
/.next/
/out/

# production
/build

# misc
.DS_Store
*.pem

# debug
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# local env files
.env*.local

# vercel
.vercel

# typescript
*.tsbuildinfo
next-env.d.ts
EOF
    echo -e "${GREEN}✓ .gitignore created${NC}"
else
    echo -e "${GREEN}✓ .gitignore exists${NC}"
fi
echo ""

# Step 6: Show git status
echo -e "${YELLOW}Step 6: Current git status...${NC}"
/usr/bin/git status
echo ""

# Step 7: Stage all project files
echo -e "${YELLOW}Step 7: Staging files...${NC}"
echo "Adding all project files..."

# Add files explicitly to avoid including unwanted files
/usr/bin/git add .gitignore
/usr/bin/git add README.md
/usr/bin/git add MANUAL.md
/usr/bin/git add TUTORIAL.md
/usr/bin/git add QUICKSTART.md
/usr/bin/git add package.json
/usr/bin/git add package-lock.json
/usr/bin/git add tsconfig.json
/usr/bin/git add next.config.js
/usr/bin/git add tailwind.config.ts
/usr/bin/git add postcss.config.js
/usr/bin/git add .eslintrc.json
/usr/bin/git add app/
/usr/bin/git add marketing/
/usr/bin/git add fix_and_push.sh
/usr/bin/git add push_to_github.sh
/usr/bin/git add PUSH_INSTRUCTIONS.md
/usr/bin/git add RUN_IN_TERMINAL.md

echo -e "${GREEN}✓ Files staged${NC}"
echo ""

# Step 8: Show what will be committed
echo -e "${YELLOW}Step 8: Files to be committed...${NC}"
/usr/bin/git status --short
echo ""

# Step 9: Commit
echo -e "${YELLOW}Step 9: Committing changes...${NC}"
if /usr/bin/git diff --cached --quiet; then
    echo "No changes to commit."
    echo "Checking if we need to push existing commits..."
else
    /usr/bin/git commit -m "Initial commit: Heavenly AFH landing page with documentation and marketing materials

- Next.js landing page with 10 scrollable sections
- Complete documentation (README, MANUAL, TUTORIAL, QUICKSTART)
- Marketing materials for all platforms (Facebook, Instagram, Threads, Blogs, Email)
- All project files and configurations"
    echo -e "${GREEN}✓ Changes committed${NC}"
fi
echo ""

# Step 10: Push to GitHub
echo -e "${YELLOW}Step 10: Pushing to GitHub...${NC}"
echo "Repository: henrynkoh/heavenlyafh"
echo ""

# Check current branch
CURRENT_BRANCH=$(/usr/bin/git branch --show-current 2>/dev/null || echo "none")
if [[ "$CURRENT_BRANCH" == "none" ]]; then
    /usr/bin/git branch -M main
    CURRENT_BRANCH="main"
fi

echo "Pushing to origin/$CURRENT_BRANCH..."
if /usr/bin/git push -u origin $CURRENT_BRANCH; then
    echo -e "${GREEN}✓ Successfully pushed to GitHub!${NC}"
else
    echo -e "${RED}✗ Push failed. Possible issues:${NC}"
    echo "  1. SSH keys not set up - run: ssh -T git@github.com"
    echo "  2. No push access to repository"
    echo "  3. Need to pull first: git pull origin $CURRENT_BRANCH --allow-unrelated-histories"
    echo ""
    echo "If you need to force push (use with caution):"
    echo "  git push -u origin $CURRENT_BRANCH --force"
    exit 1
fi

echo ""
echo "=========================================="
echo -e "${GREEN}✓ All done!${NC}"
echo "=========================================="
echo "Your repository is now available at:"
echo "https://github.com/henrynkoh/heavenlyafh"
echo ""

