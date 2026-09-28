---
name: AgroTech Enterprise RTL
colors:
  surface: '#f0fdf2'
  surface-dim: '#d0ddd4'
  surface-bright: '#f0fdf2'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eaf7ed'
  surface-container: '#e4f1e7'
  surface-container-high: '#deebe1'
  surface-container-highest: '#d9e6dc'
  on-surface: '#131e18'
  on-surface-variant: '#3f4940'
  inverse-surface: '#28332c'
  inverse-on-surface: '#e7f4ea'
  outline: '#6e7a6f'
  outline-variant: '#becabd'
  surface-tint: '#006d3b'
  primary: '#006838'
  on-primary: '#ffffff'
  primary-container: '#16834b'
  on-primary-container: '#e8ffea'
  inverse-primary: '#78da99'
  secondary: '#006d3c'
  on-secondary: '#ffffff'
  secondary-container: '#7ff7aa'
  on-secondary-container: '#00723f'
  tertiary: '#735500'
  on-tertiary: '#ffffff'
  tertiary-container: '#926c00'
  on-tertiary-container: '#fff7ef'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#94f7b3'
  primary-fixed-dim: '#78da99'
  on-primary-fixed: '#00210e'
  on-primary-fixed-variant: '#00522b'
  secondary-fixed: '#82faad'
  secondary-fixed-dim: '#65dd93'
  on-secondary-fixed: '#00210e'
  on-secondary-fixed-variant: '#00522c'
  tertiary-fixed: '#ffdf9f'
  tertiary-fixed-dim: '#f0c051'
  on-tertiary-fixed: '#261a00'
  on-tertiary-fixed-variant: '#5b4300'
  background: '#f0fdf2'
  on-background: '#131e18'
  surface-variant: '#d9e6dc'
typography:
  display-lg:
    fontFamily: IBM Plex Sans
    fontSize: 40px
    fontWeight: '700'
    lineHeight: 52px
  display-sm:
    fontFamily: IBM Plex Sans
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 44px
  headline-lg:
    fontFamily: IBM Plex Sans
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 34px
  headline-md:
    fontFamily: IBM Plex Sans
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  headline-sm:
    fontFamily: IBM Plex Sans
    fontSize: 18px
    fontWeight: '500'
    lineHeight: 26px
  body-lg:
    fontFamily: IBM Plex Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 26px
  body-md:
    fontFamily: IBM Plex Sans
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 22px
  body-sm:
    fontFamily: IBM Plex Sans
    fontSize: 12px
    fontWeight: '400'
    lineHeight: 18px
  label-lg:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
  label-md:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
  label-sm:
    fontFamily: Inter
    fontSize: 11px
    fontWeight: '500'
    lineHeight: 14px
  numeric-metric:
    fontFamily: Inter
    fontSize: 28px
    fontWeight: '700'
    lineHeight: 32px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  gutter: 1.5rem
  margin: 2rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2rem
---

## Brand & Style

This design system targets an Arabic-first B2B agricultural ecosystem connecting farm operators, wholesale distributors, bulk buyers, and agronomic service providers. The visual and functional tone balances grounded agrarian authority with modern enterprise software clarity. 

### Design Principles
- **Rooted Authority:** Deep, organic greens project stability, lineage, and domain legitimacy, moving away from low-fidelity consumer apps toward high-trust supply-chain infrastructure.
- **Data-Dense Utility:** Agricultural commerce depends on bulk unit metrics, SKU grades, logistics timings, and price indexing. Content presentation prioritizes high scannability, structural consistency, and visual hierarchy over decorative ornamentation.
- **Bilingual & Bi-directional Parity:** Built from the ground up for right-to-left (RTL) Arabic primary workflows, while guaranteeing symmetric legibility and structured balance when displaying paired Latin scripts, ISO currency codes, and Western numerals.
- **Operational Trust:** Interfaces rely on crisp borders, calibrated surface shifts, and deliberate contrast rather than floating layers, reinforcing transparency and financial accountability.

