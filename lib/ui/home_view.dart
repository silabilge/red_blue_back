import 'package:flutter/material.dart';
import 'package:red_blue_back/ui/home_red.dart';
import 'package:red_blue_back/ui/home_blue.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          ElevatedButton(
            child: Text("click to go blue"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeBlue()));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            child: Text("click to go red"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeRed()));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          )
        ])));
  }
}
