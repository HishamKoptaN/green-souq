import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../forms/translated_text.dart';

class ErrorApp extends StatelessWidget {
  final FlutterErrorDetails? errorDetails;

  const ErrorApp({super.key, this.errorDetails});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          final theme = Theme.of(context);
          final colors = theme.colorScheme;
          return Scaffold(
            backgroundColor: colors.surface,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(Icons.error_outline, color: colors.error, size: 80),
                    const SizedBox(height: 20),
                    TrText(
                      'حدث خطأ غير متوقع',
                      style: theme.textTheme.headlineMedium,
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: TrText(
                        'عذراً، حدث خطأ ما. يرجى إعادة تشغيل التطبيق.',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    if (kDebugMode && errorDetails != null) ...[
                      const SizedBox(height: 24),
                      TrText(
                        'تفاصيل الخطأ (لتطوير فقط):',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      const SizedBox(height: 8),
                      SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: SelectableText(
                          errorDetails!.exceptionAsString(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colors.onSurfaceVariant,
                          ),
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ],
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        // Add restart logic if needed
                      },
                      child: const TrText('إعادة المحاولة'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
