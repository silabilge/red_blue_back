import 'package:flutter/material.dart';
import 'package:red_blue_back/ui/home_view.dart';
import 'package:red_blue_back/ui/home_blue.dart';

class HomeRed extends StatelessWidget {
  HomeRed({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(
            child: Text("click to go back"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
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
          )
        ]));
  }
}
