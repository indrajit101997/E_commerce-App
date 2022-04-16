import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
           SliverAppBar(
             bottom: PreferredSize(
               preferredSize: Size.fromHeight(0),
               child: Container(
                 color: Colors.white,
               ),
             ),
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
            child:Text( "There are several main types of biryani that are specific to certain communities. Each variety is named after the place it was created.Sindhi biryani: This aromatic type of biryani is popular in Pakistan and known for its spicy taste, fragrant rice, and delicate meat. It is made with meat and basmati rice, vegetables, and various types of spices. Hyderabadi biryani: This biryani is one of India's most popular types of biryani. It incorporates goat meat that is marinated and cooked along with the rice and is seasoned with coconut and saffronMalabar Biriyani: This is the only version of biryani in Kerala, an Indian state. It is a popular dish eaten by the Malabar Muslim community and incorporates Khyma rice mixed with ghee.Calcutta/Kolkata biryani: This biryani mostly uses potatoes and eggs and only sometimes contains meat. It is much lighter spice-wise; the marinade is made of cinnamon, nutmeg, cloves, cardamom, and other spices, and the rice is flavored with ketaki or rose water and is yellow in color.Ambur biryani: This leather-tanning city in Tamil Nadu makes one of the most famous types of biryani, and the town has more biryani shops than any other city in the world. The meat and rice are cooked separately and then brought together, along with mint leaves and curd.Lucknowi biryani: This type of biryani is based on a Persian cooking style so it uses the dum pukht method where the meat and gravy are only cooked partially and are then layered and served in a sealed handi. The spice profile is not as intense.Mughlai biryani: This biryani is cooked with curd, chicken, almond paste, ghee, dry fruits, and green chilies, and has a rich flavor.Kalyani biryani: Small chunks of buffalo meat go into this more budget-friendly biryani. It is rich and flavorful but does not include more expensive ingredients There are several main types of biryani that are specific to certain communities. Each variety is named after the place it was created.Sindhi biryani: This aromatic type of biryani is popular in Pakistan and known for its spicy taste, fragrant rice, and delicate meat. It is made with meat and basmati rice, vegetables, and various types of spices. Hyderabadi biryani: This biryani is one of India's most popular types of biryani. It incorporates goat meat that is marinated and cooked along with the rice and is seasoned with coconut and saffronMalabar Biriyani: This is the only version of biryani in Kerala, an Indian state. It is a popular dish eaten by the Malabar Muslim community and incorporates Khyma rice mixed with ghee.Calcutta/Kolkata biryani: This biryani mostly uses potatoes and eggs and only sometimes contains meat. It is much lighter spice-wise; the marinade is made of cinnamon, nutmeg, cloves, cardamom, and other spices, and the rice is flavored with ketaki or rose water and is yellow in color.Ambur biryani: This leather-tanning city in Tamil Nadu makes one of the most famous types of biryani, and the town has more biryani shops than any other city in the world. The meat and rice are cooked separately and then brought together, along with mint leaves and curd.Lucknowi biryani: This type of biryani is based on a Persian cooking style so it uses the dum pukht method where the meat and gravy are only cooked partially and are then layered and served in a sealed handi. The spice profile is not as intense.Mughlai biryani: This biryani is cooked with curd, chicken, almond paste, ghee, dry fruits, and green chilies, and has a rich flavor.Kalyani biryani: Small chunks of buffalo meat go into this more budget-friendly biryani. It is rich and flavorful but does not include more expensive ingredients")
          )
        ],
      ),
    );
  }
}
