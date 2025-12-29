import 'package:bookly/constant.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: .symmetric(horizontal: kPadding),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 48),
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}
