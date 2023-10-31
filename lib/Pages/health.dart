import 'package:flutter/material.dart';
import 'Calories.dart';
import 'package:sports_app/Pages/heartbeat.dart';
import 'package:sports_app/Pages/todo.dart';
// ignore_for_file: prefer_const_constructors

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome!',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Block(title: 'Heart Rate', path: heart()),
              Block(
                title: 'Daily Task',
                path: Check(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Block(title: 'Weight'),
              Block(title: 'Calories/Sleep', path: Cal()),
            ],
          ),
        ],
      )),
    );
  }
}

class Block extends StatelessWidget {
  final String title;
  final path;

  Block({required this.title, this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => path));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width * 0.4,
                MediaQuery.of(context).size.height * 0.1)),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
