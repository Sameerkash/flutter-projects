import 'package:flutter/material.dart';
import 'package:flutter_web/locator.dart';
import 'package:flutter_web/services/navigation_service.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  const NavBarItem(this.title, this.navigationPath, {this.icon});

  @override
  Widget build(BuildContext context) {
    var model =  NavBarItemModel(
          title: title,
          navigationPath: navigationPath,
          iconData: icon,
        );
    return GestureDetector(
    
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(),
          mobile: NavBarItemMobile(),
        ),
      ),
    );
  }
}