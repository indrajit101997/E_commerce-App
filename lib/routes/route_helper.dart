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
  static String getPopularFood(int pageId)=>'$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId)=>'$recommendedFood?pageId=$pageId';

  static List<GetPage> routes=[
    //main page route
    GetPage(name: initial, page: ()=>MainFoodPage()),

    //populr food details route
    GetPage(name: popularFood, page:(){
      var pageId =Get.parameters['pageId'];
      return PopularFoodDetails(pageId: int.parse(pageId!));
      },
      transition: Transition.fadeIn
    ),

    //recommended food details route
    GetPage(name: recommendedFood, page:(){
      print("recommended food get called");
      var pageId =Get.parameters['pageId'];
      return RecommendedFoodDetails(pageId: int.parse(pageId!));},
        transition: Transition.fadeIn
    ),
  ];
  }
