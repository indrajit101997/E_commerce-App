import 'dart:convert';

import 'package:food_delivery_app/models/cart_model.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo{
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});


  List<String> cart=[];
  List<String> cartHistory=[];

  void addToCartList(List<CartModel> cartList){
  /* sharedPreferences.remove(AppConstants.CART_LIST);
   sharedPreferences.remove(AppConstants.CART_HISTORY_LIST);
   return;
*/
    var time =DateTime.now().toString();
    cart=[];
    /*
    convert objects to string because sharedPreferences only accets string
     */

    cartList.forEach((element) {
      element.time= time;
      return cart.add(jsonEncode(element));
    });

    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
   //print(sharedPreferences.getStringList(AppConstants.CART_LIST));
   // getCartList();
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

    carts.forEach((element) =>cartList.add(CartModel.fromJson(jsonDecode(element))));
    return cartList;
  }

  List<CartModel> getCartHistoryList(){
    if(sharedPreferences.containsKey(AppConstants.CART_HISTORY_LIST)){
      cartHistory=[];
      cartHistory =sharedPreferences.getStringList(AppConstants.CART_HISTORY_LIST)!;

    }
    List<CartModel> cartListHistory=[];
    cartHistory.forEach((element) =>cartListHistory.add(CartModel.fromJson(jsonDecode(element))));
    return cartListHistory;
  }

  void addToCartHistoryList(){
    if(sharedPreferences.containsKey(AppConstants.CART_HISTORY_LIST)){
      cartHistory =sharedPreferences.getStringList(AppConstants.CART_HISTORY_LIST)!;
    }
    for(int i=0;i<cart.length;i++){
     print("history list "+cart[i]);
      cartHistory.add(cart[i]);
    }
    removeCart();
    sharedPreferences.setStringList(AppConstants.CART_HISTORY_LIST, cartHistory);
    print("THe length of History list "+getCartHistoryList().length.toString());
    for(int j=0;j<getCartHistoryList().length; j++){
      print("The Time for the order is "+getCartHistoryList()[j].time.toString());
    }
  }
  removeCart(){
    cart=[];
    sharedPreferences.remove(AppConstants.CART_LIST);
  }
}