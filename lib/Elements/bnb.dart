import 'package:flutter/material.dart';
import 'package:sports_app/Pages/health.dart';
import 'package:sports_app/Pages/exercise.dart';
import 'package:sports_app/Pages/profile.dart';
// import 'package:sports_app/Pages/Live%20Score/livescore.dart';

// ignore_for_file: prefer_const_constructors

// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.monitor_heart),
//             label: 'Health',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.run_circle_outlined),
//             label: 'Sports',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_rounded),
//             label: 'Profile',
//           ),
//         ],
//         selectedItemColor: Colors.greenAccent[700],
//       ),
//     );
//   }
// }

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.greenAccent[700],
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.monitor_heart),
            label: 'Health',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_gymnastics_rounded),
            label: 'Exercise',
          ),
          NavigationDestination(
            icon: Icon(Icons.run_circle_outlined),
            label: 'Sports',
          ),
          NavigationDestination(
            icon: Icon(Icons.scoreboard_rounded),
            label: 'Live Score',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Home(),
        ),
        Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: ExerciseNames()),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Sensor'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          // child: Live(),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: ProfilePage(),
        ),
      ][currentPageIndex],
    );
  }
}
