import 'package:booklyapp/features/search/presentaion/views/widget/search_view-body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: SearchViewBody()));
  }
}
