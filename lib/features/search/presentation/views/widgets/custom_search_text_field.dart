import 'package:bookly/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: CustomIconButton(
          icon: FontAwesomeIcons.magnifyingGlass,
          size: 25,
          onPressed: () {},
        ),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: .circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
