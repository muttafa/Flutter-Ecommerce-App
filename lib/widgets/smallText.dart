import 'package:ecommerce/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/utils/dimensions.dart';
class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double? size;
  TextOverflow overFlow;
  TextAlign? align;
  double? height;


  SmallText({Key? key,
    required this.text,
    this.color = const Color (0xFFa9a29f),
    this.overFlow = TextOverflow.ellipsis,
    this.align,
    this.size,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

      text,
      overflow: overFlow,
      maxLines: 60,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          height: height,
          fontSize: size,
          fontWeight: FontWeight.w400,
          color: color,
        )
      ),

    );
  }
}
