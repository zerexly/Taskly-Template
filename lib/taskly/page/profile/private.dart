import 'package:taskly/taskly/gloabelclass/color.dart';
import 'package:taskly/taskly/gloabelclass/fontstyle.dart';
import 'package:taskly/taskly/gloabelclass/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../task/taskdetail.dart';
import 'addpersonal.dart';

class Private extends StatefulWidget {
  const Private({Key? key}) : super(key: key);

  @override
  State<Private> createState() => _PrivateState();
}

class _PrivateState extends State<Private> {
  dynamic size;
  double height = 0.00;
  double width = 0.00;
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
        title:  Text("Private".tr,style: hsSemiBold.copyWith(fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/36),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width/1.35,
                    child: TextFormField(
                        cursorColor: DailozColor.black,
                        style: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
                        decoration: InputDecoration(
                          hintText: 'Search for task'.tr,
                          filled: true,
                          fillColor: DailozColor.bggray,
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 22,
                            color: DailozColor.grey,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Container(
                              height: height/96,
                              width: height/96,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: DailozColor.textgray
                              ),
                              child: const Icon(
                                Icons.close,
                                size: 12,
                                color: DailozColor.white,
                              ),
                            ),
                          ),
                          hintStyle: hsMedium.copyWith(fontSize: 16,color: DailozColor.textgray),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none),
                        )),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: DailozColor.transparent,
                    highlightColor: DailozColor.transparent,
                    onTap: () {
                      // filter();
                    },
                    child: Container(
                        height: height/13,
                        width: height/13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: DailozColor.bggray,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Image.asset(Pngimage.filter,height: height/36,),
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: height/36,),
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
                          color: DailozColor.bgred
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
                                        color: DailozColor.lightorange,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/120),
                                      child: Text("Urgent",style: hsMedium.copyWith(fontSize: 10,color: DailozColor.lightred),),
                                    )),
                                SizedBox(width: width/36,),
                                Container(
                                    decoration: BoxDecoration(
                                        color: DailozColor.lightorange,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: width/36,vertical: height/120),
                                      child: Text("Home",style: hsMedium.copyWith(fontSize: 10,color: DailozColor.lightred),),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: DailozColor.appcolor,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddPersonal("private");
          },));
        },
        child: const Icon(Icons.add,size: 22,color: DailozColor.white,),
      ),
    );
  }
}
