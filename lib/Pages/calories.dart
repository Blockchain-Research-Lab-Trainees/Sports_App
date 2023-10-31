import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// ignore_for_file: prefer_const_constructors

class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {
  Future<List> fetchData() async {
    final String apikey = 'd5ee95a7e8mshf13ffce96bc018cp12c43ajsnf25a71a40444';
    final String apihost = 'calories-burned-by-api-ninjas.p.rapidapi.com';
    const url = 'https://api.api-ninjas.com/v1/caloriesburned?activity=skiing';
    final response = await http.get(Uri.parse(url), headers: {
      'RapidApi-key': apikey,
      'RapidApi-Host': apihost,
    });
    final body = response.body;
    final jsonData = jsonDecode(body);

    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            List<dynamic> names = [];
            return ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                final name = names[index]['name'];
                return ListTile(
                  title: Text(name),
                );
              },
            );
          }
        },
      ),
    );
  }
}
