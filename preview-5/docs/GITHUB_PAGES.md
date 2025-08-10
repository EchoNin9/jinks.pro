# GitHub Pages Pull Request Previews

This repository is configured with GitHub Actions to automatically deploy pull request previews to GitHub Pages.

## How It Works

### Automatic Deployment
- **Main Branch**: Automatically deploys to the main GitHub Pages site when code is pushed to `main` or `master`
- **Pull Requests**: Creates a preview deployment for each PR with a unique URL

### Preview URLs
Each pull request gets its own preview URL in the format:
```
https://{username}.github.io/{repository}/preview-{PR_NUMBER}/
```

For example, if PR #123 is created, the preview will be available at:
```
https://{username}.github.io/{repository}/preview-123/
```

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
- Creates preview deployments for PRs
- Comments on PRs with preview URLs
- Cleans up previews when PRs are closed

## Workflow Features

### Build Job
- Runs on every push and PR
- Sets up GitHub Pages configuration
- Uploads build artifacts

### Deploy Job
- Only runs on main/master branch pushes
- Deploys to the main GitHub Pages site
- Uses the official GitHub Pages deployment action

### Preview Job
- Runs on PR creation/updates
- Deploys to a preview subdirectory
- Automatically comments on PRs with preview URLs
- Updates previews with each new commit

### Cleanup Job
- Runs when PRs are closed
- Initiates cleanup of preview deployments

## File Structure
```
.github/
└── workflows/
    └── deploy.yml          # Main deployment workflow
```

## Benefits

1. **Instant Feedback**: See changes immediately without merging
2. **Collaboration**: Share preview URLs with team members
3. **Testing**: Test changes in a production-like environment
4. **Automation**: No manual deployment needed
5. **Cleanup**: Automatic cleanup when PRs are closed

## Troubleshooting

### Common Issues

1. **Workflow not running**: Check repository permissions and GitHub Actions settings
2. **Deployment failed**: Verify the workflow file syntax and required permissions
3. **Preview not accessible**: Ensure GitHub Pages is enabled and set to "GitHub Actions"

### Manual Trigger
If needed, you can manually trigger the workflow:
1. Go to Actions tab
2. Select "Deploy to GitHub Pages"
3. Click "Run workflow"

## References

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Pull Request Preview Article](https://medium.com/@vegaobed/how-to-enable-pull-request-previews-in-github-pages-dc3a94fa969b)
