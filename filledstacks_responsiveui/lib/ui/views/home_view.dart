import 'package:flutter/material.dart';
import '../../responsive/screen_type_layout.dart';
import '../../responsive/orientation_layout.dart';
import './home_view_mbile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
      ),
    );
  }
}
