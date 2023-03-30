

import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/utils/colors.dart';
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
  double _height = 220;

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
        Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context,position){
          return _buildPageItem(position);
        },
      ),

    ),
        new DotsIndicator(
        dotsCount: 5,
        position: _currentPageValue,
        decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeColor: AppColors.maincolorl,
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        )
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
            height: 220,
            margin: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven? Color(0xFF69C5DF):Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/image/kebab.jpg"
                    )
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              height: 120,
              margin: EdgeInsets.only(left: 30,right: 30,bottom: 30),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        children: [
                          MyText(text: "Exquisite Turkish food"),
                        ]),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5,
                                  (index) => Icon(
                                Icons.star,
                                color: AppColors.maincolorl,
                                size: 15,)
                          ),
                        ),
                        SizedBox(width: 10,),
                        SmallText(text: "4.5"),
                        SizedBox(width: 10,),
                        SmallText(text: "1287 comments"),
                      ],
                    ),
                    Row(
                      children: [
                        IconAndTestWidget(icon: Icons.circle_sharp,iconColor: Colors.orangeAccent, text: SmallText(text: 'Normal',)),
                        IconAndTestWidget(icon: Icons.location_on, iconColor: Colors.greenAccent , text: SmallText(text: "18km",)),
                        IconAndTestWidget(icon: Icons.access_time_rounded,iconColor: Colors.deepOrangeAccent, text: SmallText(text: "32min"))

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
    ),
      );
}


}


