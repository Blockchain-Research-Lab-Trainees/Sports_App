import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool? ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'TO-DO LIST',
          style: TextStyle(fontSize: 30),
        ),
        Row(
          children: [
            Checkbox(
                value: ischeck,
                onChanged: (newBool) {
                  setState(() {
                    ischeck = newBool;
                  });
                }),
            Text('Running 2km'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: ischeck,
                onChanged: (newBool) {
                  setState(() {
                    ischeck = newBool;
                  });
                }),
            Text('Walking 2000 steps'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: ischeck,
                onChanged: (newBool) {
                  setState(() {
                    ischeck = newBool;
                  });
                }),
            Text('Opt 3'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: ischeck,
                onChanged: (newBool) {
                  setState(() {
                    ischeck = newBool;
                  });
                }),
            Text('Opt 4'),
          ],
        ),
      ]),
    );
  }
}
