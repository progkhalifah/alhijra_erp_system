import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeAppBarLocationManager extends StatelessWidget {
  const CustomeAppBarLocationManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var role_name_location = "مدير موقع";
    final currentWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: ()=>{
              Get.snackbar("Profile", "This is Profile event"),
            },
            child: const CircleAvatar(
              radius: 15,
              backgroundImage: ExactAssetImage("assets/images/logo_alhejra.png"),
              backgroundColor: Colors.transparent,
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(role_name_location,
             style:const TextStyle(
               color: buttonColor,
               fontWeight: FontWeight.bold,
               fontSize: 15,
             ) ,
             ),
           ),
          IconButton(
              onPressed: () => {
                    Get.snackbar(
                        "Notification", "this is the event for Notification")
                  },
              icon: const Icon(
                Icons.settings,
                color: Colors.black38,
              )),
          IconButton(
              onPressed: () => {
                    Get.snackbar(
                        "Settings", "this is the event for Settings")
                  },
              icon: const Icon(
                Icons.notifications,
                color: Colors.black38,
              )),


          const Spacer(),

          Image.asset(
            "assets/images/logo_alhejra.png",
            height: 45,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            "نظام شركة الهجرة",
            style: TextStyle(
              color: titleColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}


