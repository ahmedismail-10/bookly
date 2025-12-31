import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: Text(
              '19.99€',
              style: Styles.textStyle18.copyWith(
                color: Colors.black,
                fontWeight: .bold,
              ),
            ),
            backgroundColor: Colors.white,
            borderRadius: const .only(
              topLeft: .circular(16),
              bottomRight: .circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: Text(
              'Free Preview',
              style: Styles.textStyle16.copyWith(
                fontFamily: kGilroy,
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const .only(
              topRight: .circular(16),
              bottomLeft: .circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
