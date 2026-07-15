---
version: alpha
name: "Npuls Education Platform"
description: "Npuls is a Dutch higher-education collaboration platform with a warm, approachable visual identity. The design uses a soft pink/salmon hero canvas (#f4d9dc) as the dominant background, contrasted by near-black body text (#454545). Two typefaces create a clear editorial hierarchy: General Sans (geometric sans-serif) for UI and body copy, and Cooper Lt BT (a soft-serif display face) for large display headings. Radius language is consistently pill-shaped (9999px) for interactive elements and 16px for cards. The palette is deliberately warm. orange (#dd784b) as the primary CTA color, teal-green (#00af81) and blue (#2252e4) as secondary accents. No shadows are used; depth is achieved through background color contrast and dot-pattern decorative motifs. The layout uses a 1320px max-width container with a generous 96px section spacing rhythm."
colors:
  light-grey: "#f3f3f3"
  salmon-pink: "#f4d9dc"
  teal-green: "#00af81"
  white: "#ffffff"
  burnt-orange: "#dd784b"
  mid-grey: "#5b5b5b"
  near-black: "#454545"
  pure-black: "#000000"
  royal-blue: "#2252e4"
  border-grey: "#c5c5c5"
typography:
  display-hero:
    fontFamily: "Cooper Lt BT"
    fontSize: "72px"
    fontWeight: "300"
    lineHeight: "80px"
  display-large:
    fontFamily: "Cooper Lt BT"
    fontSize: "56px"
    fontWeight: "400"
    lineHeight: "44px"
  display-subhead:
    fontFamily: "Cooper Lt BT"
    fontSize: "24px"
    fontWeight: "400"
    lineHeight: "28px"
    letterSpacing: "1.2px"
  heading-xl:
    fontFamily: "General Sans"
    fontSize: "72px"
    fontWeight: "600"
    lineHeight: "80px"
  heading-lg:
    fontFamily: "General Sans"
    fontSize: "32px"
    fontWeight: "600"
    lineHeight: "44px"
  heading-md:
    fontFamily: "General Sans"
    fontSize: "24px"
    fontWeight: "600"
    lineHeight: "32px"
  heading-sm:
    fontFamily: "General Sans"
    fontSize: "18px"
    fontWeight: "600"
    lineHeight: "26px"
  body-default:
    fontFamily: "General Sans"
    fontSize: "16px"
    fontWeight: "400"
    lineHeight: "28px"
  body-semibold:
    fontFamily: "General Sans"
    fontSize: "16px"
    fontWeight: "600"
    lineHeight: "28px"
  label-medium:
    fontFamily: "General Sans"
    fontSize: "14px"
    fontWeight: "500"
    lineHeight: "20px"
  label-small:
    fontFamily: "General Sans"
    fontSize: "14px"
    fontWeight: "400"
    lineHeight: "24px"
rounded:
  radius-sm: "2px"
  radius-default: "4px"
  radius-md: "6px"
  radius-lg: "8px"
  radius-2xl: "16px"
  radius-full: "9999px"
spacing:
  spacing-1: "4px"
  spacing-2: "8px"
  spacing-3: "12px"
  spacing-4: "16px"
  spacing-6: "24px"
  spacing-8: "32px"
  spacing-10: "40px"
  spacing-16: "64px"
  spacing-20: "80px"
  spacing-24: "96px"
