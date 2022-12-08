import 'package:alhijra/constant.dart';
import 'package:alhijra/views/manager/app_bar_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                      "التواصل مع الموارد البشرية",
                      style: TextStyle(fontSize: 20, color: titleColor, decoration: TextDecoration.underline ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        hoverColor: titleColor,
                        border: OutlineInputBorder(),
                        labelText: 'اسم الموظف',
                        hintText: 'إدخل اسم الموظف',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'الرسالة',
                        hintText: 'إدخل الرسالة',
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {
                      Get.toNamed("listmanager")
                    },
                    color: titleColor,
                    child: Text("إرسال"), textColor: Colors.white,)
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
