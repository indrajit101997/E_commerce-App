import 'package:food_delivery_app/helper/dependencies.dart';
import 'package:food_delivery_app/pages/food/popular_food_details.dart';
import 'package:food_delivery_app/pages/food/recommended_food_details.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String initial="/";
  static const popularFood="/popular-food";
  static const recommendedFood="/recommended-food";

  static String getInitial() =>'$initial';
  static String getPopularFood()=>'$popularFood';
  static String getRecommendedFood()=>'$recommendedFood';

  static List<GetPage> routes=[
    //main page route
    GetPage(name: initial, page: ()=>MainFoodPage()),

    //populr food details route
    GetPage(name: popularFood, page:(){
      print("popular food get called");
      return PopularFoodDetails();},
      transition: Transition.fadeIn
    ),

    //recommended food details route
    GetPage(name: recommendedFood, page:(){
      print("recommended food get called");
      return RecommendedFoodDetails();},
        transition: Transition.fadeIn
    ),
  ];
  }