components:
  badge:
    backgroundColor: "{colors.light-grey}"
    textColor: "{colors.pure-black}"
    rounded: "{rounded.radius-full}"
    borderWidth: "1px"
    borderColor: "{colors.light-grey}"
    padding: "0px 16px"
    fontSize: "14px"
  button-primary-orange:
    backgroundColor: "{colors.burnt-orange}"
    textColor: "{colors.white}"
    rounded: "{rounded.radius-full}"
    borderWidth: "0px"
    boxShadow: "none"
    fontSize: "16px"
  content-card:
    backgroundColor: "transparent"
    textColor: "{colors.near-black}"
    rounded: "0px"
    borderWidth: "0px"
    boxShadow: "none"
    fontSize: "16px"
  heading-hero-xl:
    textColor: "{colors.pure-black}"
    fontSize: "72px"
    fontFamily: "General Sans / Cooper Lt BT"
    fontWeight: "600 / 300"
    lineHeight: "{spacing.spacing-20}"
    backgroundColor: "transparent"
  hero:
    backgroundColor: "{colors.salmon-pink}"
    textColor: "{colors.near-black}"
    rounded: "0px"
    padding: "96px 0px"
    fontSize: "16px"
  input:
    backgroundColor: "{colors.white}"
    borderColor: "{colors.border-grey}"
    borderWidth: "1px"
    rounded: "{rounded.radius-full}"
    padding: "8px 44px"
    fontSize: "16px"
    textColor: "{colors.near-black}"
  link:
    textColor: "{colors.near-black}"
    backgroundColor: "transparent"
    rounded: "0px"
    fontSize: "16px"
    borderWidth: "0px"
  navigation:
    textColor: "{colors.near-black}"
    backgroundColor: "transparent"
    rounded: "0px"
    borderWidth: "0px"
    fontSize: "16px"
    boxShadow: "none"
---

## Overview

