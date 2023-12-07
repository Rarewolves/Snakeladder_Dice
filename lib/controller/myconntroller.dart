import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_30/utils/imageconstant/imageconstant.dart';

class MyController with ChangeNotifier {
  int randomNumbers = 0;
  bool isloading = false;

  List diceImages = [
    ImageConstant.dice1,
    ImageConstant.dice2,
    ImageConstant.dice3,
    ImageConstant.dice4,
    ImageConstant.dice5,
    ImageConstant.dice6,
  ];

  generate() async {
    isloading = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 1)).then((value) {
      isloading = false;
    });
    randomNumbers = Random().nextInt(6);
    notifyListeners();
  }
}
