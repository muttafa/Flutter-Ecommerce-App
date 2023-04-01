import 'package:ecommerce/widgets/app_column.dart';
import 'package:ecommerce/widgets/app_icons.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/my_text.dart';
import '../../widgets/smallText.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: Dimensions.backgroundImageHeight,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/image/kebab.jpg",
                        ),
                        fit: BoxFit.cover,
                      )
                  ),
                )),
            Positioned(
                left: Dimensions.with20,
                right: Dimensions.with20,
                top: Dimensions.with20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcons(icon: Icons.arrow_back),
                    AppIcons(icon: Icons.shopping_cart_outlined),

                  ],
                )),
            Positioned(
                top: Dimensions.backgroundImageHeight-20,
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.only(left: Dimensions.margin20,right: Dimensions.margin20,top: Dimensions.margin20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20)
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(height: Dimensions.margin20,),
                      MyText(text: "Introduce",),


                    ],
                  )
                ))
          ],
        ),
        ),
      bottomNavigationBar: Container(
        height: Dimensions.height120,
        padding: EdgeInsets.only(
          left: Dimensions.margin20,
          right: Dimensions.margin20,
          bottom: Dimensions.margin10,
          top: Dimensions.margin10,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFD4DBE2),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimensions.radius20),
              topLeft: Radius.circular(Dimensions.radius20)
          )
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,

                ),
              )
            ],
          ),
      ),
    );
  }
}
