import 'package:flutter/material.dart';
import 'package:taskly/taskly/gloabelclass/color.dart';
import 'package:taskly/taskly/gloabelclass/fontstyle.dart';
import 'package:taskly/taskly/gloabelclass/icons.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  bool _obscureText = true;
  void _togglePasswordStatus() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height/12,),
            Text("SignUp".tr,style: hsSemiBold.copyWith(fontSize: 36,color: DailozColor.appcolor),),
            SizedBox(height: height/16,),
            TextField(
              style: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
              decoration: InputDecoration(
                  hintStyle: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(Svgimage.icemail,height: height/36,colorFilter: const ColorFilter.mode(DailozColor.textgray, BlendMode.srcIn)),
                  ),
                  hintText: "Username",
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: DailozColor.greyy)
                  )
              ),
            ),
            SizedBox(height: height/36,),
            TextField(
              style: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
              decoration: InputDecoration(
                  hintStyle: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(Svgimage.icemail,height: height/36,colorFilter: const ColorFilter.mode(DailozColor.textgray, BlendMode.srcIn)),
                  ),
                  hintText: "Email ID or Username",
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: DailozColor.greyy)
                  )
              ),
            ),
            SizedBox(height: height/36,),
            TextField(
              obscureText: _obscureText,
              style: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
              decoration: InputDecoration(
                  hintStyle: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(Svgimage.iclock,height: height/36,colorFilter: const ColorFilter.mode(DailozColor.textgray, BlendMode.srcIn)),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: _togglePasswordStatus,
                    color: DailozColor.textgray,
                  ),
                  hintText: "Password",
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: DailozColor.greyy)
                  )
              ),
            ),

            SizedBox(height: height/20,),
            InkWell(
              splashColor: DailozColor.transparent,
              highlightColor: DailozColor.transparent,
              onTap: () {
                /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Login();
                },));*/
              },
              child: Container(
                width: width/1,
                height: height/15,
                decoration: BoxDecoration(
                    color: DailozColor.appcolor,
                    borderRadius: BorderRadius.circular(14)
                ),
                child: Center(child: Text("Create".tr,style: hsSemiBold.copyWith(fontSize: 16,color: DailozColor.white),)),
              ),
            ),
            SizedBox(height: height/20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: height / 500,
                    width: width / 3.5,
                    color: DailozColor.bggray),
                SizedBox(width: width / 56),
                Text(
                  "or_with".tr,
                  style: hsRegular.copyWith(
                      fontSize: 12, color: DailozColor.textgray),
                ),
                SizedBox(width: width / 56),
                Container(
                    height: height / 500,
                    width: width / 3.5,
                    color: DailozColor.bggray),
              ],
            ),
            SizedBox(height: height/26,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    width: width/6.5,
                    height: height/14,
                    decoration: BoxDecoration(
                        border: Border.all(color: DailozColor.bggray,),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(Pngimage.google,height: height/36,),
                    ),
                  ),
                ),
                SizedBox(width: width/20,),
                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    width: width/6.5,
                    height: height/14,
                    decoration: BoxDecoration(
                        border: Border.all(color: DailozColor.bggray,),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(Pngimage.facebook,height: height/36,),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have_any_account".tr,
                  style: hsRegular.copyWith(
                      fontSize: 14, color: DailozColor.textgray),
                ),
                Text(
                  "Login".tr,
                  style: hsSemiBold.copyWith(
                    fontSize: 14,),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
