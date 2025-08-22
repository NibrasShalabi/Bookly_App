import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/view/widgets/best_seller_list_view.dart';
import 'package:booklyapp/features/home/view/widgets/custom_appbar.dart';
import 'package:booklyapp/features/home/view/widgets/featured_lstview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:const [
        SliverToBoxAdapter(
          child:  Column(
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(left: 30, bottom: 24),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),

        )

      ],
    );

  }
}





















