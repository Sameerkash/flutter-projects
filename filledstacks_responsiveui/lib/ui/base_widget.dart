import 'package:flutter/material.dart';
import '../utils/ui_utils.dart';
import 'package:filledstacks_responsiveui/ui/sizing_information.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const BaseWidget({
    Key key,
    this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      var mediaQUery = MediaQuery.of(context);
      var sizingInformation = SizingInformation(
          orientation: mediaQUery.orientation,
          deviceScreenType: getDeviceType(mediaQUery),
          localWidgetSize:
              Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
          screenSize: mediaQUery.size);
      return builder(context, sizingInformation);
    });
  }
}
