import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/app_icons.dart';
import 'package:ecommerce/widgets/expandable_text.dart';
import 'package:ecommerce/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/colors.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(icon: Icons.clear),
                AppIcons(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                //color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(size: Dimensions.font26 ,text: "Sliver App Bar")
                  ],
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radius20),topRight:Radius.circular(Dimensions.radius20) ),
                  color: Colors.white
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/baklava.jpg",
                  width: double.maxFinite,
                fit: BoxFit.cover,
              ),

            ),
          ),
          SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: Dimensions.margin20,right: Dimensions.margin20,bottom: Dimensions.margin20,top: Dimensions.margin10),
                    child: ExpandableText(
                      Text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent moLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectus ut ipsum. Vestibulum nec auctor metus. Maecenas veorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent molestie, purus ac posuere luctus, justo nisi pharetra neque, sed faucibus orci lectusorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mo consectetur adipiscing elit. Praesent mo"
            ),
                  ),

                ],
              )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left:Dimensions.sizedBox30,right: Dimensions.sizedBox30,bottom: Dimensions.sizedBox30, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(iconSize: Dimensions.iconSize36,icon: Icons.remove,iconColor: Colors.white,backgroundColor: AppColors.maincolorl,),
                MyText(text: "£15.85 X 0",size: Dimensions.font30,),
                AppIcons(iconSize: Dimensions.iconSize36,icon: Icons.add,iconColor: Colors.white,backgroundColor: AppColors.maincolorl,),
             ],
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius40),
                  topRight: Radius.circular(Dimensions.radius40)
              ),
              color: AppColors.buttonBackgroundColor
            ),
            child: Container(
                  padding: EdgeInsets.only(right: 30,left: 30) ,
                  child: Row(
                    children: [
                      AppIcons(
                        icon: FontAwesomeIcons.heart,
                        iconSize: 60,
                        size: 50,
                        backgroundColor: AppColors.buttonBackgroundColor,
                        iconColor: AppColors.maincolorl,
                      ),

                    ],
                  ),
                )

            ),

        ],
      ),
    );
  }
}
