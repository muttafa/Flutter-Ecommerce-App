import 'package:ecommerce/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
   Color? color;
   final String text;
   double size= Dimensions.myTextSize;
   TextOverflow overFlow;


  MyText({Key? key,
    this.color = const Color (0xFF332d2b),
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: this.color,
          fontSize: size,
          fontWeight: FontWeight.w400,
        ),
        ) ,

    );
  }
}
