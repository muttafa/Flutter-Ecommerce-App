import 'package:ecommerce/widgets/app_column.dart';
import 'package:ecommerce/widgets/app_icons.dart';
import 'package:ecommerce/widgets/expandable_text.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Background İmage
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: Dimensions.backgroundImageHeight,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/image/baklava.jpg",
                        ),
                        fit: BoxFit.cover,
                      )
                  ),
                )),
            //Detail
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
                      Expanded(
                        child: SingleChildScrollView(
                            physics: AlwaysScrollableScrollPhysics(),
                            child: ExpandableText(
                                Text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas vestibulum placera ut ipsum. Vestibulum nec auctor metus. Maecenas vestibulum placerastibulum placerat mauris a molestie. Pellentesque dictum fermentum lectus molestie sodales. Curabitur nec sem sit amet eros semper egestas. Phasellus rhoncus.MustafaMustafaMustafa Mustafa")),
                      )

                    ],
                  )
                )),

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
          color: Color(0xFFF0EEED),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimensions.radius20*2),
              topLeft: Radius.circular(Dimensions.radius20*2)
          )
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: Dimensions.margin10,right: Dimensions.margin10),
                height: Dimensions.height80,
                width: Dimensions.width120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20*2),
                  color: Colors.white,
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.remove),
                    MyText(text: "5",),
                    Icon(Icons.add)
                  ],
                ),
              ),
              Container(
                height: Dimensions.height80,
                width: Dimensions.width200,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(Dimensions.radius20*2),
                  color: AppColors.maincolorl,
                ),
                child: Center(
                  child: MyText(
                    text: "£15.85 | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
