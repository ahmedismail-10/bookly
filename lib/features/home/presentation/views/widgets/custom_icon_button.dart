import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.size,
    this.onPressed,
  });
  final IconData icon;
  final double? size;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: IconButton(
        icon: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
        onPressed: onPressed,
        padding: .zero,
      ),
    );
  }
}
