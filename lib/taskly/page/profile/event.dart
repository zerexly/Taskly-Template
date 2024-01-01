import 'package:taskly/taskly/gloabelclass/color.dart';
import 'package:taskly/taskly/gloabelclass/fontstyle.dart';
import 'package:taskly/taskly/gloabelclass/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/themecontroller.dart';
import '../task/taskdetail.dart';
import 'addpersonal.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
  int isselected = 0;
  final themedata = Get.put(Themecontroler());

  List name = ["Cleaning Clothes","Cleaning Clothes","Cleaning Clothes"];

  List day = ["MO","TU","WE","TH","FR","SA","SU","MO","TU","WE"];
  List date = ["12","13","14","15","16","17","18","19","20","21"];

  DateTime selectedDate = DateTime.now();
  ScrollController scrollController = ScrollController();

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]; //List of Days


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
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
              child: Padding(
                padding: EdgeInsets.only(left: width/56),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: DailozColor.black,
                ),
              ),
            ),
          ),
        ),
        title:  Text("Events".tr,style: hsSemiBold.copyWith(fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Task".tr,style: hsSemiBold.copyWith(fontSize: 24),),
                  const Spacer(),
                  Image.asset(Pngimage.calendar,height: height/46,),
                  SizedBox(width: width/36,),
                  Text("August 2021",style: hsRegular.copyWith(fontSize: 12),),
                ],
              ),
              SizedBox(height: height/36,),
              SizedBox(
                height: height/8.8,
                child: ListView.builder(
                  itemCount: 31,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          isselected = index;
                          selectedDate =
                              DateTime.now().add(Duration(days: index));
                        });
                      },
                      child: Container(
                        width: width/7,
                        margin: EdgeInsets.only(bottom: width/30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: isselected == index?DailozColor.appcolor:DailozColor.transparent
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: height/96),
                          child: Column(
                            children: [
                              Text( listOfDays[DateTime.now()
                                  .add(Duration(days: index))
                                  .weekday -
                                  1]
                                  .toString(),style: hsMedium.copyWith(fontSize: 16,color: isselected == index?DailozColor.white:themedata.isdark?DailozColor.white:DailozColor.black),),
                              SizedBox(height: height/96,),
                              Text(DateTime.now()
                                  .add(Duration(days: index))
                                  .day
                                  .toString(),style: hsRegular.copyWith(fontSize: 14,color: isselected == index?DailozColor.white:themedata.isdark?DailozColor.white:DailozColor.black),),
                            ],
                          ),
                        ),
                      ),
                    );
                  },),
              ),
              SizedBox(height: height/56,),
              Text("Events".tr,style: hsSemiBold.copyWith(fontSize: 16),),
              SizedBox(height: height/56,),
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
                          color: DailozColor.bgpurple
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
                                        color: const Color(0xffECEAFF),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/120),
                                      child: Text("Urgent",style: hsMedium.copyWith(fontSize: 10,color: DailozColor.purple),),
                                    )),
                                SizedBox(width: width/36,),
                                Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xffECEAFF),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/120),
                                      child: Text("Home",style: hsMedium.copyWith(fontSize: 10,color: DailozColor.purple),),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: DailozColor.appcolor,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddPersonal("event");
          },));
        },
        child: const Icon(Icons.add,size: 22,color: DailozColor.white,),
      ),
    );
  }
}
