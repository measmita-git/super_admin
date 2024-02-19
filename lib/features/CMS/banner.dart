import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:super_admin_mudita/features/CMS/update_banner_data.dart';
import 'package:super_admin_mudita/features/CMS/update_sos.dart';

import '../../components/component_wrapper.dart';
import '../../components/custom_button.dart';
import '../../constants/app_colors.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

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
                  Text('Banner',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.02,),
            ComponentWrapper(
              width: screenWidth*0.8,
              height: screenHeight*0.2,
              backgroundColor: const Color(0xffF4EEFF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                // Align text to start
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // Align text to start
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: screenWidth * 0.20),
                            child: const Text(
                              'SOS',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8B4CFC),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              left: screenWidth * 0.20, top: 10),
                          child: Image.asset('assets/meditation.png')),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight*0.07,),
            Center(
              child: DTButton(
                height: screenHeight*0.05,
                width: screenWidth *0.3,
                onClick: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateBannerData()));
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