Npuls is a Dutch higher-education collaboration platform with a warm, approachable visual identity. The design uses a soft pink/salmon hero canvas (#f4d9dc) as the dominant background, contrasted by near-black body text (#454545). Two typefaces create a clear editorial hierarchy: General Sans (geometric sans-serif) for UI and body copy, and Cooper Lt BT (a soft-serif display face) for large display headings. Radius language is consistently pill-shaped (9999px) for interactive elements and 16px for cards. The palette is deliberately warm. orange (#dd784b) as the primary CTA color, teal-green (#00af81) and blue (#2252e4) as secondary accents. No shadows are used; depth is achieved through background color contrast and dot-pattern decorative motifs. The layout uses a 1320px max-width container with a generous 96px section spacing rhythm.

**Signature traits:**
- Dual typeface system: Pairs Cooper Lt BT and General Sans across the type hierarchy.
- Soft, rounded geometry: Generous corner rounding up to 9999px.

## Colors

The palette uses 10 validated color tokens across 1 theme profile. Semantic roles stay attached to observed usage so generation agents can choose accents without inventing new color meaning.

**Semantic naming:**
- **surface-background** maps to `salmon-pink`: Role "background" is grounded by usage context "Hero and page section background; dominant canvas color".
- **content-text** maps to `near-black`: Role "text" is grounded by usage context "Primary body text, nav labels, card text".
- **action-background** maps to `white`: Role "background" is grounded by usage context "Card surfaces, input backgrounds, button text on dark fills".
- **action-text** maps to `burnt-orange`: Role "text" is grounded by usage context "Primary CTA buttons, play button, decorative accent fills".

### Text Scale
- **Burnt Orange** (#dd784b): Primary CTA buttons, play button, decorative accent fills. Role: text. {authored: rgb(221, 120, 75), space: rgb}
- **Mid Grey** (#5b5b5b): Secondary body text, captions, metadata labels. Role: text. {authored: rgb(91, 91, 91), space: rgb}
- **Near Black** (#454545): Primary body text, nav labels, card text. Role: text. {authored: rgb(69, 69, 69), space: rgb}
- **Pure Black** (#000000): Display headings, high-contrast text elements. Role: text. {authored: rgb(0, 0, 0), space: rgb}
- **Royal Blue** (#2252e4): Links, interactive text elements, footer accents. Role: text. {authored: rgb(34, 82, 228), space: rgb}

### Interactive
- **Border Grey** (#c5c5c5): Input borders, dividers, subtle outlines. Role: border. {authored: rgb(197, 197, 197), space: rgb}

### Surface & Shadows
- **Light Grey** (#f3f3f3): Badge backgrounds, subtle surface fills, neutral section backgrounds. Role: background. {authored: rgb(243, 243, 243), space: rgb}
- **Salmon Pink** (#f4d9dc): Hero and page section background; dominant canvas color. Role: background. {authored: rgb(244, 217, 220), space: rgb}
- **Teal Green** (#00af81): Illustration fills, success states, card accent color. Role: background. {authored: rgb(0, 175, 129), space: rgb}
- **White** (#ffffff): Card surfaces, input backgrounds, button text on dark fills. Role: background. {authored: rgb(255, 255, 255), space: rgb}

## Typography

Typography uses Cooper Lt BT, General Sans across extracted hierarchy roles. Keep hierarchy mapped to these token rows before adding decorative type styles.

Mixes Cooper Lt BT and General Sans for visual contrast. Weight range spans light, regular, semi-bold, medium. Sizes range from 14px to 72px.

### Font Roles
- **Headline Font**: General Sans
- **Body Font**: General Sans

### Type Scale Evidence
| Role | Font | Size | Weight | Line Height | Letter Spacing | Stack / Features | Notes |
|------|------|------|--------|-------------|----------------|------------------|-------|
| Hero display heading — large italic serif for emotional impact | Cooper Lt BT | 72px | 300 | 80px | normal | Cooper Lt BT, Georgia, Times New Roman, Times, serif | Extracted token |
| Large section display headings | Cooper Lt BT | 56px | 400 | 44px | normal | Cooper Lt BT, Georgia, Times New Roman, Times, serif | Extracted token |
| Decorative subheadings with tracked-out letter-spacing | Cooper Lt BT | 24px | 400 | 28px | 1.2px | Cooper Lt BT, Georgia, Times New Roman, Times, serif | Extracted token |
| Primary hero heading in bold sans-serif | General Sans | 72px | 600 | 80px | normal | General Sans, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif | Extracted token |
| Section headings | General Sans | 32px | 600 | 44px | normal | General Sans, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif | Extracted token |
| Card titles and subsection headings | General Sans | 24px | 600 | 32px | normal | General Sans, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif | Extracted token |
| Small headings and emphasized labels | General Sans | 18px | 600 | 26px | normal | General Sans, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif | Extracted token |
| Primary body copy and paragraph text | General Sans | 16px | 400 | 28px | normal | General Sans, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif | Extracted token |
| Emphasized body text, inline CTAs | General Sans | 16px | 600 | 28px | normal | General Sans, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif | Extracted token |
| UI labels, badge text, navigation items | General Sans | 14px | 500 | 20px | normal | General Sans, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif | Extracted token |
| Secondary labels, metadata, captions | General Sans | 14px | 400 | 24px | normal | General Sans, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif | Extracted token |

## Layout

Responsive system uses 4 breakpoint tier(s): mobile, tablet, desktop, wide.

This system uses a 4px base grid with scale values 4, 8, 12, 16, 24, 32, 40, 64, 80, 96.

### Responsive Strategy
- **mobile (<= 1400px)**: Constrain layout for small viewports and prioritize vertical stacking.
- **tablet (640-1400px)**: Increase spacing and column structure for medium-width viewports.
- **desktop (>= 1024px)**: Expand layout density and horizontal composition for wide viewports.
- **wide (>= 1536px)**: Stretch composition with generous gutters and wider layout spans.

### Spacing System
| Token | Value | Px | Notes |
|------|-------|----|-------|
| spacing-1 | 4px | 4 | Mapped to --puls-spacing-1 |
| spacing-2 | 8px | 8 | Mapped to --puls-spacing-2 |
| spacing-3 | 12px | 12 | Mapped to --puls-spacing-3 |
| spacing-4 | 16px | 16 | Mapped to --puls-spacing-4 |
| spacing-6 | 24px | 24 | Mapped to --puls-spacing-6 |
| spacing-8 | 32px | 32 | Mapped to --puls-spacing-8 |
| spacing-10 | 40px | 40 | Mapped to --puls-spacing-10 |
| spacing-16 | 64px | 64 | Mapped to --puls-spacing-16 |
| spacing-20 | 80px | 80 | Mapped to --puls-spacing-20 |
| spacing-24 | 96px | 96 | Mapped to --puls-spacing-24 |

## Elevation & Depth

Keep depth flat unless validated shadow or interaction evidence appears in the extraction payload. Do not invent shadows beyond this evidence boundary.

### Shadow Evidence
| Shadow Token | Layers | Details |
|--------------|--------|---------|
| n/a | 0 | No validated shadow payload |

### Interaction Signals
| Theme | Signal | Evidence |
|-------|--------|----------|
| Light | outline-color | rgb(69, 69, 69) ; rgb(0, 0, 0) ; rgb(255, 255, 255) |
| Light | outline-width | 3px |
| Light | outline-offset | 0px |
| Light | transform | matrix(1, 0, 0, 1, 0, 0) |

## Shapes

Shape language maps directly to rounded tokens. Keep component corners consistent with the role mapping below before introducing bespoke geometry.

### Radius Roles
| Token | Value | Px | Role Mapping |
|------|-------|----|--------------|
| radius-sm | 2px | 2 | Hairline corner |
| radius-default | 4px | 4 | Subtle corner |
| radius-md | 6px | 6 | Subtle corner |
| radius-lg | 8px | 8 | Control corner |
| radius-2xl | 16px | 16 | Card corner |
| radius-full | 9999px | 9999 | Large surface corner |

### Geometry Evidence
| Radius Token | Shape | Units |
|--------------|-------|-------|
| radius-sm | 2px | px |
| radius-default | 4px | px |
| radius-md | 6px | px |
| radius-lg | 8px | px |
| radius-2xl | 16px | px |
| radius-full | 9999px | px |

## Components

Components should be recreated from token references first, then tuned with variant notes and probe-backed state guidance.
- **Primary Button**: Pill-shaped CTA button with orange fill and white text; no border, no shadow
- **Search Input**: Pill-shaped search field with white background, grey border, and generous horizontal padding for icon accommodation
- **Badge**: Pill-shaped label chip used for category tags and metadata; light grey fill with black text
- **Navigation Bar**: Horizontal top navigation with transparent background, grey text links, language switcher, and search icon
- **Hero Section**: Full-width hero with salmon-pink background, large dual-typeface heading, body paragraph, and decorative dot-pattern motif with video play button
- **Content Card**: Borderless article card with illustration thumbnail, heading, body excerpt, and arrow link; used in promise/feature grid
- **Navigation Link**: Inline text link used in navigation and card CTAs; grey text with group hover behavior
- **Display Heading**: Large hero heading combining bold General Sans and light Cooper Lt BT for dual-weight typographic contrast

### Badge

**Default**
- backgroundColor: #f3f3f3
- textColor: #000000
- rounded: 9999px
- borderWidth: 1px
- borderColor: #f3f3f3
- padding: 0px 16px
- fontSize: 14px
- State guidance: Probe-confirmed: neutral grey pill badge

### Button

**Primary Orange**
- backgroundColor: #dd784b
- textColor: #ffffff
- rounded: 9999px
- borderWidth: 0px
- boxShadow: none
- fontSize: 16px
- State guidance: Probe-confirmed: rgb(221,120,75) fill, white text, full pill radius

### Content Card

**Default**
- backgroundColor: transparent
- textColor: #454545
- rounded: 0px
- borderWidth: 0px
- boxShadow: none
- fontSize: 16px
- State guidance: Probe-confirmed article.flex: transparent bg, no border, no shadow

### Heading

**Hero XL**
- textColor: #000000
- fontSize: 72px
- fontFamily: General Sans / Cooper Lt BT
- fontWeight: 600 / 300
- lineHeight: 80px
- backgroundColor: transparent
- State guidance: Probe-confirmed: 72px, black, transparent bg; dual typeface visible in screenshot

### Hero

**Default**
- backgroundColor: #f4d9dc
- textColor: #454545
- rounded: 0px
- padding: 96px 0px
- fontSize: 16px
- State guidance: Probe-confirmed layout column; background color from ranked token evidence (12.3% area coverage)

### Input

**Default**
- backgroundColor: #ffffff
- borderColor: #c5c5c5
- borderWidth: 1px
- rounded: 9999px
- padding: 8px 44px
- fontSize: 16px
- textColor: #454545
- State guidance: Probe-confirmed: pill radius, 44px horizontal padding accommodates search icon

### Link

**Default**
- textColor: #454545
- backgroundColor: transparent
- rounded: 0px
- fontSize: 16px
- borderWidth: 0px
- State guidance: Probe-confirmed a.group: grey-70 text, no decoration at rest

### Navigation

**Default**
- textColor: #454545
- backgroundColor: transparent
- rounded: 0px
- borderWidth: 0px
- fontSize: 16px
- boxShadow: none
- State guidance: Probe-confirmed: transparent bg, grey-70 text, no border or shadow

## Do's and Don'ts

Guardrails protect Dual typeface system, Soft, rounded geometry without adding unsupported visual claims.

| Do | Don't |
|----|---------|
| Do maintain consistent spacing using the base grid | Don't make unsupported claims about absent visual features |
| Do maintain WCAG AA contrast ratios (4.5:1 for normal text) | Don't mix rounded and sharp corners in the same view |
| Do use the primary color only for the single most important action per screen |  |
| Do verify evidence before writing new design-system guidance |  |

## Responsive Evidence

### Breakpoints
| Name | Width | Key Changes |
|------|-------|-------------|
| Mobile | <= 480px | (max-width: 480px) |
| Mobile | <= 639px | (max-width: 639px) |
| Mobile | <= 640px | (max-width: 640px) |
| Mobile | <= 767px | (max-width: 767px) |
| Breakpoint 5 | <= 768px | (max-width: 768px) |
| Breakpoint 6 | <= 1024px | (max-width: 1024px) |
| Breakpoint 7 | <= 1230px | (max-width: 1230px) |
| Breakpoint 8 | <= 1400px | (max-width: 1400px) |
| Mobile | 640-768px | (min-width: 640px) and (max-width: 768px) |
| Mobile | >= 640px | (min-width: 640px) |
| Tablet | 768-1400px | (min-width: 768px) and (max-width: 1400px) |
| Tablet | >= 768px | (min-width: 768px) |
| Desktop | >= 1024px | (min-width: 1024px) |
| Desktop | >= 1230px | (min-width: 1230px) |
| Desktop | >= 1400px | (min-width: 1400px) |
| Desktop | >= 1536px | (min-width: 1536px) |
| Breakpoint 17 | Unknown | (max-width: var("--breakpoint-sm")) |

## Agent Prompt Guide

### Example Component Prompts
- Create Badge variant that preserves Pill-shaped label chip used for category tags and metadata; light grey fill with black text.
- Create Content Card variant that preserves Borderless article card with illustration thumbnail, heading, body excerpt, and arrow link; used in promise/feature grid.
- Create Display Heading variant that preserves Large hero heading combining bold General Sans and light Cooper Lt BT for dual-weight typographic contrast.

### Iteration Guide
1. Start with extracted palette and typography roles only.
2. Map spacing and radius directly from token tables before visual polish.
3. Apply component patterns one section at a time and compare against source intent.
4. Keep elevation claims tied to explicit evidence in output.
5. Iterate with smallest diffs and re-check section hierarchy after each change.
