
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/controllers/popular_product_controller.dart';
import 'package:food_delivery_app/controllers/recommended_controller.dart';
import 'package:food_delivery_app/routes/route_helper.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  Future<void>_loasResource() async{
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedProductList();
  }

  @override
  void initState(){
    super.initState();
    _loasResource();
    controller=  AnimationController(vsync:this,
        duration:const Duration(seconds:2))..forward();

    animation= CurvedAnimation(
        parent: controller,
        curve: Curves.linear);
    Timer(
    const  Duration(seconds: 3),
        ()=>Get.offNamed(RouteHelper.getInitial())
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
              child: Center(child: Image.asset("assets/images/food_logo1.jpg",
                width: Dimensions.splashImg*3,))),
          Center(child: Image.asset("assets/images/healthy_logo1.jpg",
              width:Dimensions.splashImg ,)),
        ],
      ),
    );
  }
}
