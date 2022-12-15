import 'package:alhijra/constant.dart';
import 'package:alhijra/views/farm/app_bar_farm.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';
import 'package:get/get.dart';

class FarmManagerPage extends StatelessWidget {
   FarmManagerPage({Key? key}) : super(key: key);

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
                CustomeAppBarFarmManager(),
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
                                                                  Text("إنشاء قطيع", style: TextStyle(color: titleColor), )
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children:  [
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(8.0),
                                                                    child: Container(
                                                                      margin: const EdgeInsets.symmetric(vertical: 10),
                                                                      width: 350,
                                                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                      decoration: BoxDecoration(
                                                                        borderRadius: BorderRadiusDirectional.circular(5),
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
                                                                  ),
                                                                  const Text("* موقع القطيع", style: TextStyle(color: titleColor),),

                                                                ],
                                                              ),
                                                              Row(
                                                                children: const [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.all(20.0),
                                                                      child: TextField(
                                                                        cursorColor: titleColor,
                                                                        decoration: InputDecoration(
                                                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                          border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text("* اسم القطيع", style: TextStyle(color: titleColor),),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children:  [
                                                                  Container(
                                                                    width: 100,
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
                                                                    width: 100,
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
                                                                ],
                                                              ),
                                                              const SizedBox(height: 30,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    child: const TextField(
                                                                      enabled: false,
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
                                                                      "* المجموع",
                                                                      style: TextStyle(color: titleColor),
                                                                    ),
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
                                                                          Get.toNamed('/endcheckins')
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
                                                  Text('إنشاء قطيع',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                  Text("إنهاء قطيع", style: TextStyle(color: titleColor), )
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
                                                                          labelText: '* موقع القطيع',
                                                                          hintText: 'إدخل موقع القطيع',
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
                                                                          labelText: '* اسم القطيع',
                                                                          hintText: 'إدخل اسم القطيع',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children:  [
                                                                  Container(
                                                                    width: 100,
                                                                    child: const TextField(
                                                                      enabled: true,
                                                                      decoration: InputDecoration(
                                                                        border: OutlineInputBorder(),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الذكور", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Container(
                                                                    width: 100,
                                                                    child: const TextField(
                                                                      enabled: true,
                                                                      decoration: InputDecoration(
                                                                        border: OutlineInputBorder(),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text("* عدد الإناث", style: TextStyle(color: titleColor),),
                                                                  ),
                                                                ],
                                                              ),
                                                              const SizedBox(height: 30,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Container(
                                                                    width: 100,
                                                                    child: const TextField(
                                                                      enabled: true,
                                                                      decoration: InputDecoration(
                                                                        border: OutlineInputBorder(),

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.all(8.0),
                                                                    child: Text(
                                                                      "* المجموع",
                                                                      style: TextStyle(color: titleColor),
                                                                    ),
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
                                                                          Get.toNamed('/addlocation')
                                                                        },
                                                                        color: titleColor,
                                                                        child: const Text("إنهاء"), textColor: Colors.white,),
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
                                                  Text('إنهاء قطيع',style: TextStyle(color: titleColor),), // <-- Text
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
                                                                  Text("إضافة موقع", style: TextStyle(color: titleColor), )
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
                                                                          labelText: '* اسم الموقع',
                                                                          hintText: 'إدخل اسم الموقع',
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
                                                                          labelText: '* رمز الموقـع',
                                                                          hintText: 'إدخل رمز الموقـع',
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
                                                                          labelText: 'خطوط العرض',
                                                                          hintText: 'إدخل خطوط العرض',
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
                                                                          labelText: 'خطوط الطول',
                                                                          hintText: 'إدخل خطوط الطول',
                                                                        ),
                                                                      ),
                                                                    ),
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
                                                                          Get.toNamed("/addlocation")
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
                                                  Text('إضافة موقع',style: TextStyle(color: titleColor),), // <-- Text
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
                "إنـشاء قـطـيــع",
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
              padding: EdgeInsets.only(left: 90.0, right: 30.0),
              child: Text(
                "إنـهـاء قـطـيــع",
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
              padding: EdgeInsets.only(left: 90.0, right: 30.0),
              child: Text(
                "إضافـة مـوقــع",
                style: TextStyle(fontSize: 20, color: titleColor),
              ),
            ),
            Icon(
              Icons.add_circle,
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
