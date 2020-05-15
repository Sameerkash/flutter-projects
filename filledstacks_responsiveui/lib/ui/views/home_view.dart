import 'package:filledstacks_responsiveui/ui/base_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Text(sizingInformation.toString()),
          ),
        );
      },
    );
  }
}
