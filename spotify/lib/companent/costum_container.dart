import 'package:flutter/material.dart';
import 'package:spotify/image_enum.dart';
import 'package:spotify/theme/color_theme.dart';

class CostumContainer extends StatelessWidget {
  String imagepath;
  String title;
  CostumContainer({required this.imagepath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.sizeOf(context).width * 0.4,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: grey),
      child: Row(children: [
        SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8)),
                child: Image.asset(imagepath))),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: white, fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
