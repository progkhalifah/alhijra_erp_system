import 'package:alhijra/constant.dart';
import 'package:alhijra/views/manager/app_bar_manager.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';
import 'package:get/get.dart';

class AdminPage extends StatelessWidget {
   AdminPage({Key? key}) : super(key: key);

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
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                CustomeAppBarManager(),
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            width: 1100,
                            height: 450,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(height: 20, width: 20,),
                                  Column(
                                    children: [
                                      Container(
                                        width: 330,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: titleColor),
                                            borderRadius: BorderRadius.circular(10.0)),
                                        child:Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: Text("حركة إنتاج البيض"),
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Container(
                                        width: 330,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: titleColor),
                                            borderRadius: BorderRadius.circular(10.0)),
                                        child:Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child:Text("متوسط تقدير تكلفة بيضة"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    children: [
                                      Container(
                                        width: 330,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: titleColor),
                                            borderRadius: BorderRadius.circular(10.0)),
                                        child:Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: Text("المراحل الزمنية للقطعان"),
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Container(
                                        width: 330,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: titleColor),
                                            borderRadius: BorderRadius.circular(10.0)),
                                        child:Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child:Text("إجمالي المصروفات"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    children: [
                                      Container(
                                        width: 330,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: titleColor),
                                            borderRadius: BorderRadius.circular(10.0)),
                                        child:Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: Text("حالات القطعان"),
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Container(
                                        width: 330,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: titleColor),
                                            borderRadius: BorderRadius.circular(10.0)),
                                        child:Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child:Text("إجمالي الإيرادات"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20, width: 20,),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: 1100,
                            height: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('عرض المخزون والمستودعات',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {

                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('عرض تقرير سجل الأعلاف',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('عرض تقرير سجل الأدوية واللقاحات',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    actionsOverflowButtonSpacing: 20,
                                                    actions: [
                                                      Container(
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
                                                                      onPressed: ()=>{},
                                                                      child: Text("تصفية", style: TextStyle(color: Colors.white,) ,),
                                                                      style: ElevatedButton.styleFrom(
                                                                        primary: buttonColor,
                                                                        shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(10),
                                                                        ),
                                                                      ) ,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(8.0),
                                                                    child: ElevatedButton(
                                                                      onPressed: ()=>{
                                                                        Get.toNamed("/pagelistsuppliers"),
                                                                      },
                                                                      child: Text("+ إضافة جديد", style: TextStyle(color: Colors.white,) ,),
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
                                                                    child: Text("قائمة العملاء", style: TextStyle(color: titleColor), ),
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
                                                                  children: [

                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.transparent,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "اسم العميل",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "رقم جوال العميل",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "العنوان",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "ملاحظة",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                    ],
                                                  );
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('قائمة العملاء',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    actionsOverflowButtonSpacing: 20,
                                                    actions: [
                                                      Container(
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
                                                                      onPressed: ()=>{},
                                                                      child: Text("تصفية", style: TextStyle(color: Colors.white,) ,),
                                                                      style: ElevatedButton.styleFrom(
                                                                        primary: buttonColor,
                                                                        shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(10),
                                                                        ),
                                                                      ) ,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(8.0),
                                                                    child: ElevatedButton(
                                                                      onPressed: ()=>{
                                                                        Get.toNamed("/pagelistdelegates"),
                                                                      },
                                                                      child: Text("+ إضافة جديد", style: TextStyle(color: Colors.white,) ,),
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
                                                                    child: Text("قائمة الموردين", style: TextStyle(color: titleColor), ),
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
                                                                    8: FlexColumnWidth(1),
                                                                  },
                                                                  children: [
                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ), /// radio
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.transparent,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ), /// circle
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "ID",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ), /// ID
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "اسم المورد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ), /// name of supplier
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "رقم جوال المورد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ), /// phone number of supplier
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "العنوان",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ), /// address
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "الرقم الضريبي",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ), /// TAX
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "ملاحظة",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ), /// Notes
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Icon(
                                                                            Icons.print,
                                                                            color: titleColor,
                                                                          ),
                                                                        ),
                                                                      ), /// Print
                                                                    ]),
                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "3000054654651645",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "3000054654651645",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "3000054654651645",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "3000054654651645",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "3000054654651645",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "3000054654651645",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "3000054654651645",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                    ],
                                                  );
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('قائمة الموردين',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    actionsOverflowButtonSpacing: 20,
                                                    actions: [
                                                      Container(
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
                                                                      onPressed: ()=>{},
                                                                      child: Text("تصفية", style: TextStyle(color: Colors.white,) ,),
                                                                      style: ElevatedButton.styleFrom(
                                                                        primary: buttonColor,
                                                                        shape: RoundedRectangleBorder(
                                                                          borderRadius: BorderRadius.circular(10),
                                                                        ),
                                                                      ) ,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(8.0),
                                                                    child: ElevatedButton(
                                                                      onPressed: ()=>{
                                                                        Get.toNamed("/pagelistsales"),
                                                                      },
                                                                      child: Text("+ إضافة جديد", style: TextStyle(color: Colors.white,) ,),
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
                                                                    child: Text("قائمة المناديب", style: TextStyle(color: titleColor), ),
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
                                                                  children: [

                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.transparent,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "اسم المندوب",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "رقم جوال المندوب",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "العنوان",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "ملاحظة",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                                        child: RadioListTile(
                                                                          value: "",
                                                                          groupValue: customers,
                                                                          onChanged: (value){
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Container(
                                                                            width: 50,
                                                                            height: 30,
                                                                            decoration: BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: Colors.black,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            "محمد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "0559999958",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Center(
                                                                            child: Text(
                                                                              "مكة",
                                                                              style: TextStyle(fontSize: 15.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "",
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
                                                    ],
                                                  );
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('قائمة المناديب',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    actionsOverflowButtonSpacing: 20,
                                                    actions: [
                                                      Container(
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
                                                    ],
                                                  );
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('قائمة المبيعات',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    actionsOverflowButtonSpacing: 20,
                                                    actions: [
                                                      Container(
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
                                                                      onPressed: ()=>{},
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
                                                                    child: Text("قائمة المشتريات", style: TextStyle(color: titleColor), ),
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
                                                                            "اسم المورد",
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
                                                    ],
                                                  );
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('قائمة المشتريات',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        SizedBox(
                                          width: 240,
                                          height: 50,
                                          child: Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    actionsOverflowButtonSpacing: 20,
                                                    actions: [
                                                      Container(
                                                        width: 500,
                                                        height: 600,
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
                                                                children: const [
                                                                  Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  Spacer(),
                                                                  Text("إضافة مبنى", style: TextStyle(color: titleColor), )
                                                                ],
                                                              ),
                                                              Row(
                                                                children: const [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(20.0),
                                                                      child: TextField(
                                                                        obscureText: true,
                                                                        decoration: InputDecoration(
                                                                          border: OutlineInputBorder(),
                                                                          labelText: '* اسم المبنى',
                                                                          hintText: 'إدخل * اسم المبنى',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: const [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(20.0),
                                                                      child: TextField(
                                                                        obscureText: true,
                                                                        decoration: InputDecoration(
                                                                          border: OutlineInputBorder(),
                                                                          labelText: '* رمز المبنى',
                                                                          hintText: 'إدخل * رمز المبنى',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 91,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadiusDirectional.circular(10),
                                                                      border: Border.all(color: titleColor),
                                                                    ),
                                                                    child: DropdownButton(

                                                                      // Initial Value
                                                                      value: dropdownvalue,
                                                                      // Down Arrow Icon
                                                                      icon: const Icon(Icons.keyboard_arrow_down),

                                                                      // Array list of items
                                                                      items: items.map((String items) {
                                                                        return DropdownMenuItem(
                                                                          value: items,
                                                                          child: Text(items),
                                                                        );
                                                                      }).toList(),
                                                                      // After selecting the desired option,it will
                                                                      // change button value to selected value
                                                                      onChanged: (String? newValue) {
                                                                        Get.snackbar("Action", "This is event for list");
                                                                      },
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تابع لموقع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 91,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadiusDirectional.circular(10),
                                                                      border: Border.all(color: titleColor),
                                                                    ),
                                                                    child: DropdownButton(

                                                                      // Initial Value
                                                                      value: dropdownvalue,

                                                                      // Down Arrow Icon
                                                                      icon: const Icon(Icons.keyboard_arrow_down),

                                                                      // Array list of items
                                                                      items: items.map((String items) {
                                                                        return DropdownMenuItem(
                                                                          value: items,
                                                                          child: Text(items),
                                                                        );
                                                                      }).toList(),
                                                                      // After selecting the desired option,it will
                                                                      // change button value to selected value
                                                                      onChanged: (String? newValue) {
                                                                        Get.snackbar("Action", "This is event for list");
                                                                      },
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* نوع المبنى", style: TextStyle(color: titleColor),),
                                                                  ),

                                                                ],
                                                              ),

                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(20.0),
                                                                      child: FlatButton(
                                                                        onPressed: () => {
                                                                          Get.toNamed("/beginningbreeding"),
                                                                        },
                                                                        color: titleColor,
                                                                        child: const Text("إضافة"), textColor: Colors.white,),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.white, // Background color
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text('إضافة مبنى',style: TextStyle(color: titleColor),), // <-- Text
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon( // <-- Icon
                                                    Icons.label_important_outline,
                                                    size: 24.0,
                                                    color: buttonColor,
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          sidebarmenu(),
                          SizedBox(
                            height: 400,
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
              padding: EdgeInsets.only(left: 90.0, right: 30.0),
              child: Text(
                "لـوحة الـتـحكم",
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
        Container(
          color: Colors.white,
          child: Row(
            children: const [
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black26,
                size: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0, right: 30.0),
                child: Text(
                  "المستودعات",
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
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 30.0),
              child: Text(
                "تقرير سجل الأعلاف",
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
          children: [
            Padding(
              padding: EdgeInsets.only(left: 80.0, right: 30.0),
              child: InkWell(
                onTap: (){

                },
                child: Text(
                  "مخزون الأعلاف",
                  style: TextStyle(fontSize: 20, color: titleColor),
                ),
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
              padding: EdgeInsets.only(left: 58.0, right: 30.0),
              child: Text(
                "تقرير سجل الأدوية",
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
              padding: EdgeInsets.only(left: 85.0, right: 30.0),
              child: Text(
                "مخزون الأدوية",
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
                "عرض المستودعات",
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
        Container(
          color: Colors.white,
          child: Row(
            children: const [
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black26,
                size: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0, right: 30.0),
                child: Text(
                  "الــتــقـــاريـــر",
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
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "قائمـة العملاء",
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
              padding: EdgeInsets.only(left: 90.0, right: 30.0),
              child: Text(
                "قائمة المناديب",
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
              padding: EdgeInsets.only(left: 90.0, right: 30.0),
              child: Text(
                "قائمة الموردين",
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
              padding: EdgeInsets.only(left: 90.0, right: 30.0),
              child: Text(
                "قائمة المبيعات",
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
              padding: EdgeInsets.only(left: 77.0, right: 30.0),
              child: Text(
                "قائمة المشتريات",
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
                "الإعــــــــــــــدادات",
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
