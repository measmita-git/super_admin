import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:super_admin_mudita/components/custom_button.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/CMS/banner.dart';
import 'package:super_admin_mudita/features/CMS/blog.dart';
import 'package:super_admin_mudita/features/CMS/sos.dart';
import 'package:super_admin_mudita/features/CMS/wellness_toolkit.dart';

import '../../components/component_wrapper.dart';


class CMSScreen extends StatelessWidget {
  const CMSScreen({super.key});

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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black),
                      SizedBox(width: screenWidth*0.03,),
                      Text('Content Management System',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black,
                      ),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: screenWidth*0.06,top: screenHeight*0.02,bottom: screenHeight*0.01),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SOS()));
                        },
                        child: Text('SOS',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black,
                        ),),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: screenWidth*0.9,
                  height: screenHeight*0.3,
                  decoration:  BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD9D9D9),
                      width: 0.5,
                    ),
            
                    borderRadius: BorderRadius.all(Radius.circular(10)),
            
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: screenHeight*0.01,),
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
                                    margin: EdgeInsets.only(
                                        left: screenWidth * 0.20),
                                    child:  Text(
                                      'SOS',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Color(0xff8B4CFC),
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
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Center(
                      child: DTButton(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.3,
                        onClick: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SOS()));
                        },
                        label: 'View',
                        textAlign: TextAlign.center,
                        buttonColor: AppColors.primaryColor,
                        textSize: 16,
                        textFont: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: screenWidth*0.06,top: screenHeight*0.02,bottom: screenHeight*0.01),
                      child: Text('Banner',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black,
                      ),),
                    ),
                  ],
                ),
                Container(
                  width: screenWidth*0.9,
                  height: screenHeight*0.3,
                  decoration:  BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD9D9D9),
                      width: 0.5,
                    ),
            
                    borderRadius: BorderRadius.all(Radius.circular(10)),
            
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight*0.01,),
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
                                    margin: EdgeInsets.only(
                                        left: screenWidth * 0.20),
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
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Center(
                      child: DTButton(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.3,
                        onClick: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BannerScreen()));
                        },
                        label: 'View',
                        textAlign: TextAlign.center,
                        buttonColor: AppColors.primaryColor,
                        textSize: 16,
                        textFont: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.06,
                    top: screenHeight * 0.04,
                    bottom: screenHeight * 0.01,
                    right: screenWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Blogs',style: TextStyle(color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black),),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Blog()));
                        },
                        child: Text('view all')),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: screenWidth*0.02),
                        width: screenWidth * 0.3,
                        child: Image.asset('assets/wellness1.png')),
                    Container(
                        margin: EdgeInsets.only(left: screenWidth*0.02),
                        width: screenWidth * 0.3,
                        child: Image.asset('assets/wellness4.png')),
                    Container(
                        margin: EdgeInsets.only(right: screenWidth*0.03),
                        width: screenWidth * 0.3,


                        child: Image.asset('assets/wellness3.png')),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: screenWidth*0.06,top: screenHeight*0.04,bottom: screenHeight*0.01,right: screenWidth*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Wellness Toolkit'),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WellnessToolKit()));
                        },
                          child: Text('view all')),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                       margin: EdgeInsets.only(left: screenWidth*0.02),
                        width: screenWidth * 0.3,
                        child: Image.asset('assets/wellness1.png',)),
                    Container(
                        width: screenWidth * 0.3,
                        child: Image.asset('assets/wellness4.png')),
                    Container(
                        margin: EdgeInsets.only(right: screenWidth*0.03),
                        width: screenWidth * 0.3,
                        child: Image.asset('assets/wellness3.png')),
                  ],
                ),
            
              ],
            ),
          ),
        ),
    );
  }
}
