import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';

class HeaderView extends GetView<HomeController> {
  const HeaderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  fit: BoxFit.fitWidth,
                  opacity: 0.8,
                  image: AssetImage('assets/images/bg.jpeg'),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  padding: const EdgeInsets.all(32),
                  clipBehavior: Clip.antiAlias,
                  height: 500,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.white30,
                      strokeAlign: StrokeAlign.center,
                    ),
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.white10,
                        Colors.white60,
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, I\'m Ajik, a Flutter Developer with 1 year of Experience',
                        style: Get.textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                      const Spacer(),
                      Text(
                        'I care a lot about using design for positive impact. and enjoy creating user-centric, delightful, and human experiences.',
                        style: Get.textTheme.bodyText2!
                            .copyWith(color: Colors.black87, fontSize: 17),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          MaterialButton(
                            color: Colors.black,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 20,
                            ),
                            textColor: Colors.white,
                            onPressed: () {},
                            child: const Text(
                              'Contact Me',
                            ),
                          ),
                          const SizedBox(width: 20),
                          buildCustomIconButton(
                            id: 1,
                            onTap: () {},
                            icon: FontAwesomeIcons.linkedin,
                            hoverColor: const Color(0xFF0072B1),
                            iconHoverColor: Colors.white,
                          ),
                          const SizedBox(width: 15),
                          buildCustomIconButton(
                              id: 2,
                              onTap: () {},
                              icon: FontAwesomeIcons.squareInstagram,
                              hoverColor: Colors.pink,
                              iconHoverColor: Colors.white,
                              isGradient: true),
                          const SizedBox(width: 15),
                          buildCustomIconButton(
                            id: 3,
                            onTap: () {},
                            icon: FontAwesomeIcons.facebook,
                            hoverColor: const Color(0xFF4267B2),
                            iconHoverColor: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[100],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCustomIconButton({
    required VoidCallback onTap,
    Color? hoverColor,
    required IconData icon,
    Color? iconHoverColor,
    required int id,
    bool isGradient = false,
  }) {
    return InkWell(
      onHover: (value) {
        controller.buttonIsHover(value);
        controller.buttonID(id);
      },
      onTap: onTap,
      child: Obx(
        () => AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: isGradient
                ? LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: controller.buttonIsHover.isTrue &&
                            controller.buttonID.value == id
                        ? const [
                            Color(0xFFFCAF45),
                            Color(0xFFE1306C),
                          ]
                        : [
                            Colors.white,
                            Colors.white,
                          ],
                  )
                : null,
            color: controller.buttonIsHover.isTrue &&
                    controller.buttonID.value == id
                ? hoverColor
                : Colors.white,
            shape: BoxShape.circle,
          ),
          child: FaIcon(
            icon,
            color: controller.buttonIsHover.isTrue &&
                    controller.buttonID.value == id
                ? iconHoverColor
                : Colors.black,
          ),
        ),
      ),
    );
  }
}
