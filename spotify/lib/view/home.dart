import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/companent/costum_container.dart';
import 'package:spotify/companent/costum_item.dart';
import 'package:spotify/companent/costum_listview.dart';
import 'package:spotify/companent/costum_tabbar.dart';
import 'package:spotify/image_enum.dart';
import 'package:spotify/theme/color_theme.dart';
import 'package:spotify/const/const_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Badge(
                alignment: Alignment.topLeft,
                backgroundColor: blue,
                child: Icon(
                  Icons.notifications,
                  color: white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.timer,
                color: white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: white,
              ))
        ],
        backgroundColor: black,
        elevation: 0,
        title: Text(
          appBarTitle,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          CostumTabbar(),
          const SizedBox(
            height: 10,
          ),
          CostumItem(image: [
            ImageEnum.ic_top.imagepath,
            ImageEnum.ic_cengiz.imagepath
          ], title: [
            "Türküler\nEn İyi 50",
            "Cengiz\nÖkan",
          ]),
          CostumItem(image: [
            ImageEnum.ic_azeri.imagepath,
            ImageEnum.ic_karadeniz.imagepath
          ], title: [
            "Azerbaycan\nTürküleri",
            "En İyi\nKaradeniz..",
          ]),
          CostumItem(image: [
            ImageEnum.ic_neset.imagepath,
            ImageEnum.ic_nesete.imagepath
          ], title: [
            "Neşet Ertaş",
            "This is\nNeşet Ertaş",
          ]),
          Text(
            mostListenMix,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          CostumListview(),
          const SizedBox(
            height: 20,
          ),
          Text(
            programs,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          CostumListview(),
          const SizedBox(
            height: 20,
          ),
          Text(
            recently,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          CostumListview()
        ]),
      ),
    );
  }
}
