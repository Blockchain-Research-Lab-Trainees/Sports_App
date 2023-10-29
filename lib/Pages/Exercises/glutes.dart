import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sports_app/Pages/directions.dart';

class Glute extends StatefulWidget {
  const Glute({Key? key}) : super(key: key);

  @override
  _GluteState createState() => _GluteState();
}

class _GluteState extends State<Glute> {
  List<dynamic> names = [];

  void initState() {
    super.initState();
    fetchCal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index]['name'];
          final dir = names[index]['instructions'];
          return ListTile(
            title: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DirectionsDisplay(
                          dir: dir,
                        ),
                      ));
                },
                child: Text(name)),
          );
        },
      ),
    );
  }

  Future<void> fetchCal() async {
    final String apikey = 'd5ee95a7e8mshf13ffce96bc018cp12c43ajsnf25a71a40444';
    final String apihost = 'exercises-by-api-ninjas.p.rapidapi.com';
    const url =
        "https://exercises-by-api-ninjas.p.rapidapi.com/v1/exercises?muscle=glutes";
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
