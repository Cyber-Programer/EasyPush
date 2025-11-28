# EasyPush

A simple bash script to automate pushing your code changes to GitHub.

## Prerequisites

- Git installed and configured
- A GitHub repository initialized in your project directory
- Remote origin configured (e.g., `git remote add origin <your-repo-url>`)

## Setup

1. Clone or initialize your Git repository
2. Make sure the `push.sh` script is executable:
   ```bash
   chmod +x push.sh
   ```

## Usage

The `push.sh` script simplifies the Git workflow by adding all changes, committing with your message, and pushing to the current branch.

### Basic Usage

```bash
./push.sh "Your commit message here"
```

### Examples

```bash
# Push with a simple message
./push.sh "Updated README"

# Push with a more detailed message
./push.sh "Added new feature: user authentication"

# Push after fixing bugs
./push.sh "Fixed login validation bug"
```

### What the script does

1. **Checks for commit message**: Ensures you provide a descriptive commit message
2. **Adds all changes**: Stages all modified and new files (`git add .`)
3. **Commits changes**: Creates a commit with your message
4. **Pushes to GitHub**: Automatically detects your current branch and pushes to origin

### Error Handling

The script includes error checking and will:
- Exit if no commit message is provided
- Notify you if there are no changes to commit
- Alert you if the push fails (e.g., due to network issues or remote configuration)

## Notes

- The script automatically detects your current branch (main, master, etc.)
- Make sure you're in the root directory of your Git repository when running the script
- If you have uncommitted changes you want to keep but not push, commit them separately first