### Design Movement
Modern Corporate SaaS meets Precision Agrotech: structural minimalism, low-elevation surface hierarchies, disciplined micro-borders, and tactile operational components tailored for extensive data sheets, trade negotiations, and enterprise verification funnels.

## Colors

The color system structures transactions, visual validation, and operational data states across the marketplace.

### Functional Palette Structure
- **Primary Deep Green (`#16834B`):** Establishes institutional gravity. Used for high-priority actions, verified trust badges, primary navigation chrome, and major transactional touchpoints.
- **Secondary Vibrant Tech Green (`#2EAD68`):** Denotes real-time system feedback, active inventory status, positive price deltas, and focal points in data visualizations.
- **Tertiary Warm Harvest Gold (`#E8B84A`):** Applied strictly as an accent for escrow statuses, quality tiers (Grade-A certification), critical market alerts, and contract milestones.
- **Neutral Dark Charcoal (`#17221C`):** High-legibility base for typography and high-contrast structural borders, offering superior sharpness over standard muted grays.
- **Canvas Base (`#F8FAF9`):** Soft, tinted off-white background mitigating glare during extended operational usage under warehouse or outdoor field conditions.
- **Card Surfaces (`#FFFFFF`):** High-purity white used to isolate interactive clusters, bulk data tables, and modal dialogues.
- **Borders & Dividers (`#E2EBE5`):** Subtly pigmented structural lines delivering structural definition without visual clutter.

## Typography

Typography handles complex bilingual nesting and data-heavy ledger formats. The pairing relies on IBM Plex Sans Arabic for native baseline balance and formal structure, combined with Inter for high-density metrics, unit breakdowns, and western system labels.

### Font Role Allocation
- **IBM Plex Sans (Arabic variant):** Primary script covering all narrative text, page headers, marketplace titles, and operational workflow steps. Selected for its formal baseline stability, distinct letter shapes, and open counters that remain readable at low resolutions.
- **Inter:** Secondary alphanumeric face for quantities, bulk metric conversions (e.g., metric tons, dunams, cartons), financial pricing tables, currency indicators (SAR, AED, USD), and English sub-labels.

### Typographic Implementation Rules
- **Line Height Compensation:** Arabic type requires roughly 20-30% more vertical breathing room than Latin type to prevent ascender and descender collisions (such as the dots in letters like خ, ج, and deep loops like ي, ل). Line heights are scaled up explicitly across all body and headline levels.
- **Numerical Tabular Lining:** Set `font-feature-settings: "tnum" 1` across all instances of Inter within marketplace tables and trading ledgers to guarantee strict vertical alignment of numbers.

## Layout & Spacing

The layout is built for high-resolution desktop web workstations (1440px standard canvas, scaling cleanly from 1280px to 1920px). It balances enterprise data density with clear spatial grouping.

### Structural Grid
- **Desktop Architecture:** 12-column responsive grid with fixed `1.5rem` (24px) gutters and a flexible outer frame margin bounded by a maximum layout container of `1440px`.
- **RTL Axis Management:** The structural origin sits at the top right of the viewport. Sidebar navigation anchors to the right edge (`column 1`), with breadcrumbs, table headers, and primary inputs reading consistently from right to left.
- **Spacing Cadence:** Systematic 4px/8px incremental base scale (`0.25rem` to `2rem`). Micro paddings (`space-xs`, `space-sm`) define internal form fields and status pills; macro intervals (`space-lg`, `space-xl`) define container segmentations and table margins.

## Elevation & Depth

To preserve an enterprise B2B SaaS aesthetic, elevation avoids floating consumer shadows in favor of surface layering, micro-borders, and subtle ambient groundings.

