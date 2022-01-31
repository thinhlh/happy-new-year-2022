import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:happy_new_year/base/base_screen.dart';
import 'package:happy_new_year/presentation/screens/home/home_controller.dart';
import 'package:happy_new_year/utils/colors.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends BaseScreen<HomeController> {
  @override
  Widget buildBody(BuildContext context) {
    return Container(
      color: AppColors.red,
      child: Stack(
        children: [
          Image.asset(
            'assets/firework.gif',
            height: Get.size.height / 1.5,
          ),
          Column(
            children: [
              Expanded(
                child: Row(children: [
                  _buildIcon(),
                  _buildIcon(),
                  _buildIcon(),
                ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    'Happy New Year 2022',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppColors.yellowPallete,
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Text(
                  'Le Hoang Thinh',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.bluePallete,
                    fontSize: 30,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Obx(() {
      return AnimatedRotation(
        duration: controller.animationDuration,
        turns: controller.starRotation.value,
        child: const Icon(
          Icons.star,
          color: AppColors.yellowPallete,
          size: 40,
        ),
      );
    });
  }
}
