import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Widgets/app_column.dart';
import 'package:food_delivery_app/Widgets/big_text.dart';
import 'package:food_delivery_app/Widgets/icon_and%20_text-widget.dart';
import 'package:food_delivery_app/Widgets/small_text.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController=PageController(viewportFraction: 0.85);
  var _currentPageValue=0.0;
  double _scaleFactor=0.8;
  double _height=Dimensions.pageViewContainer;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue= pageController.page!;
        print("Current page value"+_currentPageValue.toString());
      });
    });
  }


  @override
  void dispose(){
    pageController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider Section
        Container(
         // color: Colors.red,
          height:Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
              itemBuilder: (context, position){
                return _buildPageItem(position);
              }),
        ),
        //Dots Section
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
           ),
       ),

        //Popular text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text:".",color:Colors.black26),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food pairing",),
              )
            ],
          ),
        ),

        //List of food and Images
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Container(
                  margin: EdgeInsets.only(top:Dimensions.height5,bottom:Dimensions.height5,left: Dimensions.width20,right: Dimensions.width20),
                  child:Row(
                    children: [
                      //Images section
                      Container(
                        width:Dimensions.listViewImgSize,
                        height:Dimensions.listViewImgSize,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color:Colors.white38,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/traditional-indian-soup.jpg"),
                              )

                          )
                      ),
                      //text section
                      Expanded(
                        child: Container(
                          height: Dimensions.listViewTextContSize,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight:Radius.circular(Dimensions.radius20),
                                bottomRight: Radius.circular(Dimensions.radius20)
                            ),
                            color: Colors.white,
                          ),
                           child: Padding(
                             padding:EdgeInsets.only(left: Dimensions.width10),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 BigText(text: "Nutritrious fruit meal in India"),
                                 SizedBox(height:Dimensions.height10,),
                                 SmallText(text: "With Indian Characteristics",),
                                 SizedBox(height:Dimensions.height10,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     IconAndTextWidget(icon: Icons.circle_sharp,
                                         iconColor: AppColors.iconColor1,
                                         text: "Normal"),

                                     IconAndTextWidget(icon: Icons.location_on,
                                         iconColor: AppColors.mainColor,
                                         text: "1.7km"),
                                     IconAndTextWidget(icon: Icons.access_time_rounded,
                                         iconColor: AppColors.iconColor2,
                                         text: "32min"),

                                   ],
                                 ),
                               ],
                             ),
                           ),
                        ),
                      ),
                    ],
                  )

              );

            })



      ],
    );
  }


  Widget _buildPageItem(int index){
    Matrix4 matrix =new Matrix4.identity();
    if(index==_currentPageValue.floor()){
      var currScale =1-(_currentPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);

    }else if(index == _currentPageValue.floor()+1){
      var currScale = _scaleFactor+(_currentPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);

    }else if(index == _currentPageValue.floor()-1){
      var currScale =1-(_currentPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);

    }else{
      var currScale=0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,_height*(1-currScale)/2, 1);
    }

    return Transform(
      transform:matrix ,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/aloo-paratha-gobi.jpg"
              ),
            )
          ),
        ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width30,right: Dimensions.width30,bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0,5)
                  ),
                  BoxShadow(
                    color:Colors.white,
                    offset: Offset(-5,0)
                  ),
                  BoxShadow(
                      color:Colors.white,
                      offset: Offset(5,0)
                  )
                ]
              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15,left: 15,right: 15),
                child: AppColumn(text: "India Side",),

              ),
            ),
          ),
      ],
      ),
    );
  }
}
