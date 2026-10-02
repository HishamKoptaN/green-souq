# Flutter & Dart Code Style Rules

## Use Block Bodies (`Convert to block body`):
   - Always prefer using full block bodies `{ return ...; }` for methods, functions, and widget builders.
   - Avoid arrow syntax / expression bodies (`=>`) whenever possible, even for single-line statements or return expressions.

## Use Dot Shorthand Syntax:
   - Use dot shorthand for enums, constructors, and static properties whenever supported by Dart/Flutter (e.g., `.center` instead of `MainAxisAlignment.center`, `.none` instead of `Enum.none`).
   
## ZERO HARDCODED STYLES & COLORS (STRICT RULE)
- **NEVER** use explicit colors via `Color(0xFF...)`, `Colors.green`, or `Colors.white` inside UI components.
- **NEVER** instantiate explicit text styles like `style: TextStyle(fontSize: ..., color: ..., fontWeight: ...)` directly in Widgets.
- **NEVER** hardcode font sizes, line heights, or text colors inside individual screens or widgets.

## Mandatory Theme-Driven Styling
- **ALL Colors** MUST be pulled directly from `Theme.of(context).colorScheme`:
  - DO: `color: Theme.of(context).colorScheme.primary`
  - DO: `color: Theme.of(context).colorScheme.surface`
  - DONT: `color: const Color(0xFF006838)`

- **ALL Typography & Fonts** MUST be pulled directly from `Theme.of(context).textTheme`:
  - DO: `style: Theme.of(context).textTheme.titleMedium`
  - DO: `style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.primary)`
  - DONT: `style: TextStyle(color: Color(0xFF006838), fontSize: 11.sp)`

## Dot Shorthand Integration
- Always combine theme access with dot shorthand where applicable:
  - DO: `padding: .all(16)`
  - DO: `color: Theme.of(context).colorScheme.primary`   
## Responsive Spacing & Padding Rules (ScreenUtil Integration)
- **ALWAYS combine Dot Shorthand with ScreenUtil extension (`.r`, `.w`, `.h`, `.sp`)**.
- **EdgeInsets & Padding**:
  - DO: `padding: .all(24.r)`
  - DO: `padding: .symmetric(horizontal: 16.w, vertical: 12.h)`
  - DO: `padding: .only(top: 8.h, bottom: 16.h)`
  - DONT: `padding: .all(24)` (Without responsive extension `.r`)
  - DONT: `padding: EdgeInsets.all(24)`

- **BorderRadius**:
  - DO: `borderRadius: .circular(12.r)`
  - DONT: `borderRadius: .circular(12)`  
## Post-Generation Auto-Fix Rule
After generating or modifying any Dart file, automatically run a regex replacement/refactor pass to ensure:
1. Every `.all(X)`, `.symmetric(...)`, `.circular(X)` uses `.r` extension (e.g., `.all(24.r)`).
2. No explicit `EdgeInsets.` or `BorderRadius.` static calls remain.

## Form Input Component Rules
- For phone number input fields, ALWAYS use `CustomPhoneFormField` located at `@lib/core/widgets/forms/custom_phone_form_field.dart`.

## Iconography Rules
- **ALWAYS** use icons from `Fontawesome` or `lucide_icons_flutter` libraries.
- **TRY TO AVOID** using standard Material `Icons` (`Icons.xxx`) as much as possible.

## Action Button Activation & Modification Logic Rules
- **Action Button State:** Any action button inside the application (e.g., Save, Submit, Update) must be enabled **only** if it actually performs a new action or there is an actual difference/modification compared to original data.
- **Modification Checking Logic:** The logic to check whether there are modifications or not (`hasChanges`, etc.) **MUST** be implemented inside the **Domain layer** within the **Entity**.

## File Complexity & Size Limits
- **File Length Limit:** Any single Dart file MUST NOT exceed 100 lines of code. If a file grows beyond 100 lines, it must be proactively refactored, split into smaller, cohesive widgets, or delegated to helper classes.
### Rule: Automatic Folder Modularization (The 4-File Threshold)
- **Trigger:** Whenever a directory contains more than **4 files** or small modular components, do not keep adding files to the same flat directory.
- **Action:** Automatically refactor and categorize the components into dedicated sub-directories based on their specific domain, feature, or technical responsibility.
- **Directory Structure Standard:**
  - `features/` or domain folders for business features.
  - `widgets/` or UI subfolders for isolated user interface components.
  - `models/` or `entities/` for data structures.
  - `blocs/` or `providers/` for state management.
- **Rule Enforcement:** Always ensure proper barrel files (`export ...`) are updated or created if necessary to keep import statements clean after reorganization.
