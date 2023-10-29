import 'package:flutter/material.dart';
import 'biceps.dart';

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
                  path: Biceps(),
                ),
                Block(
                  title: 'Abductors',
                  path: Biceps(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Adductors',
                  path: Biceps(),
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
                  path: Biceps(),
                ),
                Block(
                  title: 'Chest',
                  path: Biceps(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Forearms',
                  path: Biceps(),
                ),
                Block(
                  title: 'Glutes',
                  path: Biceps(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Hamstrings',
                  path: Biceps(),
                ),
                Block(
                  title: 'Lats',
                  path: Biceps(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Lower_back',
                  path: Biceps(),
                ),
                Block(
                  title: 'Middle_back',
                  path: Biceps(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Neck',
                  path: Biceps(),
                ),
                Block(
                  title: 'Quadriceps',
                  path: Biceps(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Block(
                  title: 'Traps',
                  path: Biceps(),
                ),
                Block(
                  title: 'Triceps',
                  path: Biceps(),
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
            minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                MediaQuery.of(context).size.height * 0.25)),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
