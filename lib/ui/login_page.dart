import 'package:flutter/material.dart';
import 'package:red_blue_back/ui/home_view.dart';
import 'package:red_blue_back/user_info/user_info.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final mailController = TextEditingController();
    final passController = TextEditingController();
    return Scaffold(
        body: Center(
            child: Column(children: [
      SizedBox(height: 200),
      Container(
          width: 200,
          height: 40,
          child: TextField(
              controller: mailController,
              decoration: InputDecoration(
                hintText: 'example@example.com',
              ))),
      SizedBox(height: 30),
      Container(
          width: 200,
          height: 40,
          child: TextField(
            obscureText: true,
            controller: passController,
            decoration: InputDecoration(
              hintText: '******',
            ),
          )),
      SizedBox(height: 70),
      Container(
          child: Column(children: [
        (InkWell(
          child: Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Log In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            alignment: Alignment.center,
          ),
          onTap: () {
            if (mailController != null &&
                mailController.text == UserData().mail &&
                passController != null &&
                passController.text == UserData().pass) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            }
          },
        ))
      ]))
    ])));

    ;
  }
}
