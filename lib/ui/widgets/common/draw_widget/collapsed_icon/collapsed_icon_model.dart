import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CollapsedIconModel extends BaseViewModel {
  bool isCollapsed = false;
  double size = 52;

  getIcon() {
    return isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
  }

  getAlignment() {
    return isCollapsed ? Alignment.center : Alignment.centerRight;
  }

  getMargin() {
    return isCollapsed ? null : EdgeInsets.only(right: 16);
  }

  getWidth() {
    return isCollapsed ? double.infinity : size;
  }

  toggleCollapsedButton() {
    return isCollapsed = !isCollapsed;
  }
}
