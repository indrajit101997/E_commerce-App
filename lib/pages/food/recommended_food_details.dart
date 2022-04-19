import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Widgets/app_icon.dart';
import 'package:food_delivery_app/Widgets/big_text.dart';
import 'package:food_delivery_app/Widgets/expandable_text.dart';
import 'package:food_delivery_app/routes/route_helper.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:get/get.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
           SliverAppBar(
             automaticallyImplyLeading: false,
             toolbarHeight: 70,
             title: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 GestureDetector(
                   onTap:(){
                     Get.toNamed(RouteHelper.initial);
                   },
                     child: AppIcon(icon: Icons.clear)),
                 AppIcon(icon: Icons.shopping_cart_outlined)
               ],
             ),
             bottom: PreferredSize(
               preferredSize: Size.fromHeight(20),
               child: Container(

                 child: Center(child: BigText(
                   size:Dimensions.font26,
                   text: "India Sides",
                 )),
                 width: double.maxFinite,
                 padding: EdgeInsets.only(top: 5,bottom: 10),
                 decoration: BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(Dimensions.radius20),
                       topLeft: Radius.circular(Dimensions.radius20)
                   )
                 ),
               ),
             ),
             pinned: true,
             expandedHeight: 300.0,
             backgroundColor: AppColors.yellowColor,


             flexibleSpace: FlexibleSpaceBar(
               background: Image.asset(
                 "assets/images/spaghetti.jpg",
                 width:double.maxFinite,
                 fit: BoxFit.cover,
               ),
             ),
           ),
            SliverToBoxAdapter(
              child:Container(
                margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                child: ExpandableText(text:"There are several main types of biryani that are specific to certain communities. Each variety is named after the place it was created.Sindhi biryani: This aromatic type of biryani is popular in Pakistan and known for its spicy taste, fragrant rice, and delicate meat. It is made with meat and basmati rice, vegetables, and various types of spices. Hyderabadi biryani: This biryani is one of India's most popular types of biryani. It incorporates goat meat that is marinated and cooked along with the rice and is seasoned with coconut and saffronMalabar Biriyani: This is the only version of biryani in Kerala, an Indian state. It is a popular dish eaten by the Malabar Muslim community and incorporates Khyma rice mixed with ghee.Calcutta/Kolkata biryani: This biryani mostly uses potatoes and eggs and only sometimes contains meat. It is much lighter spice-wise; the marinade is made of cinnamon, nutmeg, cloves, cardamom, and other spices, and the rice is flavored with ketaki or rose water and is yellow in color.Ambur biryani: This leather-tanning city in Tamil Nadu makes one of the most famous types of biryani, and the town has more biryani shops than any other city in the world. The meat and rice are cooked separately and then brought together, along with mint leaves and curd.Lucknowi biryani: This type of biryani is based on a Persian cooking style so it uses the dum pukht method where the meat and gravy are only cooked partially and are then layered and served in a sealed handi. The spice profile is not as intense.Mughlai biryani: This biryani is cooked with curd, chicken, almond paste, ghee, dry fruits, and green chilies, and has a rich flavor.Kalyani biryani: Small chunks of buffalo meat go into this more budget-friendly biryani. It is rich and flavorful but does not include more expensive ingredients There are several main types of biryani that are specific to certain communities. Each variety is named after the place it was created.Sindhi biryani: This aromatic type of biryani is popular in Pakistan and known for its spicy taste, fragrant rice, and delicate meat. It is made with meat and basmati rice, vegetables, and various types of spices. Hyderabadi biryani: This biryani is one of India's most popular types of biryani. It incorporates goat meat that is marinated and cooked along with the rice and is seasoned with coconut and saffronMalabar Biriyani: This is the only version of biryani in Kerala, an Indian state. It is a popular dish eaten by the Malabar Muslim community and incorporates Khyma rice mixed with ghee.Calcutta/Kolkata biryani: This biryani mostly uses potatoes and eggs and only sometimes contains meat. It is much lighter spice-wise; the marinade is made of cinnamon, nutmeg, cloves, cardamom, and other spices, and the rice is flavored with ketaki or rose water and is yellow in color.Ambur biryani: This leather-tanning city in Tamil Nadu makes one of the most famous types of biryani, and the town has more biryani shops than any other city in the world. The meat and rice are cooked separately and then brought together, along with mint leaves and curd.Lucknowi biryani: This type of biryani is based on a Persian cooking style so it uses the dum pukht method where the meat and gravy are only cooked partially and are then layered and served in a sealed handi. The spice profile is not as intense.Mughlai biryani: This biryani is cooked with curd, chicken, almond paste, ghee, dry fruits, and green chilies, and has a rich flavor.Kalyani biryani: Small chunks of buffalo meat go into this more budget-friendly biryani. It is rich and flavorful but does not include more expensive ingredients There are several main types of biryani that are specific to certain communities. Each variety is named after the place it was created.Sindhi biryani: This aromatic type of biryani is popular in Pakistan and known for its spicy taste, fragrant rice, and delicate meat. It is made with meat and basmati rice, vegetables, and various types of spices. Hyderabadi biryani: This biryani is one of India's most popular types of biryani. It incorporates goat meat that is marinated and cooked along with the rice and is seasoned with coconut and saffronMalabar Biriyani: This is the only version of biryani in Kerala, an Indian state. It is a popular dish eaten by the Malabar Muslim community and incorporates Khyma rice mixed with ghee.Calcutta/Kolkata biryani: This biryani mostly uses potatoes and eggs and only sometimes contains meat. It is much lighter spice-wise; the marinade is made of cinnamon, nutmeg, cloves, cardamom, and other spices, and the rice is flavored with ketaki or rose water and is yellow in color.Ambur biryani: This leather-tanning city in Tamil Nadu makes one of the most famous types of biryani, and the town has more biryani shops than any other city in the world. The meat and rice are cooked separately and then brought together, along with mint leaves and curd.Lucknowi biryani: This type of biryani is based on a Persian cooking style so it uses the dum pukht method where the meat and gravy are only cooked partially and are then layered and served in a sealed handi. The spice profile is not as intense.Mughlai biryani: This biryani is cooked with curd, chicken, almond paste, ghee, dry fruits, and green chilies, and has a rich flavor.Kalyani biryani: Small chunks of buffalo meat go into this more budget-friendly biryani. It is rich and flavorful but does not include more expensive ingredients There are several main types of biryani that are specific to certain communities. Each variety is named after the place it was created.Sindhi biryani: This aromatic type of biryani is popular in Pakistan and known for its spicy taste, fragrant rice, and delicate meat. It is made with meat and basmati rice, vegetables, and various types of spices. Hyderabadi biryani: This biryani is one of India's most popular types of biryani. It incorporates goat meat that is marinated and cooked along with the rice and is seasoned with coconut and saffronMalabar Biriyani: This is the only version of biryani in Kerala, an Indian state. It is a popular dish eaten by the Malabar Muslim community and incorporates Khyma rice mixed with ghee.Calcutta/Kolkata biryani: This biryani mostly uses potatoes and eggs and only sometimes contains meat. It is much lighter spice-wise; the marinade is made of cinnamon, nutmeg, cloves, cardamom, and other spices, and the rice is flavored with ketaki or rose water and is yellow in color.Ambur biryani: This leather-tanning city in Tamil Nadu makes one of the most famous types of biryani, and the town has more biryani shops than any other city in the world. The meat and rice are cooked separately and then brought together, along with mint leaves and curd.Lucknowi biryani: This type of biryani is based on a Persian cooking style so it uses the dum pukht method where the meat and gravy are only cooked partially and are then layered and served in a sealed handi. The spice profile is not as intense.Mughlai biryani: This biryani is cooked with curd, chicken, almond paste, ghee, dry fruits, and green chilies, and has a rich flavor.Kalyani biryani: Small chunks of buffalo meat go into this more budget-friendly biryani. It is rich and flavorful but does not include more expensive ingredients"
                   ),
              )
          )
        ],
      ),
      bottomNavigationBar: Column(
      mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconColor: Colors.white,
                    backgroundColor:AppColors.mainColor,
                    icon: Icons.remove,
                    iconSize: Dimensions.iconSize24,
                ),
                BigText(text: "\$12.88 "+" X "+"  0 ",color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(
                    iconColor: Colors.white,
                    backgroundColor:AppColors.mainColor,
                    icon: Icons.add,
                iconSize: Dimensions.iconSize24,),
              ],
            ),
          ),
          Container(
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
                  child:Center(
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,

                    ),
                  )
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
        ],
      ),
    );
  }
}
