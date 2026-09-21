# Workspace Rules

- Avoid using hardcoded `TextStyle` attributes (like specific `fontSize`, `color`, etc.) directly inside UI components. Instead, always rely on `Theme.of(context).textTheme` (e.g. `textTheme.titleLarge`, `textTheme.bodyMedium`, `textTheme.labelSmall`).
