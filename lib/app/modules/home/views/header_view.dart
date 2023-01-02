import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constants/responsive.dart';
import 'package:portfolio/app/core/widget/responsive/glass_container.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';

class HeaderView extends GetView<HomeController> {
  const HeaderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Column(
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: buildProfilePicture(context),
          ),
          const SizedBox(height: 16),
          AspectRatio(
            aspectRatio: Get.width > 660 ? 2 : 1,
            child: buildGlassContainer(),
          ),
        ],
      ),
      tablet: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: buildGlassContainer(),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: buildProfilePicture(context),
            ),
          ],
        ),
      ),
      desktop: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: buildGlassContainer(),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: buildProfilePicture(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfilePicture(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[100],
        image: DecorationImage(
          fit:
              Responsive.isMobile(context) ? BoxFit.fitWidth : BoxFit.fitHeight,
          image: const AssetImage('assets/images/dp.JPG'),
        ),
      ),
    );
  }

  Widget buildGlassContainer() {
    return GlassContainer(
      child: Column(
        children: [
          Text(
            'Hello, I\'m Ajik, a Flutter Developer with 1 year of Experience',
            style: Get.textTheme.headline3!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              fontSize: Get.width < 1113 ? 36 : 48,
            ),
          ),
          const Spacer(),
          Text(
            'I care a lot about using design for positive impact. and enjoy creating user-centric, delightful, and human experiences.',
            style: Get.textTheme.bodyText2!
                .copyWith(color: Colors.black87, fontSize: 17),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
