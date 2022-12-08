import 'package:alhijra/constant.dart';
import 'package:alhijra/views/manager/app_bar_manager.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

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
            CustomeAppBarManager(),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text("المستودعات", style: TextStyle(fontSize: 20, color: titleColor),),
              Expanded(child: Icon(Icons.storage,color: Colors.black26, size: 20,),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text("تقرير سجل الأعلاف", style: TextStyle(fontSize: 20, color: titleColor),),
              Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text("مخزون الأعلاف", style: TextStyle(fontSize: 20, color: titleColor),),
              Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text("تقرير سجل الأدوية", style: TextStyle(fontSize: 20, color: titleColor),),
              Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text("مخزون الأدوية", style: TextStyle(fontSize: 20, color: titleColor),),
              Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
            ],
          ),
        ),
        Row(
          children: const [
            Text("عرض المستودعات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("التقارير", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة العملاء", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة المناديب", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة الموردين", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة المبيعات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة المشتريات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
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
