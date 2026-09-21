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

## File Complexity & Size Limits
- **File Length Limit:** Any single Dart file MUST NOT exceed 100 lines of code. If a file grows beyond 100 lines, it must be proactively refactored, split into smaller, cohesive widgets, or delegated to helper classes.
