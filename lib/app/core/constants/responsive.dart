import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile = Get.width < 850;

  static bool isTablet = Get.width < 1100 && Get.width >= 850;

  static bool isDesktop = Get.width >= 1100;

  @override
  Widget build(BuildContext context) {
    if (Get.width >= 1100) {
      return desktop;
    } else if (Get.width >= 850 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
