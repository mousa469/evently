import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  Widget setHorizontalPadding(double value) {
    return Padding( 
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
      );
  }
  Widget setVerticalPadding(double value) {
    return Padding( 
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
      );
  }
  Widget setSymmetricPadding(double vertical , double horizontal) {
    return Padding( 
      padding: EdgeInsets.symmetric(vertical: vertical , horizontal:horizontal ),
      child: this,
      );
  }
}
