import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {
  List<dynamic> names = [];

  void initState() {
    super.initState();
    fetchCal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index]['name'];
          return ListTile(
            title: Text(name),
          );
        },
      ),
    );
  }

  Future<void> fetchCal() async {
    final String apikey = 'd5ee95a7e8mshf13ffce96bc018cp12c43ajsnf25a71a40444';
    final String apihost = 'calories-burned-by-api-ninjas.p.rapidapi.com';
    const url = 'https://api.api-ninjas.com/v1/caloriesburned?activity=skiing';
    final response = await http.get(Uri.parse(url), headers: {
      'RapidApi-key': apikey,
      'RapidApi-Host': apihost,
    });
    final body = response.body;
    final jsonData = jsonDecode(body);

    setState(() {
      names = jsonData;
    });
  }
}
