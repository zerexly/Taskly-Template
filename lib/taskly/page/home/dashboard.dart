import 'package:flutter/material.dart';
import 'package:taskly/taskly/gloabelclass/color.dart';
import 'package:taskly/taskly/gloabelclass/icons.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/themecontroller.dart';
import '../graphic/graphic.dart';
import '../profile/profile.dart';
import '../task/task.dart';
import 'home.dart';

// ignore: must_be_immutable
class Dashboard extends StatefulWidget {
  String? index;
  Dashboard(this.index, {super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  int selectindex = 0;
  PageController pageController = PageController();
  int _selectedItemIndex = 0;
  final themedata = Get.put(Themecontroler());
  final List<Widget> _pages = const [
    Home(),
    Task(),
    Graphic(),
    Profile(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Widget _bottomTabBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width/30,vertical: height/36),
      child: Container(
        decoration: BoxDecoration(
            color: themedata.isdark ? DailozColor.black : DailozColor.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(color: DailozColor.textgray,blurRadius: 5)
          ]
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedItemIndex,
          onTap: _onTap,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: DailozColor.transparent,
          type: BottomNavigationBarType.fixed,
        fixedColor: themedata.isdark ? DailozColor.white : DailozColor.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Svgimage.home,height: height/30,width: width/30,),
              activeIcon:SvgPicture.asset(Svgimage.homefill,height: height/35,width: width/35,),
              label: '',
            ),
            BottomNavigationBarItem(

              icon: SvgPicture.asset(Svgimage.task,height: height/30,width: width/30,),
              activeIcon: SvgPicture.asset(Svgimage.taskfill,height: height/30,width: width/30,),
              label: '',
            ),
            BottomNavigationBarItem(

              icon: SvgPicture.asset(Svgimage.graphic,height: height/32,width: width/32),

              activeIcon: SvgPicture.asset(Svgimage.graphicfill,height: height/34,width: width/34,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Svgimage.folder,height: height/32,width: width/32,),
              activeIcon: SvgPicture.asset(Svgimage.folderfill,height: height/32,width: width/32,),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return GetBuilder<Themecontroler>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: _bottomTabBar(),
        body: _pages[_selectedItemIndex],
      );

    });
  }
}
