import 'dart:js';

import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/loading',
    routes: {
      '/': (context) => HomeScreen(),
      '/location': (context) => ChooseLocation(),
      '/loading': (context) => Loading()
    },
  ));
}
