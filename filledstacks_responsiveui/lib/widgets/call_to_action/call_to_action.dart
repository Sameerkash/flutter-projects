import 'package:flutter/material.dart';
import '../../responsive/screen_type_layout.dart';
import '../../widgets/call_to_action/call_to_action_mobile.dart';
import '../../widgets/call_to_action/call_to_action_tablet_desktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
