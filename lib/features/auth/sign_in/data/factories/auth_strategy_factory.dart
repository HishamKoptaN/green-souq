import 'package:get_it/get_it.dart';
import 'package:green/features/auth/sign_in/data/strategies/auth_strategy.dart';
import 'package:injectable/injectable.dart';

enum AuthType { emailAndPass, google, emailLink, phone, anonymous }

@injectable
class AuthStrategyFactory {
  AuthStrategyFactory();
  AuthStrategy getStrategy({required AuthType type}) {
    final sl = GetIt.I;
    switch (type) {
      case .emailAndPass:
        return sl<AuthStrategy>(instanceName: 'email_and_password_auth');
      case .google:
        return sl<AuthStrategy>(instanceName: 'google_auth');
      case .phone:
        return sl<AuthStrategy>(instanceName: 'phone_auth');
      case .emailLink:
        return sl<AuthStrategy>(instanceName: 'email_link_auth');
      case .anonymous:
        return sl<AuthStrategy>(instanceName: 'anonymous_auth');
    }
  }
}
