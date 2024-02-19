import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import '../../components/custom_button.dart';
import '../../constants/app_colors.dart';
import '../../controller/toolkit_update_delete_controller.dart';

class ToolKitUpdateDelete extends StatelessWidget {
  final ToolKitUpdateDeleteController controller = Get.put(ToolKitUpdateDeleteController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.03, top: screenHeight * 0.02),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        'assets/Back Button.svg',
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Color(0xffFFFFFF)
                            : Color(0xff000000),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Text(
                      'Box Breathing',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Color(0xffFFFFFF)
                            : Color(0xff000000),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 31),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screenWidth * 0.04,
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Cover Photo',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).brightness == Brightness.dark
                                  ? Color(0xffFFFFFF)
                                  : Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.pickCoverImage(ImageSource.gallery);
                      },
                      child: Obx(
                            () => Container(
                          height: screenHeight * 0.2,
                          width: screenWidth * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xffF1F1F3),
                              width: 1.0,
                            ),
                          ),
                          child: controller.coverImage.value != null
                              ? Image.file(controller.coverImage.value!)
                              : Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/drop.svg'),
                                SizedBox(height: 9),
                                Text(
                                  'Browse Files',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).brightness == Brightness.dark
                                        ? AppColors.darkTextColor
                                        : Color(0xff706F6F),
                                  ),
                                ),
                                Text(
                                  'Drag and drop files',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).brightness == Brightness.dark
                                        ? Color(0xffFFFFFF)
                                        : Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  height: screenHeight * 0.2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: screenWidth * 0.04,
                              bottom: screenHeight * 0.01,
                            ),
                            child: Text(
                              'Title',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.15,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffF1F1F3),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          maxLines: null,
                          onChanged: (value) => controller.title = value,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Container(
                  height: screenHeight * 0.2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: screenWidth * 0.04,
                              bottom: screenHeight * 0.01,
                            ),
                            child: Text(
                              'Add steps',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.15,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffF1F1F3),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          maxLines: null,
                          onChanged: (value) => controller.steps = value,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Container(
                  height: screenHeight * 0.2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: screenWidth * 0.04,
                              bottom: screenHeight * 0.01,
                            ),
                            child: Text(
                              'Add music',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).brightness == Brightness.dark
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.pickMusic();
                        },
                        child: Obx(
                              () => Container(
                            height: screenHeight * 0.25,
                            width: screenWidth * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xffF1F1F3),
                                width: 1.0,
                              ),
                            ),
                            child: controller.musicFile.value != null
                                ? Text('Selected Music File: ${controller.musicFile.value!.path}')
                                : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/drop.svg'),

                                  Text(
                                    'Browse Files',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Theme.of(context).brightness == Brightness.dark
                                          ? AppColors.darkTextColor
                                          : Color(0xff706F6F),
                                    ),
                                  ),
                                  Text(
                                    'Drag and drop files',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Theme.of(context).brightness == Brightness.dark
                                          ? Color(0xffFFFFFF)
                                          : Color(0xff000000),
                                    ),
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
                SizedBox(height: screenHeight * 0.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DTButton(
                      onClick: () => controller.updateTechnique(),
                      label: 'Update',
                      textSize: 16,
                      textFont: FontWeight.w400,
                      textAlign: TextAlign.center,
                      buttonColor: AppColors.primaryColor,
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.4,
                    ),
                    DTButton(
                      onClick: () {},
                      label: 'Delete',
                      textSize: 16,
                      textFont: FontWeight.w400,
                      textAlign: TextAlign.center,
                      gradient: AppColors.crisisButton,
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.4,
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}