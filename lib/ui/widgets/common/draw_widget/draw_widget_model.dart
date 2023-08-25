import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../top_bar_widget/top_bar_widget_model.dart';
import 'collapsed_icon/collapsed_icon.dart';

class DrawWidgetModel extends BaseViewModel {

  bool isCollapsed = false;
  double size = 52;
  static const active = false;
  var mapMenuActive = {};



  getWidth(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return isCollapsed ? width * 0.05 : width * 0.15;
  }

  getIsCollapsed() {
    return isCollapsed;
  }

  getIcon() {
    return isCollapsed ? Icons.menu_outlined : Icons.menu_outlined;
  }

  getAlignment() {
    return Alignment.center;
  }

  getMargin() {
    return isCollapsed ? null : EdgeInsets.only(right: 16);
  }

  getWidthCollapse() {
    return double.infinity;
  }

  toggleCollapsedButton() {
    isCollapsed = !isCollapsed;
    rebuildUi();
  }

  checkActive(menu) {
    if (mapMenuActive.containsKey(menu)) {
      return mapMenuActive[menu];
    }
    return false;
  }

  void tapMenu(String s) {
    mapMenuActive = {};
    mapMenuActive[s] = true;
    rebuildUi();
  }

  getMenuTitle(String s) {
    return !isCollapsed ? s : '';
  }

}
