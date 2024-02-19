import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/ViewScreen/mentor_profile.dart';

import '../../components/custom_button.dart';

class MentorDetails extends StatelessWidget {
  const MentorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0,top: 21),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,)),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      "Mentor Details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black
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
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MentorProfile()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 65,
                            width: 65,
                            child: Image.asset("assets/mentorprofile.png"),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 16, right: 80),
                                  child: Text(
                                    'Dr. Michelle Carter | michelle@gmail.com',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color:Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Color(0xff000000),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 4),
                            Container(
                              margin: EdgeInsets.only(right: 145),
                              child: Row(
                                children: [
                                  Text(
                                    'Bengaluru , Karnataka',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,
                                    ),
                                  ),
                                  Text(
                                    'Joined 2023',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              margin: EdgeInsets.only(right: 80),
                              child: Row(
                                children: [
                                  Text(
                                    'Degree : Ph.D , M.D',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,),
                                  ),
                                  Text(
                                    'License Number : MD123456',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Divider(),

               SizedBox(height: 23,),
              Row(
                children: [
                  Container(
                    width: 170,
                    margin: EdgeInsets.only(right:
                    10),
                      child: SvgPicture.asset('assets/chart5.svg')),

                  Container(
                    width: 170,
                      margin: EdgeInsets.only(right:
                      10),
                      child: SvgPicture.asset('assets/chart6.svg')),
                ],
              ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Container(
                        width: 170,
                        margin: EdgeInsets.only(right:
                        10),
                        child: SvgPicture.asset('assets/chart7.svg')),
                    Container(
                        width: 170,
                        margin: EdgeInsets.only(right:
                        10),
                        child: SvgPicture.asset('assets/chart8.svg')),
                  ],
                ),
                SizedBox(height: 18,),
                SvgPicture.asset('assets/chart9.svg'),
                Padding(
                  padding: const EdgeInsets.only(left: 37.0,right: 36.0,top: 100),
                  child: DTButton(
                    onClick: (){},
                   buttonColor: AppColors.primaryColor,
                    height: 42,
                    width: 357,
                    label: 'Remove mentor',
                    borderRadius: 10,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
