# Heavenly AFH - Step-by-Step Tutorial

## Tutorial Overview

This tutorial will guide you through setting up, customizing, and deploying your Heavenly AFH landing page from start to finish.

## Part 1: Initial Setup (15 minutes)

### Step 1: Verify Prerequisites

Check if you have Node.js installed:
```bash
node --version
# Should show v18.0.0 or higher
```

Check npm:
```bash
npm --version
# Should show 8.0.0 or higher
```

If not installed, download from: https://nodejs.org/

### Step 2: Navigate to Project Directory

```bash
cd /Users/henryoh/Documents/heavenlyafh
```

### Step 3: Install Dependencies

```bash
npm install
```

Wait for installation to complete (this may take 2-5 minutes).

### Step 4: Start Development Server

```bash
npm run dev
```

You should see:
```
▲ Next.js 14.2.35
- Local:        http://localhost:3000
```

### Step 5: View Your Site

1. Open your browser
2. Go to `http://localhost:3000`
3. You should see the landing page!

**Congratulations!** Your site is now running locally.

---

## Part 2: Understanding the Structure (10 minutes)

### File Structure Overview

```
heavenlyafh/
├── app/
│   ├── layout.tsx    ← Main layout (wraps all pages)
│   ├── page.tsx      ← Your landing page (main content)
│   └── globals.css   ← Global styles
├── package.json      ← Dependencies and scripts
└── ...config files
```

### Key Files Explained

**app/page.tsx**: This is your main landing page. It contains:
- The `sections` array (all 10 sections with their links)
- The `Home` component (main page layout)
- The `SectionCard` component (individual section display)

**app/layout.tsx**: Root layout that wraps all pages. Contains:
- HTML structure
- Metadata (title, description)
- Global CSS import

**app/globals.css**: Global styles including:
- Tailwind directives
- Custom scrollbar styles
- Dark mode support

---

## Part 3: Customizing Content (20 minutes)

### Tutorial: Adding a New Link

Let's add a new link to the AFH section:

1. Open `app/page.tsx` in your editor
2. Find the AFH section (around line 17-33)
3. Add a new item to the `items` array:

```typescript
{
  id: 'afh',
  title: 'AFH',
  color: 'bg-blue-500',
  items: [
    // ... existing items ...
    { 
      title: 'AFH New Resource', 
      url: 'https://example.com', 
      description: 'This is a new resource I added' 
    }, // ← Add this new item
  ],
}
```

4. Save the file
5. Check your browser - the change appears automatically!

### Tutorial: Changing Section Colors

1. Open `app/page.tsx`
2. Find the section you want to change (e.g., AFH)
3. Change the `color` property:

```typescript
{
  id: 'afh',
  title: 'AFH',
  color: 'bg-purple-500', // Changed from bg-blue-500
  // ...
}
```

4. Save and see the color change instantly!

### Tutorial: Modifying the Header

1. Open `app/page.tsx`
2. Find the `header` section (around line 184-191)
3. Modify the text:

```typescript
<header className="text-center mb-12">
  <h1 className="text-5xl font-bold text-gray-900 dark:text-white mb-4">
    Your Custom Title Here
  </h1>
  <p className="text-xl text-gray-600 dark:text-gray-300">
    Your custom subtitle
  </p>
</header>
```

---

## Part 4: Styling Customization (15 minutes)

### Tutorial: Changing Section Height

The sections have a fixed height of 600px. To change it:

1. Open `app/page.tsx`
2. Find the `SectionCard` component (around line 205)
3. Change `h-[600px]` to your desired height:

```typescript
<div className="... h-[500px]"> // Changed from h-[600px]
```

### Tutorial: Customizing Scrollbar

1. Open `app/globals.css`
2. Find the `.custom-scrollbar` styles
3. Modify colors:

```css
.custom-scrollbar::-webkit-scrollbar-thumb {
  background: #your-color; /* Change this */
  border-radius: 4px;
}
```

### Tutorial: Adding Custom Colors

1. Open `tailwind.config.ts`
2. Add custom colors to the `theme.extend.colors`:

```typescript
theme: {
  extend: {
    colors: {
      'custom-blue': '#123456',
      // Add more...
    },
  },
}
```

Then use: `bg-custom-blue`

---

## Part 5: Adding Real URLs (10 minutes)

### Tutorial: Replacing Placeholder Links

Currently, all links point to `#`. Let's add real URLs:

1. Open `app/page.tsx`
2. Find any link item
3. Replace `url: '#'` with actual URL:

```typescript
{ 
  title: 'AFH Regulations', 
  url: 'https://www.dshs.wa.gov/afh', // Real URL
  description: 'Adult Family Home regulations' 
}
```

4. Repeat for all links you want to update
5. Save and test by clicking the links

---

## Part 6: Building for Production (10 minutes)

### Step 1: Build the Project

```bash
npm run build
```

This creates an optimized production build in the `.next` folder.

### Step 2: Test Production Build Locally

```bash
npm start
```

Visit `http://localhost:3000` to see the production version.

### Step 3: Deploy (Choose One)

**Option A: Vercel (Recommended)**
1. Push code to GitHub
2. Import project on vercel.com
3. Deploy automatically

**Option B: Other Hosting**
- Upload `.next` folder and other files
- Configure server to run `npm start`

---

## Part 7: Advanced Customization (Optional)

### Adding a New Section

1. Open `app/page.tsx`
2. Add to the `sections` array:

```typescript
{
  id: 'new-section',
  title: 'New Section Name',
  color: 'bg-gray-500',
  items: [
    { title: 'Item 1', url: '#', description: 'Description' },
    // Add more items...
  ],
},
```

3. The grid will automatically adjust!

### Changing Grid Layout

Modify the grid classes in the main container:

```typescript
<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-5 gap-6">
```

- `grid-cols-1`: 1 column on mobile
- `md:grid-cols-2`: 2 columns on medium screens
- `lg:grid-cols-3`: 3 columns on large screens
- `xl:grid-cols-5`: 5 columns on extra large screens

---

## Quick Reference

### Common Commands
```bash
npm run dev      # Start development
npm run build    # Build for production
npm start        # Run production server
npm run lint     # Check code quality
```

### File Locations
- Main page: `app/page.tsx`
- Styles: `app/globals.css`
- Layout: `app/layout.tsx`
- Config: `tailwind.config.ts`

### Quick Edits
- Change title: Edit `app/page.tsx` header section
- Add links: Edit `sections` array in `app/page.tsx`
- Change colors: Modify `color` property in sections
- Adjust layout: Change grid classes

---

## Next Steps

1. ✅ Complete this tutorial
2. ✅ Customize your content
3. ✅ Add real URLs
4. ✅ Test thoroughly
5. ✅ Deploy to production

**Need Help?** Check MANUAL.md for detailed documentation.

---

**Happy Building!** 🚀

