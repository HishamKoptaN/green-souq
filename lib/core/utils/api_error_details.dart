import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';

/// Maps an API failure to the message actually shown to the user.
///
/// Laravel puts useful details in `errors` and sometimes sends an opaque
/// `Server Error` in `message`; the default mapper only reads `message`.
ErrorInfo mapApiError(Object error) {
  if (error case final DioException e
      when e.type == DioExceptionType.badResponse) {
    final data = e.response?.data;
    if (data is Map<String, dynamic>) {
      final details = extractErrorDetails(data['errors']);
      final rawMessage = data['message'];
      final serverMessage =
          rawMessage is String &&
              rawMessage.isNotEmpty &&
              rawMessage.toLowerCase() != 'server error'
          ? rawMessage
          : '';
      final message = details.isNotEmpty
          ? [
              details,
              if (serverMessage.isNotEmpty && !details.contains(serverMessage))
                serverMessage,
            ].join(' — ')
          : serverMessage;
      if (message.isNotEmpty) {
        return ErrorInfo(
          message: message,
          reportToCrashlytics: (e.response?.statusCode ?? 0) >= 500,
        );
      }
      final status = e.response?.statusCode ?? 0;
      return ErrorInfo(
        message: status >= 500
            ? 'عذراً، حدث خطأ في الخادم، يرجى المحاولة مرة أخرى لاحقاً'
            : 'تعذّر إكمال الطلب، يرجى المحاولة مرة أخرى',
        reportToCrashlytics: status >= 500,
      );
    }
  }
  return ErrorHandler.handle(error: error);
}

String extractErrorDetails(Object? errors) {
  return switch (errors) {
    null => '',
    final String text => text,
    final List values =>
      values
          .map(extractErrorDetails)
          .where((part) => part.isNotEmpty)
          .join('، '),
    final Map values =>
      values.entries
          .map((entry) => '${entry.key}: ${extractErrorDetails(entry.value)}')
          .where((part) => !part.endsWith(': '))
          .join('؛ '),
    _ => errors.toString(),
  };
}
