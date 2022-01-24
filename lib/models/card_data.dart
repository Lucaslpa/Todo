import 'package:flutter/material.dart';

enum Status {
  notSolved,
  solved,
  solving,
}

class CardData {
  String description = "";
  CardData({required this.description});
}
