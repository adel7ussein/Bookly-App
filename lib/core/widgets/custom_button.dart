import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.background,required this.textColor,required this.text, this.borderRadius,this.fontSize}) : super(key: key);
  final String text;
  final Color background;
  final Color textColor;
 final double? fontSize;
  final BorderRadius ? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(onPressed: (){}, style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(12)),
        backgroundColor: background
      ),child: Text(text,style: Styles.textStyle18.copyWith(color: textColor,fontWeight: FontWeight.w900,fontSize:fontSize))),
    );
  }
}
