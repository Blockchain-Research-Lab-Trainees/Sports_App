import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({Key? key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool? isCheck1 = false;
  bool? isCheck2 = false;
  bool? isCheck3 = false;
  bool? isCheck4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                value: isCheck1,
                onChanged: (newBool) {
                  setState(() {
                    isCheck1 = newBool;
                  });
                },
              ),
              Text('Running 2km'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: isCheck2,
                onChanged: (newBool) {
                  setState(() {
                    isCheck2 = newBool;
                  });
                },
              ),
              Text('Walking 2000 steps'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: isCheck3,
                onChanged: (newBool) {
                  setState(() {
                    isCheck3 = newBool;
                  });
                },
              ),
              Text('Opt 3'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: isCheck4,
                onChanged: (newBool) {
                  setState(() {
                    isCheck4 = newBool;
                  });
                },
              ),
              Text('Opt 4'),
            ],
          ),
        ],
      ),
    );
  }
}
