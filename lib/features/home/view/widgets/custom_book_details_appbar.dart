import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){} , icon:Icon(Icons.close)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
        ],
      ),
    );
  }
}
