import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/const/colors.dart';
import 'package:meditation_app/const/image.dart';
import 'package:meditation_app/screen/login/login_screen.dart';
import 'package:meditation_app/widget/customs_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: customColors.whiteColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.15,
                  child: Image.asset(
                    customImage.slientMoonImage,
                    width: size.width / 2.5,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  height: size.height * 0.26,
                  width: size.width,
                  child: Image.asset(customImage.welcomeBannerImage),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                AutoSizeText(
                  "We are what we do",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                AutoSizeText(
                  "Thousand of people are usign silent moon \n for smalls meditation ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    wordSpacing: 3,
                    color: customColors.greyColor,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                CustomButton(
                  title: "SIGN UP",
                  onPress: () {},
                  buttonColor: customColors.lightBlueColor,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      "ALREADY HAVE AN ACCOUNT? ",
                      style: TextStyle(
                        fontSize: 13,
                        wordSpacing: 3,
                        fontWeight: FontWeight.bold,
                        color: customColors.greyColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: AutoSizeText(
                        "LOG IN ",
                        style: TextStyle(
                          fontSize: 13,
                          wordSpacing: 3,
                          fontWeight: FontWeight.bold,
                          color: customColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
