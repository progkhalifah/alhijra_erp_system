import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddBuilding extends StatelessWidget {
  const AddBuilding({Key? key}) : super(key: key);

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
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Hello I am Here"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("* تابع لموقع", style: TextStyle(color: titleColor),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Hello I am Here"),
                    ),
                    Padding(
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
                            Get.snackbar(
                                "Button Login", "This is Event for Login")
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
