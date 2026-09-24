import 'package:get_it/get_it.dart';
import 'package:green/features/auth/sign_in/domain/repo/I_auth_strategy.dart';
import 'package:injectable/injectable.dart';

enum AuthType { emailAndPass, google, emailLink, phone, anonymous }

@injectable
class AuthStrategyFactory {
  AuthStrategyFactory();
  IAuthStrategy getStrategy({required AuthType type}) {
    final sl = GetIt.I;
    switch (type) {
      case .emailAndPass:
        return sl<IAuthStrategy>(instanceName: 'email_and_password_auth');
      case .google:
        return sl<IAuthStrategy>(instanceName: 'google_auth');
      case .phone:
        return sl<IAuthStrategy>(instanceName: 'phone_auth');
      case .emailLink:
        return sl<IAuthStrategy>(instanceName: 'email_link_auth');
      case .anonymous:
        return sl<IAuthStrategy>(instanceName: 'anonymous_auth');
    }
  }
}
