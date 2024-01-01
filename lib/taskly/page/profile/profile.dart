import 'package:taskly/taskly/gloabelclass/color.dart';
import 'package:taskly/taskly/gloabelclass/fontstyle.dart';
import 'package:taskly/taskly/gloabelclass/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/themecontroller.dart';
import 'event.dart';
import 'meeting.dart';
import 'personal.dart';
import 'private.dart';
import 'setting.dart';
import 'work.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  int isselected = 0;
  final themedata = Get.put(Themecontroler());
  List type = ["Personal","Private","Secret"];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              splashColor: DailozColor.transparent,
              highlightColor: DailozColor.transparent,
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: height/20,
                width: height/20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: DailozColor.white,
                    boxShadow: const [
                      BoxShadow(color: DailozColor.textgray,blurRadius: 5)
                    ]
                ),
                child: SizedBox(
                  height: height/22,
                  width: height/26,
                  child: PopupMenuButton<int>(itemBuilder: (context) =>[
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Image.asset(Pngimage.setting,height: height/36,),
                          SizedBox(width: width/36,),
                          Text("Setting".tr,style: hsRegular.copyWith(fontSize: 16,color: DailozColor.black),),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Image.asset(Pngimage.logout,height: height/36,),
                          SizedBox(width: width/36,),
                          Text("Log_Out".tr,style: hsRegular.copyWith(fontSize: 16,color: DailozColor.black),),
                        ],
                      ),
                    )
                  ],
                    offset: const Offset(5, 50),
                    color: DailozColor.white,
                    constraints: BoxConstraints(
                      maxWidth: width/2.8,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    icon: Image.asset(Pngimage.moreSquare,height: height/36,),
                    elevation: 2,
                    onSelected: (value) {
                      // if value 1 show dialog
                      if (value == 1) {
                       Navigator.push(context,  MaterialPageRoute(builder: (context) {
                         return const Setting();
                       },));
                        // if value 2 show dialog
                      } else if (value == 2) {
                        logout();
                      }
                    },

                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
          child: Column(
            children: [
             Container(
               height: height/10,
               width: height/10,
               decoration: BoxDecoration(
                 color: DailozColor.white,
                 borderRadius: BorderRadius.circular(50),
                 boxShadow: const [
                   BoxShadow(color: DailozColor.bggray,blurRadius: 5)
                 ]
               ),
               child: Image.asset(Pngimage.avtar,height: height/16,),
             ),
              SizedBox(height: height/56,),
              Text("Steve Job".tr,style: hsSemiBold.copyWith(fontSize: 20),),
              Text("SteveJob@gmail.com".tr,style: hsRegular.copyWith(fontSize: 14,),),
              SizedBox(height: height/36,),
              Row(
                children: [
                  InkWell(
                    splashColor: DailozColor.transparent,
                    highlightColor: DailozColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Personal();
                      },));
                    },
                    child: Container(
                      height: height/4.9,
                      width: width/2.2,
                      decoration: BoxDecoration(
                          color: DailozColor.bgpurple,
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
                        child: Column(
                          children: [
                            Container(
                                height: height/15,
                                width: height/15,
                                decoration: BoxDecoration(
                                    color: DailozColor.purple,
                                    borderRadius: BorderRadius.circular(14)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(Pngimage.profile,height: height/36,fit: BoxFit.fitHeight,),
                                )
                            ),
                            SizedBox(height: height/56,),
                            Text("Personal".tr,style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),
                            Text("6 Task",style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),

                          ],
                        ),
                      ) ,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: DailozColor.transparent,
                    highlightColor: DailozColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Work();
                      },));
                    },
                    child: Container(
                      height: height/4.9,
                      width: width/2.2,
                      decoration: BoxDecoration(
                          color: DailozColor.bgsky,
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
                        child: Column(
                          children: [
                            Container(
                                height: height/15,
                                width: height/15,
                                decoration: BoxDecoration(
                                    color: DailozColor.lightblue,
                                    borderRadius: BorderRadius.circular(14)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(Pngimage.work,height: height/36,fit: BoxFit.fitHeight,),
                                )
                            ),
                            SizedBox(height: height/56,),
                            Text("Work".tr,style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),
                            Text("8 Task",style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),

                          ],
                        ),
                      ) ,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height/36,),
              Row(
                children: [
                  InkWell(
                    splashColor: DailozColor.transparent,
                    highlightColor: DailozColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Private();
                      },));
                    },
                    child: Container(
                      height: height/4.9,
                      width: width/2.2,
                      decoration: BoxDecoration(
                          color: DailozColor.bgred,
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
                        child: Column(
                          children: [
                            Container(
                                height: height/15,
                                width: height/15,
                                decoration: BoxDecoration(
                                    color: DailozColor.lightred,
                                    borderRadius: BorderRadius.circular(14)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(Pngimage.lock,height: height/36,fit: BoxFit.fitHeight,),
                                )
                            ),
                            SizedBox(height: height/56,),
                            Text("Private".tr,style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),
                            Text("3 Task",style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),
                          ],
                        ),
                      ) ,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: DailozColor.transparent,
                    highlightColor: DailozColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Meeting();
                      },));
                    },
                    child: Container(
                      height: height/4.9,
                      width: width/2.2,
                      decoration: BoxDecoration(
                          //color: DailozColor.bggreen,
                          color: DailozColor.lightgreenbg,
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
                        child: Column(
                          children: [
                            Container(
                                height: height/15,
                                width: height/15,
                                decoration: BoxDecoration(
                                    color: DailozColor.lightgreen,
                                    borderRadius: BorderRadius.circular(14)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(Pngimage.users,height: height/36,fit: BoxFit.fitHeight,),
                                )
                            ),
                            SizedBox(height: height/56,),
                            Text("Meeting".tr,style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),
                            Text("4 Task",style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),

                          ],
                        ),
                      ) ,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height/36,),
              Row(
                children: [
                  InkWell(
                    splashColor: DailozColor.transparent,
                    highlightColor: DailozColor.transparent,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Event();
                      },));
                    },
                    child: Container(
                      height: height/4.9,
                      width: width/2.2,
                      decoration: BoxDecoration(
                          color: DailozColor.bgpurple,
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
                        child: Column(
                          children: [
                            Container(
                                height: height/15,
                                width: height/15,
                                decoration: BoxDecoration(
                                    color: DailozColor.purple,
                                    borderRadius: BorderRadius.circular(14)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(Pngimage.calendar,height: height/36,fit: BoxFit.fitHeight,color: DailozColor.white),
                                )
                            ),
                            SizedBox(height: height/56,),
                            Text("Events".tr,style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),
                            Text("4 Task",style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),
                          ],
                        ),
                      ) ,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: DailozColor.transparent,
                    highlightColor: DailozColor.transparent,
                    onTap: () {
                      createBoard();
                    },
                    child: Container(
                      height: height/4.9,
                      width: width/2.2,
                      decoration: BoxDecoration(
                          color: DailozColor.redbglight,
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
                        child: Column(
                          children: [
                            Container(
                                height: height/15,
                                width: height/15,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF0A58E),
                                    borderRadius: BorderRadius.circular(14)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(Pngimage.plus,height: height/36,fit: BoxFit.fitHeight,),
                                )
                            ),
                            SizedBox(height: height/56,),
                            Text("Create_Board".tr,style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),
                            Text("6 Task",style: hsMedium.copyWith(fontSize: 14,color: DailozColor.black),),

                          ],
                        ),
                      ) ,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Future<bool> logout() async {
    return await showDialog(
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width/56,vertical: height/96),
              child: Column(
                children: [
                  Text("Log_Out".tr,style: hsSemiBold.copyWith(fontSize: 22)),
                  SizedBox(height: height/56,),
                  Text("Are_you_sure_to_log_out_fromthis_account".tr,textAlign: TextAlign.center,maxLines: 2,overflow: TextOverflow.ellipsis,style: hsRegular.copyWith(fontSize: 16)),
                  SizedBox(height: height/36,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: DailozColor.transparent,
                          highlightColor: DailozColor.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: height/20,
                            width: width/4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: DailozColor.appcolor)
                            ),
                            child: Center(child: Text("Cancel".tr,style: hsRegular.copyWith(fontSize: 14,color: DailozColor.appcolor),)),
                          ),
                        ),
                        SizedBox(width: width/36,),
                        Container(
                          height: height/20,
                          width: width/4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: DailozColor.appcolor
                          ),
                          child: Center(child: Text("Sure".tr,style: hsRegular.copyWith(fontSize: 14,color: DailozColor.white),)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height/56,),
                ],
              ),
            )
          ],
        ),
        context: context);
  }

  Future<bool> createBoard() async {
    return await showDialog(
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width/56,vertical: height/96),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create_Board".tr,style: hsSemiBold.copyWith(fontSize: 22)),
                  SizedBox(height: height/56,),
                  Text("Board_Name".tr,style: hsMedium.copyWith(fontSize: 14)),
                  SizedBox(height: height/96,),
                  SizedBox(
                    height: height/14,
                    child: TextFormField(
                        cursorColor: DailozColor.black,
                        style: hsMedium.copyWith(fontSize: 16,color: DailozColor.black),
                        decoration: InputDecoration(
                          hintText: 'Board_Name'.tr,
                          filled: true,
                          fillColor: DailozColor.bggray,
                          hintStyle: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none),
                        )),
                  ),
                  SizedBox(height: height/46,),
                  Text("Type".tr,style: hsMedium.copyWith(fontSize: 14),),
                  SizedBox(height: height/96,),
                  SizedBox(
                    height: height/30,
                    child: ListView.builder(
                      itemCount: type.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: width/26),
                          child: InkWell(
                            splashColor: DailozColor.transparent,
                            highlightColor: DailozColor.transparent,
                            onTap: () {
                              setState(() {
                                isselected = index;
                              });
                            },
                            child: Row(
                              children: [
                                Icon(isselected == index?Icons.check_box_sharp:Icons.check_box_outline_blank,size: 18,color: isselected == index?DailozColor.appcolor:DailozColor.textgray,),
                                SizedBox(width: width/36,),
                                Text(type[index],style: hsRegular.copyWith(fontSize: 14,),),
                              ],
                            ),
                          ),
                        );
                      },),
                  ),
                  SizedBox(height: height/30,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: DailozColor.transparent,
                          highlightColor: DailozColor.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: height/20,
                            width: width/4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: DailozColor.appcolor)
                            ),
                            child: Center(child: Text("Cancel".tr,style: hsRegular.copyWith(fontSize: 14,color: DailozColor.appcolor),)),
                          ),
                        ),
                        SizedBox(width: width/36,),
                        Container(
                          height: height/20,
                          width: width/4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: DailozColor.appcolor
                          ),
                          child: Center(child: Text("Create".tr,style: hsRegular.copyWith(fontSize: 14,color: DailozColor.white),)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height/56,),
                ],
              ),
            )
          ],
        ),
        context: context);
  }
}
