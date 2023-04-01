import 'package:ecommerce/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
   Color? color;
   final String text;
   double? size;
   TextOverflow overFlow;
   TextAlign? align;

  MyText({Key? key,
    this.color = const Color (0xFF332d2b),
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.align,
    this.size,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      maxLines: 1,
      softWrap: false,
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
