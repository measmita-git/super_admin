import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/ViewScreen/user_details.dart';

import '../../components/component_wrapper.dart';
import '../../components/custom_button.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

          children: [

            SizedBox(height: 40,),
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context,index){
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserDetails()));
                      },
                      child: ComponentWrapper(
                        backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor : Color(0xffFFFFFF),
                        borderColor: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  height: 33,
                                  width: 33,
                                  child: CircleAvatar(
                      
                                    backgroundColor: Color(0xff000000),
                                  )
                                ),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin:EdgeInsets.only(top: 16),
                                          child: Text(
                                            'Sarah Johnson',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color:Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 54,
                                        ) ,
                                        Container(
                                          margin:EdgeInsets.only(top: 26,left: 70),
                                            child: Text('Details',style: TextStyle(
                                              fontWeight: FontWeight.w400,fontSize: 8,color: AppColors.primaryColor,
                                            ),)),
                      
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Container(
                                      margin:EdgeInsets.only(right: 125),
                                      child:  Text(
                                        'Diagnosis : Depression',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color:Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : AppColors.textColor,
                                        ),
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
