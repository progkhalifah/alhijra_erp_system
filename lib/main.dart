import 'package:alhijra/views/farm/page_add_location.dart';
import 'package:alhijra/views/farm/page_create_checkins.dart';
import 'package:alhijra/views/farm/page_end_checkins.dart';
import 'package:alhijra/views/farm/page_farm_manager.dart';
import 'package:alhijra/views/finance/page_finance_manager.dart';
import 'package:alhijra/views/finance/purchases_bill.dart';
import 'package:alhijra/views/finance/purchases_returned.dart';
import 'package:alhijra/views/finance/sales_bill.dart';
import 'package:alhijra/views/finance/sales_returned.dart';
import 'package:alhijra/views/hr/page_hr_manager.dart';
import 'package:alhijra/views/inventory/page_inventory_manager.dart';
import 'package:alhijra/views/inventory/supply_order.dart';
import 'package:alhijra/views/location/beginning_breeding.dart';
import 'package:alhijra/views/location/beginning_production.dart';
import 'package:alhijra/views/location/daily_flock.dart';
import 'package:alhijra/views/location/daily_production.dart';
import 'package:alhijra/views/location/feeding_flock.dart';
import 'package:alhijra/views/location/page_location_manager.dart';
import 'package:alhijra/views/location/page_prescription.dart';
import 'package:alhijra/views/location/report_end_flock.dart';
import 'package:alhijra/views/location/statement_health_flock.dart';
import 'package:alhijra/views/location/statement_health_herd.dart';
import 'package:alhijra/views/manager/page_add_building.dart';
import 'package:alhijra/views/manager/page_add_customer.dart';
import 'package:alhijra/views/manager/page_add_delegate.dart';
import 'package:alhijra/views/manager/page_list_customers.dart';
import 'package:alhijra/views/manager/page_list_delegates.dart';
import 'package:alhijra/views/manager/page_list_purchases.dart';
import 'package:alhijra/views/manager/page_list_sales.dart';
import 'package:alhijra/views/manager/page_list_suppliers.dart';
import 'package:alhijra/views/manager/page_manager.dart';
import 'package:alhijra/views/manager/pagea_add_resource.dart';
import 'package:alhijra/views/page_list_manager.dart';
import 'package:alhijra/views/page_signup.dart';
import 'package:alhijra/views/sales/enter_data_sales.dart';
import 'package:alhijra/views/sales/page_sales_manager.dart';
import 'package:alhijra/views/sales/sales_recipt.dart';
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

        GetPage(name: '/list', page: ()=>ListManagerPage()),

        // This route for General Manager
        GetPage(name: '/adminpage', page: ()=> AdminPage()),
        GetPage(name: '/adddelegate', page: ()=>AddDelegate()),
        GetPage(name: '/pageresource', page: ()=>AddResource()),
        GetPage(name: '/pagecustomer', page: ()=>AddCustomer()),
        GetPage(name: '/pagebuilding', page: ()=>AddBuilding()),
        GetPage(name: '/pagelistcustomers', page: ()=>PageListCustomers()),
        GetPage(name: '/pagelistsuppliers', page: ()=>PageListSuppliers()),
        GetPage(name: '/pagelistdelegates', page: ()=>PageListDelegates()),
        GetPage(name: '/pagelistsales', page: ()=>PageListSales()),
        GetPage(name: '/pagelistpurchases', page: ()=>PageListPurchases()),

        // This route for Location Manager
        GetPage(name: '/locationmanagerpage', page: ()=>LocationManagerPage()),
        GetPage(name: '/beginningbreeding', page: ()=>BeginningBreeding()),
        GetPage(name: '/beginningproduction', page: ()=>BeginningProduction()),
        GetPage(name: '/pageprescription', page: ()=>PagePrescription()),
        GetPage(name: '/feedingflock', page: ()=>FeedingFlock()),
        GetPage(name: '/healthHerd', page: ()=>HealthHerdPage()),
        GetPage(name: '/dailyProduction', page: ()=>DailyProductionPage()),
        GetPage(name: '/dailyFlock', page: ()=>DailyFlockPage()),
        GetPage(name: '/reportfinalflock', page: ()=>ReportEndFlockPage()),
        GetPage(name: '/healthFlock', page: ()=>HealthFlockPage()),

        // This route for Farm Manager
        GetPage(name: '/farmmanagerpage', page: ()=>FarmManagerPage()),
        //  This route for create checkins
        GetPage(name: '/createCheckins', page: () => CreateCheckins()),
        GetPage(name: '/endcheckins', page: () => EndCheckins()),
        GetPage(name: '/addlocation', page: () => AddLocation()),

        // This route for Inventory Manager
        GetPage(name: '/inventorymanagerpage', page: ()=>InventoryManagerPage()),
        GetPage(name: '/supplyorder', page: ()=>SupplyOrderPage()),

        // This route for Finance Manager
        // GetPage(name: '/', page: ()=>FinanceManagerPage()),
        GetPage(name: '/financemanagerpage', page: ()=>FinanceManagerPage()),
        GetPage(name: '/purchasesreturned', page: ()=>PurchasesReturnedPage()),
        GetPage(name: '/purchasesbill', page: ()=>PurchasesBillPage()),
        GetPage(name: '/salesreturned', page: ()=>SalesReturnedPage()),
        GetPage(name: '/salesbill', page: ()=>SalesBillPage()),

        // This route for Sales Manager
        // GetPage(name: '/', page: ()=>SalesManagerPage()),
        // GetPage(name: '/salesmanagerpage', page: ()=>SalesManagerPage()),
         GetPage(name: '/enterdatasalespage', page: ()=>EnterDataSalesPage()),
         GetPage(name: '/', page: ()=>SalesReciptPage()),

        // This route for HR Manager
        GetPage(name: '/hrmanagerpage', page: ()=>HrManagerPage()),

      ],
    );
  }
}
