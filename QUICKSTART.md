# Heavenly AFH - Quick Start Guide

Get up and running in 5 minutes! ⚡

## Prerequisites Check

```bash
node --version  # Need v18+
npm --version    # Need v8+
```

## Installation (2 minutes)

```bash
# 1. Navigate to project
cd /Users/henryoh/Documents/heavenlyafh

# 2. Install dependencies
npm install

# 3. Start server
npm run dev
```

## Access Your Site

Open browser → `http://localhost:3000`

That's it! 🎉

---

## Quick Customization

### Change a Link

Edit `app/page.tsx`, find the section, update the URL:

```typescript
{ title: 'My Link', url: 'https://real-url.com', description: '...' }
```

### Change Section Color

In `app/page.tsx`, modify the `color` property:

```typescript
{ id: 'afh', title: 'AFH', color: 'bg-purple-500', ... }
```

### Add New Link

Add to any section's `items` array:

```typescript
items: [
  ...existing items,
  { title: 'New Link', url: '#', description: 'New description' }
]
```

---

## Common Commands

| Command | Purpose |
|---------|---------|
| `npm run dev` | Start development server |
| `npm run build` | Build for production |
| `npm start` | Run production server |
| `npm run lint` | Check code quality |

---

## File Structure

```
app/
  ├── page.tsx    ← Edit this for content
  ├── layout.tsx  ← Edit this for metadata
  └── globals.css ← Edit this for styles
```

---

## Need More Help?

- **Detailed Guide**: See `TUTORIAL.md`
- **Full Manual**: See `MANUAL.md`
- **Troubleshooting**: See `MANUAL.md` → Troubleshooting section

---

**Ready to customize?** Open `app/page.tsx` and start editing! ✨

