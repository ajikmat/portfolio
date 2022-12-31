import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';

class BodyView extends GetView<HomeController> {
  const BodyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onHover: (value) {
            controller.bodyIsHover(value);
            controller.bodyID(index);
          },
          onTap: () {},
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Obx(
              () => AnimatedScale(
                scale: controller.bodyIsHover.isTrue &&
                        controller.bodyID.value == index
                    ? 1.05
                    : 1.0,
                duration: const Duration(milliseconds: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Test',
                                style: Get.textTheme.headline6!
                                    .copyWith(fontSize: 17),
                              ),
                              const SizedBox(height: 4),
                              const Text('Test'),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: FaIcon(
                                FontAwesomeIcons.arrowRight,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/bg.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
