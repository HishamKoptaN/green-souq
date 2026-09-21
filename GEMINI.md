# Project Conventions

## Testing
- Always prefer `find.byKey` over `find.text` in widget tests. This improves test robustness, makes tests independent of specific localized text strings, and avoids breaking tests when UI text changes.
