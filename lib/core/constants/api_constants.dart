class ApiConstants {
  static const String appUrl = 'app';
  static const String check = 'check';
  static const String login = 'login';
  static const String signup = 'signup';
  static const String register = 'register';
  static const String logout = 'logout';
  static const String profile = 'me';
  static const String cmnts = 'cmnts';
  static const String toggleFollowFollowers = 'follow/{id}';
  static const String refreshToken = 'refresh-token';

  // Other endpoints
  static const String orders = 'orders';
  static const String notifications = 'notifications';

  // Posts & Occasions endpoints
  static const String posts = 'posts';
  static const String likes = 'likes';

  // Headers
  static const String authToken = 'auth-token';
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const String authorization = 'Authorization';
  static const String acceptLanguage = 'Accept-Language';

  // Timeouts
  static const int receiveTimeout = 15000; // 15 seconds
  static const int connectTimeout = 15000; // 15 seconds
  static const int sendTimeout = 10000; // 10 seconds
}
