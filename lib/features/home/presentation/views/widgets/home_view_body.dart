import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_sliver_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: .symmetric(horizontal: kPadding),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                CustomAppBar(),
                SizedBox(height: 48),
                FeaturedBooksListView(),
                SizedBox(height: 50),
                Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          NewestBooksSliverList(),
        ],
      ),
    );
  }
}
