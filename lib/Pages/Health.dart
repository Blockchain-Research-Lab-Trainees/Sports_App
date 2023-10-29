import 'package:flutter/material.dart';
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
            children: [
              Block(title: 'Heart Rate'),
              Block(title: 'Daily Task'),
            ],
          ),
          Row(
            children: [
              Block(title: 'Weight'),
              Block(title: 'Calories/Sleep'),
            ],
          ),
        ],
      )),
    );
  }
}

class Block extends StatelessWidget {
  final String title;

  Block({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width * 0.05,
                MediaQuery.of(context).size.height * 0.05)),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
