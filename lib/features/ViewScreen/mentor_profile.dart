import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_admin_mudita/components/custom_button.dart';
import 'package:image_picker/image_picker.dart';

import '../../components/component_wrapper.dart';
import '../../components/dt_text_field.dart';
import '../../constants/app_colors.dart';

class MentorProfile extends StatefulWidget {
  const MentorProfile({super.key});

  @override
  State<MentorProfile> createState() => _MentorProfileState();
}

class _MentorProfileState extends State<MentorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 21.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                        child: SvgPicture.asset('assets/Back Button.svg')),
                    SizedBox(width: 23,),
                    Text('Edit profile',style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black,
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 38,
              ),
              Center(child: Image.asset('assets/mentorprofile.png')),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text('Basic Details',style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff868686),
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Container(
                color: Color(0xffFCFCFC),
                width: 372,

                child: Column(
                  children: [
                    DTTextField(
                      width: 342,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 342,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 342,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 342,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 342,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                        width: 342,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 342,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Color(0xff000000).withOpacity(0.07),
                    ),
                    SizedBox(height: 8,),
                    DTTextField(
                      width: 342,
                      placeholder: '',
                      hintStyle: TextStyle(color: Color(0xff868686),fontSize: 12,fontWeight: FontWeight.w400),
                      height: 48,
                      borderWidth: 1,
                      borderColor: Color(0xff000000).withOpacity(0.07),
                    ),
                  ],
                ),
              ),
             SizedBox(height: 8,),
              ComponentWrapper(
                backgroundColor: Colors.white,
                width: 342,
                height: 76,
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
                                        color: Color(0xff000000)),
                                  ),
                                ),
                                SizedBox(
                                  width: 54,
                                ) ,
                                Container(
                                    margin:EdgeInsets.only(top: 26,left: 70),
                                    child: Text('jpg . 100KB',style: TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 8,color: Color(0xff868686),
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
                backgroundColor: Colors.white,
                width: 342,
                height: 76,
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
                                        color: Color(0xff000000)),
                                  ),
                                ),
                                SizedBox(
                                  width: 54,
                                ) ,
                                Container(
                                    margin:EdgeInsets.only(top: 26,left: 70),
                                    child: Text('jpg . 100KB',style: TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 8,color: Color(0xff868686),
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
                backgroundColor: Colors.white,
                width: 342,
                height: 76,
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
                                        color: Color(0xff000000)),
                                  ),
                                ),
                                SizedBox(
                                  width: 54,
                                ) ,
                                Container(
                                    margin:EdgeInsets.only(top: 26,left: 70),
                                    child: Text('jpg . 100KB',style: TextStyle(
                                      fontWeight: FontWeight.w400,fontSize: 8,color: Color(0xff868686),
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
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 29,top: 32),
                    child: Text('Questionnaire',style: TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w400,
                      color: Color(0xff868686),
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right:5.0),
                child: ComponentWrapper(
                  width: 342,
                  height: 48,
                  borderRadius: BorderRadius.circular(10),
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
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 146,
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
                  width: 342,
                  height: 48,
                  borderRadius: BorderRadius.circular(10),
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
                                    margin:EdgeInsets.only(left: 19,top: 17,),
                                    child: Text(
                                      'What is your Therapeutic Style?',

                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 116,
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
                  width: 342,
                  height: 88,
                  borderRadius: BorderRadius.circular(10),
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
                                  color: Color(0xff000000)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
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
                  width: 342,
                  height: 48,
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin:EdgeInsets.only(left: 19,top: 17),
                            child: const Text(
                              'What is your approach to Therapy?',

                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000)),
                            ),
                          ),
                          const SizedBox(
                            width: 90,
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
                    buttonColor: Color(0xffFFFFFF),
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
