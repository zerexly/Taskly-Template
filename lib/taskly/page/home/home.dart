import 'package:taskly/taskly/gloabelclass/color.dart';
import 'package:taskly/taskly/gloabelclass/fontstyle.dart';
import 'package:taskly/taskly/gloabelclass/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../task/taskdetail.dart';
import 'mytask.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height/96,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi, Steven".tr,style: hsSemiBold.copyWith(fontSize: 26),),
                      Text("Let’s make this day productive".tr,style: hsRegular.copyWith(fontSize: 14),),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: height/16,
                    height: height/16,
                    decoration:  BoxDecoration(
                      color: DailozColor.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(color: DailozColor.textgray,blurRadius: 5)
                        ]
                    ),
                    child: Image.asset(Pngimage.avtar,height: height/36,),
                  )
                ],
              ),
              SizedBox(height: height/36,),
              Text("My_Task".tr,style: hsSemiBold.copyWith(fontSize: 24),),
              SizedBox(height: height/36,),
              Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        splashColor: DailozColor.transparent,
                        highlightColor: DailozColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return MyTask("Completed");
                          },));
                        },
                        child: Container(
                          height: height/4.5,
                          width: width/2.2,
                          decoration: BoxDecoration(
                              color: DailozColor.lightblue,
                            borderRadius: BorderRadius.circular(14)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/66),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(Pngimage.iMac,height: height/10,fit: BoxFit.fitHeight,),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward,color: DailozColor.black,size: 22,)
                                  ],
                                ),
                                SizedBox(height: height/66,),
                                Text("Completed".tr,style: hsMedium.copyWith(fontSize: 16,color: DailozColor.black),),
                                SizedBox(height: height/120,),
                                Text("86 Task",style: hsRegular.copyWith(fontSize: 14,color: DailozColor.black),),

                              ],
                            ),
                          ) ,
                        ),
                      ),
                      SizedBox(height: height/56,),
                      InkWell(
                        splashColor: DailozColor.transparent,
                        highlightColor: DailozColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return MyTask("Canceled");
                          },));
                        },
                        child: Container(
                          height: height/6,
                          width: width/2.2,
                          decoration: BoxDecoration(
                              color: DailozColor.lightred,
                              borderRadius: BorderRadius.circular(14)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/66),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(Pngimage.closeSquare,height: height/21,fit: BoxFit.fitHeight,),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward,color: DailozColor.white,size: 22,)
                                  ],
                                ),
                                SizedBox(height: height/66,),
                                Text("Canceled".tr,style: hsMedium.copyWith(fontSize: 16,color: DailozColor.white),),
                                SizedBox(height: height/120,),
                                Text("15 Task",style: hsRegular.copyWith(fontSize: 14,color: DailozColor.white),),

                              ],
                            ),
                          ) ,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      InkWell(
                        splashColor: DailozColor.transparent,
                        highlightColor: DailozColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return MyTask("Pending");
                          },));
                        },
                        child: Container(
                          height: height/6,
                          width: width/2.2,
                          decoration: BoxDecoration(
                              color: DailozColor.purple,
                              borderRadius: BorderRadius.circular(14)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/66),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(Pngimage.timeSquare,height: height/21,fit: BoxFit.fitHeight,),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward,color: DailozColor.white,size: 22,)
                                  ],
                                ),
                                SizedBox(height: height/66,),
                                Text("Pending".tr,style: hsMedium.copyWith(fontSize: 16,color: DailozColor.white),),
                                SizedBox(height: height/120,),
                                Text("15 Task",style: hsRegular.copyWith(fontSize: 14,color: DailozColor.white),),

                              ],
                            ),
                          ) ,
                        ),
                      ),
                      SizedBox(height: height/56,),
                      InkWell(
                        splashColor: DailozColor.transparent,
                        highlightColor: DailozColor.transparent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return MyTask("OnGoing");
                          },));
                        },
                        child: Container(
                          height: height/4.5,
                          width: width/2.2,
                          decoration: BoxDecoration(
                              color: DailozColor.lightgreen,
                              borderRadius: BorderRadius.circular(14)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/66),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(Pngimage.iMac,height: height/10,fit: BoxFit.fitHeight,),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward,color: DailozColor.black,size: 22,)
                                  ],
                                ),
                                SizedBox(height: height/66,),
                                Text("On_Going".tr,style: hsMedium.copyWith(fontSize: 16,color: DailozColor.black),),
                                SizedBox(height: height/120,),
                                Text("67 Task",style: hsRegular.copyWith(fontSize: 14,color: DailozColor.black),),

                              ],
                            ),
                          ) ,
                        ),
                      ),

                    ],
                  )
                ],
              ),
              SizedBox(height: height/26,),
              Row(
                children: [
                  Text("Today_Task".tr,style: hsSemiBold.copyWith(fontSize: 24),),
                  const Spacer(),
                  Text("View_all".tr,style: hsRegular.copyWith(fontSize: 12,color: DailozColor.appcolor),),
                ],
              ),
              ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                return InkWell(
                  splashColor: DailozColor.transparent,
                  highlightColor: DailozColor.transparent,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Taskdetail();
                    },));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: height/46),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: DailozColor.bggray
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/66),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Cleaning Clothes",style: hsMedium.copyWith(fontSize: 16,color: DailozColor.black),),
                              const Spacer(),
                              Image.asset(Pngimage.dot,height: height/36,)
                            ],
                          ),
                          SizedBox(height: height/200,),
                          Text("07:00 - 07:15",style: hsRegular.copyWith(fontSize: 14,color: DailozColor.textgray),),
                          SizedBox(height: height/66,),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0x338F99EB),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/120),
                                    child: Text("Urgent",style: hsMedium.copyWith(fontSize: 10,color: DailozColor.appcolor),),
                                  )),
                              SizedBox(width: width/36,),
                              Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0x338F99EB),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/120),
                                    child: Text("Home",style: hsMedium.copyWith(fontSize: 10,color: DailozColor.appcolor),),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },)

            ],
          ),
        ),
      ),
    );
  }
}
