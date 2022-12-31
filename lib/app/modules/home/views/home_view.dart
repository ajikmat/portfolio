import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/views/body_view.dart';
import 'package:portfolio/app/modules/home/views/footer_view.dart';
import 'package:portfolio/app/modules/home/views/header_view.dart';
import 'package:portfolio/app/modules/home/views/navbar_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.15,
          vertical: 8,
        ),
        child: Column(
          children: const [
            NavbarView(),
            SizedBox(height: 16),
            HeaderView(),
            SizedBox(height: 16),
            BodyView(),
            SizedBox(height: 16),
            FooterView(),
          ],
        ),
      ),
    );
  }
}
