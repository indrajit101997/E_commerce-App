import 'package:food_delivery_app/helper/dependencies.dart';
import 'package:food_delivery_app/pages/cart/cart_page.dart';
import 'package:food_delivery_app/pages/food/popular_food_details.dart';
import 'package:food_delivery_app/pages/food/recommended_food_details.dart';
import 'package:food_delivery_app/pages/home/home_page.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:food_delivery_app/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String splashPage="/splash_page";
  static const String initial="/";
  static const popularFood="/popular-food";
  static const recommendedFood="/recommended-food";
  static const cartPage= "/cart-page";


  static String getSplashPage()=>'$splashPage';
  static String getInitial() =>'$initial';
  static String getPopularFood(int pageId,String page)=>'$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood(int pageId,String page)=>'$recommendedFood?pageId=$pageId&page=$page';
  static String getCartPage()=>'$cartPage';

  
  
  
  static List<GetPage> routes=[
    GetPage(name: splashPage, page: ()=>SplashScreen()),
    //main page route
    GetPage(name: initial, page: ()=>HomePage()),

    //populr food details route
    GetPage(name: popularFood, page:(){
      var pageId =Get.parameters['pageId'];
      var page=Get.parameters["page"];
      return PopularFoodDetails(pageId: int.parse(pageId!),page:page!);
      },
      transition: Transition.fadeIn
    ),

    //recommended food details route
    GetPage(name: recommendedFood, page:(){
      //print("recommended food get called");
      var pageId =Get.parameters['pageId'];
      var page=Get.parameters["page"];
      return RecommendedFoodDetails(pageId: int.parse(pageId!),page:page!);},
        transition: Transition.fadeIn
    ),
    
    GetPage(name: cartPage, page: (){
      return CartPage();
    },
    transition: Transition.fadeIn
    )
  ];
  }
