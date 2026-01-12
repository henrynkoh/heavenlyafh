# Heavenly AFH - Complete User Manual

## Table of Contents
1. [Introduction](#introduction)
2. [System Requirements](#system-requirements)
3. [Installation Guide](#installation-guide)
4. [Configuration](#configuration)
5. [Usage Guide](#usage-guide)
6. [Customization](#customization)
7. [Troubleshooting](#troubleshooting)
8. [Advanced Features](#advanced-features)
9. [Maintenance](#maintenance)
10. [Support](#support)

## Introduction

Heavenly AFH is a modern, responsive landing page built with Next.js that provides a one-stop portal for accessing all related links and resources. The platform features 10 distinct sections, each with scrollable content areas for easy navigation.

### Key Features
- **10 Color-Coded Sections**: Organized by category (AFH, WAC 388-76, REC, IBC, RCS, ALTSA, DSHS, WABO, Resources, Quick Links)
- **Scrollable Content**: Each section has an independent scrollable area
- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile devices
- **Modern UI**: Clean, professional interface with Tailwind CSS
- **Dark Mode Support**: Automatic dark mode based on system preferences

## System Requirements

### Minimum Requirements
- **Node.js**: Version 18.0.0 or higher
- **npm**: Version 8.0.0 or higher (or yarn 1.22.0+)
- **Operating System**: macOS, Windows, or Linux
- **RAM**: 4GB minimum (8GB recommended)
- **Disk Space**: 500MB for dependencies

### Recommended Requirements
- **Node.js**: Version 20.x LTS
- **npm**: Version 10.x
- **RAM**: 8GB or more
- **Disk Space**: 1GB for development

## Installation Guide

### Step 1: Clone or Download the Project
```bash
cd /path/to/your/projects
# If using git:
git clone <repository-url> heavenlyafh
cd heavenlyafh
```

### Step 2: Install Dependencies
```bash
npm install
```

This will install all required packages including:
- Next.js 14.2.5
- React 18.3.1
- TypeScript 5.5.3
- Tailwind CSS 3.4.4
- And other dependencies

### Step 3: Verify Installation
```bash
npm run build
```

If the build completes without errors, installation is successful.

## Configuration

### Environment Variables
Create a `.env.local` file in the root directory for environment-specific settings:

```env
# Optional: Custom port
PORT=3000

# Optional: API endpoints (if needed in future)
# API_URL=http://localhost:3001
```

### Tailwind CSS Configuration
The `tailwind.config.ts` file controls styling. You can customize:
- Colors
- Fonts
- Spacing
- Breakpoints

### Next.js Configuration
The `next.config.js` file contains Next.js settings. Default configuration is suitable for most use cases.

## Usage Guide

### Starting the Development Server

```bash
npm run dev
```

The server will start on `http://localhost:3000` by default.

### Building for Production

```bash
npm run build
npm start
```

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm start` - Start production server
- `npm run lint` - Run ESLint

### Accessing the Application

1. Open your web browser
2. Navigate to `http://localhost:3000`
3. You'll see the landing page with all 10 sections

### Using the Sections

1. **Viewing Sections**: All sections are visible on the main page
2. **Scrolling**: Click inside any section and scroll to view all items
3. **Clicking Links**: Click on any link item to navigate (currently set to `#` - update with actual URLs)
4. **Responsive Behavior**: On smaller screens, sections stack vertically

## Customization

### Adding New Sections

Edit `app/page.tsx` and add a new section to the `sections` array:

```typescript
{
  id: 'new-section',
  title: 'New Section',
  color: 'bg-gray-500', // Choose a Tailwind color
  items: [
    { 
      title: 'Link Title', 
      url: 'https://example.com', 
      description: 'Link description' 
    },
    // Add more items...
  ],
}
```

### Modifying Existing Sections

1. Open `app/page.tsx`
2. Find the section in the `sections` array
3. Modify the `items` array to add, remove, or edit links
4. Save the file - changes will hot-reload automatically

### Changing Colors

Each section uses Tailwind CSS color classes. Available options:
- `bg-blue-500`, `bg-green-500`, `bg-purple-500`
- `bg-red-500`, `bg-yellow-500`, `bg-indigo-500`
- `bg-teal-500`, `bg-orange-500`, `bg-pink-500`
- `bg-cyan-500`, `bg-gray-500`, etc.

### Customizing Styles

Edit `app/globals.css` for global styles or modify Tailwind classes in components.

## Troubleshooting

### Common Issues

#### Issue: "Operation not permitted" error
**Solution**: 
```bash
chmod -R u+rX node_modules
rm -rf .next
npm run dev
```

#### Issue: Port 3000 already in use
**Solution**: 
```bash
# Kill process on port 3000
lsof -ti:3000 | xargs kill -9
# Or use a different port
PORT=3001 npm run dev
```

#### Issue: Build errors
**Solution**:
```bash
rm -rf node_modules package-lock.json .next
npm install
npm run build
```

#### Issue: Styles not loading
**Solution**: Ensure Tailwind is properly configured and `globals.css` is imported in `layout.tsx`

### Getting Help

1. Check the console for error messages
2. Review the browser's developer tools
3. Check Next.js documentation: https://nextjs.org/docs
4. Review Tailwind CSS docs: https://tailwindcss.com/docs

## Advanced Features

### Adding Search Functionality

You can add a search bar to filter sections or items. This requires additional React state management.

### Adding Analytics

Integrate Google Analytics or other tracking:
1. Add tracking script to `app/layout.tsx`
2. Or use Next.js Analytics package

### Adding Authentication

For future features requiring user authentication:
1. Install NextAuth.js or similar
2. Configure authentication providers
3. Add protected routes

### Performance Optimization

- Images: Use Next.js Image component
- Code splitting: Automatic with Next.js
- Caching: Configure in `next.config.js`

## Maintenance

### Regular Updates

```bash
# Check for outdated packages
npm outdated

# Update packages (carefully)
npm update

# Update Next.js specifically
npm install next@latest
```

### Backup

Regularly backup:
- `app/` directory (your code)
- Configuration files
- Custom assets

### Monitoring

Monitor:
- Server logs for errors
- Performance metrics
- User feedback

## Support

### Documentation Resources
- Next.js: https://nextjs.org/docs
- React: https://react.dev
- Tailwind CSS: https://tailwindcss.com/docs
- TypeScript: https://www.typescriptlang.org/docs

### Getting Help
1. Review this manual
2. Check the README.md
3. Review code comments
4. Search online documentation

---

**Last Updated**: January 2025
**Version**: 1.0.0

