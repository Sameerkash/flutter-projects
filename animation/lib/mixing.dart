import 'package:flutter/material.dart';

class Mixing extends StatefulWidget {
  @override
  _MixingState createState() => _MixingState();
}

class _MixingState extends State<Mixing> with SingleTickerProviderStateMixin {
  Animation animation;
  //  childAnimation;
  // Animation delayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    animation = Tween(begin: 10.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    // childAnimation = Tween(begin: 20.0, end: 125.0).animate(
    //     CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          body: Align(
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 350,
                      height: 200,
                      color: Colors.red[400],
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            child: Text("Buy"),
                            elevation: 7,
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                          ),
                          RaisedButton(
                            child: Text("Details"),
                            elevation: 7,
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 350,
                        height: 200,
                        color: Colors.tealAccent,
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
