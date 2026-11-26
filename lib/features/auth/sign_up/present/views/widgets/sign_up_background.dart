import 'package:flutter/widgets.dart';

class SignInBackground extends StatelessWidget {
  final Widget child;
  const SignInBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: .infinity,
      child: IntrinsicHeight(child: child),
    );
  }
}
