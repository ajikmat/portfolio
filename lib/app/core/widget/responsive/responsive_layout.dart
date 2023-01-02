import 'package:flutter/material.dart';

import '../../constants/responsive.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile) {
      return mobileBody;
    } else if (Responsive.isDesktop) {
      return desktopBody;
    }

    return Container();
  }
}
