import 'package:alhijra/views/farm/page_add_location.dart';
import 'package:alhijra/views/farm/page_create_checkins.dart';
import 'package:alhijra/views/farm/page_end_checkins.dart';
import 'package:alhijra/views/farm/page_farm_manager.dart';
import 'package:alhijra/views/finance/page_finance_manager.dart';
import 'package:alhijra/views/hr/page_hr_manager.dart';
import 'package:alhijra/views/inventory/page_inventory_manager.dart';
import 'package:alhijra/views/location/page_location_manager.dart';
import 'package:alhijra/views/manager/page_add_building.dart';
import 'package:alhijra/views/manager/page_add_customer.dart';
import 'package:alhijra/views/manager/page_add_delegate.dart';
import 'package:alhijra/views/manager/page_manager.dart';
import 'package:alhijra/views/manager/pagea_add_resource.dart';
import 'package:alhijra/views/page_list_manager.dart';
import 'package:alhijra/views/page_signup.dart';
import 'package:alhijra/views/sales/page_sales_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alhijra/views/page_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'الهجرة',
      debugShowCheckedModeBanner: false,
      getPages: [
        //This route for authentication
        GetPage(name: '/anotherlogin', page: ()=>LoginPage()),
        GetPage(name: '/loginpage', page: ()=>LoginPage()),
        GetPage(name: '/signuppage', page: ()=>SignUpPage()),

        GetPage(name: '/listmanager', page: ()=>ListManagerPage()),

        // This route for General Manager
        GetPage(name: '/adminpage', page: ()=> AdminPage()),
        GetPage(name: '/adddelegate', page: ()=>AddDelegate()),
        GetPage(name: '/pageresource', page: ()=>AddResource()),
        GetPage(name: '/pagecustomer', page: ()=>AddCustomer()),
        GetPage(name: '/pagebuilding', page: ()=>AddBuilding()),

        // This route for Location Manager
        GetPage(name: '/locationmanagerpage', page: ()=>LocationManagerPage()),

        // This route for Farm Manager
        GetPage(name: '/farmmanagerpage', page: ()=>FarmManagerPage()),
            //  This route for create checkins
        GetPage(name: '/', page: () => CreateCheckins()),
        GetPage(name: '/endcheckins', page: () => EndCheckins()),
        GetPage(name: '/addlocation', page: () => AddLocation()),

        // This route for Inventory Manager
        GetPage(name: '/inventorymanagerpage', page: ()=>InventoryManagerPage()),

        // This route for Finance Manager
        GetPage(name: '/financemanagerpage', page: ()=>FinanceManagerPage()),

        // This route for Sales Manager
        GetPage(name: '/salesmanagerpage', page: ()=>SalesManagerPage()),

        // This route for HR Manager
        GetPage(name: '/hrmanagerpage', page: ()=>HrManagerPage()),



      ],
    );
  }
}
