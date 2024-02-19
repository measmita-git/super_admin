import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_admin_mudita/features/home_page/notifications.dart';
import 'package:super_admin_mudita/features/home_page/requests.dart';

import '../../components/component_wrapper.dart';
import '../../components/custom_button.dart';
import '../../constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 208,
                    margin: EdgeInsets.only(left: 25, top: 27),
                    child: Text(
                      "Hi ! Austin Robertson",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor :Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 27, left: 100),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => NotificationScreen()));
                          },
                          child: SvgPicture.asset('assets/notify.svg',color: Theme.of(context).brightness == Brightness.dark ? AppColors.primaryColor :Color(0xff000000),))),
                ],
              ),
              Container(
                width: 281,
                margin: EdgeInsets.only(left: 25, top: 2, right: 124),
                child: Text(
                  "Stay updated, act promptly, and ensure seamless system operations.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 25, top: 23),
                child: Container(
                  height: 42,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8B4CFC)),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          // Set enabled border color here
                          color: Color(
                              0xff8B4CFC), // Replace with your desired color
                        ),
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search...',
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 181,
                      margin: EdgeInsets.only(left: 10),
                      child: SvgPicture.asset('assets/chart1.svg')),
                  Container(
                      width: 181,
                      margin: EdgeInsets.only(right: 10),
                      child: SvgPicture.asset('assets/chart2.svg')),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 18),
                  child: SvgPicture.asset('assets/chart3.svg')),
              Container(
                  margin: EdgeInsets.only(top: 18),
                  child: SvgPicture.asset('assets/chart4.svg')),
              Container(
                width: 376,
                margin: EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 27),
                      child: Text(
                        'Recent requests',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Color(0xff000000),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PendingApprovals()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 27),
                        child: Text(
                          'view all',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 95,
                width: 375,
                decoration: BoxDecoration(
                  color:Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ComponentWrapper(
                    borderColor: Colors.transparent,
                    backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor : Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/frame.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 16),
                                      child: Text(
                                        'Sarah Johnson',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 54,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.0),
                                      child: DTButton(
                                        borderRadius: 4,
                                        width: 114,
                                        height: 26,
                                        label: 'Ignore',
                                        textColor: Color(0xff868686),
                                        textAlign: TextAlign.center,
                                        textFont: FontWeight.w400,
                                        textSize: 8,
                                        buttonColor: Color(0xffF2F2F2),
                                        onClick: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                     Text(
                                      'Jakarta, Indonesia',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 49,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          DTButton(
                                            borderRadius: 4,
                                            width: 114,
                                            height: 26,
                                            label: 'Accept',
                                            textColor: Color(0xff868686),
                                            textAlign: TextAlign.center,
                                            textFont: FontWeight.w400,
                                            textSize: 8,
                                            buttonColor: Color(0xffF2F2F2),
                                            onClick: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
                  ),
                ),
              ),
              SizedBox(
                height: 41,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
