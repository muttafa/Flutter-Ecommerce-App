import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  SmallText({Key? key,
    required this.text,
    this.color = const Color (0xFFa9a29f),
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w400,
          color: color,
        )
      ),

    );
  }
}
