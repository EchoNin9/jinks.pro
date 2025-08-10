# 🚀 Preview Branch Workflow

This document explains how to use the preview branch to test your website changes before merging them to main.

## 📋 Current Setup

- **`main` branch**: Contains your production website
- **`preview` branch**: For testing changes before merging to main

## 🔄 Daily Workflow

### 1. Starting New Work

Always start from the preview branch when making changes:

```bash
# Make sure you're on preview branch
git checkout preview

# Pull latest changes from main
git pull origin main
```

### 2. Making Changes

Make your changes to the website files:
- Edit `index.html`, `styles.css`, `script.js`
- Test locally by opening `index.html` in your browser
- Make sure everything looks good

### 3. Testing Your Changes

```bash
# Add your changes
git add .

# Commit with a descriptive message
git commit -m "Add new feature: [describe what you added]"

# Push to preview branch
git push origin preview
```

### 4. Preview on GitHub Pages

You can set up GitHub Pages for the preview branch:

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Pages**
3. Under **Source**, select **Deploy from a branch**
4. Choose **preview** branch and **/ (root)** folder
5. Click **Save**

Your preview will be available at: `https://yourusername.github.io/jinks.pro`

### 5. When Ready to Deploy

After testing and confirming everything works:

```bash
# Switch to main branch
git checkout main

# Pull latest changes (if any)
git pull origin main

# Merge preview branch into main
git merge preview

# Push to main
git push origin main

# Switch back to preview for next round
git checkout preview
```

## 🎯 Alternative: Feature Branches

For larger features, you might want to create specific feature branches:

```bash
# Create a feature branch from preview
git checkout preview
git checkout -b feature/new-section

# Make your changes
# ... edit files ...

# Commit and push
git add .
git commit -m "Add new section feature"
git push origin feature/new-section

# When ready, merge back to preview
git checkout preview
git merge feature/new-section
git push origin preview

# Delete feature branch (optional)
git branch -d feature/new-section
git push origin --delete feature/new-section
```

## 🚨 Important Rules

1. **Never commit directly to main** - always go through preview first
2. **Always test locally** before pushing to preview
3. **Use descriptive commit messages** - they help track changes
4. **Keep preview branch up to date** with main

## 🔧 Quick Commands Reference

```bash
# Check current branch
git branch

# Switch to preview branch
git checkout preview

# Switch to main branch
git checkout main

# See what files have changed
git status

# See commit history
git log --oneline

# Discard changes in a file (be careful!)
git checkout -- filename

# Discard all changes
git reset --hard HEAD
```

## 📱 Testing Checklist

Before merging to main, ensure:

- [ ] Website loads properly
- [ ] All links work
- [ ] Responsive design works on mobile
- [ ] No console errors
- [ ] Performance is acceptable
- [ ] Content is accurate and up-to-date

## 🆘 Troubleshooting

### If you accidentally commit to main:

```bash
# Create a backup branch
git checkout main
git checkout -b backup-main

# Reset main to previous commit
git reset --hard HEAD~1

# Force push (be careful!)
git push origin main --force

# Switch back to preview
git checkout preview
```

### If preview branch gets out of sync:

```bash
# Switch to main
git checkout main

# Pull latest
git pull origin main

# Switch to preview
git checkout preview

# Reset preview to match main
git reset --hard main

# Force push preview
git push origin preview --force
```

## 🎉 Benefits of This Workflow

1. **Safe testing** - Changes don't affect production until ready
2. **Easy rollback** - Can quickly revert if issues arise
3. **Collaboration** - Others can review your changes
4. **Professional** - Follows industry best practices
5. **Confidence** - Know your changes work before deploying

---

**Happy coding! 🚀**

Remember: Preview first, then main!
