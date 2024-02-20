import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import '../../components/custom_button.dart';
import 'package:flutter_quill/flutter_quill.dart';
import '../../controller/add_blog.dart';

class AddBlog extends StatelessWidget {
  final AddBlogController _controller = Get.put(AddBlogController());

  final TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.03,
              top: screenHeight * 0.02,
            ),
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
                      'Add new blog',
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
                        _controller.pickImage(ImageSource.gallery, 1);
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
                          child: _controller.aadhaarFrontImage != null
                              ? Image.file(_controller.aadhaarFrontImage!)
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
                                        ? AppColors.darkTextColor
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
                SizedBox(height: screenHeight * 0.02,),
                SizedBox(
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: screenWidth * 0.04,
                        bottom: screenHeight * 0.01,
                      ),
                      child: Text(
                        'Add Text',
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
                  child: Text(
                    'What would you like to share ?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Color(0xffFFFFFF)
                          : Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.darkBackgroundColor
                      : Color(0xffF2F4F7),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.05,
                  child: QuillToolbar.simple(
                    configurations: QuillSimpleToolbarConfigurations(
                      color: Colors.red,
                      showAlignmentButtons: true,
                      showBoldButton: true,
                      showBackgroundColorButton: false,
                      showCenterAlignment: true,
                      showFontFamily: true,
                      showColorButton: false,
                      showCodeBlock: false,
                      showDividers: false,
                      showInlineCode: false,
                      showFontSize: false,
                      showHeaderStyle: false,
                      showJustifyAlignment: false,
                      showClearFormat: true,
                      showDirection: false,
                      showLink: true,
                      showIndent: false,
                      showItalicButton: true,
                      showLeftAlignment: true,
                      showListBullets: false,
                      showListCheck: false,
                      showListNumbers: true,
                      showQuote: false,
                      showRedo: false,
                      showSearchButton: false,
                      showRightAlignment: true,
                      showSmallButton: false,
                      showStrikeThrough: true,
                      showSubscript: false,
                      showSuperscript: false,
                      showUnderLineButton: true,
                      showUndo: false,
                      controller: _controller.controller,
                      sharedConfigurations: const QuillSharedConfigurations(
                        locale: Locale('de'),
                      ),
                    ),
                  ),
                ),
                Container(

                  width: screenWidth * 0.9,
                  height: screenHeight * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.darkBackgroundColor
                        : Color(0xffFCFCFD),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: QuillEditor.basic(
                      configurations: QuillEditorConfigurations(

                        controller: _controller.controller,
                        readOnly: false,
                        sharedConfigurations: const QuillSharedConfigurations(
                          locale: Locale('de'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                DTButton(
                  onClick: () {
                    String title = _titleController.text;

                    String description =
                        _controller.controller.document.toPlainText();

                    _controller.createBlog(title, description);
                  },
                  label: 'Add',
                  textSize: 16,
                  textFont: FontWeight.w400,
                  textAlign: TextAlign.center,
                  buttonColor: AppColors.primaryColor,
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.4,
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
