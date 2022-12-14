import 'package:alhijra/constant.dart';
import 'package:alhijra/views/finance/app_bar_finance.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';
import 'package:get/get.dart';

class FinanceManagerPage extends StatelessWidget {
   FinanceManagerPage({Key? key}) : super(key: key);

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
                  CustomeAppBarFinanceManager(),
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              width: 1100,
                              height: 500,
                              decoration: BoxDecoration(
                                  border: Border.all(color: titleColor),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(height: 20, width: 20,),
                                    Column(
                                      children: [
                                        Container(
                                          width: 250,
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
                                          width: 250,
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
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [
                                        Container(
                                          width: 250,
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
                                          width: 250,
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
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [
                                        Container(
                                          width: 250,
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
                                          width: 250,
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
                              alignment: Alignment.topCenter,
                              width: 1100,
                              height: 400,
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
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Icon(Icons.cancel_outlined, color: titleColor,),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(right: 30,top: 10),
                                          child: Text("إضافة موظف جديد", style: TextStyle(color: titleColor), ),
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
                                          child: Text("*تاريخ الميلاد", style: TextStyle(color: titleColor),),
                                        ),
                                        SizedBox(width: 50,),
                                        SizedBox(
                                          width: 100,
                                          child: Expanded(
                                            child: TextField(
                                              cursorColor: titleColor,
                                              decoration: const InputDecoration(
                                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                // labelText: "إدخل التاريخ",
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("*رقم الهوية", style: TextStyle(color: titleColor),),
                                        ),
                                        SizedBox(width: 50,),
                                        SizedBox(
                                          width: 100,
                                          child: Expanded(
                                            child: TextField(
                                              cursorColor: titleColor,
                                              decoration: const InputDecoration(
                                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                // labelText: "إدخل التاريخ",
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("* اسم الموظف", style: TextStyle(color: titleColor),),
                                        ),
                                        SizedBox(width: 50,),
                                        SizedBox(
                                          width: 100,
                                          child: Expanded(
                                            child: TextField(
                                              cursorColor: titleColor,
                                              decoration: const InputDecoration(
                                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                // labelText: "إدخل التاريخ",
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("* الرقم الوظيفي", style: TextStyle(color: titleColor),),
                                        ),
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
                                          child: Text("*تاريخ التوظيف", style: TextStyle(color: titleColor),),
                                        ),
                                        SizedBox(width: 50,),
                                        SizedBox(
                                          width: 100,
                                          child: Expanded(
                                            child: TextField(
                                              cursorColor: titleColor,
                                              decoration: const InputDecoration(
                                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                // labelText: "إدخل التاريخ",
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("* البريد الإلكتروني", style: TextStyle(color: titleColor),),
                                        ),
                                        SizedBox(width: 50,),
                                        SizedBox(
                                          width: 100,
                                          child: Expanded(
                                            child: TextField(
                                              cursorColor: titleColor,
                                              decoration: InputDecoration(
                                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                // labelText: "إدخل التاريخ",
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("* رقم الجوال", style: TextStyle(color: titleColor),),
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
                                          child: Text("* الجنس", style: TextStyle(color: titleColor),),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
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
                                          child: Text("*الحالة الاجتماعية", style: TextStyle(color: titleColor),),
                                        ),
                                        const SizedBox(width: 50,),
                                        SizedBox(
                                          width: 100,
                                          child: Expanded(
                                            child: TextField(
                                              cursorColor: titleColor,
                                              decoration: InputDecoration(
                                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                                // labelText: "إدخل التاريخ",
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("* الوظيفة", style: TextStyle(color: titleColor),),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 20,),
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
                            SizedBox(height: 20,),
                            Container(
                              alignment: Alignment.topCenter,
                              width: 1100,
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
                            SizedBox(height: 20,),
                            Container(
                              alignment: Alignment.topCenter,
                              width: 900,
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
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Icon(Icons.cancel_outlined, color: titleColor,),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(right: 30,top: 10),
                                          child: Text("إنشاء مستخدم جديد", style: TextStyle(color: titleColor), ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
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
                                          child: Text("* الدور", style: TextStyle(color: titleColor),),
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
                                          child: Text("*الموظف", style: TextStyle(color: titleColor),),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
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
                                          child: Text("*الموقع", style: TextStyle(color: titleColor),),
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
                                          child: Text("* البريد الإلكتروني", style: TextStyle(color: titleColor),),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
                                        Expanded(
                                          child: TextField(
                                            cursorColor: titleColor,
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                              border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                              // labelText: "إدخل التاريخ",
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("* اسم المستخدم", style: TextStyle(color: titleColor),),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
                                        Expanded(
                                          child: TextField(
                                            cursorColor: titleColor,
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                              border: OutlineInputBorder(borderSide: BorderSide(color: titleColor)),
                                              // labelText: "إدخل التاريخ",
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text("* اسم المستخدم", style: TextStyle(color: titleColor),),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
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
                            SizedBox(height: 20,),
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
                  "الــمـبــيــعـــات",
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
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "قـائـمـة العملاء",
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "فاتورة مبيعات",
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "مرتجع مبيعات",
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
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
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black26,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 30.0),
              child: Text(
                "الـمــشـتـريــات",
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "فــاتـورة شـراء",
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "مـرتـجـع شـراء",
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
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black26,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 30.0),
              child: Text(
                "المحاسبية المالية",
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "شجرة الحسابات",
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "إضـافـة حـسـاب",
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
              padding: EdgeInsets.only(left: 100.0, right: 30.0),
              child: Text(
                "الـقيـود الـيوميـة",
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
              padding: EdgeInsets.only(left: 40.0, right: 30.0),
              child: Text(
                "تقرير ملخص التسليم",
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
                "عرض المدد المالية",
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


/*
Column(
      children: [
        Row(
          children: const [
            Text("لوحة التحكم", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.dashboard,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("المبيعات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.storage,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة العملاء", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة المناديب", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("فاتورة مبيعات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("مرتجع مبيعات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة المبيعات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("المشتريات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة الموردين", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("فاتروة شراء", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("مرتجع شراء", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة المشتريات ", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("المحاسبية المالية", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("شجرة الحسابات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("إضافة حساب", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("القيود اليومية", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("تقرير ملخص التسليم", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("عرض المدد المالية", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("الإعدادات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.settings,color: Colors.black26, size: 20,),),
          ],
        ),
      ],
    ),
* */