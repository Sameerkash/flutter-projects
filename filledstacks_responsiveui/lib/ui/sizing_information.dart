import 'package:flutter/material.dart';

import 'package:filledstacks_responsiveui/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    this.orientation,
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
  });

  String toString() {
    return ' oreintation: $Orientation , deviceScreenType $deviceScreenType ,screenSize $screenSize, localWidgetSize $localWidgetSize ';
  }
}
