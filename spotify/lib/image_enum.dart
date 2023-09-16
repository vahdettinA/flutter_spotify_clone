enum ImageEnum {
  ic_azeri,
  ic_cengiz,
  ic_karadeniz,
  ic_neset,
  ic_nesete,
  ic_top
}

extension ImageEnums on ImageEnum {
  String get imagepath => "assets/$name.jpeg";
}
