import 'package:alhijra/constant.dart';
import 'package:alhijra/views/hr/app_bar_hr.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';
import 'package:get/get.dart';

class HrManagerPage extends StatelessWidget {
  HrManagerPage({Key? key}) : super(key: key);

  // Initial Selected Value
  String dropdownvalue = 'قطيع رقم 1';

  // List of items in our dropdown menu
  var items = [
    'قطيع رقم 1',
    'قطيع رقم 2',
    'قطيع رقم 3',
    'قطيع رقم 4',
    'قطيع رقم 5',
  ];

  String? customers;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                CustomeAppBarHrManager(),
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            width: 1550,
                            height: 500,
                            decoration: BoxDecoration(
                                border: Border.all(color: titleColor),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.black,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Icon(
                                          Icons.cancel_outlined,
                                          color: titleColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(
                                          onPressed: () => {
                                            Get.toNamed("/pagelistpurchases")
                                          },
                                          child: Text(
                                            "تصفية",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: buttonColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 100,
                                        height: 30,
                                        child: Expanded(
                                          child: TextField(
                                            cursorColor: titleColor,
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: buttonColor)),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: buttonColor)),
                                              // labelText: "إدخل التاريخ",
                                              suffixIcon: Icon(Icons.search),
                                              suffixIconColor: Colors.white38,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(right: 30, top: 10),
                                        child: Text(
                                          "قائمة الموظفين",
                                          style: TextStyle(color: titleColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50,
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Table(
                                      textDirection: TextDirection.rtl,
                                      border: TableBorder.symmetric(
                                          outside: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.5)),
                                      columnWidths: const {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(1),
                                        2: FlexColumnWidth(1),
                                        3: FlexColumnWidth(1),
                                        4: FlexColumnWidth(1.5),
                                        5: FlexColumnWidth(1),
                                        6: FlexColumnWidth(1),
                                        7: FlexColumnWidth(1),
                                      },
                                      children: const [
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "#",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "الرقم الوظيفي",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "اسم الموظف",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "رقم الهوية",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "رقم الجوال",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "الوظيفة",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "البريد الإلكتروني",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "الإجراء",
                                                style:
                                                TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ), // end of table
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            width: 1550,
                            height: 500,
                            decoration: BoxDecoration(
                                border: Border.all(color: titleColor),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.black,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Icon(
                                          Icons.cancel_outlined,
                                          color: titleColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(
                                          onPressed: () => {
                                            Get.toNamed("/pagelistpurchases")
                                          },
                                          child: Text(
                                            "تصفية",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: buttonColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 100,
                                        height: 30,
                                        child: Expanded(
                                          child: TextField(
                                            cursorColor: titleColor,
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: buttonColor)),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: buttonColor)),
                                              // labelText: "إدخل التاريخ",
                                              suffixIcon: Icon(Icons.search),
                                              suffixIconColor: Colors.white38,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(right: 30, top: 10),
                                        child: Text(
                                          "قائمة الموظفين",
                                          style: TextStyle(color: titleColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50,
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Table(
                                      textDirection: TextDirection.rtl,
                                      border: TableBorder.symmetric(
                                          outside: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.5)),
                                      columnWidths: const {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(1),
                                        2: FlexColumnWidth(1),
                                        3: FlexColumnWidth(1),
                                        4: FlexColumnWidth(1.5),
                                        5: FlexColumnWidth(1),
                                        6: FlexColumnWidth(1),
                                        7: FlexColumnWidth(1),
                                      },
                                      children: const [
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "#",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "الرقم الوظيفي",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "اسم الموظف",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "رقم الهوية",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "رقم الجوال",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "الوظيفة",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "البريد الإلكتروني",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "الإجراء",
                                                style:
                                                TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "GG@hh.com",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ), // end of table
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            width: 1550,
                            height: 500,
                            decoration: BoxDecoration(
                                border: Border.all(color: titleColor),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.black,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Icon(
                                          Icons.cancel_outlined,
                                          color: titleColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(onPressed: ()=>{
                                          showDialog(context: context, builder: (BuildContext context){
                                            return AlertDialog(
                                              title: Text("Success"),
                                              titleTextStyle:
                                              TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
                                              actionsOverflowButtonSpacing: 20,
                                              actions: [
                                                Center(
                                                  child: Container(
                                                    width: 900,
                                                    height: 650,
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
                                                            children: [
                                                              const Padding(
                                                                padding: EdgeInsets.only(left: 10,top: 10),
                                                                child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: ElevatedButton(
                                                                  onPressed: ()=>{
                                                                    Get.toNamed("/pagelistpurchases")
                                                                  },
                                                                  child: Text("تصفية", style: TextStyle(color: Colors.white,) ,),
                                                                  style: ElevatedButton.styleFrom(
                                                                    primary: buttonColor,
                                                                    shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(10),
                                                                    ),
                                                                  ) ,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                width: 100,
                                                                height: 30,
                                                                child: Expanded(
                                                                  child: TextField(
                                                                    cursorColor: titleColor,
                                                                    decoration: InputDecoration(
                                                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: buttonColor)),
                                                                      border: OutlineInputBorder(borderSide: BorderSide(color: buttonColor)),
                                                                      // labelText: "إدخل التاريخ",
                                                                      suffixIcon: Icon(Icons.search),
                                                                      suffixIconColor: Colors.white38,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              const Padding(
                                                                padding: EdgeInsets.only(right: 30,top: 10),
                                                                child: Text("قائمة المبيعات", style: TextStyle(color: titleColor), ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(width: 50, height: 20,),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0, right: 15),
                                                            child: Table(
                                                              textDirection: TextDirection.rtl,

                                                              border: TableBorder.symmetric(outside: const BorderSide(color: Colors.transparent, width: 1.5)),
                                                              columnWidths: const {
                                                                0: FlexColumnWidth(1),
                                                                1: FlexColumnWidth(1),
                                                                2: FlexColumnWidth(1),
                                                                3: FlexColumnWidth(1),
                                                                4: FlexColumnWidth(1.5),
                                                                5: FlexColumnWidth(1),
                                                                6: FlexColumnWidth(1),
                                                                7: FlexColumnWidth(1),
                                                              },
                                                              children: const [
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "ID",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "رقم الفاتورة",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "اسم العميل",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "المنتج",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "الكمية",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "إجمالي الفاتورة قبل ض.ق",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "إجمالي الفاتورة بعد ض.ق",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.print,
                                                                        color: titleColor,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "1",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "54545",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "محمد",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "بيض",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "9500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "10000",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "11500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.more_vert,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "1",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "54545",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "محمد",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "بيض",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "9500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "10000",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "11500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.more_vert,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "1",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "54545",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "محمد",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "بيض",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "9500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "10000",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "11500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.more_vert,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "1",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "54545",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "محمد",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "بيض",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "9500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "10000",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "11500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.more_vert,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "1",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "54545",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "محمد",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "بيض",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "9500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "10000",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "11500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.more_vert,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "1",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "54545",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "محمد",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "بيض",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "9500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "10000",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "11500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.more_vert,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "1",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "54545",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "محمد",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "بيض",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "9500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "10000",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "11500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.more_vert,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                                TableRow(children: [
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "1",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "54545",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "محمد",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "بيض",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child:Text(
                                                                        "9500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Center(
                                                                        child: Text(
                                                                          "10000",
                                                                          style: TextStyle(fontSize: 15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Text(
                                                                        "11500",
                                                                        style: TextStyle(fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(8.0),
                                                                      child: Icon(
                                                                        Icons.more_vert,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]),
                                                              ],
                                                            ),
                                                          ), // end of table
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              content: Text("Saved successfully"),
                                            );
                                          })
                                        }, child: Text("Alert Dialog")),
                                      ),
                                      const SizedBox(
                                        width: 100,
                                        height: 30,
                                        child: Expanded(
                                          child: TextField(
                                            cursorColor: titleColor,
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: buttonColor)),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: buttonColor)),
                                              // labelText: "إدخل التاريخ",
                                              suffixIcon: Icon(Icons.search),
                                              suffixIconColor: Colors.white38,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(right: 30, top: 10),
                                        child: Text(
                                          "قائمة الموظفين",
                                          style: TextStyle(color: titleColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50,
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Table(
                                      textDirection: TextDirection.rtl,
                                      border: TableBorder.symmetric(
                                          outside: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.5)),
                                      columnWidths: const {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(1),
                                        2: FlexColumnWidth(1),
                                        3: FlexColumnWidth(1),
                                        4: FlexColumnWidth(1.5),
                                        5: FlexColumnWidth(1),
                                        6: FlexColumnWidth(1),
                                        7: FlexColumnWidth(1),
                                      },
                                      children: [
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "#",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "الرقم الوظيفي",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "اسم الموظف",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "رقم الهوية",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "رقم الجوال",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "الوظيفة",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "كلمة المرور",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "الإجراء",
                                                style:
                                                TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: ElevatedButton(
                                                onPressed: () => {
                                                  Get.toNamed("/pagelistpurchases")
                                                },
                                                child: Text(
                                                  "إعادة تعيين",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: titleColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: ElevatedButton(
                                                onPressed: () => {
                                                  Get.toNamed("/pagelistpurchases")
                                                },
                                                child: Text(
                                                  "إعادة تعيين",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: titleColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: ElevatedButton(
                                                onPressed: () => {
                                                  Get.toNamed("/pagelistpurchases")
                                                },
                                                child: Text(
                                                  "إعادة تعيين",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: titleColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: ElevatedButton(
                                                onPressed: () => {
                                                  Get.toNamed("/pagelistpurchases")
                                                },
                                                child: Text(
                                                  "إعادة تعيين",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: titleColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: ElevatedButton(
                                                onPressed: () => {
                                                  Get.toNamed("/pagelistpurchases")
                                                },
                                                child: Text(
                                                  "إعادة تعيين",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: titleColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: ElevatedButton(
                                                onPressed: () => {
                                                  Get.toNamed("/pagelistpurchases")
                                                },
                                                child: Text(
                                                  "إعادة تعيين",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: titleColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "2225552525",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "0564698987",
                                                style:
                                                    TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "مدير عام",
                                                  style:
                                                      TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: ElevatedButton(
                                                onPressed: () => {
                                                  Get.toNamed("/pagelistpurchases")
                                                },
                                                child: Text(
                                                  "إعادة تعيين",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: titleColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),

                                      ],
                                    ),
                                  ), // end of table
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          sidebarmenu(),
                          SizedBox(
                            height: 1400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget sidebarmenu() {
  return Container(
    width: 280,
    color: backgroundColor,
    child: Column(
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 60.0, right: 30.0),
              child: Text(
                "لوحة التحكم",
                style: TextStyle(fontSize: 20, color: titleColor),
              ),
            ),
            Icon(
              Icons.dashboard,
              color: Colors.black26,
              size: 20,
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 60.0, right: 30.0),
              child: Text(
                "الـمــوظـفـيـن",
                style: TextStyle(fontSize: 20, color: titleColor),
              ),
            ),
            Icon(
              Icons.storage,
              color: Colors.black26,
              size: 20,
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 60.0, right: 30.0),
              child: Text(
                "الـمستخدمين",
                style: TextStyle(fontSize: 20, color: titleColor),
              ),
            ),
            Icon(
              Icons.list_alt,
              color: Colors.black26,
              size: 20,
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 60.0, right: 30.0),
              child: Text(
                "الإعــــــدادات",
                style: TextStyle(fontSize: 20, color: titleColor),
              ),
            ),
            Icon(
              Icons.settings,
              color: Colors.black26,
              size: 20,
            ),
          ],
        ),

      ],
    ),
  );
}

/*
ElevatedButton(onPressed: ()=>{
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Success"),
                      titleTextStyle:
                      TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
                      actionsOverflowButtonSpacing: 20,
                      actions: [
                        Center(
                          child: Container(
                            width: 900,
                            height: 650,
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
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10,top: 10),
                                        child: Icon(Icons.cancel_outlined, color: titleColor,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(
                                          onPressed: ()=>{
                                            Get.toNamed("/pagelistpurchases")
                                          },
                                          child: Text("تصفية", style: TextStyle(color: Colors.white,) ,),
                                          style: ElevatedButton.styleFrom(
                                            primary: buttonColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ) ,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 100,
                                        height: 30,
                                        child: Expanded(
                                          child: TextField(
                                            cursorColor: titleColor,
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: buttonColor)),
                                              border: OutlineInputBorder(borderSide: BorderSide(color: buttonColor)),
                                              // labelText: "إدخل التاريخ",
                                              suffixIcon: Icon(Icons.search),
                                              suffixIconColor: Colors.white38,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 30,top: 10),
                                        child: Text("قائمة المبيعات", style: TextStyle(color: titleColor), ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 50, height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                                    child: Table(
                                      textDirection: TextDirection.rtl,

                                      border: TableBorder.symmetric(outside: const BorderSide(color: Colors.transparent, width: 1.5)),
                                      columnWidths: const {
                                        0: FlexColumnWidth(1),
                                        1: FlexColumnWidth(1),
                                        2: FlexColumnWidth(1),
                                        3: FlexColumnWidth(1),
                                        4: FlexColumnWidth(1.5),
                                        5: FlexColumnWidth(1),
                                        6: FlexColumnWidth(1),
                                        7: FlexColumnWidth(1),
                                      },
                                      children: const [
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "ID",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "رقم الفاتورة",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "اسم العميل",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "المنتج",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "الكمية",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "إجمالي الفاتورة قبل ض.ق",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "إجمالي الفاتورة بعد ض.ق",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.print,
                                                color: titleColor,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "54545",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "بيض",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "9500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "10000",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "11500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "54545",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "بيض",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "9500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "10000",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "11500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "54545",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "بيض",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "9500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "10000",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "11500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "54545",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "بيض",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "9500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "10000",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "11500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "54545",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "بيض",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "9500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "10000",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "11500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "54545",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "بيض",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "9500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "10000",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "11500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "54545",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "بيض",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "9500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "10000",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "11500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "1",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "54545",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "محمد",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "بيض",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:Text(
                                                "9500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "10000",
                                                  style: TextStyle(fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "11500",
                                                style: TextStyle(fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.more_vert,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ), // end of table
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                      content: Text("Saved successfully"),
                    );
                  })
                }, child: Text("Alert Dialog")),
* */
