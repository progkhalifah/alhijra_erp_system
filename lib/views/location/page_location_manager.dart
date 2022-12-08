import 'package:alhijra/constant.dart';
import 'package:alhijra/views/location/app_bar_location.dart';

import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';

class LocationManagerPage extends StatelessWidget {
  const LocationManagerPage({Key? key}) : super(key: key);

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
            CustomeAppBarLocationManager(),
            Row(
              children: [
                Column(
                  children: const [
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
            Text("إدخال", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.bookmark,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("تقرير بداية مرحلة تربية", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("تقرير بداية مرحلة إنتاج", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("تقرير يومي بحالة القطيع", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("تقرير الإنتاج", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("وصفة طبية", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("تقرير ملخص تسليم", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("تقرير نهائي", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("القطعان", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.bubble_chart,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("إدخال تغذية قطيع", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.bookmark,color: Colors.black26, size: 20,),),
          ],
        ),

        Row(
          children: const [
            Text("إفادة بالوضع الصحي للقطيع", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.bookmark,color: Colors.black26, size: 20,),),
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
