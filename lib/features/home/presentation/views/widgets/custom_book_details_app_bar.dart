import 'package:bookly/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        CustomIconButton(
          icon: Icons.close,
          onPressed: () {
            GoRouter.of(context).pop();
          },
          size: 32,
        ),
        CustomIconButton(
          icon: Icons.shopping_cart_outlined,
          onPressed: () {},
          size: 25,
        ),
      ],
    );
  }
}
