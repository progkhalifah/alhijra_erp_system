import 'package:alhijra/constant.dart';
import 'package:alhijra/views/inventory/app_bar_inventory.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';
import 'package:get/get.dart';

class InventoryManagerPage extends StatelessWidget {
   InventoryManagerPage({Key? key}) : super(key: key);

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
                CustomeAppBarInventoryManager(),
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
                                                        width: 600,
                                                        height: 500,
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
                                                                    child: Text("طلب توريد ", style: TextStyle(color: titleColor), ),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children:  [
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
                                                                  SizedBox(width: 50,),
                                                                  const SizedBox(
                                                                    width: 93,
                                                                    child: Expanded(
                                                                      child: TextField(
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
                                                                    child: Text("* تاريخ الإضافة", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(height: 20,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children:  [
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
                                                                    child: Text("* نوع المنتج", style: TextStyle(color: titleColor),),
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
                                                                    child:const TextField(
                                                                      cursorColor: titleColor,
                                                                      decoration: InputDecoration(
                                                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text(
                                                                      "* الكمية",
                                                                      style: TextStyle(color: titleColor),
                                                                    ),
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
                                                                    2: FlexColumnWidth(1),
                                                                    3: FlexColumnWidth(1),
                                                                  },
                                                                  children: const [
                                                                    TableRow(children: [
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "#",
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
                                                                          child: Text(
                                                                            "الوحدة",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "الكمية",
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
                                                                            "1",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "أعلاف",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "طن",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "5",
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
                                                                            "2",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "لقاح",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "حبة",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Center(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.all(8.0),
                                                                          child: Text(
                                                                            "5",
                                                                            style: TextStyle(fontSize: 15.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                                  ],
                                                                ),
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
                                                  Text('طلب توريد',style: TextStyle(color: titleColor),), // <-- Text
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
                                                  Text('تقرير الصادرات',style: TextStyle(color: titleColor),), // <-- Text
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
                            height: 650,
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
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 90.0, right: 30.0),
              child: Text(
                "طــلـب تــوريــد",
                style: TextStyle(fontSize: 20, color: titleColor),
              ),
            ),
            Icon(
              Icons.add_circle_outline,
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
                "تـــقـــريـر الـــصــــادرات",
                style: TextStyle(fontSize: 20, color: titleColor),
              ),
            ),
            Icon(
              Icons.cancel_outlined,
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
                "الإعـــــــــــــــدادات",
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
