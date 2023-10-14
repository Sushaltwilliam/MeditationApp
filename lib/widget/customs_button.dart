import 'package:flutter/material.dart';
import 'package:meditation_app/const/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  Color buttonColor;
  String? imageUrl;
  Color? textColor;
  double? elevateion;

  CustomButton(
      {super.key,
      required this.onPress,
      required this.title,
      this.imageUrl,
      this.elevateion,
      this.textColor,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        SizedBox(
            height: size.height * 0.06,
            width: size.width,
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(elevateion ?? 3),
                    backgroundColor: MaterialStateProperty.all(buttonColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
                onPressed: onPress,
                child: Text(
                  title,
                  style: TextStyle(
                      color: textColor ?? customColors.whiteColor,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ))),
        imageUrl == null
            ? Container()
            : Positioned(
                left: 40,
                child: Image.asset(
                  imageUrl!,
                  width: 30,
                  height: 30,
                ))
      ],
    );
  }
}
