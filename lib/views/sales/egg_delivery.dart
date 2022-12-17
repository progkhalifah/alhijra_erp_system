import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PageEggDelivery extends StatelessWidget {
  PageEggDelivery({Key? key}) : super(key: key);

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
    return Scaffold(
      body: Center(
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
                      child: Text("توصيل البيض", style: TextStyle(color: titleColor), ),
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
                      0: FlexColumnWidth(1.5),
                      1: FlexColumnWidth(1.5),
                      2: FlexColumnWidth(1.5),
                      3: FlexColumnWidth(1.8),
                      4: FlexColumnWidth(1.5),
                      5: FlexColumnWidth(1.8),
                      6: FlexColumnWidth(1.5),
                      7: FlexColumnWidth(1.8),
                      8: FlexColumnWidth(1.5),
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
                              "رقم جوال العميل",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Text(
                              "العنوان",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "تاريخ الإضافة",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "الحالة",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "تاريخ التسليم",
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
                              "8",
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
                              "0559999958",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Text(
                              "مكة",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "2022/01/02",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "تم الاستلام",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2022/01/08",
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
                              "8",
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
                              "0559999958",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Text(
                              "مكة",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "2022/01/02",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "تم الاستلام",
                              style: TextStyle(fontSize: 15.0, color: titleColor),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2022/01/08",
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
                              "8",
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
                              "0559999958",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Text(
                              "مكة",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "2022/01/02",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "قيد التوصيل",
                              style: TextStyle(fontSize: 15.0, color: jokerColor),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2022/01/08",
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
                              "8",
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
                              "0559999958",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Text(
                              "مكة",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "2022/01/02",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "تم التوصيل",
                              style: TextStyle(fontSize: 15.0, color: buttonColor),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2022/01/08",
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
                              "8",
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
                              "0559999958",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Text(
                              "مكة",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "2022/01/02",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "تم الاستلام",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2022/01/08",
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
                              "8",
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
                              "0559999958",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Text(
                              "مكة",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "2022/01/02",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "تم الاستلام",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2022/01/08",
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
                              "8",
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
                              "0559999958",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child:Text(
                              "مكة",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "2022/01/02",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "تم الاستلام",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2022/01/08",
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
    );
  }
}

/*
Row(

                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Radio(
                              value: 1, groupValue: 'null', onChanged: (index) {}),
                          Expanded(child: Text('تربية'))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Radio(
                              value: 1, groupValue: 'null', onChanged: (index) {}),
                          Expanded(child: Text('إنتاج'))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text('*نوع القطيع'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),









          width: 200,
          height: 200,
          padding: const EdgeInsets.all(10.0),
          child:  Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            color: jokerColor,
            elevation: 10,
            child: Row(
              children: [
                Row(
                  children: const [
                    Text("إضافة مورد", style: TextStyle(color: titleColor), ),
                    Icon(Icons.cancel_outlined, color: titleColor,)
                  ],
                ),
                const Spacer(),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'اسم المورد',
                          hintText: 'إدخل اسم المورد',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'رقم جوال المورد',
                          hintText: 'إدخل رقم جوال المورد',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'العنوان',
                          hintText: 'إدخل العنوان',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


*/
