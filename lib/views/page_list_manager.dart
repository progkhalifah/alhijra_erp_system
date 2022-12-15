import 'package:alhijra/constant.dart';
import 'package:alhijra/views/manager/app_bar_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListManagerPage extends StatelessWidget {
  const ListManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200.0),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "نظام شركة الهجرة",
                        style: TextStyle(fontSize: 40, color: titleColor),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "قائمة بالمدراء وصفحاتهم",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black38,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:SizedBox(
                        width: 240,
                        height: 50,
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () {Get.toNamed("/adminpage");},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('مدير عام',style: TextStyle(color: titleColor),), // <-- Text
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:SizedBox(
                        width: 240,
                        height: 50,
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () {Get.toNamed("/locationmanagerpage");},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('مدير موقع',style: TextStyle(color: titleColor),), // <-- Text
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:SizedBox(
                        width: 240,
                        height: 50,
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () {Get.toNamed("/farmmanagerpage");},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('مدير مزرعة',style: TextStyle(color: titleColor),), // <-- Text
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:SizedBox(
                        width: 240,
                        height: 50,
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () {Get.toNamed("/inventorymanagerpage");},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('مدير مخزن',style: TextStyle(color: titleColor),), // <-- Text
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:SizedBox(
                        width: 240,
                        height: 50,
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () {Get.toNamed("/financemanagerpage");},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('مدير مالي',style: TextStyle(color: titleColor),), // <-- Text
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:SizedBox(
                        width: 240,
                        height: 50,
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () {Get.toNamed("/salesmanagerpage");},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('المبيعات',style: TextStyle(color: titleColor),), // <-- Text
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 240,
                        height: 50,
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () {Get.toNamed("/hrmanagerpage");},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('الموارد البشرية',style: TextStyle(color: titleColor),), // <-- Text
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
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Column(
              children: [
                Expanded(
                    child: Image.asset("assets/images/background_signin.png"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
