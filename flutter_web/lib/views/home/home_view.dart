import 'package:flutter/material.dart';
import 'package:flutter_web/views/home/home_content_desktop.dart';
import 'package:flutter_web/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: HomeContentMobile(),
        desktop: HomeContentDesktop(),
      ),
    );
  }
}
