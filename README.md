# Heavenly AFH - One-Stop Service Portal

A modern Next.js landing page providing easy access to all related links and resources in one convenient location.

## Features

- **10 Scrollable Sections**: Each section contains multiple links that can be scrolled vertically
- **Modern UI**: Clean, responsive design with Tailwind CSS
- **Easy Navigation**: All sections are visible at once for quick access
- **Color-Coded Sections**: Each section has a distinct color for easy identification
  - AFH (Blue)
  - WAC 388-76 (Green)
  - REC (Purple)
  - IBC (Red)
  - RCS (Yellow)
  - ALTSA (Indigo)
  - DSHS (Teal)
  - WABO (Orange)
  - Resources (Pink)
  - Quick Links (Cyan)

## Getting Started

### Prerequisites

- Node.js 18+ installed
- npm or yarn package manager

### Installation

1. Install dependencies:
```bash
npm install
```

2. Run the development server:
```bash
npm run dev
```

3. Open [http://localhost:3000](http://localhost:3000) in your browser

### Building for Production

```bash
npm run build
npm start
```

## Project Structure

```
heavenlyafh/
├── app/
│   ├── layout.tsx      # Root layout component
│   ├── page.tsx        # Main landing page with sections
│   └── globals.css     # Global styles and scrollbar customization
├── package.json        # Project dependencies
├── tsconfig.json       # TypeScript configuration
├── tailwind.config.ts  # Tailwind CSS configuration
└── next.config.js      # Next.js configuration
```

## Customization

To add or modify links in each section, edit the `sections` array in `app/page.tsx`. Each section has:
- `id`: Unique identifier
- `title`: Section header text
- `color`: Tailwind CSS color class for the header
- `items`: Array of link items with `title`, `url`, and optional `description`

## Technologies Used

- Next.js 14
- React 18
- TypeScript
- Tailwind CSS

