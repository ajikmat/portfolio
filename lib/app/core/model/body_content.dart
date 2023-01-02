import 'package:flutter/material.dart';
import 'package:portfolio/app/core/widget/safari_mockup.dart';

class BodyContent {
  final String projectName;
  final String description;
  final Color? bgColor;
  final Color? titleTextColor;
  final Color? descTextColor;
  final Widget widget;

  BodyContent({
    required this.projectName,
    required this.description,
    required this.bgColor,
    required this.widget,
    this.titleTextColor = Colors.black,
    this.descTextColor = Colors.black54,
  });
}

final List<BodyContent> bodyContent = [
  BodyContent(
    projectName: 'IIUM Tech Support Dashboard',
    description: 'Dashboard for technician management web app',
    bgColor: const Color(0xFF405562),
    widget: SafariMockup(
      imgSrc: 'assets/images/test3.png',
    ),
    titleTextColor: Colors.grey[200],
    descTextColor: Colors.grey[500],
  ),
  BodyContent(
    projectName: 'IIUM Tech Support Web App',
    description: 'Technician Web App',
    bgColor: const Color(0xFF6B5CE5),
    widget: Expanded(
      child: Center(
        child: Image.asset(
          'assets/images/Mockup.png',
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitWidth,
          alignment: Alignment.center,
        ),
      ),
    ),
    titleTextColor: Colors.grey[200],
    descTextColor: Colors.grey[200],
  ),
];
