import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/core/widget/responsive/glass_container.dart';

class FooterView extends GetView {
  const FooterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: GlassContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Want to work together?',
              style: Get.textTheme.headline3!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            Text(
              'Feel free to reach out for collaborations or just a friendly Hello!',
              style: Get.textTheme.bodyText2!
                  .copyWith(color: Colors.black87, fontSize: 17),
            ),
            const SizedBox(height: 8),
            Text(
              'haziqsk939@gmail.com',
              style: Get.textTheme.bodyText2!
                  .copyWith(color: Colors.black87, fontSize: 17),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
