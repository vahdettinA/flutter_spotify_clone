import 'package:flutter/material.dart';
import 'package:spotify/image_enum.dart';
import 'package:spotify/theme/color_theme.dart';

class CostumListview extends StatelessWidget {
  List<String> _image = [
    ImageEnum.ic_cengiz.imagepath,
    ImageEnum.ic_azeri.imagepath,
    ImageEnum.ic_neset.imagepath,
    ImageEnum.ic_karadeniz.imagepath
  ];
  List<String> _name = [
    "Cengiz Özkan\nMix",
    "Azeri Türküleri\nMix",
    "Neşet Ertaş\nMix",
    "KaradenizTürküleri\nMix"
  ];
  List<Color> _colors = [
    red,
    turk,
    purple,
    turk,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).width * 0.45,
      width: MediaQuery.sizeOf(context).width,
      color: black,
      child: ListView.builder(
        itemCount: _image.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(height: 25, width: 2, color: _colors[index]),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          _name[index],
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 5,
                    width: MediaQuery.sizeOf(context).width * 0.45,
                    color: _colors[index],
                  )
                ],
              ),
              height: MediaQuery.sizeOf(context).width * 0.45,
              width: MediaQuery.sizeOf(context).width * 0.45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(_image[index]), fit: BoxFit.cover)),
            ),
          );
        },
      ),
    );
  }
}
