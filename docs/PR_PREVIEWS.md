# 🚀 Pull Request Previews

This repository is configured with automatic pull request previews that create live previews of your website for every PR to the main branch.

## ✨ How It Works

### **Automatic Preview Generation**
- **Every PR** to `main` or `master` branch automatically gets a preview
- **Live URL** is generated and commented on the PR
- **Real-time updates** with each new commit to the PR
- **No manual intervention** required

### **Preview URLs**
- **Format**: `https://{username}.github.io/{repo-name}/pr-preview/{pr-number}/`
- **Access**: Anyone with the link can view the preview
- **Updates**: Automatically refreshed with new commits

## 🔧 Workflow Files

### **PR Preview Workflow** (`.github/workflows/pr-preview.yml`)
- **Triggers**: PR events (opened, updated, reopened)
- **Target**: Only PRs to main/master branches
- **Actions**: Creates preview deployment + comments on PR

### **Main Deployment Workflow** (`.github/workflows/deploy.yml`)
- **Triggers**: Direct pushes to main/master
- **Actions**: Deploys to production GitHub Pages
- **Concurrency**: Separate from PR previews

## 📋 Permissions Required

The workflows need these permissions:
- `contents: read` - Read repository content
- `pages: write` - Deploy to GitHub Pages
- `id-token: write` - GitHub Pages authentication
- `pull-requests: write` - Comment on PRs

## 🎯 Usage

### **For Developers**
1. **Create a PR** to the main branch
2. **Wait for preview** (usually 1-2 minutes)
3. **Check PR comments** for preview URL
4. **Test your changes** on the live preview
5. **Iterate** with new commits as needed

### **For Reviewers**
1. **Click the preview URL** in PR comments
2. **Test functionality** on the live preview
3. **Provide feedback** based on actual behavior
4. **Approve/request changes** as usual

## 🔄 Concurrency Management

- **PR Previews**: Each PR gets its own preview (cancels previous runs)
- **Main Deployments**: Production deployments don't interfere with previews
- **Resource Efficiency**: Previews are cleaned up automatically

## 🚨 Troubleshooting

### **Preview Not Generated**
- Check if PR targets main/master branch
- Verify GitHub Actions are enabled
- Check repository permissions
- Look for workflow errors in Actions tab

### **Preview URL Not Working**
- Wait a few minutes for deployment
- Check if the workflow completed successfully
- Verify GitHub Pages settings
- Check for any error messages in Actions

### **Permission Errors**
- Ensure repository has GitHub Pages enabled
- Check if GitHub Actions have required permissions
- Verify repository settings allow Actions

## 📚 Related Documentation

- [GitHub Pages Setup](GITHUB_PAGES.md)
- [Main README](../README.md)

## 🆘 Support

If you encounter issues:
1. Check the Actions tab for error details
2. Verify repository permissions and settings
3. Check GitHub Pages configuration
4. Review workflow file syntax and permissions
