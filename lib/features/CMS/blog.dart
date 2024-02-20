import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/CMS/add_blog.dart';
import 'package:super_admin_mudita/features/CMS/update_delete_blog.dart';

import '../../../components/component_wrapper.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth*0.04, top: screenHeight*0.05),
              child: Row(
                children: [
                  InkWell(
                      onTap:(){
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Color(0xffFFFFFF):Color(0xff000000),)),
                  SizedBox(
                    width: screenWidth*0.04,
                  ),
                  Text(
                    'Blogs',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).brightness == Brightness.dark ? Color(0xffFFFFFF):Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth*0.5,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddBlog()));
                    },
                      child: SvgPicture.asset('assets/add.svg')),
                  SizedBox(
                    width: screenWidth*0.01,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddBlog()));
                    },
                    child: Text('Add',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.primaryColor,
                    ),),
                  ),
                ],
              ),

            ),
            SizedBox(height: screenHeight*0.02,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateDeleteBlog()));
                },
                child: ComponentWrapper(
                  width: screenWidth*0.9,
                  backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor:Color(0xffFFFFFF),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                width: screenWidth*0.9,
                                child: Image.asset(
                                  'assets/blog1.png',
                                ),
                              ),
                              SizedBox(
                                height: screenHeight*0.02,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: screenWidth*0.03),
                                    child: SizedBox(
                                      width: screenWidth*0.8,
                                      child: Text(
                                        'Overcoming Self-doubt and Embracing Positivity',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                             Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: screenWidth*0.03),
                                    child: SizedBox(
                                      width: screenWidth*0.2,
                                      child: Text(
                                        '7 min read',
                                        style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff868686),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.03,
                  right: screenWidth * 0.03,
                  top: screenHeight * 0.02),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateDeleteBlog()));
                  },
                  child: ComponentWrapper(
                    width: screenWidth*0.9,
                    backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor:Color(0xffFFFFFF),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                  width: screenWidth*0.9,
                                  child: Image.asset(
                                    'assets/blog2.png',
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: SizedBox(
                                        width: screenWidth*0.8,
                                        child: Text(
                                          'Overcoming Self-doubt and Embracing Positivity',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                 Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: SizedBox(
                                        width: screenWidth*0.2,
                                        child: Text(
                                          '7 min read',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff868686),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(width: 5,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth*0.03, right: screenWidth*0.03, top: screenHeight*0.03),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UpdateDeleteBlog()));
                  },
                  child: ComponentWrapper(
                    width: screenWidth*0.9,
                    backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor:Color(0xffFFFFFF),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                  width: screenWidth*0.9,
                                  child: Image.asset(
                                    'assets/blog3.png',
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: SizedBox(
                                        width: 316,
                                        child: Text(
                                          'Overcoming Self-doubt and Embracing Positivity',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: SizedBox(
                                        width: 40,
                                        child: Text(
                                          '7 min read',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff868686),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(width: 5,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: screenWidth*0.03, right: screenWidth*0.03, top: screenHeight*0.03),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UpdateDeleteBlog()));
                  },
                  child: ComponentWrapper(
                    width: screenWidth*0.9,
                    backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor:Color(0xffFFFFFF),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                  width: screenWidth*0.9,
                                  child: Image.asset(
                                    'assets/blog3.png',
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: SizedBox(
                                        width: 316,
                                        child: Text(
                                          'Getting Started with Therapy',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: SizedBox(
                                        width: 40,
                                        child: Text(
                                          '5 min read',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff868686),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(width: 5,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