### Layering Strategy
- **Layer 0 (Canvas Base):** Filled with `#F8FAF9`. Hosts high-level views, page wrappers, and neutral desktop canvas.
- **Layer 1 (Cards & Data Grids):** Flat `#FFFFFF` panels framed by a 1px solid border of `#E2EBE5`. No drop shadow in static states.
- **Layer 2 (Interactive Floating Elements):** Dropdown menus, typeaheads, and contextual flyouts use `#FFFFFF` combined with a soft, tinted drop shadow: `0 4px 16px -2px rgba(23, 34, 28, 0.06), 0 1px 3px 0 rgba(23, 34, 28, 0.04)`.
- **Layer 3 (Modals & Overlays):** Full-focus modal takeovers use `#FFFFFF` enclosed by `#E2EBE5` borders, cast against an ambient backing of `rgba(23, 34, 28, 0.4)` with a 4px backdrop blur.

## Shapes

The interface uses a Soft (`1`) roundedness language (base radius: `0.25rem` / 4px). This restrained curvature supports a disciplined, high-density dashboard feel suitable for commercial inventory tools, trade execution screens, and compliance documents.

### Geometry Hierarchy
- **Base (4px):** Form controls, text inputs, table row highlights, default buttons, and numeric tags.
- **Large (8px):** Primary marketplace product cards, role-selection tiles, aggregated charts, and modal frames.
- **Full (9999px / Pill):** Reserved exclusively for status indicators, verification tags, and category filter chips.

## Components

### Buttons
- **Primary:** Background `#16834B`, text `#FFFFFF`, border `none`, radius `4px`. On hover: `#126E3F`. On active: `#0D522F`.
- **Secondary:** Background `transparent`, text `#16834B`, border `1px solid #16834B`, radius `4px`. On hover: background `#F0F6F2`.
- **Tertiary / Ghost:** Background `transparent`, text `#17221C`, border `none`. On hover: background `#E2EBE5`.
- **Icon Placement (RTL):** Action-advancing icons (such as directional arrows) are placed on the left side of the label, pointing leftward. Status and descriptive icons precede the label on the right side.

### Role-Selection Onboarding Cards
- Interactive selection panels designed for initial onboarding (e.g., Farm Operator, Wholesaler, Agricultural Retailer, Logistics Partner).
- **Structure:** Card surface `#FFFFFF`, border `2px solid #E2EBE5`, padding `1.5rem`, radius `8px`. Includes an icon header, an Arabic primary headline, a body description, and a selection state indicator.
- **Selected State:** Border color shifts to `#16834B`, with a background tint of `#F0F7F3` and an animated check icon in the top-left corner (RTL primary anchor).

### Inputs & Select Fields
- **Base Input:** Background `#FFFFFF`, border `1px solid #E2EBE5`, text `#17221C`, padding `0.5rem 0.75rem`, radius `4px`.
- **Focus State:** Border color `#16834B`, subtle outline `2px solid rgba(22, 131, 75, 0.15)`.
- **Label & Helper Layout:** Labels align right above the input; contextual indicators (e.g., character counts, metric units) align left at the same horizontal level.

### Badges & Chips
- **Status Badges:** Inline-flex, radius `9999px`, padding `0.25rem 0.625rem`, font size `12px` (Inter).
  - *Active / Available:* Background `rgba(46, 173, 104, 0.12)`, text `#16834B`.
  - *Under Review / Escrow:* Background `rgba(232, 184, 74, 0.15)`, text `#916B13`.
  - *Suspended / Out of Stock:* Background `rgba(217, 83, 79, 0.12)`, text `#A93226`.
- **Filter Chips:** Background `#FFFFFF`, border `1px solid #E2EBE5`, text `#17221C`, radius `9999px`. Selected state uses background `#16834B` and text `#FFFFFF`.

### Data Tables & Ledger Rows
- High-density layout tailored for trade volumes, price per kilogram/ton, and logistical tracking.
- **Header:** Background `#F8FAF9`, border-bottom `1px solid #E2EBE5`, typography `label-md`, right-aligned text. Numeric metric columns align left with `font-feature-settings: "tnum" 1`.
- **Row:** Height `48px`, border-bottom `1px solid #E2EBE5`, hover state background `#F4F8F5`.