import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class DirectionsDisplay extends StatefulWidget {
  final String dir;
  const DirectionsDisplay({required this.dir});

  @override
  State<DirectionsDisplay> createState() => _DirectionsDisplayState();
}

class _DirectionsDisplayState extends State<DirectionsDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(9),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Exercise Directions:-',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                widget.dir,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
