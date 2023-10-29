import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExerciseNames extends StatefulWidget {
  const ExerciseNames({Key? key}) : super(key: key);

  @override
  _ExerciseNamesState createState() => _ExerciseNamesState();
}

class _ExerciseNamesState extends State<ExerciseNames> {
  List<dynamic> names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index]['name'];
          return ListTile(
            title: Text(name),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: fetchCal),
    );
  }

  void fetchCal() async {
    const url =
        "https://exercises-by-api-ninjas.p.rapidapi.com/v1/exercises?muscle=biceps";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final jsonData = jsonDecode(body);

    setState(() {
      names = jsonData;
    });
  }
}
