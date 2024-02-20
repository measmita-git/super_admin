import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_admin_mudita/components/custom_button.dart';
import 'package:image_picker/image_picker.dart';

import '../../components/component_wrapper.dart';
import '../../components/dt_text_field.dart';
import '../../constants/app_colors.dart';

class MentorsProfileDetails extends StatefulWidget {
  const MentorsProfileDetails({super.key});

  @override
  State<MentorsProfileDetails> createState() => _MentorsProfileDetailsState();
}

class _MentorsProfileDetailsState extends State<MentorsProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 21),
                child: Row(
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: SvgPicture.asset('assets/Back Button.svg',color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,)),
                    SizedBox(width: 23,),
                    Text(
                      'Details',style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 38,),
              Center(child: Image.asset('assets/mentorprofile.png')),
              SizedBox(height: 38,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:8),
                    child: Text('Basic Details',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black,
                    ),),
                  ),
                ],
              ),
              Container(
                // color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor :Color(0xffFCFCFC),
                width: 372,

                child: Column(
                  children: [
                    DTTextField(
                      width: 372,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 372,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor:Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 372,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor:Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 372,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 372,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 372,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 372,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 372,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Color(0xff000000).withOpacity(0.07),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              ComponentWrapper(
                backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Colors.white,
                width: 372,
                height: 76,
                borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor:Color(0xffFFFFFF),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            _pickImage();
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 33,
                            width: 33,
                            child: SvgPicture.asset('assets/document.svg'),
                          ),
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
                                    'Adhaar Card',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:Color(0xff000000),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 54,
                                ) ,
                                Container(
                                    margin:EdgeInsets.only(top: 26,left: 70),
                                    child: Text('jpg . 100KB',style: TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 8,
                                      color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:AppColors.textColor,
                                    ),)),

                              ],
                            ),
                            const SizedBox(height: 4),
                            Padding(
                              padding: const EdgeInsets.only(right: 150),
                              child: DTButton(
                                width: 80,
                                height: 20,
                                onClick: (){},
                                gradient: LinearGradient(colors: [Color(0xffDFD2FE),Color(0xff8B4CFC)]),
                                label: 'Download',
                                textAlign: TextAlign.center,
                                textFont: FontWeight.w400,
                                textSize: 10,
                                borderRadius: 2,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              ComponentWrapper(
                backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Colors.white,
                width: 372,
                height: 76,
                borderColor: Theme.of(context).brightness == Brightness.dark
                    ? AppColors.darkborderColor
                    : Color(0xffFFFFFF),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _pickImage();
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 33,
                            width: 33,
                            child: SvgPicture.asset('assets/document.svg'),
                          ),
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
                                    'Adhaar Card',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:Color(0xff000000),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 54,
                                ) ,
                                Container(
                                    margin:EdgeInsets.only(top: 26,left: 70),
                                    child: Text('jpg . 100KB',style: TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 8,
                                      color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:AppColors.textColor,
                                    ),)),

                              ],
                            ),
                            const SizedBox(height: 4),
                            Padding(
                              padding: const EdgeInsets.only(right: 150),
                              child: DTButton(
                                width: 80,
                                height: 20,
                                onClick: (){},
                                gradient: LinearGradient(colors: [Color(0xffDFD2FE),Color(0xff8B4CFC)]),
                                label: 'Download',
                                textAlign: TextAlign.center,
                                textFont: FontWeight.w400,
                                textSize: 10,
                                borderRadius: 2,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              ComponentWrapper(
                backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Colors.white,
                width: 372,
                height: 76,
                borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor:Color(0xffFFFFFF),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _pickImage();
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 33,
                            width: 33,
                            child: SvgPicture.asset('assets/document.svg'),
                          ),
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
                                    'Adhaar Card',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:Color(0xff000000),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 54,
                                ) ,
                                Container(
                                    margin:EdgeInsets.only(top: 26,left: 70),
                                    child: Text('jpg . 100KB',style: TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 8,color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor:AppColors.textColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Padding(
                              padding: const EdgeInsets.only(right: 150),
                              child: DTButton(
                                width: 80,
                                height: 20,
                                onClick: (){},
                                gradient: LinearGradient(colors: [Color(0xffDFD2FE),Color(0xff8B4CFC)]),
                                label: 'Download',
                                textAlign: TextAlign.center,
                                textFont: FontWeight.w400,
                                textSize: 10,
                                borderRadius: 2,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 29,top: 32),
                    child: Text('Questionnaire',style: TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w400,
                      color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor :AppColors.textColor,
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right:5.0),
                child: ComponentWrapper(
                  width: 372,
                  height: 48,
                  backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor:Color(0xffFFFFFF),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 19, top: 17),
                                    child: Text(
                                      'Preferred Communication',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context).brightness == Brightness.dark ?  Colors.white:Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 166,
                                  ),
                                  SvgPicture.asset('assets/arrow_down.svg'),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right:5.0),
                child: ComponentWrapper(
                  width: 372,
                  height: 48,
                  backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor:Color(0xffFFFFFF),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 19,
                                      top: 17,
                                    ),
                                    child: Text(
                                      'What is your Therapeutic Style?',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white
                                            : Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 136,
                                  ),
                                  SvgPicture.asset('assets/arrow_down.svg'),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right:5.0,top: 8.0),
                child: ComponentWrapper(
                  width: 372,
                  height: 88,
                  backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor:Color(0xffFFFFFF),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin:EdgeInsets.only(left: 19,top: 17,bottom: 17),
                            width: 276,
                            child: Text(
                              'Could you discuss your experience in addressing specific concerns like anxiety, depression or trauma?',

                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).brightness == Brightness.dark ?  Colors.white:Color(0xff000000),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          SvgPicture.asset('assets/arrow_down.svg'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right:5.0,top: 8.0),
                child: ComponentWrapper(
                  width: 372,
                  height: 48,
                  backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor :Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  borderColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkborderColor:Color(0xffFFFFFF),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin:EdgeInsets.only(left: 19,top: 17),
                            child:  Text(
                              'What is your approach to Therapy?',

                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).brightness == Brightness.dark ?  Colors.white:Color(0xff000000),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 118,
                          ),
                          SvgPicture.asset('assets/arrow_down.svg'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 72,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DTButton(
                    onClick: (){},
                    width: 160,
                    height: 40,
                    buttonColor: Color(0xffF1EAFF),
                    borderRadius: 8,
                    label: 'Approve',
                    textColor: Color(0xff8B4CFC),
                    textSize: 16,
                    textFont: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                  DTButton(
                    onClick: (){},
                    width: 160,
                    height: 40,
                    buttonColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor :Color(0xffFFFFFF),
                    borderRadius: 8,
                    label: 'Deny',
                    textColor: Color(0xff868686),
                    textSize: 16,
                    textFont: FontWeight.w400,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              SizedBox(height: 48,),

            ],
          ),
        ),
      ),
    );
  }

  void _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {

    }
  }
}
