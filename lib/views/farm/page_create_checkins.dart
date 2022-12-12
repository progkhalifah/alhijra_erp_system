import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CreateCheckins extends StatelessWidget {
  CreateCheckins({Key? key}) : super(key: key);

  // Initial Selected Value
  String dropdownvalue = 'مزرعة 1';

  // List of items in our dropdown menu
  var items = [
    'مزرعة 1',
    'مزرعة 2',
    'مزرعة 3',
    'مزرعة 4',
    'مزرعة 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

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
