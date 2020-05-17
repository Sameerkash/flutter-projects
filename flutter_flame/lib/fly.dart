import 'dart:ui';
import 'langaw-game.dart';

class Fly {
  Fly(this.game, double x, double y) {
    flyPaint = Paint();
    flyPaint.color = Color(0xff6ab04c);
    flyRec = Rect.fromLTWH(x, y, game.tileSize, game.tileSize);
  }
  final LangawGame game;
  Paint flyPaint;
  Rect flyRec;

  void render(Canvas c) {
    c.drawRect(flyRec, flyPaint);
  }

  void update(double t) {}
}
