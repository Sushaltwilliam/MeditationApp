import 'package:flutter/material.dart';
import 'package:meditation_app/const/colors.dart';
import 'package:meditation_app/const/image.dart';
import 'package:meditation_app/widget/customs_button.dart';
import 'package:meditation_app/widget/custom_textform_field.dart';
import 'package:meditation_app/widget/round_custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: customColors.whiteColor,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(customImage.signInOutBg),
                  fit: BoxFit.fill)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundCustomButton(
                borderColor: customColors.greyColor,
                fillColor: customColors.whiteColor,
                icon: Icons.arrow_back,
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                    color: customColors.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: CustomButton(
                  buttonColor: customColors.buttonActiveColor,
                  onPress: () {},
                  title: "CONTINUE WITH FACEBOOK",
                  imageUrl: customImage.faceBookImage,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: CustomButton(
                  buttonColor: customColors.buttonActiveColor,
                  onPress: () {},
                  title: "CONTINUE WITH GOOGLE",
                  imageUrl: customImage.googleImage,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: CustomButton(
                    elevateion: 0,
                    onPress: () {},
                    title: "OR LOG IN WITH EMAIL",
                    textColor: customColors.greyColor,
                    buttonColor: customColors.whiteColor),
              ),
              CustomTextFormFiled(
                hintText: "Email address",
                onChange: (val) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
