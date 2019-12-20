// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class AnimationPage extends StatefulWidget {
//   const AnimationPage({Key key}) : super(key: key);

//   @override
//   _AnimationPageState createState() => _AnimationPageState();
// }

// class _AnimationPageState extends State<AnimationPage>
//     with SingleTickerProviderStateMixin {
//   AnimationController animationController;
//   Animation<double> animation;

//   @override
//   void initState() {
//     super.initState(); 
//   }

//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Transform.rotate(
//         angle: animation.value,
//         child: Container(
//           padding: EdgeInsets.all(30),
//           alignment: Alignment.center,
//           child: Image.asset('assets/dart.jpg'),
//         ),
//       ),
//     );
//   }
// }
