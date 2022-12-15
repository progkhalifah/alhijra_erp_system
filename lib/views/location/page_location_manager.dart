import 'package:alhijra/constant.dart';
import 'package:alhijra/views/location/app_bar_location.dart';

import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';
import 'package:get/get.dart';

class LocationManagerPage extends StatelessWidget {
   LocationManagerPage({Key? key}) : super(key: key);

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
                CustomeAppBarLocationManager(),
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
                                              onPressed: () {
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    actionsOverflowButtonSpacing: 20,
                                                    actions: [
                                                      Container(
                                                        width: 900,
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
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  ),
                                                                  Spacer(),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(right: 30,top: 10),
                                                                    child: Text("إدخال بداية مرحلة تربية", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الاستلام", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("*القطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        enabled: false,
                                                                        labelText: "5000",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* المجموع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child:const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ) ,
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          labelText: "بيضة"
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تقدير الإنتاج للقطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* مدة التربية الافتراضية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* العمر الافتراضي للقطيع", style: TextStyle(color: titleColor),),
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
                                                                          Get.toNamed("/beginningproduction")
                                                                        },
                                                                        color: titleColor, textColor: Colors.white,
                                                                        child: const Text("حفظ"),),
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
                                                  Text('إدخال بداية مرحلة تربية',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  ),
                                                                  Spacer(),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(right: 30,top: 10),
                                                                    child: Text("إدخال بداية مرحلة إنتاج", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الاستلام", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("*القطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        enabled: false,
                                                                        labelText: "5000",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* المجموع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child:const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ) ,
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          labelText: "بيضة"
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تقدير الإنتاج للقطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* مدة التربية الافتراضية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* العمر الافتراضي للقطيع", style: TextStyle(color: titleColor),),
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
                                                                          Get.toNamed("/pageprescription"),
                                                                        },
                                                                        color: titleColor, textColor: Colors.white,
                                                                        child: const Text("حفظ"),),
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
                                                  Text('إدخال بداية مرحلة إنتاج',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  ),
                                                                  Spacer(),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(right: 30,top: 10),
                                                                    child: Text("إدخال حالة القطيع اليومي", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: const[
                                                                  Expanded(child: Text("*نوع القطيع",style: TextStyle(color: titleColor),),),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الاستلام", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("*القطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        enabled: false,
                                                                        labelText: "5000",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* المجموع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("عدد * ساعات الليل", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadiusDirectional.circular(10),
                                                                      border: Border.all(color: titleColor),
                                                                    ),
                                                                    child: Container(
                                                                      width: 93,
                                                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                      child: const TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* درجة الحرارة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* الموسم", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* التهوية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    decoration: BoxDecoration(
                                                                      borderRadius: BorderRadiusDirectional.circular(10),
                                                                      border: Border.all(color: titleColor),
                                                                    ),
                                                                    child: Container(
                                                                      width: 93,
                                                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                      child: const TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("عدد * ساعات النهار", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(20.0),
                                                                      child: FlatButton(
                                                                        onPressed: () => {
                                                                          Get.toNamed("/reportfinalflock")
                                                                        },
                                                                        color: titleColor, textColor: Colors.white,
                                                                        child: const Text("حفظ"),),
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
                                                  Text('إدخال يومي بحالات القطيع',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  ),
                                                                  Spacer(),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(right: 30,top: 10),
                                                                    child: Text("إدخال الإنتاج اليومي", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: const[
                                                                  Expanded(child: Text("*نوع القطيع",style: TextStyle(color: titleColor),),),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الاستلام", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("*القطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children:  [
                                                                  Container(
                                                                    width: 120,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* المجموع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children:  [
                                                                  const Padding(
                                                                    padding: EdgeInsets.only(left: 50.0),
                                                                    child: Icon(
                                                                      Icons.add_box,
                                                                      color: Colors.red,
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text(
                                                                      "* الكمية",
                                                                      style: TextStyle(color: titleColor),
                                                                    ),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* نوع الحالة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 15.0, right: 15),
                                                                child: Table(
                                                                  textDirection: TextDirection.rtl,

                                                                  border: TableBorder.symmetric(outside: const BorderSide(color: titleColor, width: 1.5)),
                                                                  columnWidths: const {
                                                                    0: FlexColumnWidth(1),
                                                                    1: FlexColumnWidth(1),
                                                                  },
                                                                  children: const [
                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "نوع البيض",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "العدد",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "بيض تالف",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "500",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "بيض تالف",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "500",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child:Text(
                                                                            "بيض تالف",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "500",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                                  ],
                                                                ),
                                                              ), // end of table
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children:  const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 50.0),
                                                                    child: Text("دجاج", style: TextStyle(color: Colors.red),),
                                                                  ),
                                                                  SizedBox(width: 10,),
                                                                  Text("20", style: TextStyle(color: Colors.red),),
                                                                  Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("المجموع", style: TextStyle(color: titleColor),),
                                                                  ),

                                                                ],
                                                              ),
                                                              SizedBox(width: 20, height: 20,),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(10.0),
                                                                      child: FlatButton(
                                                                        onPressed: () => {
                                                                          Get.toNamed("/dailyFlock")
                                                                        },
                                                                        color: titleColor, textColor: Colors.white,
                                                                        child: const Text("حفظ"),),
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
                                                  Text('إدخال الإنتاج اليومي ',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  ),
                                                                  Spacer(),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(right: 30,top: 10),
                                                                    child: Text("إدخال تغذية قطيع", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: const[
                                                                  Expanded(child: Text("*نوع القطيع",style: TextStyle(color: titleColor),),),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الاستلام", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("*القطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        enabled: false,
                                                                        labelText: "5000",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* المجموع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* الكمية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* وحدة القياس", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* نوع التغذية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* الكمية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* وحدة القياس", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* نوع التغذية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* الكمية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* وحدة القياس", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* نوع التغذية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* الكمية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* وحدة القياس", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* نوع التغذية", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),


                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(20.0),
                                                                      child: FlatButton(
                                                                        onPressed: () => {
                                                                          Get.toNamed("/healthHerd")
                                                                        },
                                                                        color: titleColor, textColor: Colors.white,
                                                                        child: const Text("حفظ"),),
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
                                                  Text('إدخال تغذية قطيع',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  ),
                                                                  Spacer(),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(right: 30,top: 10),
                                                                    child: Text("تقرير بحالة نهاية القطيع", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: const[
                                                                  Expanded(child: Text("*نوع القطيع",style: TextStyle(color: titleColor),),),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الاستلام", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("*القطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        enabled: false,
                                                                        labelText: "5000",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* المجموع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(20.0),
                                                                      child: FlatButton(
                                                                        onPressed: () => {
                                                                          Get.toNamed("/healthFlock")
                                                                        },
                                                                        color: titleColor, textColor: Colors.white,
                                                                        child: const Text("حفظ"),),
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
                                                  Text('إرسال تقرير ملخص التسليم',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  ),
                                                                  Spacer(),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(right: 30,top: 10),
                                                                    child: Text("تقرير بحالة نهاية القطيع", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: const[
                                                                  Expanded(child: Text("*نوع القطيع",style: TextStyle(color: titleColor),),),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الاستلام", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("*القطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 93,
                                                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        enabled: false,
                                                                        labelText: "5000",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* المجموع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(20.0),
                                                                      child: FlatButton(
                                                                        onPressed: () => {
                                                                          Get.toNamed("/healthFlock")
                                                                        },
                                                                        color: titleColor, textColor: Colors.white,
                                                                        child: const Text("حفظ"),),
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
                                                  Text('تقرير بحالة نهاية القطيع',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                children: const [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: Icon(Icons.cancel_outlined, color: titleColor,),
                                                                  ),
                                                                  Spacer(),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(right: 30,top: 10),
                                                                    child: Text("إفادة بالوضع الصحي للقطيع", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: const[
                                                                  Expanded(child: Text("*نوع القطيع",style: TextStyle(color: titleColor),),),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  SizedBox(
                                                                    width: 140,
                                                                    child: Expanded(
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: const InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          // labelText: "إدخل التاريخ",
                                                                          icon: Icon(Icons.calendar_today),
                                                                        ),
                                                                        readOnly: true,
                                                                        onTap: () async {
                                                                          DateTime? pickedDate = await showDatePicker(
                                                                              context: context,
                                                                              initialDate: DateTime.now(), //get today's date
                                                                              firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                                                              lastDate: DateTime(2101)
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* تاريخ الاستلام", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("*القطيع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 120,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* المجموع", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    width: 120,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
                                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                    child: const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 120,
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
                                                                    child: Text("* نوع الحالة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(width: 50, height: 20,),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.all(20.0),
                                                                      child: FlatButton(
                                                                        onPressed: () => {
                                                                          Get.toNamed("/dailyProduction")
                                                                        },
                                                                        color: titleColor, textColor: Colors.white,
                                                                        child: const Text("إعادة"),),
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
                                                  Text('إفاد بالوضع الصحي للقطيع',style: TextStyle(color: titleColor),), // <-- Text
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
                  "إدخــــــــــال",
                  style: TextStyle(fontSize: 20, color: titleColor),
                ),
              ),
              Icon(
                Icons.bookmark,
                color: Colors.black26,
                size: 20,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                "تقرير بداية مرحلة تربية",
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
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: InkWell(
                onTap: (){

                },
                child: Text(
                  "تقرير بداية مرحلة إنتاج",
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
              padding: EdgeInsets.only(left: 25.0, right: 30.0),
              child: Text(
                "تقرير يومي بحالة القطيع",
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
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                "تـــــقــــريــر الإنـــــتـــاج",
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
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                "وصـــــفـــــة طـــــبــــيـة",
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
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                "تــقـرير مـلخـص تـسـليم",
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
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                "تــــــقــــريــــر نـــهــائــي",
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
                  "الــقــطــعــان",
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
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                "إدخـال تـغـذيـة قـطــيــع",
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
              padding: EdgeInsets.only(left: 2.0, right: 30.0),
              child: Text(
                "إفادة بالوضع الصحي للقطيع",
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
                "الإعــــــــــــــــــدادات",
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
