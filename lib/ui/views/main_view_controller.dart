import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_view/home_view.dart';
import 'room_view/room_view.dart';

class MainViewController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  Widget getTabPage(index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const RoomView();
      default:
    }
    return const Text('Error');
  }
}