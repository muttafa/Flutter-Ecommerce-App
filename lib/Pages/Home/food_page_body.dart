
import 'package:ecommerce/widgets/app_column.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/icon_and_text_widget.dart';
import 'package:ecommerce/widgets/my_text.dart';
import 'package:ecommerce/widgets/smallText.dart';
import 'package:flutter/material.dart';






class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.bannerImageHeight;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
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
        // Slider
        Container(
          height: Dimensions.bannerContainerHeight,
          child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context,position){
          return _buildPageItem(position);
        },
      ),

    ),
        // Dots for slider
        new DotsIndicator(
        dotsCount: 5,
        position: _currentPageValue,
        decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeColor: AppColors.maincolorl,
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        ),
        SizedBox(height: Dimensions.margin20,),
        // Popular
        Container(
          margin: EdgeInsets.only(left: Dimensions.margin30),
          child: Row(
            children: [
              MyText(text: "Popular"),
              SizedBox(width: Dimensions.margin10,),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: SmallText(text: ".",),
              ),
              SizedBox(width: Dimensions.margin10,),
              Padding(
                padding: EdgeInsets.fromLTRB(0, Dimensions.margin5, 0, 0),
                child: SmallText(text: "Food Pairing"),
              ),
            ],
          ),
        ),
        // List of product



       ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context,index)
              {
                return Container(
                  margin: EdgeInsets.only(left: Dimensions.margin20,bottom: Dimensions.margin10),
                  child: Row(
                    children: [
                      // image section
                      Container(
                        width: Dimensions.height120,
                        height: Dimensions.height120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/image/manti.jpg",
                                )
                            )
                        ),
                      ),
                      // Text Section
                      Container(
                        padding: EdgeInsets.only(left: Dimensions.margin10),
                        height: Dimensions.height100,
                        width: Dimensions.width250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(Dimensions.radius20),bottomRight: Radius.circular(Dimensions.radius20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                            blurRadius: 5,
                            color: Color(0xFFe8e8e8),
                            offset: Offset(0,5),
                          ),
                          ]
                        ),
                        child: Row(
                          children: [
                            AppColumn(
                              comment: "200 comment",
                              header: "Burası Çalıştı",
                              point: "3.8",
                              starCount: 4,
                              icon1: Icons.circle_sharp,
                              iconColor1: Colors.orangeAccent,
                              iconDesc1: SmallText(text: 'Normal',),
                              icon2: Icons.location_on,
                              iconColor2: Colors.greenAccent ,
                              iconDesc2: SmallText(text: "18km",),
                              icon3: Icons.access_time_rounded,
                              iconColor3: Colors.deepOrangeAccent,
                              iconDesc3: SmallText(text: "32min"),
                            ),

                          ],

                        )
                      )

                    ],
                  ),
                );
              }
          ),

        SizedBox(height: Dimensions.margin20,)
      ],
    );

  }

    Widget _buildPageItem(int index) {

      Matrix4 matrix = new Matrix4.identity();
      if(index == _currentPageValue.floor()){
         var _currentScale = 1-(_currentPageValue - index)*(1-_scaleFactor);
         var _currentTransform = _height*(1-_currentScale)/2;
         matrix = Matrix4.diagonal3Values(1, _currentScale.toDouble(), 1)..setTranslationRaw(0, _currentTransform, 0);
      }else if( index == _currentPageValue.floor()+1){
        var _currentScale = _scaleFactor+(_currentPageValue - index +1)*(1-_scaleFactor);
        var _currentTransform = _height*(1-_currentScale)/2;
        matrix = Matrix4.diagonal3Values(1, _currentScale.toDouble(), 1)..setTranslationRaw(0, _currentTransform, 0);
      }else if(index == _currentPageValue.floor()-1){
        var _currentScale = _scaleFactor + (_currentPageValue - index -1)*(1-_scaleFactor);
        var _currentTransform = _height*(1-_currentScale)/2;
        matrix = Matrix4.diagonal3Values(1, _currentScale.toDouble(), 1)..setTranslationRaw(0,_currentTransform, 0);

      }

      return Transform(
        transform: matrix,
        child: Stack(
        children: [
          Container(
            height: Dimensions.bannerImageHeight,
            margin: EdgeInsets.only(left: Dimensions.margin10,right: Dimensions.margin10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven? Color(0xFF69C5DF):Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/image/baklava.jpg"
                    )
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              height: Dimensions.bannerTextHeight,
              margin: EdgeInsets.only(left: Dimensions.margin30,right: Dimensions.margin30,bottom: Dimensions.margin30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Color(0xFFe8e8e8),
                  blurRadius: 5,
                    offset: Offset(0,5)
                  )
                ]
              ),
              child: Container(
                padding: EdgeInsets.only(top:15 , left: 15, right: 15),
                child: AppColumn(
                  comment: "200 comment",
                  header: "Burası Çalıştı",
                  point: "3.8",
                  starCount: 4,
                  icon1: Icons.circle_sharp,
                  iconColor1: Colors.orangeAccent,
                  iconDesc1: SmallText(text: 'Normal',),
                  icon2: Icons.location_on,
                  iconColor2: Colors.greenAccent ,
                  iconDesc2: SmallText(text: "18km",),
                  icon3: Icons.access_time_rounded,
                  iconColor3: Colors.deepOrangeAccent,
                  iconDesc3: SmallText(text: "32min"),
                ),
              ),
            ),
          ),

        ],
    ),
      );
}


}


