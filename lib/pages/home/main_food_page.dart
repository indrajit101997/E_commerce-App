
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Widgets/big_text.dart';
import 'package:food_delivery_app/Widgets/small_text.dart';
import 'package:food_delivery_app/pages/home/food_page_body.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
  //  print ("Current Height is "+MediaQuery.of(context).size.height.toString());
    //print("Current Width is "+ MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          //Showing Header
          Container(
            margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
            child: Container(
              child: Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                    BigText(text:"Banglashdesh",
                        color: AppColors.mainColor,
                        
                    ),
                    Row(
                      children: [
                        SmallText(text: 'Ahmednagar',color:Colors.black54),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    ),

                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search,color: Colors.white, size:Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //showing the body

          Expanded(
              child: SingleChildScrollView(
              child: FoodPageBody()
          )),
        ],
      ),
    );
  }
}
