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
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width < 900 ? 20 : 100,
            vertical: 16,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1080),
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
          ),
        ),
      ),
    );
  }
}
