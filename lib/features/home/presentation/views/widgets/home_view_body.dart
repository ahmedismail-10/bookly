import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_sliver_list.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding),
                child: CustomAppBar(),
              ),
              SizedBox(height: 48),
              Padding(
                padding: EdgeInsets.only(left: kPadding),
                child: FeaturedListView(),
              ),
              Padding(
                padding: EdgeInsets.only(left: kPadding, top: 50, bottom: 25),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
          sliver: BestSellerSliverList(),
        ),
      ],
    );
  }
}
