import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/component_wrapper.dart';
import '../../components/custom_button.dart';
import '../../constants/app_colors.dart';

class PendingApprovals extends StatelessWidget {
  const PendingApprovals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 21.0, left: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Color(0xffFFFFFF):Color(0xff000000),)),
                  SizedBox(
                    width: 23,
                  ),
                  Text(
                    'Pending approvals',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    child: ComponentWrapper(
                      borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor:Color(0xffFFFFFF),
                      backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor:Colors.white,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              color: Theme.of(context).brightness == Brightness.dark ? Color(0xffFFFFFF):Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 54,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: DTButton(
                                          borderRadius: 4,
                                          width: 114,
                                          height: 26,
                                          label: 'Ignore',
                                          textColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:AppColors.textColor,
                                          textAlign: TextAlign.center,
                                          textFont: FontWeight.w400,
                                          textSize: 8,
                                          buttonColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor:Color(0xffF2F2F2),
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
                                            color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:AppColors.textColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 49,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:4.0,),
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
                                              buttonColor: Theme.of(context).brightness == Brightness.dark ? AppColors.primaryColor:Color(0xffF2F2F2),
                                              onClick: () {
              
                                              },
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
