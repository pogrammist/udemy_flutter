import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tap \"-\" to decrement",
                    style: TextStyle(color: Colors.white)),
                CounterWidget(),
                Text("Tap \"+\" to decrement",
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterWidgerState();
  }
}

class _CounterWidgerState extends State<CounterWidget> {
  int _count;

  @override
  void initState() {
    super.initState();
    _count = 50;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.lightBlue[100]),
      margin: EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              iconSize: 30,
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  _count -= 1;
                });
              }),
          Text(
            "$_count",
            style: TextStyle(fontSize: 30),
          ),
          IconButton(
              iconSize: 30,
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              }),
        ],
      ),
    );
  }
}
