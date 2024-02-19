import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/CMS/add_techniques.dart';
import 'package:super_admin_mudita/features/CMS/toolKit_Update_delete.dart';

class WellnessToolKit extends StatelessWidget {
  const WellnessToolKit({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.04, top: screenHeight * 0.02),
                child: Row(
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.of(context).pop();
                      },
                        child: SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Color(0xffFFFFFF):Color(0xff000000),)),
                    SizedBox(
                      width: screenWidth * 0.04,
                    ),
                    Text(
                      'Wellness Toolkit',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color:Theme.of(context).brightness == Brightness.dark ? Color(0xffFFFFFF):Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.28,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddTechniques()));
                      },
                        child: SvgPicture.asset('assets/add.svg')),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.06, right: screenWidth * 0.06,top: screenHeight*0.04),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SizedBox(

                                width: screenWidth * 0.4,
                                child: Image.asset('assets/wellness1.png')),
                          ),
                          SizedBox(
                            width: screenWidth * 0.01,
                          ),
                          SizedBox(

                              width: screenWidth * 0.35,
                              child: Image.asset('assets/wellness2.png')),
                        ],
                      ),
                      SizedBox(height: screenHeight*0.02,),
                      Row(
                        children: [
                          SizedBox(

                              width: screenWidth * 0.4,
                              child: Image.asset('assets/wellness3.png')),
                          SizedBox(
                            width: screenWidth * 0.07,
                          ),
                          SizedBox(

                              width: screenWidth * 0.4,
                              child: Image.asset('assets/wellness4.png')),
                        ],
                      ),
                      SizedBox(height: screenHeight*0.02,),
                      Row(
                        children: [
                          SizedBox(

                              width: screenWidth * 0.4,
                              child: Image.asset('assets/wellness5.png')),
                          SizedBox(
                            width: screenWidth * 0.05,
                          ),
                          SizedBox(

                              width: screenWidth * 0.4,
                              child: Image.asset('assets/wellness6.png')),
                        ],
                      ),
                      SizedBox(height: screenHeight*0.02,),
                      Row(
                        children: [
                          SizedBox(

                              width: screenWidth * 0.4,
                              child: Image.asset('assets/wellness7.png')),
                          SizedBox( width: screenWidth * 0.04,),
                          Container(
                            width: screenWidth * 0.4,
                            height: screenHeight * 0.19,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffF1F1F3),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ToolKitUpdateDelete()));
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
