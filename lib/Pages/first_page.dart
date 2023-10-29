import 'package:flutter/material.dart';
import 'package:sports_app/Elements/bnb.dart';
// ignore_for_file: prefer_const_constructors

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/sport.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sports App',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavBar()),
                );
              },
              child: Text('Enter'),
            ),
          ],
        ),
      ),
    );
  }
}
