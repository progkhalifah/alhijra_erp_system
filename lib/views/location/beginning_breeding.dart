import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BeginningBreeding extends StatelessWidget {
  BeginningBreeding({Key? key}) : super(key: key);

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
      ),
    );
  }
}

/*


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
