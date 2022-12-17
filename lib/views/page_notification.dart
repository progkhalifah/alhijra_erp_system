import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage ({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("الإشعارات", style: TextStyle(fontSize: 20,color: titleColor), )
                  ],
                ),
                Container(
                  width: 500,
                  color: NotificationBackgroundColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text("المستودع", style: TextStyle(fontSize: 20),),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text("المستودع المستودع المستودع المستودع", style: TextStyle(fontSize: 20, color: jokerColor),),
                          ),
                        ],
                      ),
                      const Divider(color: DividerColor, thickness: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text("المزرعة رقم 1", style: TextStyle(fontSize: 20),),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text("المزرعة  المزرعة", style: TextStyle(fontSize: 20,color: jokerColor),),
                          ),
                        ],
                      ),
                      const Divider(color: DividerColor, thickness: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text("المبيعات", style: TextStyle(fontSize: 20),),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text("المبيعات المبيعات المبيعات", style: TextStyle(fontSize: 20, color: jokerColor),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("مشاهدة الكل", style: TextStyle(fontSize: 20, color: buttonColor),),
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
