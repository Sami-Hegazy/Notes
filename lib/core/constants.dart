import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const kPrimaryColor = Color(0xff252525);
const kSecondaryColor = Color(0xFF55EAD9);
const kGreyColor = Color(0xff9A9A9A);

const kNotesHiveBox = 'notes';

const kDoneImage = 'assets/images/tick.png';
const kErrorImage = 'assets/images/error.png';

var colorList = const [
  Color(0xffFD99FF),
  Color(0xffFF9E9E),
  Color(0xff91F48F),
  Color(0xffFFF599),
  Color(0xffB69CFF),
  Color(0xff9EFFFF),
];

int randomNum() {
  Random rnd;
  int min = 0;
  int max = 5;
  rnd = Random();
  int r = min + rnd.nextInt(max - min);
  return r;
}

String formatDate() {
  DateTime now = DateTime.now();
  String formatter = DateFormat('MMM dd , yyyy').format(now);

  return formatter;
}
