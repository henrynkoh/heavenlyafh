#!/bin/bash

# Script to fix xcode-select issue and push to GitHub
# Heavenly AFH Project

set -e  # Exit on error

echo "=========================================="
echo "Heavenly AFH - Fix & Push Script"
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

# Step 2: Fix xcode-select
echo -e "${YELLOW}Step 2: Fixing xcode-select configuration...${NC}"
CURRENT_PATH=$(xcode-select -p 2>&1 || echo "error")

if [[ "$CURRENT_PATH" == *"Xcode.app"* ]] && [ ! -d "/Applications/Xcode.app" ]; then
    echo "Xcode.app not found, but xcode-select points to it."
    echo "Switching to Command Line Tools..."
    sudo xcode-select --switch /Library/Developer/CommandLineTools
    
    # Verify
    NEW_PATH=$(xcode-select -p)
    if [[ "$NEW_PATH" == *"CommandLineTools"* ]]; then
        echo -e "${GREEN}✓ xcode-select fixed successfully${NC}"
    else
        echo -e "${RED}✗ Failed to fix xcode-select${NC}"
        exit 1
    fi
else
    echo -e "${GREEN}✓ xcode-select is already configured correctly${NC}"
fi
echo ""

# Step 3: Verify git works
echo -e "${YELLOW}Step 3: Verifying git...${NC}"
if git --version > /dev/null 2>&1; then
    GIT_VERSION=$(git --version)
    echo -e "${GREEN}✓ Git is working: $GIT_VERSION${NC}"
else
    echo -e "${RED}✗ Git is not working${NC}"
    exit 1
fi
echo ""

# Step 4: Check git status
echo -e "${YELLOW}Step 4: Checking git repository status...${NC}"
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
    echo -e "${GREEN}✓ Git repository initialized${NC}"
else
    echo -e "${GREEN}✓ Git repository already exists${NC}"
fi
echo ""

# Step 5: Check remote
echo -e "${YELLOW}Step 5: Checking git remote...${NC}"
REMOTE_URL=$(git remote get-url origin 2>/dev/null || echo "none")

if [[ "$REMOTE_URL" == "none" ]]; then
    echo "Setting up remote repository..."
    git remote add origin git@github.com:henrynkoh/heavenlyafh.git
    echo -e "${GREEN}✓ Remote added: git@github.com:henrynkoh/heavenlyafh.git${NC}"
else
    echo "Current remote: $REMOTE_URL"
    if [[ "$REMOTE_URL" != *"henrynkoh/heavenlyafh"* ]]; then
        echo "Updating remote URL..."
        git remote set-url origin git@github.com:henrynkoh/heavenlyafh.git
        echo -e "${GREEN}✓ Remote updated${NC}"
    else
        echo -e "${GREEN}✓ Remote is correct${NC}"
    fi
fi
echo ""

# Step 6: Check what files exist
echo -e "${YELLOW}Step 6: Checking project files...${NC}"
echo "Files in current directory:"
ls -la | grep -v "^d" | grep -v "^total" | head -20
echo ""

# Step 7: Create/update .gitignore if needed
echo -e "${YELLOW}Step 7: Checking .gitignore...${NC}"
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

# Step 8: Show git status
echo -e "${YELLOW}Step 8: Current git status...${NC}"
git status
echo ""

# Step 9: Stage all project files
echo -e "${YELLOW}Step 9: Staging files...${NC}"
echo "Adding all project files..."

# Add files explicitly to avoid including unwanted files
git add .gitignore
git add README.md
git add MANUAL.md
git add TUTORIAL.md
git add QUICKSTART.md
git add package.json
git add package-lock.json
git add tsconfig.json
git add next.config.js
git add tailwind.config.ts
git add postcss.config.js
git add .eslintrc.json
git add app/
git add marketing/

echo -e "${GREEN}✓ Files staged${NC}"
echo ""

# Step 10: Show what will be committed
echo -e "${YELLOW}Step 10: Files to be committed...${NC}"
git status --short
echo ""

# Step 11: Commit
echo -e "${YELLOW}Step 11: Committing changes...${NC}"
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    git commit -m "Initial commit: Heavenly AFH landing page with documentation and marketing materials

- Next.js landing page with 10 scrollable sections
- Complete documentation (README, MANUAL, TUTORIAL, QUICKSTART)
- Marketing materials for all platforms (Facebook, Instagram, Threads, Blogs, Email)
- All project files and configurations"
    echo -e "${GREEN}✓ Changes committed${NC}"
fi
echo ""

# Step 11: Push to GitHub
echo -e "${YELLOW}Step 12: Pushing to GitHub...${NC}"
echo "Repository: henrynkoh/heavenlyafh"
echo "Branch: main (or master)"
echo ""

# Check current branch
CURRENT_BRANCH=$(git branch --show-current 2>/dev/null || echo "none")
if [[ "$CURRENT_BRANCH" == "none" ]]; then
    git branch -M main
    CURRENT_BRANCH="main"
fi

echo "Pushing to origin/$CURRENT_BRANCH..."
if git push -u origin $CURRENT_BRANCH; then
    echo -e "${GREEN}✓ Successfully pushed to GitHub!${NC}"
else
    echo -e "${RED}✗ Push failed. You may need to:${NC}"
    echo "  1. Check your SSH keys are set up correctly"
    echo "  2. Verify you have push access to the repository"
    echo "  3. Try: git push -u origin $CURRENT_BRANCH --force (if needed)"
    exit 1
fi

echo ""
echo "=========================================="
echo -e "${GREEN}✓ All done!${NC}"
echo "=========================================="
echo "Your repository is now available at:"
echo "https://github.com/henrynkoh/heavenlyafh"
echo ""

