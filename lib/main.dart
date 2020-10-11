import 'package:flutter/material.dart';
import 'package:shareit_clone/pages/me/me_page.dart';

import 'pages/home/home_page.dart';
import 'themes/text_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  var pages = <Widget>[
    HomePage(),
    Container(),
    Container(),
    MePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

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
      home: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (newIndex) {
        setState(() => _currentIndex = newIndex);
      },

      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.blue,
      elevation: 8,

      // Configuração do icon
      selectedIconTheme: IconThemeData(
        color: Colors.blue,
        size: 28,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 28,
      ),

      // Configureção do titlo
      selectedLabelStyle: TextStyle(
        fontSize: 14,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
      ),

      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download),
          label: 'Transferir',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gamepad_outlined),
          label: 'Jogos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.psychology_outlined),
          label: 'Me',
        ),
      ],
    );
  }
}
