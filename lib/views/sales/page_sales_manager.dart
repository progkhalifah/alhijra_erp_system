import 'package:alhijra/constant.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:alhijra/views/sales/app_bar_sales.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';

class SalesManagerPage extends StatelessWidget {
  const SalesManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: backgroundColor,
        child: Column(
          children: [
            CustomeAppBarSalesManager(),
            Row(
              children: [
                Column(
                  children: [
                    Text("here side bar"),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    sidebarmenu(),
                  ],
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
    width: 150,
    color: backgroundColor,
    child: Column(
      children: [
        Row(
          children: const [
            Text(
              "لوحة التحكم",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.dashboard,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "المبيعات",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.bookmark,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "إدخال بيانات مبيعات",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.list_alt,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "استلام إيصال مبيع",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.list_alt,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "توصيل البيض",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.list_alt,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "قائمة العملاء",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.list_alt,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "قائمة المناديب",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.list_alt,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "قائمة المبيعات",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.list_alt,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "الإعدادات",
              style: TextStyle(fontSize: 20, color: titleColor),
            ),
            Expanded(
              child: Icon(
                Icons.settings,
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
