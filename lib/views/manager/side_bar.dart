import 'package:alhijra/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideBarManager extends StatelessWidget {
  const SideBarManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: const Color(0xff404040),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 70),

            const Text(
              'Build beautiful Apps',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w400,

              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget row(){
  return Row(
    children: [
      sideBarMenu(),
    invisibleSubMenus(),
    ],
  );
}

Widget sideBarMenu(){
  return Container(
    width: 100,
    color: Colors.black,
  );
}

Widget invisibleSubMenus(){
  return Container(
    width: 150,
    color: Colors.pink,
  );
}


List<String> titles = [



];

