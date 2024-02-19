import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:super_admin_mudita/bottom_nav_bar/expanded_bottom_nav_bar.dart';
import 'package:super_admin_mudita/components/custom_button.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/controller/signin_controller.dart';

import '../../components/dt_text_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final SignInController signInController = Get.put(SignInController());
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 21.0),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset("assets/Back Button.svg")),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18, bottom: 11),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.darkTextColor
                        : Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 34),
                child: Text(
                  'Sign in to stay connected',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.darkTextColor
                        : AppColors.textColor,
                  ),
                ),
              ),
              Image.asset("assets/signin.png"),
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Text(
                  'Hi ! Austin Robertson',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.darkTextColor
                        : Color(0xff232D42),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4, bottom: 34),
                child: Text(
                  'Enter your password to access the admin.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.darkTextColor
                        : AppColors.textColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29.0, right: 29.0),
                child: DTTextField(
                  controller: passwordController,
                  placeholder: 'password',
                  suffixIcon: Icons.visibility,
                  suffixIconColor: AppColors.primaryColor,
                  hintStyle: TextStyle(
                      color: Color(0xff868686),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                  width: 372,
                  height: 48,
                  borderWidth: 1,
                  borderColor: AppColors.primaryColor,
                ),
              ),

              SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37.0, right: 36.0),
                child: DTButton(
                  width: 357,
                  height: 42,
                  label: "Sign In",
                  textSize: 16,
                  textAlign: TextAlign.center,
                  textFont: FontWeight.w400,
                  textColor: Color(0xffFFFFFF),
                  borderRadius: 10,
          
                  onClick: () {
                    String password = passwordController.text;
                    signInController.signIn(password);
                  },
                  buttonColor: AppColors.primaryColor,
                  // Other parameters...
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
