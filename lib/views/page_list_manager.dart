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
            Expanded(
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
                    child: FlatButton(
                      onPressed: () => {
                        Get.toNamed("/adminpage")
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      color: titleColor,
                      child: Text("مدير عام"),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () => {
                        Get.toNamed("/locationmanagerpage")
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      color: titleColor,
                      child: Text("مدير موقع"),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () => {
                        Get.toNamed("/farmmanagerpage")
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      color: titleColor,
                      child: Text("مدير مزرعة"),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () => {
                        Get.toNamed("/inventorymanagerpage")
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      color: titleColor,
                      child: Text("مدير مخزن"),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () => {
                        Get.toNamed("/financemanagerpage")
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      color: titleColor,
                      child: Text("مدير مالي"),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () => {
                        Get.toNamed("/salesmanagerpage")
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      color: titleColor,
                      child: Text("المبيعات"),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () => {
                        Get.toNamed("/hrmanagerpage")
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      color: titleColor,
                      child: Text("الموارد البشرية"),
                      textColor: Colors.white,
                    ),
                  ),
                ],
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
