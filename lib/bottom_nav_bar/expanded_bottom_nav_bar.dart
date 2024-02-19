import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/ListOfMentorsScreen/requests.dart';
import 'package:super_admin_mudita/features/ViewScreen/user_list.dart';
import 'package:super_admin_mudita/features/ViewScreen/view_all_screen.dart';
import 'package:super_admin_mudita/features/home_page/home_page.dart';

import '../controller/expanded_nav_controller.dart';
import '../features/CMS/cms_screen.dart';



class ExpandedBottomNavBar extends StatelessWidget {
  const ExpandedBottomNavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    //init expandable nav controller

    var controller = Get.put(ExpandedNavController());


    var navbarItem = [
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/home.svg',
            width: 25, color: Color(0xff868686)),
        activeIcon: SvgPicture.asset('assets/home.svg',
            width: 25, color:AppColors.primaryColor),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/list.svg',
            width: 25, color: Color(0xff868686)),
        activeIcon: SvgPicture.asset('assets/list.svg',
            width: 25, color: AppColors.primaryColor),
        label: 'Community',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/doctor.svg',
            width: 23, color: Color(0xff868686)),
        activeIcon: SvgPicture.asset('assets/doctor.svg',
            width: 23, color: AppColors.primaryColor),
        label: 'chat',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/database.svg',
            width: 25, color: Color(0xff868686)),
        activeIcon: SvgPicture.asset('assets/database.svg',
            width: 25, color: AppColors.primaryColor),
        label: 'mentor',
      ),
    ];

    //list of pages to show by bottomnavbar
    var navBody = [
      Container(
        child: HomePage(),
      ),
      Container(
        child: ViewAllSection(),
      ),
      Container(
        child: Requests(),
      ),
      Container(
        child: CMSScreen(),
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
            child: navBody.elementAt(controller.currentNavIndex.value),
          )),
        ],
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff8B4CFC),
          selectedIconTheme: IconThemeData(color: Color(0xff8B4CFC)),
          backgroundColor: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor : Color(0xffFFFFFF),

          items: navbarItem,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Color(0xff868686),
          onTap: (value) {
            controller.currentNavIndex.value = value;
            IconThemeData(color: Colors.red);
          },
        ),
      ),
    );
  }
}
