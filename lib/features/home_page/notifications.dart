import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 84,top: 21.95),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: SizedBox(
                          width: 23.16,
                          height: 23.09,
                          child: SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Color(0xff000000),))),
                  const SizedBox(width: 23,),
                   SizedBox(
                    width: 131,
                    height: 25,
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 150,),
              Container(
                  margin: EdgeInsets.only(left: 70),
                  width:76.6,height:89.29,child: Image.asset('assets/Bell icon.png')),
              const SizedBox(height: 16,),

              Container(
                width: 156,

                margin: EdgeInsets.only(left: 100),
                child: Text('No notifications yet',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Color(0xff000000),
                ),),),
              const SizedBox(height: 8,),

              Container(
                width: 350,


                margin: EdgeInsets.only(left: 60),
                child: Text(
                  'We\'ll let you know when updates arrive!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,
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
