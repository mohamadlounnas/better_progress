import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double size;
  const AppLogo({
    super.key,
    this.size = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Theme.of(context).brightness == Brightness.dark
          ? 'assets/logo/logo_dark.png'
          : 'assets/logo/logo_light.png',
      width: size,
      height: size,
    );
  }
}