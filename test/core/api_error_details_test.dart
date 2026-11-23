import 'package:dio/dio.dart';
import 'package:green/core/utils/api_error_details.dart';
import 'package:flutter_test/flutter_test.dart';

DioException _badResponse(int status, Object? data) {
  final options = RequestOptions(path: '/api/auth/sign-up');
  return DioException(
    requestOptions: options,
    type: DioExceptionType.badResponse,
    response: Response<Object?>(
      requestOptions: options,
      statusCode: status,
      data: data,
    ),
  );
}

void main() {
  test('surfaces Laravel field errors instead of a generic message', () {
    final info = mapApiError(
      _badResponse(422, {
        'message': 'The selected user type is invalid.',
        'errors': {
          'user_type': ['The selected user type is invalid.'],
        },
      }),
    );

    expect(info.message, contains('user_type'));
    expect(info.message, contains('invalid'));
  });

  test('surfaces a reason stored in errors when message is null', () {
    final info = mapApiError(
      _badResponse(401, {'message': null, 'errors': 'غير مصرح بالدخول'}),
    );

    expect(info.message, contains('غير مصرح بالدخول'));
  });

  test('falls back to a clear local message for opaque server errors', () {
    final info = mapApiError(_badResponse(500, {'message': 'Server Error'}));

    expect(info.message, contains('الخادم'));
    expect(info.message, isNot(contains('Server Error')));
  });

  test('keeps the default mapper for non-HTTP errors', () {
    final info = mapApiError(Exception('boom'));

    expect(info.message, isNotEmpty);
  });
}
