import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/basic.dart';

class BoardingModel {
  final String title;
  final String desc;
  final String imageUrl;
  final Widget height;

  BoardingModel(
      {required this.title,
      required this.desc,
      required this.imageUrl,
      required this.height});
}
