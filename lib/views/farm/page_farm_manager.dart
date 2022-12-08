import 'package:alhijra/constant.dart';
import 'package:alhijra/views/farm/app_bar_farm.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';

class FarmManagerPage extends StatelessWidget {
  const FarmManagerPage({Key? key}) : super(key: key);

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
            CustomeAppBarFarmManager(),
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
            Text("لوحة التحكم", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.dashboard,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("إنشاء قطيع", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.add_circle_outline,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("إنهاء قطيع", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.cancel_outlined,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("إضافة موقع", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.add_circle,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("الإعدادات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.settings,color: Colors.black26, size: 20,),),
          ],
        ),
      ],
    ),
  );
}
