import 'package:bookly/features/splash/presentation/views/widgets/sliding_logo.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    slidingAnimation =
        Tween<Offset>(
          begin: const Offset(0, -5),
          end: .zero,
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: Curves.bounceOut,
          ),
        );
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .stretch,
      children: [
        SlidingLogo(slidingAnimation: slidingAnimation),
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
