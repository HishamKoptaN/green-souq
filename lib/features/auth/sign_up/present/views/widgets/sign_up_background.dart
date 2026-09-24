import 'package:flutter/widgets.dart';

class SignInBackground extends StatelessWidget {
  final Widget child;
  const SignInBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: .infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/rectangle_14.png'),
          alignment: Alignment.topLeft,
          fit: BoxFit.none,
          // colorFilter: ColorFilter.mode(
          // AppColors.brandMint,
          // BlendMode.srcIn,
          // ),
        ),
      ),
      child: IntrinsicHeight(child: child),
    );
  }
}
