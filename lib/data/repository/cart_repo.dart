import 'dart:convert';

import 'package:food_delivery_app/models/cart_model.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo{
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});


  List<String> cart=[];

  void addToCartList(List<CartModel> cartList){
    cart=[];
    /*
    convert objects to strinmg because sharedPreferences only accets string
     */

    cartList.forEach((element) => cart.add(jsonEncode(element)));

    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
   //print(sharedPreferences.getStringList(AppConstants.CART_LIST));
    getCartList();
  }

  List<CartModel> getCartList(){
    List<String> carts=[];
    if(sharedPreferences.containsKey(AppConstants.CART_LIST)){
      carts=sharedPreferences.getStringList(AppConstants.CART_LIST)!;
      print("inside getCartList"+carts.toString());
    }
    List<CartModel> cartList=[];
    /*
    example
    List<object> list=[
    "object1"
    "object2"
    "object3"
    .....
    ]
    */

    carts.forEach((element) =>CartModel.fromJson(jsonDecode(element)));
    return cartList;
  }
}