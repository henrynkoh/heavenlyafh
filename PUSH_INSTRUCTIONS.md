# Push to GitHub - Instructions

## Quick Start

Run the automated script:

```bash
./fix_and_push.sh
```

The script will:
1. ✅ Verify you're in the correct directory
2. ✅ Fix xcode-select configuration (will ask for your password)
3. ✅ Verify git is working
4. ✅ Initialize git repository if needed
5. ✅ Set up correct GitHub remote (henrynkoh/heavenlyafh)
6. ✅ Create/update .gitignore
7. ✅ Stage all project files
8. ✅ Commit changes
9. ✅ Push to GitHub

## What the Script Does

### Step-by-Step Process

1. **Directory Check**: Ensures you're in `/Users/henryoh/Documents/heavenlyafh`
2. **Fix xcode-select**: Switches from missing Xcode.app to Command Line Tools
3. **Git Verification**: Confirms git is working properly
4. **Repository Setup**: Initializes git if needed
5. **Remote Configuration**: Sets/updates remote to `git@github.com:henrynkoh/heavenlyafh.git`
6. **File Staging**: Adds all project files (excludes node_modules, .next, etc.)
7. **Commit**: Creates commit with descriptive message
8. **Push**: Pushes to GitHub using SSH

## Files That Will Be Pushed

✅ **Documentation**:
- README.md
- MANUAL.md
- TUTORIAL.md
- QUICKSTART.md

✅ **Project Files**:
- app/ (all files)
- marketing/ (all files)
- package.json
- tsconfig.json
- next.config.js
- tailwind.config.ts
- postcss.config.js
- .eslintrc.json
- .gitignore

❌ **Excluded** (via .gitignore):
- node_modules/
- .next/
- .env files
- Build artifacts

## Manual Alternative

If you prefer to do it manually:

```bash
# 1. Fix xcode-select (requires password)
sudo xcode-select --switch /Library/Developer/CommandLineTools

# 2. Verify git works
git --version

# 3. Initialize git (if needed)
git init

# 4. Set remote
git remote add origin git@github.com:henrynkoh/heavenlyafh.git
# OR update if exists:
git remote set-url origin git@github.com:henrynkoh/heavenlyafh.git

# 5. Stage files
git add .

# 6. Commit
git commit -m "Initial commit: Heavenly AFH landing page"

# 7. Push
git branch -M main
git push -u origin main
```

## Troubleshooting

### If script asks for password
- This is normal for the `sudo xcode-select` command
- Enter your Mac user password when prompted

### If push fails with SSH error
- Verify your SSH keys are set up: `ssh -T git@github.com`
- Check SSH keys in GitHub: Settings → SSH and GPG keys

### If you get "permission denied"
- Make sure the script is executable: `chmod +x fix_and_push.sh`

### If wrong files are staged
- Check `.gitignore` is correct
- Review what's staged: `git status`
- Unstage if needed: `git reset`

## Verification

After running the script, verify:

1. **Check GitHub**: Visit https://github.com/henrynkoh/heavenlyafh
2. **Verify files**: All project files should be visible
3. **Check README**: Should show correct content

## Next Steps After Push

1. ✅ Verify all files are on GitHub
2. ✅ Check README displays correctly
3. ✅ Review file structure
4. ✅ Set up GitHub Pages (if needed)
5. ✅ Configure repository settings

---

**Ready?** Just run: `./fix_and_push.sh`

