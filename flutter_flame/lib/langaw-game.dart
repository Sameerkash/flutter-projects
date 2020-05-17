import 'dart:math';
import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';
import 'fly.dart';
import 'package:flame/gestures.dart';

class LangawGame extends Game {
  Size screenSize;
  double tileSize;
  List<Fly> flies;
  Random rnd;

  LangawGame() {
    initialize();
  }

  void initialize() async {
    flies = List<Fly>();
    rnd = Random();

    resize(await Flame.util.initialDimensions());

    spawnFly();
  }

  void spawnFly() {
    double x = rnd.nextDouble() * (screenSize.width - tileSize);
    double y = rnd.nextDouble() * (screenSize.height - tileSize);

    flies.add(Fly(this, x, y));
  }

  @override
  void render(Canvas canvas) {
    Rect bgRec = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    canvas.drawRect(bgRec, bgPaint);

    flies.forEach((Fly fly) {
      fly.render(canvas);
    });
  }

  @override
  void update(double t) {
    flies.forEach((fly) {
      fly.update(t);
    });
  }

  @override
  void resize(Size size) {
    // TODO: implement resize
    super.resize(size);
    screenSize = size;
    tileSize = screenSize.width / 9;
  }


  void onTapDown(TapDownDetails d){
    //
    
  }
}
