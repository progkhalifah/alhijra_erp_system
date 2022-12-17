import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          width: 500,
          height: 350,
          decoration: BoxDecoration(
              border: Border.all(color: titleColor),
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            shadowColor: Colors.black ,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("الصفحة الشخصية", style: TextStyle(fontSize: 20,color: titleColor), )
                  ],
                ),
                Container(
                  width: 500,
                  color: NotificationBackgroundColor,
                  child: Column(
                    children: [
                      SizedBox(width: 50, height: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 300,),
                          child: const Text(
                        "الـــمــعـــلـــومـــات",
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 20),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Table(
                          textDirection: TextDirection.rtl,

                          border: TableBorder.all(color: Colors.black),
                          columnWidths: const {
                            0: FlexColumnWidth(1.5),
                            1: FlexColumnWidth(1.5),

                          },
                          children: const [
                            TableRow(children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "الدور",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "مدير مدير",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "البريد الإلكتروني",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Gh@hghg.com",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "رقم الجوال",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "0587498652",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ]),

                          ],
                        ),
                      ),
                      SizedBox(width: 50, height: 20,),
                      Container(
                        padding: EdgeInsets.only(left: 300,),
                          child: const Text(
                        "الــــســـــــجـــــــلات",
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 20),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Table(
                          textDirection: TextDirection.rtl,

                          border: TableBorder.all(color: Colors.black),
                          columnWidths: const {
                            0: FlexColumnWidth(1.5),
                            1: FlexColumnWidth(1.5),
                          },
                          children: const [
                            TableRow(children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "تسجيل الدخول",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "2022--05-05",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "IP",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "95.959.95.959",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
