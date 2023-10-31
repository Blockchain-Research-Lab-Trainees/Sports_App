import 'package:flutter/material.dart';
import 'package:heart_bpm/heart_bpm.dart';
// ignore_for_file: prefer_const_constructors

class heart extends StatefulWidget {
  @override
  State<heart> createState() => _heartState();
}

class _heartState extends State<heart> {
  List<SensorValue> data = [];

  int? bpmValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cover the Camera and Flash with your finger',
                style: TextStyle(
                  fontSize: 20,
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite,
                  size: 80,
                  color: Color.fromARGB(255, 230, 81, 71),
                ),
                SizedBox(
                  width: 15,
                ),
                HeartBPMDialog(
                  context: context,
                  onRawData: (value) {
                    setState(() {
                      if (data.length == 100) {
                        data.removeAt(0);
                      }
                      data.add(value);
                    });
                  },
                  onBPM: (value) => setState(() {
                    bpmValue = value;
                  }),
                  child: Text(
                    bpmValue?.toString() ?? "-",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
