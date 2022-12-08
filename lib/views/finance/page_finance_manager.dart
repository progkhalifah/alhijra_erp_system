import 'package:alhijra/constant.dart';
import 'package:alhijra/views/finance/app_bar_finance.dart';
import 'package:alhijra/views/manager/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:alhijra/constant.dart';

class FinanceManagerPage extends StatelessWidget {
  const FinanceManagerPage({Key? key}) : super(key: key);

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
            CustomeAppBarFinanceManager(),
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
            Text("المبيعات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.storage,color: Colors.black26, size: 20,),),
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
            Text("فاتورة مبيعات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("مرتجع مبيعات", style: TextStyle(fontSize: 20, color: titleColor),),
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
            Text("المشتريات", style: TextStyle(fontSize: 20, color: titleColor),),
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
            Text("فاتروة شراء", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("مرتجع شراء", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("قائمة المشتريات ", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("المحاسبية المالية", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("شجرة الحسابات", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("إضافة حساب", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("القيود اليومية", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("تقرير ملخص التسليم", style: TextStyle(fontSize: 20, color: titleColor),),
            Expanded(child: Icon(Icons.list_alt,color: Colors.black26, size: 20,),),
          ],
        ),
        Row(
          children: const [
            Text("عرض المدد المالية", style: TextStyle(fontSize: 20, color: titleColor),),
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
