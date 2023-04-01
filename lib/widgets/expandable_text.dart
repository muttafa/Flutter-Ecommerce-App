import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/widgets/smallText.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class ExpandableText extends StatefulWidget {
  final String Text;
  const ExpandableText({Key? key, required this.Text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {

  late String text1;
  late String text2;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight/5.6;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.Text.length>textHeight){
      text1 = widget.Text.substring(0,textHeight.toInt());
      text2 = widget.Text.substring(textHeight.toInt()+1,widget.Text.length);
    }else{
      text1 = widget.Text;
      text2 = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: text2.isEmpty?SmallText(text: text1):Column(
          children: [
            SmallText(text: hiddenText?(text1+"..."):text1+text2),
            InkWell(
                  onTap: (){
                    setState(() {
                      hiddenText=!hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(text: hiddenText?("Show more"):"Show less",color: AppColors.maincolorl,),
                      Icon(hiddenText?(Icons.arrow_drop_down):Icons.arrow_drop_up,color: AppColors.maincolorl,),
                    ],

                )

            )
            
          ],
        )
      ),
    );
  }
}
