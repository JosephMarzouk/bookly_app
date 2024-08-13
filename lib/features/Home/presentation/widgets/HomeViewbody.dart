import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/widgets/BestSellerListView.dart';
import 'package:bookly_app/features/Home/presentation/widgets/CustomAppBar.dart';
import 'package:bookly_app/features/Home/presentation/widgets/FeaturedBookList.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedBookListView(),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              const Padding(
                padding: EdgeInsets.only(left: 14),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
       const SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
   }
}

