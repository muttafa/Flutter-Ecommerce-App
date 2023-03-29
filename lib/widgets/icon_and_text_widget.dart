import 'package:ecommerce/widgets/smallText.dart';
import 'package:flutter/material.dart';

class IconAndTestWidget extends StatelessWidget {
  final iconColor;
  IconData icon;
  SmallText text;
  IconAndTestWidget({Key? key,
    required this.icon,
    required this.text,
    this.iconColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [

              Column(
                children: [
                  Row(
                    children: [
                      Icon(icon,color: iconColor,),
                      SizedBox(width: 5,),
                      text,
                    ],
                  )


                ],
              ),
              SizedBox(width: 10,),

          ]
      ),
    );
  }
}
