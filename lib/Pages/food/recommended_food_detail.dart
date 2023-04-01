import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/app_icons.dart';
import 'package:ecommerce/widgets/expandable_text.dart';
import 'package:ecommerce/widgets/my_text.dart';
import 'package:flutter/material.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcons(icon: Icons.remove,iconColor: AppColors.maincolorl,),
              MyText(text: "£15.85 X 0"),
              AppIcons(icon: Icons.add,iconColor: AppColors.maincolorl,),
            ],
          )
        ],
      ),
    );
  }
}
