import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_admin_mudita/components/custom_button.dart';

import '../../constants/app_colors.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 14,top: 21),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Color(0xff000000),)),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      "Mentor Details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Edit profile',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Column(

                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: 65,
                          width: 65,
                          child: Image.asset("assets/userprofile.png"),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 16, right: 80),
                                  child: Text(
                                    'Sarah Johnson | sarah@gmail.com',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000)),
                                  ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 4),
                            Container(
                              margin: EdgeInsets.only(right: 125),
                              child: Row(
                                children: [
                                  const Text(
                                    'Bengaluru , Karnataka',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff868686)),
                                  ),
                                  const Text(
                                    'Joined 2023',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff868686)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 210),
                              child: Row(
                                children: [
                                  const Text(
                                    'Female',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff868686)),
                                  ),
                                  const Text(
                                    'Teacher',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff868686)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 49,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 24, bottom: 8),
                        child: Text(
                          'About',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:  AppColors.primaryColor),
                        )),
                  ],
                ),
                Container(
                  width: 337,
                  margin: EdgeInsets.only(left: 24, right: 69),
                  child: Text(
                    'My name is Sarah Johnson, currently studying MCA at Melbourne University I’m looking forward to connecting with a mentor to help me navigate Read more...',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff868686),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 24, bottom: 8),
                        child: Text(
                          'Condition',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:  AppColors.primaryColor),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      child: Text(
                        'Extreme Stress , Depression',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 24, top: 23),
                        child: Text(
                          'Current Medication',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:  AppColors.primaryColor),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24, top: 8, bottom: 23),
                      child: Text(
                        'None',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 22, bottom: 8),
                          child: Row(
                            children: [
                              Text(
                                'Contact',
                                style: TextStyle(
                                  color:  AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 24),
                            child: Text(
                              '+91-9087755435',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff868686),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                Text(
                                  'Date of Birth',
                                  style: TextStyle(
                                    color:  AppColors.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )),
                        Text(
                          '20-02-1998',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff868686),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 8, right: 10),
                            child: Container(
                                child: Text(
                              'Gender',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color:  AppColors.primaryColor,
                              ),
                            ))),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff868686),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(bottom: 8, left: 24, top: 23),
                            child: Container(
                                child: Text(
                              'Occupation',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color:  AppColors.primaryColor,
                              ),
                            ))),
                        Text(
                          'Teacher',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff868686)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(bottom: 8, top: 23, right: 30),
                            child: Text(
                              'Address',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color:  AppColors.primaryColor,
                              ),
                            )),
                        Text(
                          'Bengaluru , Karnataka',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Color(0xff868686),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24, top: 23),
                      child: Text(
                        'Symptoms',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color:  AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Text(
                        'Intense feelings of sadness and hopelessness.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff868686)),
                      ),
                    ),
                    Container(
                      child: Text(
                        ' Difficulty sleeping and concentration. ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff868686)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: Text(
                        'Increased stress levels impacting daily functioning.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Color(0xff868686)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 37.0,right: 36.0),
                  child: DTButton(
                    onClick: (){},
                    buttonColor:  AppColors.primaryColor,

                    height: 42,
                    width: 357,
                    label: 'Remove User',
                    borderRadius: 10,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
