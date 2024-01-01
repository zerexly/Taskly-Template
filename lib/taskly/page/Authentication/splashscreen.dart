import 'package:taskly/taskly/gloabelclass/icons.dart';
import 'package:flutter/material.dart';

import '../../gloabelclass/color.dart';
import 'welcome.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    goup();
  }

  goup() async {
    var navigator = Navigator.of(context);
    await Future.delayed(const Duration(seconds: 5));
    navigator.push(MaterialPageRoute(
      builder: (context) {
        return const Welcome();
      },
    ));
  }

  dynamic size;
  double height = 0.00;
  double width = 0.00;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: DailozColor.appcolor,
      body: Center(
          child: Image.asset(Pngimage.splashh,height: height/6,fit: BoxFit.fitHeight,)),
    );
  }
}
