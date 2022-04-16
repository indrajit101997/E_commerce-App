import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Widgets/app_column.dart';
import 'package:food_delivery_app/Widgets/app_icon.dart';
import 'package:food_delivery_app/Widgets/big_text.dart';
import 'package:food_delivery_app/Widgets/expandable_text.dart';
import 'package:food_delivery_app/Widgets/icon_and%20_text-widget.dart';
import 'package:food_delivery_app/Widgets/small_text.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //BackGround Image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/spaghetti.jpg"
                      ),
                    )
                  ),
              )),
          //icon Widget
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),

                  AppIcon(icon: Icons.shopping_cart_outlined)

                ],

          )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                    right:Dimensions.width20,
                    top: Dimensions.height20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight:Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,

                ),
                 child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     AppColumn(text: "Indias Side",),
                     SizedBox(height: Dimensions.height20,),
                     BigText(text: "Introduce"),
                     SizedBox(height: Dimensions.height20,),
                     Expanded(child:SingleChildScrollView(
                         child: ExpandableText(
                             text:
                             "There are several main types of biryani that are specific to certain communities. Each variety is named after the place it was created."
                             "Sindhi biryani: This aromatic type of biryani is popular in Pakistan and known for its spicy taste, fragrant rice, and delicate meat. It is made with meat and basmati rice, vegetables, and various types of spices. Hyderabadi biryani: This biryani is one of India's most popular types of biryani. It incorporates goat meat that is marinated and cooked along with the rice and is seasoned with coconut and saffron"
                                 "Malabar Biriyani: This is the only version of biryani in Kerala, an Indian state. It is a popular dish eaten by the Malabar Muslim community and incorporates Khyma rice mixed with ghee."
                                  "Calcutta/Kolkata biryani: This biryani mostly uses potatoes and eggs and only sometimes contains meat. It is much lighter spice-wise; the marinade is made of cinnamon, nutmeg, cloves, cardamom, and other spices, and the rice is flavored with ketaki or rose water and is yellow in color."
                         "Ambur biryani: This leather-tanning city in Tamil Nadu makes one of the most famous types of biryani, and the town has more biryani shops than any other city in the world. The meat and rice are cooked separately and then brought together, along with mint leaves and curd."
                         "Lucknowi biryani: This type of biryani is based on a Persian cooking style so it uses the dum pukht method where the meat and gravy are only cooked partially and are then layered and served in a sealed handi. The spice profile is not as intense."
                         "Mughlai biryani: This biryani is cooked with curd, chicken, almond paste, ghee, dry fruits, and green chilies, and has a rich flavor."
                         "Kalyani biryani: Small chunks of buffalo meat go into this more budget-friendly biryani. It is rich and flavorful but does not include more expensive ingredients."
                         )
                     )
                     ),
                   ],
                 )
              )),
          //Exapandable text widget

        ],
      ),
      bottomNavigationBar: Container(
        height:Dimensions.bottomHeightBar ,
        padding: EdgeInsets.only(top:Dimensions.height30 ,bottom:Dimensions.height30 ,left:Dimensions.width20 ,right:Dimensions.width20 ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackhroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top:Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color:AppColors.signColor),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color:AppColors.signColor),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              child:BigText(text: "\$10 | Add to cart", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color:AppColors.mainColor,
              ),

            )
          ],
        ),
      ),
    );
  }
}