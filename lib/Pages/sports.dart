import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class Shake extends StatefulWidget {
  @override
  _ShakeState createState() => _ShakeState();
}

class _ShakeState extends State<Shake> {
  static const List<String> text = [
    'Keep Going!',
    'You are doing great!',
    'Come on, Run up!',
    'Go, Go, Go!',
    'Faster! You are awesome!'
  ];

  String show = text.first;

  @override
  void initState() {
    super.initState();

    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        final newQuote = (List.of(text)
              ..remove(show)
              ..shuffle())
            .first;

        setState(() {
          this.show = newQuote;
        });
      },
      // minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2,
    );
  }

  // @override
  // void dispose() {
  //   detector.stopListening();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Running'),
        ),
        body: Container(
          padding: EdgeInsets.all(48),
          child: Center(
            child: Text(
              show,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
}











// library shake;

// import 'dart:async';
// import 'dart:math';

// import 'package:sensors_plus/sensors_plus.dart';

// /// Callback for phone shakes
// typedef void PhoneShakeCallback();

// /// ShakeDetector class for phone shake functionality
// class ShakeDetector {
//   /// User callback for phone shake
//   final PhoneShakeCallback onPhoneShake;

//   /// Shake detection threshold
//   final double shakeThresholdGravity;

//   /// Minimum time between shake
//   final int shakeSlopTimeMS;

//   /// Time before shake count resets
//   final int shakeCountResetTime;

//   /// Number of shakes required before shake is triggered
//   final int minimumShakeCount;

//   int mShakeTimestamp = DateTime.now().millisecondsSinceEpoch;
//   int mShakeCount = 0;

//   /// StreamSubscription for Accelerometer events
//   StreamSubscription? streamSubscription;

//   /// This constructor waits until [startListening] is called
//   ShakeDetector.waitForStart({
//     required this.onPhoneShake,
//     this.shakeThresholdGravity = 2.7,
//     this.shakeSlopTimeMS = 500,
//     this.shakeCountResetTime = 3000,
//     this.minimumShakeCount = 1,
//   });

//   /// This constructor automatically calls [startListening] and starts detection and callbacks.
//   ShakeDetector.autoStart({
//     required this.onPhoneShake,
//     this.shakeThresholdGravity = 2.7,
//     this.shakeSlopTimeMS = 500,
//     this.shakeCountResetTime = 3000,
//     this.minimumShakeCount = 1,
//   }) {
//     startListening();
//   }

//   /// Starts listening to accelerometer events
//   void startListening() {
//     streamSubscription = accelerometerEvents.listen(
//       (AccelerometerEvent event) {
//         double x = event.x;
//         double y = event.y;
//         double z = event.z;

//         double gX = x / 9.80665;
//         double gY = y / 9.80665;
//         double gZ = z / 9.80665;

//         // gForce will be close to 1 when there is no movement.
//         double gForce = sqrt(gX * gX + gY * gY + gZ * gZ);

//         if (gForce > shakeThresholdGravity) {
//           var now = DateTime.now().millisecondsSinceEpoch;
//           // ignore shake events too close to each other (500ms)
//           if (mShakeTimestamp + shakeSlopTimeMS > now) {
//             return;
//           }

//           // reset the shake count after 3 seconds of no shakes
//           if (mShakeTimestamp + shakeCountResetTime < now) {
//             mShakeCount = 0;
//           }

//           mShakeTimestamp = now;
//           mShakeCount++;

//           if (mShakeCount >= minimumShakeCount) {
//             onPhoneShake();
//           }
//         }
//       },
//     );
//   }

//   /// Stops listening to accelerometer events
//   void stopListening() {
//     streamSubscription?.cancel();
//   }
// }

// {
//   @override
//   void dispose() {
//     accelerometerSubscription.cancel();
//     super.dispose();
//   }
// }

// class Shake extends StatefulWidget {
//   const Shake({super.key});

//   @override
//   State<Shake> createState() => _ShakeState();
// }

// class _ShakeState extends State<Shake> {
//   ShakeDetector detector = ShakeDetector.autoStart(
//     onPhoneShake: () {
//         // Do stuff on phone shake
//     }
// );
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }