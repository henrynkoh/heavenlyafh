# How to Run the Script

## The Password Needed

The script needs your **Mac user account password** (the same password you use to log into your Mac).

## How to Run

1. **Open Terminal** (Applications → Utilities → Terminal)

2. **Navigate to the project directory:**
   ```bash
   cd /Users/henryoh/Documents/heavenlyafh
   ```

3. **Run the script:**
   ```bash
   ./fix_and_push.sh
   ```

4. **When prompted for password:**
   - The script will ask: `Password:` (or `[sudo] password for henryoh:`)
   - Type your Mac login password
   - **Note**: The password won't show on screen (this is normal for security)
   - Press Enter

5. **The script will continue automatically** after you enter the password

## What Happens

The script will:
- Fix xcode-select (needs your password)
- Set up git
- Stage all files
- Commit changes
- Push to GitHub

## Alternative: Manual Steps

If you prefer not to use sudo, you can:

1. **First, fix xcode-select manually in Terminal:**
   ```bash
   sudo xcode-select --switch /Library/Developer/CommandLineTools
   ```
   (Enter your password when prompted)

2. **Then run the rest of the script:**
   ```bash
   ./fix_and_push.sh
   ```

   Or I can create a version of the script that skips the sudo step if you've already fixed it.

