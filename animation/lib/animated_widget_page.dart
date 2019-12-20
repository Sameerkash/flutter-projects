import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationPage extends StatefulWidget {
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animController;

  @override
  void initState() {
    super.initState();
    animController =
        AnimationController(duration: Duration(seconds: 5), vsync: this);

    final curvedAnimation = CurvedAnimation(
      parent: animController,
      curve: Curves.easeIn,
      reverseCurve: Curves.easeOut,
    );

    animation =
        Tween<double>(begin: 0, end: 2 * math.pi).animate(curvedAnimation)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              animController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              animController.forward();
            }
          });

    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResocoderImage(
        animation: animation,
      ),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}

class ResocoderImage extends AnimatedWidget {
  ResocoderImage({
    Key key,
    @required Animation<double> animation,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    return Transform.rotate(
      angle: animation.value,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: Image.asset(
          'assets/dart.jpg',
        ),
      ),
    );
  }
}
