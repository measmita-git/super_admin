import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:super_admin_mudita/components/custom_button.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/login_screen/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/bg_circle_righttop.svg",color: Theme.of(context).brightness == Brightness.dark ? AppColors.primaryGradient.colors[0] : AppColors.primaryColor)),
          Center(
            child: SizedBox(
              width: 277,
              height: 179,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 100,
                      height: 112.27,

                      child: Image.asset('assets/mudita_brain.png')),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(children: [
                    SvgPicture.asset('assets/welcome.svg'),
                    Image.asset('assets/wave.png')
                  ]),
                  const SizedBox(
                    height: 4,
                  ),
                  Text('One Life At A Time',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff868686),
                  ),),

                ],
              ),
            ),
          ),
          const SizedBox(
            height: 159.73,
          ),

          const SizedBox(
            height: 12,
          ),
          DTButton(
            onClick: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
            },
            width: 337,
            height: 42,
            label: 'Sign In',
            borderRadius: 10,
            buttonColor: Theme.of(context).brightness == Brightness.dark ? AppColors.primaryGradient.colors[0] :Color(0xff000000),
            textAlign: TextAlign.center,
            textColor: Color(0xffFFFFFF),
            textFont: FontWeight.w400,
            textSize: 16,
          ),
          SizedBox(height: 24,),
          DTButton(
            onClick: (){},
            width: 337,
            height: 42,
            label: 'Continue with Google',
            borderRadius: 10,
            buttonColor: Color(0xffFFFFFF),
            textAlign: TextAlign.center,
            textColor: Color(0xff8B4CFC),
            textFont: FontWeight.w400,
            textSize: 16,
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33.0,right: 34.0),
            child: SvgPicture.asset('assets/terms.svg'),
          ),
        ],
      ),
    );
  }
}
