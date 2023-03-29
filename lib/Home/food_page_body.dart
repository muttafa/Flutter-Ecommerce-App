import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/widgets/icon_and_text_widget.dart';
import 'package:ecommerce/widgets/my_text.dart';
import 'package:ecommerce/widgets/smallText.dart';
import 'package:flutter/material.dart';

Widget _buildPageItem(int index){
  return Stack(
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
                "assets/image/food5.jpg"
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
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
          ),
        child: Container(
          padding: EdgeInsets.only(top:15 , left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  MyText(text: "Burası Yemek Başlığı"),
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
  );
}

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context,position){
            return _buildPageItem(position);
          },
      ),

    );


  }
}
