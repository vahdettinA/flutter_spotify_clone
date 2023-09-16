import 'package:flutter/material.dart';
import 'package:spotify/companent/costum_container.dart';

class CostumItem extends StatelessWidget {
  List<String> image;
  List<String> title;
  CostumItem({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CostumContainer(imagepath: image[0], title: title[0]),
            CostumContainer(imagepath: image[1], title: title[1])
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
