import 'package:flutter/material.dart';
import 'package:flutter_app_first/UI/Pages/Splash/welcome_slider.dart';

import 'UI/Pages/Splash/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xffFBFDFF),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
