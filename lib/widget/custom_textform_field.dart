import 'package:flutter/material.dart';
import 'package:meditation_app/const/colors.dart';
import 'package:meditation_app/const/image.dart';

class CustomTextFormFiled extends StatefulWidget {
  final Function(String)? onChange;
  final String hintText;
  final bool? obscureText;
  const CustomTextFormFiled(
      {super.key,
      required this.onChange,
      required this.hintText,
      this.obscureText});

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool showPassword = false;
  bool isTextNotEmpty = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: customColors.textFieldColor),
      child: TextFormField(
        obscureText: widget.obscureText ?? false,
        onChanged: (text) {
          // Update the isTextNotEmpty based on whether text is empty
          setState(() {
            isTextNotEmpty = text.isNotEmpty;
          });
          widget.onChange!(text); // Call the provided onChange callback
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20, top: 15),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Email address",
            hintStyle: TextStyle(fontSize: 15),
            suffixIcon: widget.obscureText == null
                ? Icon(
                    Icons.done,
                    color: isTextNotEmpty
                        ? customColors.greenColor
                        : customColors.greyColor,
                  )
                : Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(showPassword
                        ? customImage.showPasswordImage
                        : customImage.hidePasswordImage),
                  )),
      ),
    );
  }
}
