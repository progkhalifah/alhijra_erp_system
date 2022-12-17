import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SalesReciptPage extends StatelessWidget {
  SalesReciptPage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 600,
          height: 700,
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
                      child: Text("إيصال مبيع", style: TextStyle(color: titleColor), ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                      child: Text("*رقم الطلب", style: TextStyle(color: titleColor),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  const [
                    SizedBox(
                      width: 450,
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
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("* اسم العميل", style: TextStyle(color: titleColor),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  const [
                    SizedBox(
                      width: 120,
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
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("* العنوان", style: TextStyle(color: titleColor),),
                    ),
                    SizedBox(width: 50,),
                    SizedBox(
                      width: 120,
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
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("*رقم الجوال", style: TextStyle(color: titleColor),),
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
