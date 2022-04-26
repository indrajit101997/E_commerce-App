
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages=[
    MainFoodPage(),
    Container(child: Center(child: Text("next page"))),
    Container(child: Center(child: Text("next next page"))),
    Container(child: Center(child: Text("next next next page"))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],

    );
  }
}
