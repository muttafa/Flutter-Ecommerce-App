import 'package:ecommerce/widgets/icon_and_text_widget.dart';
import 'package:ecommerce/widgets/smallText.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'my_text.dart';

class AppColumn extends StatelessWidget {
  final String header;
  final int starCount;
  final String point;
  final String comment;
  IconData icon1;
  Color iconColor1;
  SmallText iconDesc1;
  IconData icon2;
  Color iconColor2;
  SmallText iconDesc2;
  IconData icon3;
  Color iconColor3;
  SmallText iconDesc3;



  AppColumn({Key? key,
    required this.header,
    required this.starCount,
    required this.point,
    required this.comment,
    required this.icon1,
    required this.iconColor1,
    required this.iconDesc1,
    required this.icon2,
    required this.iconColor2,
    required this.iconDesc2,
    required this.icon3,
    required this.iconColor3,
    required this.iconDesc3,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
            children: [
              MyText(text: header),
            ]),
        SizedBox(height: Dimensions.margin10,),
        Row(
          children: [
            Wrap(
              children: List.generate(starCount,
                      (index) => Icon(
                    Icons.star,
                    color: AppColors.maincolorl,
                    size: 15,)
              ),
            ),
            SizedBox(width: Dimensions.margin10,),
            SmallText(text: point),
            SizedBox(width: Dimensions.margin10,),
            SmallText(text: comment),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTestWidget(icon: icon1,iconColor: iconColor1, text: iconDesc1),
            IconAndTestWidget(icon: icon2,iconColor: iconColor2, text: iconDesc2),
            IconAndTestWidget(icon: icon3,iconColor: iconColor3, text: iconDesc3),

          ],
        ),

      ],
    );
  }
}
