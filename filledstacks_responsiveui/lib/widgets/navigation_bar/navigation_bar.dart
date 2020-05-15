import 'package:flutter/material.dart';
import '../../widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import '../../widgets/navigation_bar/navigation_bar_mobile.dart';
import '../../responsive/screen_type_layout.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
