# Flutter ProGuard rules
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugin.common.** { *; }
-keep class io.flutter.plugins.** { *; }

# Ignore missing Play Core classes referenced by Flutter Engine
-dontwarn com.google.android.play.core.**
-keep class com.google.android.play.core.** { *; }

# Shorebird Keep Rules
-keep class io.shorebird.** { *; }
-dontwarn io.shorebird.**

# Keep Flutter Engine Reflection
-keep class io.flutter.embedding.engine.** { *; }

