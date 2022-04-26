import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Widgets/app_icon.dart';
import 'package:food_delivery_app/Widgets/big_text.dart';
import 'package:food_delivery_app/Widgets/expandable_text.dart';
import 'package:food_delivery_app/controllers/cart_controller.dart';
import 'package:food_delivery_app/controllers/popular_product_controller.dart';
import 'package:food_delivery_app/controllers/recommended_controller.dart';
import 'package:food_delivery_app/routes/route_helper.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:get/get.dart';

class RecommendedFoodDetails extends StatelessWidget {
  final int pageId;
  final String page;

   RecommendedFoodDetails({Key? key,required this.pageId,required this.page }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =Get.find<RecommendedProductController>().recommendedProductList[pageId];
    Get.find<PopularProductController>().initProduct(product,Get.find<CartController>());

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
                       if(page=="cartpage"){
                         Get.toNamed(RouteHelper.getCartPage());
                       }else{
                         Get.toNamed(RouteHelper.getInitial());

                       }
                     },
                     child: AppIcon(icon: Icons.clear)),
              //   AppIcon(icon: Icons.shopping_cart_outlined)
                 GetBuilder<PopularProductController>(builder: (controller){
                   return GestureDetector(
                     onTap:(){
                       if(controller.totalItems>=1)
                         Get.toNamed(RouteHelper.getCartPage());
                     },
                     child: Stack(
                         children: [
                           AppIcon(icon: Icons.shopping_cart_outlined,),
                           Get.find<PopularProductController>().totalItems>=1?
                           Positioned(
                             right:3,top:2,
                               child: AppIcon(icon: Icons.circle,size:20,
                                   iconColor: Colors.transparent,backgroundColor: AppColors.mainColor),

                           ):
                           Container(),
                           Get.find<PopularProductController>().totalItems>=1?
                           Positioned(
                               right:8,top:4,
                               child: BigText(text: Get.find<PopularProductController>().totalItems.toString(),
                                 size:12,color: Colors.white,
                               )
                           ):
                           Container()

                         ]
                     ),
                   );
                 })
               ],
             ),
             bottom: PreferredSize(
               preferredSize: Size.fromHeight(20),
               child: Container(

                 child: Center(child: BigText(
                   size:Dimensions.font26,
                   text: product.name!,
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
               background: Image.network(
                 AppConstants.BASE_URL+AppConstants.UPLOAD_URL+product.img!,
                 width:double.maxFinite,
                 fit: BoxFit.cover,
               ),
             ),
           ),
            SliverToBoxAdapter(
              child:Container(
                margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                child: ExpandableText(text: product.description!
                   ),
              )
          )
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(builder: (controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  GestureDetector(
                    onTap: () {
                      controller.setQuantity(false);
                    },
                    child: AppIcon(
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.remove,
                      iconSize: Dimensions.iconSize24,
                    ),
                  ),
                  BigText(text: "\$ ${product.price!}  X  ${controller.inCartItems}" ,
                    color: AppColors.mainBlackColor,
                    size: Dimensions.font26,),
                  GestureDetector(
                    onTap: () {
                      controller.setQuantity(true);
                    },
                    child: AppIcon(
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.add,
                      iconSize: Dimensions.iconSize24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: Dimensions.bottomHeightBar,
              padding: EdgeInsets.only(top: Dimensions.height30,
                  bottom: Dimensions.height30,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  color: AppColors.buttonBackhroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20 * 2),
                      topRight: Radius.circular(Dimensions.radius20 * 2)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: Dimensions.height20,
                          bottom: Dimensions.height20,
                          left: Dimensions.width20,
                          right: Dimensions.width20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            Dimensions.radius20),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.mainColor,

                        ),
                      )
                  ),
                 GestureDetector(
                   onTap: (){
                     controller.addItem(product);
                   },
                   child:  Container(
                     padding: EdgeInsets.only(top: Dimensions.height20,
                         bottom: Dimensions.height20,
                         left: Dimensions.width20,
                         right: Dimensions.width20),
                     child: BigText(text: "\$ ${product.price!} | Add to cart",
                       color: Colors.white,),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(Dimensions.radius20),
                       color: AppColors.mainColor,
                     ),

                   ),
                 )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
