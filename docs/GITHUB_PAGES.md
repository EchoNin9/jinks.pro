# GitHub Pages Deployment

This repository is configured with GitHub Actions to automatically deploy to GitHub Pages.

## How It Works

### Automatic Deployment
- **Main Branch**: Automatically deploys to GitHub Pages when code is pushed to `main` or `master`
- **Pull Requests**: Creates comments on PRs to inform about deployment status

### Deployment Process
1. **Build**: Sets up GitHub Pages configuration and uploads artifacts
2. **Deploy**: Uses the official GitHub Pages deployment action
3. **Comment**: Automatically comments on PRs with deployment information

## Setup Requirements

### 1. Enable GitHub Pages
- Go to your repository Settings → Pages
- Set Source to "GitHub Actions"

### 2. Repository Permissions
The workflow requires these permissions:
- `contents: read` - To read repository content
- `pages: write` - To deploy to GitHub Pages
- `id-token: write` - For authentication

### 3. GitHub Actions
The workflow automatically:
- Builds your site
- Deploys to GitHub Pages
- Comments on PRs with deployment status
- Uses the official GitHub Pages deployment action

## Workflow Features

### Deploy Job
- Runs on every push to main/master and PR creation/updates
- Sets up GitHub Pages configuration
- Uploads build artifacts
- Deploys to GitHub Pages

### PR Comment Job
- Runs on PR creation/updates
- Provides deployment information
- Links to the live site when applicable

## File Structure
```
.github/
└── workflows/
    └── simple-deploy.yml    # Main deployment workflow
```

## Why Simplified?

The original complex workflow with individual PR previews was replaced because:

1. **Permission Issues**: The `peaceiris/actions-gh-pages@v3` action had permission problems with modern GitHub repositories
2. **Security Policies**: GitHub's stricter security policies made the old approach unreliable
3. **Official Actions**: The official `actions/deploy-pages` action is more reliable and secure
4. **Maintenance**: Simpler workflows are easier to maintain and debug

## Benefits

1. **Reliability**: Uses official GitHub Actions for better compatibility
2. **Security**: Follows GitHub's recommended security practices
3. **Simplicity**: Easier to understand and maintain
4. **Automation**: No manual deployment needed
5. **Feedback**: PRs get automatic comments about deployment status

## Troubleshooting

### Common Issues

1. **Workflow not running**: Check repository permissions and GitHub Actions settings
2. **Deployment failed**: Verify the workflow file syntax and required permissions
3. **Pages not accessible**: Ensure GitHub Pages is enabled and set to "GitHub Actions"

### Manual Trigger
If needed, you can manually trigger the workflow:
1. Go to Actions tab
2. Select "Simple Deploy to GitHub Pages"
3. Click "Run workflow"

## References

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Official Deploy Pages Action](https://github.com/actions/deploy-pages)
