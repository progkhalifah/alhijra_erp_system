import 'package:alhijra/constant.dart';
import 'package:alhijra/views/manager/app_bar_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                      "قم بملء البيانات المطلوبة لتسجيل الدخول",
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        hoverColor: titleColor,
                        border: OutlineInputBorder(),
                        labelText: 'اسم المستخدم',
                        hintText: 'إدخل اسم المستخدم',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'كلمة المرور',
                        hintText: 'إدخل كلمة المرور',
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: () => {
                            Get.snackbar(
                                "Button Login", "This is Event for Login")
                          },
                      color: titleColor,
                      child: const Text("تسجيل الدخول"), textColor: Colors.white,),
                  InkWell(onTap: ()=>{
                    Get.toNamed("/signuppage"),
                  },
                    child: const Text(
                      "التواصل مع الموارد البشرية",
                      style: TextStyle(
                          fontSize: 20,
                          color: titleColor,
                          decoration: TextDecoration.underline),
                    ),
                  )
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

/*


import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        home: new MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("NonstopIO"),
      ),
      body: new ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return new MyCustomWidget(
            title: "Title $index",
            subtitle: "$index",
          );
        },
      ),
    );
  }
}

class MyCustomWidget extends StatefulWidget {
  final String title;
  final String subtitle;

  const MyCustomWidget({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return new Card(
      shape: selected
          ? new RoundedRectangleBorder(
              side: new BorderSide(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.circular(4.0))
          : new RoundedRectangleBorder(
              side: new BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(4.0)),
      child: new Padding(
        padding: const EdgeInsets.all(4.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(widget.title),
            new Text(widget.subtitle),
            new Checkbox(
                value: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}


*/
