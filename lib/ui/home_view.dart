import 'package:flutter/material.dart';

class HomeBlue extends StatelessWidget {
  HomeBlue({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.blue),
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
        ]));
  }
}

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
