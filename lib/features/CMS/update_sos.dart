import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import '../../components/custom_button.dart';
import '../../constants/app_colors.dart';
import '../../controller/update_sos_controller.dart';

class UpdateSOS extends StatelessWidget {
  final UpdateSOSController controller = Get.put(UpdateSOSController());

  @override
  Widget build(BuildContext context) {
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
                        Get.back();
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
                      'SOS',
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
                          controller: controller.titleController,
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
                            'Add Video',
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
                        controller.pickImage(ImageSource.gallery);
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
                        child: Obx(
                              () => controller.panCardImage.value != null
                              ? Image.file(controller.panCardImage.value!)
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
                            child: Text('Emergency contact number'),
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
                          controller: controller.emergencyContactController,
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
                  height: screenHeight * 0.05,
                ),
                DTButton(
                  onClick: () {
                    controller.updateSOS(1);
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