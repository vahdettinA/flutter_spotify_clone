import 'package:flutter/material.dart';
import 'package:spotify/theme/color_theme.dart';

class CostumTabbar extends StatelessWidget {
  const CostumTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {},
            child: Text(
              "Müzik",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: white,
                  ),
            )),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {},
            child: Text("Podcast'ler ve Programlar",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: white,
                    ))),
      ],
    );
  }
}
