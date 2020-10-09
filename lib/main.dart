import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';
import 'themes/text_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shareit clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          bodyText1: CustomTextTheme.bodyText1,
          bodyText2: CustomTextTheme.bodyText2,
          caption: CustomTextTheme.caption,
        ),
      ),
      home: HomePage(),
    );
  }
}
