import 'package:booklyapp/features/home/view/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {

          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 20),
            child:  BookListViewItem(),
          );
        });
  }
}
