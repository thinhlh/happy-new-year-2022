import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:happy_new_year/base/base_controller.dart';

class HomeController extends BaseController {
  RxDouble starRotation = 0.0.obs;

  @override
  void onReady() {
    Timer.periodic(animationDuration, (timer) {
      starRotation.value += 1.0 / 8.0;
    });
  }
}
