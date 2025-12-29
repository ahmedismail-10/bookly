import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 24,
        ),
        CustomIconButton(
          icon: FontAwesomeIcons.magnifyingGlass,
          size: 25,
          onPressed: () {},
        ),
      ],
    );
  }
}
