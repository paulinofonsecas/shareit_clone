import 'package:flutter/material.dart';
import 'dart:math';

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
            bodyText1: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            bodyText2: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            caption: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            )),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTopPanel(),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to SHAREit !',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Let's discover and share unlimited joy",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              VideoPane(img: 'img.jpg'),
              VideoPane(img: 'cerebro.jpg'),
              SizedBox(height: 15),
              Text('Sem mais'),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildTopPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            CustomIconButtom(
              onTap: () {},
              icon: Icons.send,
              title: 'Enviar',
            ),
            CustomIconButtom(
              onTap: () {},
              icon: Icons.arrow_circle_down_outlined,
              title: 'Receber',
            ),
            CustomIconButtom(
              onTap: () {},
              icon: Icons.snippet_folder,
              notification: List.generate(85, (index) => index),
              title: 'Local',
            ),
            CustomRoundedIconButton(
              onTap: () {},
              icon: Icons.insert_invitation_rounded,
              title: 'Convidar',
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 2),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
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

class VideoPane extends StatelessWidget {
  const VideoPane({
    Key key,
    @required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/$img',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Watch a whole lot more online short in your language',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('SHAREit'),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.message_outlined),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomRoundedIconButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String title;
  final IconData icon;

  const CustomRoundedIconButton({
    Key key,
    this.onTap,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(90),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 22,
                color: Colors.blue,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({
    Key key,
    this.onTap,
    this.title,
    this.icon,
    this.notification,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final String title;
  final IconData icon;
  final List notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: GestureDetector(
              onTap: onTap,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Center(
                      child: Icon(
                        icon,
                        size: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (notification != null)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${notification.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
