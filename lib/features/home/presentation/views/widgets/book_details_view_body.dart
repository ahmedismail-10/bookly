import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 36),
          SizedBox(
            height: MediaQuery.of(context).size.height * (243 / 812),
            child: const FeaturedItem(),
          ),
        ],
      ),
    );
  }
}
