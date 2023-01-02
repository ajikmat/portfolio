import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constants/responsive.dart';
import 'package:portfolio/app/core/model/body_content.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';

class BodyView extends GetView<HomeController> {
  const BodyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 1 : 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1,
      ),
      itemCount: bodyContent.length,
      itemBuilder: (context, index) {
        final body = bodyContent[index];

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
              color: body.bgColor,
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
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  body.projectName,
                                  overflow: TextOverflow.ellipsis,
                                  style: Get.textTheme.headline6!.copyWith(
                                    fontSize: 17,
                                    color: body.titleTextColor,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  body.description,
                                  style: TextStyle(
                                    color: body.descTextColor,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
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
                    const SizedBox(height: 15),
                    body.widget
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
