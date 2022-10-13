import 'package:flutter/material.dart';

class ScreenSize {
  late BuildContext context;

  ScreenSize(this.context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
  }
}
