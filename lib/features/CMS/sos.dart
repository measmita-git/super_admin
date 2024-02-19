import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:super_admin_mudita/features/CMS/update_sos.dart';

import '../../components/custom_button.dart';
import '../../constants/app_colors.dart';

class SOS extends StatelessWidget {
  const SOS({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.of(context).pop();
                    },
                      child: SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,)),
                  SizedBox(width: screenWidth*0.03,),
                  Text('Video',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
                  ),
                  ),
                ],
              ),
            ),
            Container(

              margin: EdgeInsets.only(left: screenWidth*0.05,right: screenWidth*0.05,top: screenWidth*0.2,bottom: screenWidth*0.1),
                child: Image.asset('assets/sossuper.png')),
            Center(
              child: DTButton(
                height: screenHeight*0.05,
                width: screenWidth *0.3,
                onClick: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateSOS()));
                },
                label: 'Edit',
                textAlign: TextAlign.center,
                buttonColor: AppColors.primaryColor,
                textSize: 16,
                textFont: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
