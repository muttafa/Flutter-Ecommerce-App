
import 'package:ecommerce/widgets/my_text.dart';
import 'package:ecommerce/widgets/smallText.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/utils/colors.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          MyText(text: "Turkey",color: AppColors.maincolorl,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: SmallText(text: "Istanbul",),
                              ),
                              Icon(Icons.arrow_drop_down_rounded)
                            ],
                          )

                        ],
                      ),
                      Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          child: Icon(Icons.search,color: Colors.white,),

                          decoration: BoxDecoration(
                              color: AppColors.maincolorl,
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
          SizedBox(height: 30,),
          Expanded(child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: FoodPageBody(),
          ))
        ],
      )
    );

  }
}


