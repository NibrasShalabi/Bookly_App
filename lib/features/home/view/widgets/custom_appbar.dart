import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 24 , right: 24 , top: 40 , bottom: 28),
      child: Row(
        children: [
          Image.asset(AssetsData.logo),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/searchView');
            },
            icon: Icon(Icons.search_outlined, size: 32),
          ),
        ],
      ),
    );
  }
}
