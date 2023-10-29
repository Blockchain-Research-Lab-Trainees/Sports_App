import 'package:flutter/material.dart';
import 'package:sports_app/Pages/first_page.dart';
// ignore_for_file: prefer_const_constructors

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MY PROFILE",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 75,
            ),
            SizedBox(height: 20),
            Text(
              "USER-NAME",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "FAV_SPORT",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                ),
                Text("India"),
              ],
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {
                Exit(context);
              },
              child: Text(
                "Exit",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void Exit(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text("Are you sure you want to exit?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("No"),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
            child: Text("Yes"),
          ),
        ],
      );
    },
  );
}
