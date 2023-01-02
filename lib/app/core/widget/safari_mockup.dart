import 'package:flutter/material.dart';

class SafariMockup extends StatelessWidget {
  SafariMockup({
    Key? key,
    required this.imgSrc,
  }) : super(key: key);

  final String imgSrc;

  final List<Color> color = [
    Colors.red,
    Colors.amber,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: double.infinity,
        margin: const EdgeInsets.only(left: 30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 35,
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              color: Colors.grey[200],
              child: Row(
                children: [
                  ...List.generate(
                    color.length,
                    (index) => Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: color[index],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.chevron_left,
                        size: 12,
                      ),
                    ),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.chevron_right,
                        size: 12,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    child: Container(
                      height: 15,
                      decoration: BoxDecoration(color: Colors.grey[300]),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            Expanded(
              child: Image.asset(
                imgSrc,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                alignment: Alignment.topLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
}
