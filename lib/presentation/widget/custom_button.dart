import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  VoidCallback? onPressed;
  String text;
  Color? backgroundColor;
  Color? textColor;

  CustomButton({
    Key? key,
     required this.onPressed,
     required this.text,
     this.backgroundColor,
     this.textColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,height: 40,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text,style: TextStyle(color: textColor ?? AppColor.whiteColor,fontWeight: FontWeight.bold),),
          style: ElevatedButton.styleFrom(
            backgroundColor: this.backgroundColor ?? AppColor.blueColor,
          ),
      ),
    );
  }
}
