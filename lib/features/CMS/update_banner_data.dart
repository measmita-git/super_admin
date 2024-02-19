import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:super_admin_mudita/controller/update_banner_controller.dart';
import '../../components/custom_button.dart';
import '../../constants/app_colors.dart';
import 'dart:io';

class UpdateBannerData extends StatelessWidget {
  const UpdateBannerData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UpdateBannerController bannerController =
    Get.put(UpdateBannerController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset(
                        'assets/Back Button.svg',
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Color(0xffFFFFFF)
                            : Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    Text(
                      'Banner',
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
                SizedBox(
                  height: 31,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: screenWidth * 0.04,
                          top: screenHeight * 0.02,
                          bottom: screenHeight * 0.02),
                      child: Row(
                        children: [
                          Text(
                            'Cover Photo',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).brightness ==
                                  Brightness.dark
                                  ? Color(0xffFFFFFF)
                                  : Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        bannerController.pickImageAndUpdate(
                            ImageSource.gallery);
                      },
                      child: Container(
                        height: screenHeight * 0.2,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xffF1F1F3),
                            width: 1.0,
                          ),
                        ),
                        child: Obx(() {
                          return bannerController.cover_img.value != null
                              ? Image.file(File(bannerController.cover_img.value!.path))
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
                                    color: Theme.of(context).brightness ==
                                        Brightness.dark
                                        ? AppColors.darkTextColor
                                        : Color(0xff706F6F),
                                  ),
                                ),
                                Text(
                                  'Drag and drop files',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context).brightness ==
                                        Brightness.dark
                                        ? Color(0xffFFFFFF)
                                        : Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: screenHeight * 0.2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  left: screenWidth * 0.04,
                                  bottom: screenHeight * 0.01),
                              child: Text(
                                'Title',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).brightness ==
                                      Brightness.dark
                                      ? Color(0xffFFFFFF)
                                      : Color(0xff000000),
                                ),
                              )),
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
                          onChanged: (value) =>
                          bannerController.title = value,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  height: screenHeight * 0.2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  left: screenWidth * 0.04,
                                  bottom: screenHeight * 0.01),
                              child: Text(
                                'Subtitle',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).brightness ==
                                      Brightness.dark
                                      ? Color(0xffFFFFFF)
                                      : Color(0xff000000),
                                ),
                              )),
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
                          onChanged: (value) =>
                          bannerController.subtitle = value,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                left: screenWidth * 0.03,
                                top: screenHeight * 0.02,
                              ),
                              child: Text(
                                'Add link',
                                style: TextStyle(
                                  color: Theme.of(context).brightness ==
                                      Brightness.dark
                                      ? Color(0xffFFFFFF)
                                      : Color(0xff000000),
                                ),
                              )),
                        ],
                      ),
                      Container(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.09,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffF1F1F3),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          onChanged: (value) => bannerController.link = value,
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Paste a file link...',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xff868686),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: screenWidth * 0.02,
                                top: screenHeight * 0.01),
                            child: DTButton(
                              onClick: () {},
                              label: 'Embed ',
                              textSize: 10,
                              textFont: FontWeight.w400,
                              textAlign: TextAlign.center,
                              buttonColor: Color(0xff2383E2),
                              height: screenHeight * 0.04,
                              width: screenWidth * 0.2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                DTButton(
                  onClick: () {
                    final String imagePath =
                        bannerController.cover_img.value!.path;
                    bannerController.updateBannerOnServer(
                        imagePath,
                        bannerController.title,
                        bannerController.subtitle,
                        bannerController.link);
                  },
                  label: 'Update',
                  textSize: 16,
                  textFont: FontWeight.w400,
                  textAlign: TextAlign.center,
                  buttonColor: AppColors.primaryColor,
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.4,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
