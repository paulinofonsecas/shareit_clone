import 'package:flutter/material.dart';

import 'componentes/custom_icon_bloc.dart';
import 'componentes/custom_icon_button.dart';
import 'componentes/custom_rounded_icon_button.dart';
import 'componentes/video_pane.dart';

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
          child: _buildSeccaoPrincipal(context),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Column _buildSeccaoPrincipal(BuildContext context) {
    return Column(
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
        Column(
          children: [
            VideoPane(img: 'img.jpg'),
            VideoPane(img: 'cerebro.jpg'),
          ],
        ),
        SizedBox(height: 15),
        Text('Sem mais'),
      ],
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
        CustomIconBloc()
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
