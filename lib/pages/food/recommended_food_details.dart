import 'package:flutter/material.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
             expandedHeight: 300,
             flexibleSpace: FlexibleSpaceBar(
               background: Image.asset(
                 "assets/images/spaghetti.jpg",
                 width:double.maxFinite,
                 fit: BoxFit.cover,
               ),
             ),
           )
        ],
      ),
    );
  }
}
