import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FooterView extends GetView {
  const FooterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
    );
  }
}
