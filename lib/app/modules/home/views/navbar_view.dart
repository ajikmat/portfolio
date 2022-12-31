import 'dart:js';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NavbarView extends GetView {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          const Text('AJIK'),
          const Spacer(flex: 5),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildNavButton(onTap: () {}, text: 'Home'),
                buildNavButton(onTap: () {}, text: 'Projects'),
                buildNavButton(onTap: () {}, text: 'Contact'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildNavButton({required VoidCallback onTap, required String text}) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: Get.textTheme.bodyText2!.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
