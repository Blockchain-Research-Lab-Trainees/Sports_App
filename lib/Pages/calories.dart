import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  List<dynamic> Exercise = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        final ind = Exercise[index];
        final ex = ind['Name'];
        return ListTile(
          title: Text(ex),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: fetchCal),
    );
  }

  void fetchCal() async {
    const url = "https://api.api-ninjas.com/v1/caloriesburned?activity=";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    // setState(({
    //   Exercise = json['name'],
    // }));
  }
}
