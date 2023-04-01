import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String Text;
  const ExpandableText({Key? key, required this.Text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {

  late String text1;
  late String text2;

  bool hidenText = true;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
