import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .stretch,
      children: [
        Image.asset(AssetsData.logo),
        const Text(
          'Read free books',
          textAlign: .center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
