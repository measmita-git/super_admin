import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/ViewScreen/mentor_details.dart';
import 'package:super_admin_mudita/features/ViewScreen/mentor_list.dart';
import 'package:super_admin_mudita/features/ViewScreen/user_list.dart';

class ViewAllSection extends StatefulWidget {
  const ViewAllSection({super.key});

  @override
  State<ViewAllSection> createState() => _ViewAllSectionState();
}

class _ViewAllSectionState extends State<ViewAllSection> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                      onTap:(){
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset('assets/Back Button.svg',color:  Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black,)),
                  SizedBox(width: 23,),
                  Text('View all',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color:Theme.of(context).brightness == Brightness.dark ? AppColors.darkTextColor : Colors.black,
                  ),
                  ),
                  SizedBox(width: 190,),
                  SvgPicture.asset('assets/sort.svg')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TabBar(
                labelColor: AppColors.primaryColor,
                indicatorColor:  AppColors.primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabController,
                tabs: [
                  Tab(text: 'Users'),
                  Tab(text: 'Mentors'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Content for Posts
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: UserList(),
                  ),
                  // Content for Likes
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: MentorList(),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
