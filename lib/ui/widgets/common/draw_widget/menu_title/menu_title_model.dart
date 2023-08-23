import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MenuTitleModel extends BaseViewModel {


  getTextColor(isActive) {
    return isActive ? Color(0xff1B81F8) : Colors.black;
  }

  getIconColor(isActive) {
    return isActive ? Color(0xff1B81F8) : Colors.black;
  }

  getContainerColor(isActive) {
    return isActive ? Color(0xffD4E6FB) : Colors.white;
  }

}
