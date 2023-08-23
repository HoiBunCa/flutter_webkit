import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class TopBarWidgetModel extends BaseViewModel {
  bool isCollapsed = true;

  getHeight(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return height * 0.08;
  }

  void toggleCollapsed() {
    isCollapsed = !isCollapsed;
    rebuildUi();
  }
}
