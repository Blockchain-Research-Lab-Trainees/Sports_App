import 'package:flutter/material.dart';
import 'package:sports_app/Pages/Exercises/biceps.dart';
import 'package:sports_app/Pages/Exercises/calves.dart';
import 'package:sports_app/Pages/Exercises/abductors.dart';
import 'package:sports_app/Pages/Exercises/adductors.dart';
import 'Exercises/chest.dart';
import 'Exercises/abdominals.dart';
import 'Exercises/forearms.dart';
import 'Exercises/glutes.dart';
import 'Exercises/hamstrings.dart';
import 'Exercises/lats.dart';
import 'Exercises/lowerBack.dart';
import 'Exercises/middleBack.dart';
import 'Exercises/neck.dart';
import 'Exercises/triceps.dart';
import 'Exercises/traps.dart';
import 'Exercises/quadriceps.dart';
// ignore_for_file: prefer_const_constructors

class ExerciseNames extends StatefulWidget {
  const ExerciseNames({Key? key}) : super(key: key);

  @override
  _ExerciseNamesState createState() => _ExerciseNamesState();
}

class _ExerciseNamesState extends State<ExerciseNames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(
              'MUSCLE EXERCISES',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Abdominals',
                  path: Abdominals(),
                ),
                Block(
                  title: 'Abductors',
                  path: Abductors(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Adductors',
                  path: Adductors(),
                ),
                Block(
                  title: 'Biceps',
                  path: Biceps(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Calves',
                  path: Calves(),
                ),
                Block(
                  title: 'Chest',
                  path: Chest(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Forearms',
                  path: Fore(),
                ),
                Block(
                  title: 'Glutes',
                  path: Glute(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Hamstrings',
                  path: hamstrings(),
                ),
                Block(
                  title: 'Lats',
                  path: Lats(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Lower_back',
                  path: lower(),
                ),
                Block(
                  title: 'Middle_back',
                  path: mid(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Neck',
                  path: neck(),
                ),
                Block(
                  title: 'Quadriceps',
                  path: Quadriceps(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Traps',
                  path: Traps(),
                ),
                Block(
                  title: 'Triceps',
                  path: Triceps(),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class Block extends StatelessWidget {
  final String title;
  final path;

  Block({required this.title, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => path,
              ));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width * 0.4,
                MediaQuery.of(context).size.height * 0.25)),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
