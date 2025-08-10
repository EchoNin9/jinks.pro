#!/bin/bash

# 🚀 Jinks.pro Website Workflow Script
# This script helps you manage your preview branch workflow
# Updated for new directory structure: /site for website, /docs for documentation

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if we're in a git repository
check_git() {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        print_error "Not in a git repository!"
        exit 1
    fi
}

# Function to check current branch
check_branch() {
    local current_branch=$(git branch --show-current)
    echo "Current branch: $current_branch"
}

# Function to start new work (switch to preview and pull from main)
start_work() {
    print_status "Starting new work session..."
    
    # Switch to preview branch
    print_status "Switching to preview branch..."
    git checkout preview
    
    # Pull latest from main
    print_status "Pulling latest changes from main..."
    git pull origin main
    
    print_success "Ready to work! You're now on the preview branch with latest changes."
    print_status "Website files are in the /site directory"
    print_status "Documentation is in the /docs directory"
}

# Function to save and test changes
save_changes() {
    local message="$1"
    
    if [ -z "$message" ]; then
        print_error "Please provide a commit message!"
        echo "Usage: ./docs/workflow.sh save 'Your commit message'"
        exit 1
    fi
    
    print_status "Saving your changes..."
    
    # Check if there are changes to commit
    if git diff --quiet && git diff --cached --quiet; then
        print_warning "No changes to commit!"
        return
    fi
    
    # Add all changes
    git add .
    
    # Commit with message
    git commit -m "$message"
    
    # Push to preview
    print_status "Pushing to preview branch..."
    git push origin preview
    
    print_success "Changes saved and pushed to preview branch!"
    print_status "You can now test your changes on GitHub Pages."
}

# Function to deploy to main
deploy_to_main() {
    print_status "Deploying to main branch..."
    
    # Switch to main
    git checkout main
    
    # Pull latest (in case there are remote changes)
    git pull origin main
    
    # Merge preview into main
    print_status "Merging preview into main..."
    git merge preview
    
    # Push to main
    print_status "Pushing to main..."
    git push origin main
    
    # Switch back to preview
    git checkout preview
    
    print_success "Successfully deployed to main!"
    print_status "Your website is now live on the main branch."
}

# Function to show status
show_status() {
    print_status "Git Status:"
    git status
    
    echo ""
    print_status "Recent commits:"
    git log --oneline -5
    
    echo ""
    print_status "Directory Structure:"
    echo "  /site     - Website files (index.html, styles.css, script.js)"
    echo "  /docs     - Documentation and workflow files"
    echo "  /         - Root with simple README"
}

# Function to show help
show_help() {
    echo "🚀 Jinks.pro Website Workflow Script"
    echo ""
    echo "Usage: ./docs/workflow.sh [command] [options]"
    echo ""
    echo "Commands:"
    echo "  start                    Switch to preview branch and pull latest from main"
    echo "  save <message>           Save changes with commit message and push to preview"
    echo "  deploy                   Merge preview into main and deploy"
    echo "  status                   Show current git status and recent commits"
    echo "  help                     Show this help message"
    echo ""
    echo "Examples:"
    echo "  ./docs/workflow.sh start"
    echo "  ./docs/workflow.sh save 'Add new contact form'"
    echo "  ./docs/workflow.sh deploy"
    echo ""
    echo "Directory Structure:"
    echo "  /site     - Website files (HTML, CSS, JS)"
    echo "  /docs     - Documentation and workflow"
    echo "  /         - Root directory"
    echo ""
    echo "Workflow:"
    echo "  1. ./docs/workflow.sh start          # Start working"
    echo "  2. Make your changes                 # Edit files in /site directory"
    echo "  3. ./docs/workflow.sh save 'msg'     # Save and test"
    echo "  4. Test on GitHub Pages              # Preview your changes"
    echo "  5. ./docs/workflow.sh deploy         # Deploy to main when ready"
}

# Main script logic
main() {
    check_git
    
    case "${1:-help}" in
        "start")
            start_work
            ;;
        "save")
            save_changes "$2"
            ;;
        "deploy")
            deploy_to_main
            ;;
        "status")
            show_status
            ;;
        "help"|*)
            show_help
            ;;
    esac
}

# Run main function with all arguments
main "$@"
