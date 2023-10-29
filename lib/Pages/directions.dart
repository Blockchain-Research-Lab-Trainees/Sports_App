import 'package:flutter/material.dart';

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
      body: Text(widget.dir),
    );
  }
}
