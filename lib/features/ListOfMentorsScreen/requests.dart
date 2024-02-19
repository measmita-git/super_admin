import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_admin_mudita/constants/app_colors.dart';
import 'package:super_admin_mudita/features/ListOfMentorsScreen/new_request.dart';

import 'package:super_admin_mudita/features/ViewScreen/mentor_list.dart';
import 'package:super_admin_mudita/features/ViewScreen/user_list.dart';

class Requests extends StatefulWidget {
  const Requests({super.key});

  @override
  State<Requests> createState() => _RequestsState();
}

class _RequestsState extends State<Requests> with SingleTickerProviderStateMixin {
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
                      child: SvgPicture.asset('assets/Back Button.svg')),
                  SizedBox(width: 23,),
                  Text('Requests',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000),
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
                indicatorColor: AppColors.primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabController,
                tabs: [
                  Tab(text: 'New requests'),
                  Tab(text: 'Previous requests'),
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
                    child: NewRequests(),
                  ),
                  // Content for Likes
                  Container(
                    alignment: Alignment.center,
                    color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBackgroundColor : Color(0xffFFFFFF),


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
