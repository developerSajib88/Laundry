import 'package:flutter/material.dart';
import 'package:my_laundry/utils/app_colors.dart';

class CustomTextForm extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText;
  final dynamic validation;
  final TextInputType? textInputType;
  const CustomTextForm({
    Key? key,
    this.controller,
    this.labelText,
    this.validation,
    this.textInputType
  }) : super(key: key);

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.textInputType,
      cursorColor: AppColor.blueColor,
      cursorWidth: 2,

      decoration: InputDecoration(
        hintText: widget.labelText??"",
        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: AppColor.greyColor)
        ),

        focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: AppColor.greyColor)
        ),

        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColor.greyColor)
        )
      ),

      validator: widget.validation,

    );
  }
}
