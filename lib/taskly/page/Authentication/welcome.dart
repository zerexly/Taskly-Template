import 'package:taskly/taskly/gloabelclass/color.dart';
import 'package:taskly/taskly/gloabelclass/fontstyle.dart';
import 'package:taskly/taskly/gloabelclass/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';
import 'signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: height/36,horizontal: width/36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height/8,),
            Image.asset(Pngimage.spash,height: height/3,fit: BoxFit.fitHeight,),
            SizedBox(height: height/16,),
            Text("Taskly".tr,style: hsBold.copyWith(fontSize: 32,color: DailozColor.appcolor),),
            SizedBox(height: height/46,),
            Text("Plan what you will do to be more organized for today, tomorrow and beyond".tr,textAlign: TextAlign.center,style: hsRegular.copyWith(fontSize: 14),),
            const Spacer(),
            InkWell(
              splashColor: DailozColor.transparent,
              highlightColor: DailozColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Login();
                },));
              },
              child: Container(
                width: width/1,
                height: height/15,
                decoration: BoxDecoration(
                  color: DailozColor.appcolor,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Center(child: Text("Login".tr,style: hsSemiBold.copyWith(fontSize: 16,color: DailozColor.white),)),
              ),
            ),
            SizedBox(height: height/96,),
            InkWell(
              splashColor: DailozColor.transparent,
              highlightColor: DailozColor.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Signup();
                },));
              },
              child: Container(
                width: width/1,
                height: height/15,
                decoration: BoxDecoration(
                    color: DailozColor.transparent,
                    borderRadius: BorderRadius.circular(14)
                ),
                child: Center(child: Text("SignUp".tr,style: hsSemiBold.copyWith(fontSize: 16,color: DailozColor.appcolor),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
