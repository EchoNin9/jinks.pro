# Adam Jinks - Personal Website

A modern, responsive personal website built with HTML, CSS, and JavaScript. This website is designed to showcase your skills, projects, and professional information.

## 📁 Project Structure

```
jinks.pro/
├── README.md          # Simple root README
├── .gitignore         # Git ignore rules
├── site/              # Website files
│   ├── index.html     # Main HTML file
│   ├── styles.css     # CSS styles and responsive design
│   └── script.js      # JavaScript functionality
└── docs/              # Documentation and workflow
    ├── README.md      # This file (detailed documentation)
    ├── WORKFLOW.md    # Preview branch workflow guide
    └── workflow.sh    # Helper script for workflow automation
```

## 🚀 Features

- **Responsive Design**: Works perfectly on all devices (desktop, tablet, mobile)
- **Modern UI/UX**: Clean, professional design with smooth animations
- **Fast Performance**: Lightweight and optimized for speed
- **SEO Friendly**: Proper meta tags and semantic HTML structure
- **Easy Customization**: Simple to modify and personalize
- **GitHub Pages Ready**: Can be deployed directly to GitHub Pages
- **Organized Structure**: Clear separation between website and documentation

## 🛠️ Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/jinks.pro.git
cd jinks.pro
```

### 2. Customize the Content
Edit the following files in the `/site` directory to personalize your website:

- **`/site/index.html`**: Update your name, bio, projects, and contact information
- **`/site/styles.css`**: Modify colors, fonts, and styling to match your brand
- **`/site/script.js`**: Add or modify interactive features

### 3. Test Locally
Open `/site/index.html` in your web browser to preview your website locally.

## 🎨 Customization Guide

### Personal Information
Update the following sections in `/site/index.html`:

- **Hero Section**: Change your name, title, and description
- **About Section**: Modify your bio and skills
- **Projects Section**: Add your actual projects with descriptions and links
- **Contact Section**: Update your email, GitHub, and LinkedIn links

### Colors and Branding
Modify the CSS variables in `/site/styles.css`:

```css
/* Primary colors */
--primary-color: #2563eb;
--secondary-color: #fbbf24;
--accent-color: #667eea;

/* Text colors */
--text-primary: #1f2937;
--text-secondary: #6b7280;
```

### Fonts
The website uses Inter font by default. You can change this in `/site/styles.css`:

```css
body {
    font-family: 'Your-Font-Name', sans-serif;
}
```

## 🚀 Deployment to GitHub Pages

### Option 1: Automatic Deployment (Recommended)

1. Push your changes to GitHub:
```bash
git add .
git commit -m "Initial website setup"
git push origin main
```

2. Go to your repository on GitHub
3. Navigate to **Settings** → **Pages**
4. Under **Source**, select **Deploy from a branch**
5. Choose **main** branch and **/site** folder (important!)
6. Click **Save**

Your website will be available at: `https://yourusername.github.io/jinks.pro`

**Note**: Make sure to set the source folder to `/site` since your website files are now in that directory.

### Option 2: Custom Domain (jinks.pro)

If you want to use a custom domain:

1. Purchase the domain `jinks.pro`
2. Add a `CNAME` file to your repository with:
   ```
   jinks.pro
   ```
3. Configure your domain's DNS settings to point to GitHub Pages
4. In GitHub repository settings, add your custom domain

## 📱 Responsive Design

The website is fully responsive and includes:

- Mobile-first approach
- Flexible grid layouts
- Touch-friendly navigation
- Optimized typography for all screen sizes
- Smooth mobile menu

## 🎯 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 🔧 Advanced Customization

### Adding New Sections
To add new sections, follow this pattern in `/site/index.html`:

```html
<section id="new-section" class="new-section">
    <div class="container">
        <h2 class="section-title">Section Title</h2>
        <!-- Your content here -->
    </div>
</section>
```

### Adding Animations
The website includes several CSS animations. You can add more in `/site/styles.css`:

```css
@keyframes yourAnimation {
    from { /* starting state */ }
    to { /* ending state */ }
}

.your-element {
    animation: yourAnimation 1s ease;
}
```

### Form Integration
To add contact forms, you can use services like:

- **Formspree**: Simple form handling
- **Netlify Forms**: Built-in form processing
- **Custom backend**: Your own server-side processing

## 📊 Performance Optimization

The website is optimized for performance:

- Minimal external dependencies
- Optimized CSS and JavaScript
- Efficient animations using CSS transforms
- Lazy loading for images (when added)
- Minimal HTTP requests

## 🔍 SEO Features

- Semantic HTML structure
- Meta tags for social sharing
- Open Graph protocol support
- Structured data ready
- Fast loading times

## 🐛 Troubleshooting

### Common Issues

1. **Website not loading**: Check if GitHub Pages is enabled and source folder is set to `/site`
2. **Styles not applying**: Ensure all files are in the `/site` directory
3. **Mobile menu not working**: Check if JavaScript is enabled
4. **Custom domain issues**: Verify DNS settings and CNAME file

### Getting Help

- Check the [GitHub Pages documentation](https://pages.github.com/)
- Review browser console for JavaScript errors
- Validate HTML and CSS using online validators
- Check the `/docs/WORKFLOW.md` for workflow guidance

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📞 Support

If you need help customizing your website, you can:

- Open an issue in this repository
- Check the customization guide above
- Review the code comments for guidance
- Use the workflow script in `/docs/workflow.sh`

## 🚀 Workflow

For development workflow and preview branch usage, see:
- **`/docs/WORKFLOW.md`** - Complete workflow guide
- **`/docs/workflow.sh`** - Automated workflow script

---

**Happy coding! 🎉**

Built with ❤️ and lots of ☕
